#include <string.h>
#include "../ZTE/ZTE_DEF.H"

/*
 * online.c: Sonic Z-Treme online, two consoles, one player each (ZTE/ZT_NETPLAY.c does the lockstep).
 * The first console to reach the relay plays PLAYER_1. Each console draws its own player full screen and runs both players.
 *
 * Both consoles must read the same things, so online:
 *  - the pads come from the line (ztPlayerPad);
 *  - ZT_FRAMERATE is the step's agreed length, not this console's FRT;
 *  - the START debug keys of ztGameLoop are off.
 * Only what is drawn may differ: the renderer finishes explosions (status < 0 to 0), which collisions ignore, and the
 * particles use slRandom, which nothing else uses.
 */

#ifndef ZT_NET_NUMBER
#define ZT_NET_NUMBER "199411"         /* the DreamPi code of Sonic Z-Treme's relay (ONLINE.md) */
#endif
#ifndef ZT_NET_GAME_ID
#define ZT_NET_GAME_ID "SONICZT1"      /* the relay only matches identical ids: change it when the game logic changes */
#endif
#ifndef ZT_NET_TEST_PAD
#define ZT_NET_TEST_PAD 0
#endif
#ifndef ZT_NET_DESYNC_QUIT
#define ZT_NET_DESYNC_QUIT 0
#endif

extern camera_t cam1, cam2;
extern int mapId;

typedef union
{
    PerDigital d;
    PerAnalog  a;
} ztPad_t;

/* a record: [buttons lo][buttons hi][analog x][analog y][flags: 1 pad, 2 3D pad in analog mode][0] */
static ztPad_t ztNetPad[2];
static Uint16  ztNetPrev[2];            /* last step's buttons, for push */
static int     ztNetBegun, ztNetPage, ztNetQuit;
static Uint32  ztNetT0;

static char *ztNum(char *o, Uint32 v)
{
    char t[12];
    int n = 0;
    do
    {
        t[n++] = (char)('0' + v % 10);
        v /= 10;
    } while (v);
    while (n)
        *o++ = t[--n];
    *o = 0;
    return o;
}

static char *ztStr(char *o, const char *s)
{
    while (*s)
        *o++ = *s++;
    *o = 0;
    return o;
}

/* a whole text row (44 columns), s centered or from the left */
static void ztNetLine(int row, const char *s, int center)
{
    char b[45];
    int n = strlen(s), x;
    if (n > 44)
        n = 44;
    x = center ? (44 - n) / 2 : 0;
    memset(b, ' ', 44);
    memcpy(b + x, s, n);
    b[44] = 0;
    slPrint(b, slLocate(0, row));
}

#if ZT_NET_TEST_PAD
/* a scripted player for unattended tests: runs, turns, jumps, turns the camera; never START */
static Uint32 tpSeed;
static int    tpLeft;
static Uint16 tpHold;

static Uint16 ztTestPad(void)
{
    static const Uint16 dirs[8] = {PER_DGT_KU, PER_DGT_KU | PER_DGT_KL, PER_DGT_KU | PER_DGT_KR, PER_DGT_KL, PER_DGT_KR,
                                   PER_DGT_KD, 0, PER_DGT_KU | PER_DGT_TL};
    Uint16 data;
    if (!tpSeed)
        tpSeed = 0x2468ace1u + (Uint32)netLocal * 0x9e3779b9u;
    if (--tpLeft <= 0)
    {
        tpSeed = tpSeed * 1664525u + 1013904223u;
        tpLeft = 8 + ((tpSeed >> 16) & 31);
        tpHold = dirs[(tpSeed >> 24) & 7];
    }
    data = (Uint16)~tpHold;
    if ((tpLeft & 15) < 2)
        data &= ~PER_DGT_TA;
    return data;
}
#endif

static void ztNetLocalRecord(unsigned char *r)
{
    PerAnalog *pad = (PerAnalog *)&Smpc_Peripheral[0];
    Uint16 data = pad->data;
    memset(r, 0, NET_REC_BYTES);
    r[4] = pad->id != PER_ID_NotConnect;
    if (pad->id == 0x16)
    {
        r[2] = pad->x;
        r[3] = pad->y;
        r[4] |= 2;
    }
#if ZT_NET_TEST_PAD
    data = ztTestPad();
    r[4] = 1;
#endif
    r[0] = (unsigned char)data;
    r[1] = (unsigned char)(data >> 8);
}

