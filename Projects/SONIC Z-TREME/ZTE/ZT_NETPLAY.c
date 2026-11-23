#include <string.h>
#include "ZTE_DEF.H"

/*
 * ZT_NETPLAY.c: online lockstep, the way Doom's modem games played. Every console runs the whole game; only inputs travel.
 * Adapted from the Aguzzino port's online play.
 *
 *  - Step s: each console sends its input for step s+NET_DELAY, then waits for every player's input for step s. The delay
 *    hides the line's latency.
 *  - Every step lasts the same game time on every console: each record carries how many fields its console took for its last
 *    image, and every console plays player 0's value. A game whose physics scales by its own frame time would otherwise drift
 *    from the first image. The game keeps player 0's real time; a faster console waits.
 *  - Every NET_SUM_EVERY steps the consoles exchange checksums of their state: netDesync is the first step that differed.
 *
 * Relay frames are [type][length][payload]. To the relay: 'B' hello (protocol 2: [2][flags][delay][min][max][game id]).
 * From the relay: 'W' [number][players], 'L' [hall info], 'G' [players], 'Q' [number of a console that left]. Any other frame
 * is forwarded to the other consoles as [type][length+1][sender][payload]:
 *   'I' [step lo][step hi][fields][record]       a player's input for a step
 *   'H' [step lo][step hi][NET_SUMS x 4 bytes]   checksums after a step (little endian)
 */

#ifndef ZT_NET_DELAY
#define ZT_NET_DELAY 2
#endif
#define NET_DELAY    ZT_NET_DELAY
#define NET_RING     16                 /* records kept per player: more than 2 * NET_DELAY + 1 steps */
#define NET_SRING    4                  /* checksums kept per player */
#define NET_TIMEOUT  (60 * 30)          /* fields without input before the game ends (long enough for a map load) */
#define NET_HALL_MAX (60 * 180)         /* fields in the hall before giving up */

int netOn, netPlayers, netLocal, netStepN, netDesync = -1, netDesyncWhich, netSumsChecked, netEnd;
Uint32 netWaited;
unsigned char netHall[5];

static unsigned char netRecs[NET_MAXP][NET_RING][NET_REC_BYTES];
static unsigned char netRecFields[NET_MAXP][NET_RING];
static int netRecStep[NET_MAXP][NET_RING];
static int netCur;                      /* the step netStep returned last */

static int netSumStep[NET_MAXP][NET_SRING];
static Uint32 netSumVal[NET_MAXP][NET_SRING][NET_SUMS];

static unsigned char netIn[600];        /* received, not yet a whole frame */
static int netInLen, netWelcome, netGo;

static int netFull(int s16)             /* a 16-bit step back to the full one near netStepN */
{
    return netStepN + (short)(s16 - (netStepN & 0xffff));
}

static Uint32 netGet32(const unsigned char *p)
{
    return (Uint32)p[0] | ((Uint32)p[1] << 8) | ((Uint32)p[2] << 16) | ((Uint32)p[3] << 24);
}

static void netSend(int type, const unsigned char *p, int n)
{
    unsigned char f[2 + 32];
    f[0] = (unsigned char)type;
    f[1] = (unsigned char)n;
    memcpy(f + 2, p, n);
    nlSend(f, n + 2);
}

static void netSumCompare(int p, int slot)
{
    int k, diff = 0;
    if (p == netLocal || netSumStep[p][slot] < 0 || netSumStep[p][slot] != netSumStep[netLocal][slot])
        return;
    netSumsChecked++;
    for (k = 0; k < NET_SUMS; k++)
        if (netSumVal[p][slot][k] != netSumVal[netLocal][slot][k])
            diff |= 1 << k;
    if (diff && netDesync < 0)
    {
        netDesync = netSumStep[p][slot];
        netDesyncWhich = diff;
    }
}

static void netFrame(int type, const unsigned char *p, int n)
{
    int k, s, slot;
    switch (type)
    {
        case 'W':
            if (n >= 1)
                netWelcome = p[0];      /* the last one before 'G' is final */
            break;
        case 'G':
            if (n >= 1)
            {
                netPlayers = p[0];
                netGo = 1;
            }
            break;
        case 'L':
            if (n >= 5)
                memcpy(netHall, p, 5);
            break;
        case 'Q':
            if (netOn)
                netEnd = NET_END_LEFT;
            break;
        case 'I':                       /* [sender][step lo][step hi][fields][record] */
            if (n < 4 + NET_REC_BYTES || p[0] >= NET_MAXP)
                break;
            s = netFull(p[1] | (p[2] << 8));
            slot = s & (NET_RING - 1);
            netRecStep[p[0]][slot] = s;
            netRecFields[p[0]][slot] = p[3];
            memcpy(netRecs[p[0]][slot], p + 4, NET_REC_BYTES);
            break;
        case 'H':                       /* [sender][step lo][step hi][sums] */
            if (n < 3 + 4 * NET_SUMS || p[0] >= NET_MAXP)
                break;
            s = netFull(p[1] | (p[2] << 8));
            slot = (s / NET_SUM_EVERY) & (NET_SRING - 1);
            netSumStep[p[0]][slot] = s;
            for (k = 0; k < NET_SUMS; k++)
                netSumVal[p[0]][slot][k] = netGet32(p + 3 + 4 * k);
            netSumCompare(p[0], slot);
            break;
    }
}

