#ifndef ONLINE_H
#define ONLINE_H

/*
 * Sonic Z-Treme online (online.c). Build switches (make ZT_DEFS="-D..."):
 *   ZT_NET_NUMBER="..."   the number the NetLink dials (default 199410; the emulated modem ignores it)
 *   ZT_NET_GAME_ID="..."  the relay only matches consoles with the same id (default SONICZT1)
 *   ZT_NET_AUTO=1         go online at boot, and again after each game (unattended tests)
 *   ZT_NET_TEST_PAD=1     this console's player follows a scripted pad (unattended tests)
 *   ZT_NET_DESYNC_QUIT=1  end the game when the consoles disagree (default: show OUT OF SYNC and play on)
 *   ZT_NET_DELAY=n        input delay in steps (default 2); every console must use the same
 */

#ifndef ZT_NET_AUTO
#define ZT_NET_AUTO 0
#endif

#define ztNetOn netOn                   /* an online game is running (ZT_NETPLAY.H) */

Sint32      ztOnlineGame(void);         /* the menu's ONLINE: call, wait for a player, play, hang up */
int         ztNetGameStep(void);        /* every image, before the game logic: this step's pads and length; 0 = game over */
void        ztNetGameAfter(void);       /* every image, after the game logic: checksums, network page */
PerDigital  ztPlayerPad(player_t *p);   /* player p's pad: the console's own offline, the one from the line online */
player_t *  ztNetMe(void);              /* the player this console draws */

#endif