static void ztNetPadFromRecord(int p, const unsigned char *r)
{
    Uint16 data = (Uint16)(r[0] | (r[1] << 8));
    ztPad_t *z = &ztNetPad[p];
    memset(z, 0, sizeof(*z));
    z->a.id = (r[4] & 2) ? 0x16 : (r[4] & 1) ? PER_ID_StnPad : PER_ID_NotConnect;
    z->a.data = data;
    z->a.push = (Uint16)(~ztNetPrev[p] | data);   /* active low: pressed now, not at the last step */
    z->a.pull = (Uint16)(ztNetPrev[p] | ~data);
    z->a.x = r[2];
    z->a.y = r[3];
    ztNetPrev[p] = data;
}

PerDigital ztPlayerPad(player_t *p)
{
    if (!netOn)
        return Smpc_Peripheral[p->PLAYER_ID];
    return ztNetPad[p == &PLAYER_2].d;
}

player_t *ztNetMe(void)
{
    return netLocal == 1 ? &PLAYER_2 : &PLAYER_1;
}

/* fadeOut, at the end of the menu and of ztGameLoop, turns the display off with the colour offset at -255: undo both
 * for the text screens, then put them back for what follows */
static void ztNetShow(int on)
{
    Sint16 o = on ? 0 : -255;
    ztClearText();
    slColOffsetB(o, o, o);
    if (on)
        slTVOn();
    else
        slTVOff();
}

/* the waiting screen; B cancels while in the hall */
static int ztNetIdle(int state)
{
    char b[48], *o;
    ztClearText();
    ztNetLine(9, "ONLINE", 1);
    if (state == NET_ST_MODEM)
        ztNetLine(12, "STARTING THE NETLINK...", 1);
    else if (state == NET_ST_DIAL)
    {
        ztStr(ztStr(b, "CALLING "), ZT_NET_NUMBER);
        ztNetLine(12, b, 1);
    }
    else
    {
        ztNetLine(12, "WAITING FOR ANOTHER PLAYER", 1);
        o = ztNum(ztStr(b, "IN THE HALL "), netHall[0]);
        ztNum(ztStr(o, ", GAMES PLAYING "), netHall[2]);
        ztNetLine(14, b, 1);
#if !ZT_NET_AUTO
        ztNetLine(17, "B: CANCEL", 1);
#endif
    }
    slSynch();
#if ZT_NET_AUTO
    return 0;
#else
    return state == NET_ST_HALL && KEY_PRESS(Smpc_Peripheral[0].push, PER_DGT_TB);
#endif
}

static void ztNetMessage(const char *m)
{
    int i;
    ztNetShow(1);
    ztNetLine(12, m, 1);
    for (i = 0; i < 90; i++)
        slSynch();
    ztNetShow(0);
}

/* both consoles start from the same state, whatever was played before */
static void ztNetPrepare(void)
{
    Uint8 id1 = PLAYER_1.PLAYER_ID, e1 = PLAYER_1.ENTITY_ID, id2 = PLAYER_2.PLAYER_ID, e2 = PLAYER_2.ENTITY_ID;
    memset(&PLAYER_1, 0, sizeof(PLAYER_1));
    memset(&PLAYER_2, 0, sizeof(PLAYER_2));
    PLAYER_1.PLAYER_ID = id1;
    PLAYER_1.ENTITY_ID = e1;
    PLAYER_2.PLAYER_ID = id2;
    PLAYER_2.ENTITY_ID = e2;
    PLAYER_2.LIVES = 10;                /* ztGameLoop sets player 1's: player 2's show on its own HUD */
    memset(&cam1, 0, sizeof(cam1));
    memset(&cam2, 0, sizeof(cam2));
    ztNetPrev[0] = ztNetPrev[1] = 0xffff;
    ztNetBegun = ztNetPage = ztNetQuit = 0;
#if ZT_NET_TEST_PAD
    tpSeed = 0;
    tpLeft = 0;
#endif
}

Sint32 ztOnlineGame(void)
{
    Sint32 r;
    int c;
    ztNetShow(1);
    c = netConnect(ZT_NET_NUMBER, ZT_NET_GAME_ID, 2, 2, ztNetIdle);
    ztNetShow(0);
    if (c <= 0)
    {
        if (c == 0)
            ztNetMessage("NO GAME: CHECK THE NETLINK AND THE LINE");
        return GS_MAIN_SCREEN;
    }
    ztNetPrepare();
    r = ztGameLoop(2);
    netStop();
    if (ztNetQuit)
        ztNetMessage("OUT OF SYNC");
    else if (netEnd == NET_END_LINE)
        ztNetMessage("LINE LOST");
    else if (netEnd == NET_END_LEFT)
        ztNetMessage("THE OTHER PLAYER LEFT");
    else if (netEnd == NET_END_SILENT)
        ztNetMessage("NO NEWS FROM THE OTHER CONSOLE");
    return r;
}