/* whole frames from the line */
static void netPump(void)
{
    int used = 0;
    netInLen += nlRecv(netIn + netInLen, sizeof(netIn) - netInLen);
    while (netInLen - used >= 2 && netInLen - used >= 2 + netIn[used + 1])
    {
        netFrame(netIn[used], netIn + used + 2, netIn[used + 1]);
        used += 2 + netIn[used + 1];
    }
    memmove(netIn, netIn + used, netInLen - used);
    netInLen -= used;
}

static void netReset(void)
{
    int p, s;
    netOn = netEnd = netGo = netWelcome = netInLen = 0;
    netPlayers = netLocal = netStepN = netCur = 0;
    netDesync = -1;
    netDesyncWhich = netSumsChecked = 0;
    netWaited = 0;
    memset(netHall, 0, sizeof(netHall));
    netHall[4] = 255;
    for (p = 0; p < NET_MAXP; p++)
    {
        for (s = 0; s < NET_RING; s++)
            netRecStep[p][s] = -1;
        for (s = 0; s < NET_SRING; s++)
            netSumStep[p][s] = -1;
    }
}

int netConnect(const char *number, const char *gameId, int minSeats, int maxSeats, int (*idle)(int state))
{
    unsigned char b[5 + 16];
    int n = strlen(gameId);
    Uint32 t0;
    netReset();
    if (idle(NET_ST_MODEM))
        return -1;
    if (!nlOpen())
        return 0;
    if (idle(NET_ST_DIAL))
    {
        nlClose();
        return -1;
    }
    if (!nlDial(number))
    {
        nlClose();
        return 0;
    }
    if (n > 16)
        n = 16;
    b[0] = 2;                           /* protocol 2 */
    b[1] = 0;                           /* a player, not a bot */
    b[2] = NET_DELAY;
    b[3] = (unsigned char)minSeats;
    b[4] = (unsigned char)maxSeats;
    memcpy(b + 5, gameId, n);
    netSend('B', b, 5 + n);
    t0 = ztNetFields;
    while (!netGo)
    {
        if (idle(NET_ST_HALL))
        {
            nlClose();
            return -1;
        }
        netPump();
        if (!netGo && (!nlConnected() || (int)(ztNetFields - t0) > NET_HALL_MAX))
        {
            nlClose();
            return 0;
        }
    }
    if (netPlayers < 2 || netPlayers > NET_MAXP || netWelcome >= netPlayers)
    {
        nlClose();
        return 0;
    }
    netLocal = netWelcome;
    netOn = 1;
    return 1;
}

static void netSendRec(int s, const unsigned char *rec, int fields)
{
    unsigned char b[3 + NET_REC_BYTES];
    int slot = s & (NET_RING - 1);
    netRecStep[netLocal][slot] = s;
    netRecFields[netLocal][slot] = (unsigned char)fields;
    memcpy(netRecs[netLocal][slot], rec, NET_REC_BYTES);
    b[0] = (unsigned char)s;
    b[1] = (unsigned char)(s >> 8);
    b[2] = (unsigned char)fields;
    memcpy(b + 3, rec, NET_REC_BYTES);
    netSend('I', b, sizeof(b));
}

void netBegin(const unsigned char *neutral, int fields)
{
    int s;
    for (s = 0; s < NET_DELAY; s++)
        netSendRec(s, neutral, fields);
}

int netStep(const unsigned char *rec, int fields)
{
    int s = netStepN, slot = s & (NET_RING - 1), p, all, f;
    Uint32 t0 = ztNetFields;
    if (!netOn || netEnd)
        return 0;
    netSendRec(s + NET_DELAY, rec, fields);
    for (;;)
    {
        netPump();
        for (all = 1, p = 0; p < netPlayers; p++)
            all &= netRecStep[p][slot] == s;
        if (all)
            break;
        if (netEnd)
            return 0;
        if (!nlConnected())
            netEnd = NET_END_LINE;
        else if ((int)(ztNetFields - t0) > NET_TIMEOUT)
            netEnd = NET_END_SILENT;
        if (netEnd)
            return 0;
    }
    netWaited += ztNetFields - t0;
    netCur = s;
    netStepN++;
    f = netRecFields[0][slot];
    return f < 1 ? 1 : f > 10 ? 10 : f;
}

const unsigned char *netRec(int p)
{
    return netRecs[p][netCur & (NET_RING - 1)];
}

int netSumDue(void)
{
    return netOn && netCur % NET_SUM_EVERY == 0;
}

void netSums(const Uint32 *sums)
{
    unsigned char b[2 + 4 * NET_SUMS];
    int k, p, slot = (netCur / NET_SUM_EVERY) & (NET_SRING - 1);
    netSumStep[netLocal][slot] = netCur;
    b[0] = (unsigned char)netCur;
    b[1] = (unsigned char)(netCur >> 8);
    for (k = 0; k < NET_SUMS; k++)
    {
        netSumVal[netLocal][slot][k] = sums[k];
        b[2 + 4 * k] = (unsigned char)sums[k];
        b[3 + 4 * k] = (unsigned char)(sums[k] >> 8);
        b[4 + 4 * k] = (unsigned char)(sums[k] >> 16);
        b[5 + 4 * k] = (unsigned char)(sums[k] >> 24);
    }
    netSend('H', b, sizeof(b));
    for (p = 0; p < netPlayers; p++)
        netSumCompare(p, slot);
}

void netStop(void)
{
    nlClose();
    netOn = 0;
}
