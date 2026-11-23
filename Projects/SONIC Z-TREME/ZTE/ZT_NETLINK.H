#ifndef ZT_NETLINK_H
#define ZT_NETLINK_H

/* The Sega NetLink modem as a byte pipe (ZT_NETLINK.c) */

extern volatile Uint32 ztNetFields;     /* video fields, counted by ztVBLANKcustom: the online clock */

int  nlOpen(void);                      /* power, UART, Hayes: 1 = the modem answers */
int  nlDial(const char *number);        /* 1 = connected */
int  nlConnected(void);                 /* the carrier is still there */
int  nlSend(const unsigned char *d, int n);
int  nlRecv(unsigned char *d, int max); /* what came, at most max bytes; never waits */
void nlClose(void);                     /* hang up, power off */

extern int nlBytesIn, nlLost, nlIrqs, nlBaud;   /* bytes received, bytes lost, interrupts taken, 28800/14400 (0: none) */

#endif