int ztNetGameStep(void)
{
    unsigned char rec[NET_REC_BYTES];
    int f;
    if (!ztNetBegun)
    {
        static const unsigned char neutral[NET_REC_BYTES] = {0xff, 0xff, 0x80, 0x80, 1, 0};
        netBegin(neutral, ZT_FRAMERATE);
        ztNetBegun = 1;
        ztNetT0 = ztNetFields;
    }
    ztNetLocalRecord(rec);
    f = netStep(rec, ZT_FRAMERATE);
    if (!f)
        return 0;
    if (ZT_NET_DESYNC_QUIT && netDesync >= 0)
    {
        ztNetQuit = 1;
        return 0;
    }
    ZT_FRAMERATE = (Sint8)f;
    ztNetPadFromRecord(0, netRec(0));
    ztNetPadFromRecord(1, netRec(1));
    return 1;
}

/* checksums: FNV-1a over what the game plays with */
static Uint32 h32(Uint32 h, Uint32 v)
{
    return (h ^ v) * 16777619u;
}

static Uint32 hPlayer(Uint32 h, const player_t *p)
{
    int k;
    for (k = 0; k < XYZ; k++)
    {
        h = h32(h, (Uint32)p->POSITION[k]);
        h = h32(h, (Uint32)p->ROTATION[k]);
        h = h32(h, (Uint32)p->SPEED[k]);
    }
    h = h32(h, p->STATUS);
    h = h32(h, (Uint32)p->LIVES);
    h = h32(h, p->OWNED);
    h = h32(h, (Uint32)p->INVINCIBLE);
    h = h32(h, (Uint32)p->SPIN_ANGLE);
    h = h32(h, p->SPIN_CHARGE);
    h = h32(h, p->LAST_INPUTS);
    return h32(h, (Uint32)p->SHADOW_DIST);
}

static Uint32 hCam(Uint32 h, const camera_t *c)
{
    int k;
    for (k = 0; k < XYZ; k++)
    {
        h = h32(h, (Uint32)c->pos[k]);
        h = h32(h, (Uint32)c->camAngle[k]);
    }
    h = h32(h, (Uint32)c->yOffset);
    h = h32(h, (Uint32)c->camDist);
    return h32(h, (Uint32)c->targetAngle);
}

static Uint32 hWorld(void)
{
    Uint32 h = h32(h32(h32(2166136261u, TIMER), (Uint32)mapId), (Uint32)DELAYED_CHANGEMAP);
    int i, k;
    for (i = 0; i < MDATA.TOTAL_NODES; i++)
        for (k = 0; k < nodes[i]->nbEntities; k++)
        {
            Sint16 st = nodes[i]->entbl[k].status;
            h = h32(h, (Uint32)(st > 0 ? st : 0));  /* < 0 (exploding) and 0 are the same to the game */
        }
    return h;
}

/* after each step: the checksums, OUT OF SYNC, and the network page while START is held */
void ztNetGameAfter(void)
{
    char b[48], *o;
    if (netSumDue())
    {
        Uint32 s[NET_SUMS];
        s[0] = hCam(hCam(hPlayer(hPlayer(2166136261u, &PLAYER_1), &PLAYER_2), &cam1), &cam2);
        s[1] = hWorld();
        netSums(s);
    }
    if (netDesync >= 0)
    {
        ztNum(ztStr(b, "OUT OF SYNC AT STEP "), (Uint32)netDesync);
        ztNetLine(2, b, 0);
    }
    if (KEY_PRESS(Smpc_Peripheral[0].data, PER_DGT_ST))
    {
        Uint32 all = ztNetFields - ztNetT0;
        o = ztNum(ztStr(b, "STEP "), (Uint32)netStepN);
        o = ztNum(ztStr(o, "  WAITED "), all ? netWaited * 100 / all : 0);
        ztNum(ztStr(o, "%  PLAYER "), (Uint32)netLocal + 1);
        ztNetLine(3, b, 0);
        o = ztNum(ztStr(b, "IN "), (Uint32)nlBytesIn);
        o = ztNum(ztStr(o, " LOST "), (Uint32)nlLost);
        ztNum(ztStr(o, " BAUD "), (Uint32)nlBaud);
        ztNetLine(4, b, 0);
        o = ztNum(ztStr(b, "CHECKS "), (Uint32)netSumsChecked);
        ztStr(o, netDesync < 0 ? " IN SYNC" : " OUT OF SYNC");
        ztNetLine(5, b, 0);
        ztNetPage = 1;
    }
    else if (ztNetPage)
    {
        ztNetLine(3, "", 0);
        ztNetLine(4, "", 0);
        ztNetLine(5, "", 0);
        ztNetPage = 0;
    }
}
