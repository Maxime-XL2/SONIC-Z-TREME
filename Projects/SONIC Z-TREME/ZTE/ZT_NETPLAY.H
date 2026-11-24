#ifndef ZT_NETPLAY_H
#define ZT_NETPLAY_H

/*
 * Online lockstep over the NetLink and the Saturn online relay (ZT_NETPLAY.c). Game-agnostic: the game sends one opaque record
 * of NET_REC_BYTES per step and reads every player's record back.
 */

#define NET_MAXP       4                /* players at most */
#define NET_REC_BYTES  6                /* one player's input for one step */
#define NET_SUMS       2                /* state checksums compared every NET_SUM_EVERY steps */
#define NET_SUM_EVERY  20

/* netConnect's idle callback, about once a field */
#define NET_ST_MODEM   0                /* starting the modem */
#define NET_ST_DIAL    1                /* calling */
#define NET_ST_HALL    2                /* waiting for players: netHall */

/* netEnd: why netStep ended the game */
#define NET_END_LINE   1                /* the carrier is gone */
#define NET_END_LEFT   2                /* another console left */
#define NET_END_SILENT 3                /* no input from another console for NET_TIMEOUT */

extern int netOn;                       /* an online game is running */
extern int netPlayers, netLocal;        /* players in the game; this console's slot, 0..netPlayers-1 */
extern int netStepN;                    /* the next step */
extern int netDesync, netDesyncWhich;   /* the first step whose checksums differed (-1: none), which checksums (bits) */
extern int netSumsChecked, netEnd;
extern Uint32 netWaited;                /* fields spent waiting for the other consoles */
extern unsigned char netHall[5];        /* humans and bots waiting, games and consoles playing, seconds to start (255: none) */

/* modem, call, hall. idle(state) is called while waiting and returns nonzero to cancel.
   -> 1 the game starts (netPlayers, netLocal set), 0 no game, -1 cancelled */
int  netConnect(const char *number, const char *gameId, int minSeats, int maxSeats, int (*idle)(int state));

/* once every console has set the game up: the records of the first NET_DELAY steps */
void netBegin(const unsigned char *neutral, int fields);

/* sends this console's record for step netStepN + NET_DELAY, waits for every player's record for step netStepN.
   -> the step's length in fields, the same on every console (0: the game must end, see netEnd) */
int  netStep(const unsigned char *rec, int fields);

const unsigned char *netRec(int p);     /* player p's record for the step netStep returned */

int  netSumDue(void);                   /* checksums are due after this step */
void netSums(const Uint32 *sums);       /* sends them and compares them with the others' */

void netStop(void);                     /* hang up */

#endif
