#include "ZTE_DEF.H"

/*
 * ZT_NETLINK.c: the Sega NetLink modem as a byte pipe (power, UART, Hayes AT, dial, then bytes both ways).
 * Adapted from the Aguzzino port's NetLink driver.
 *
 * Hardware (Yabause netlink.c, the Disasteroids NetLink driver):
 *  - a 16550 UART on the A-bus at 0x25895001, one register every 4 bytes;
 *  - powered by SMPC command 0x0A (0x0B: off), which SGL's slRequestCommand cannot send;
 *  - 0xFF must be written to 0x2582503D after every register access (undocumented, needed on a console);
 *  - 115200 / divisor baud: 28800 (divisor 4), 14400 at most on a Japanese NetLink;
 *  - its interrupt is A-bus external 12, vector 0x5C. The receive FIFO holds 16 bytes, about 5.5 ms of line: once connected,
 *    the interrupt moves them to nlRx whatever the game is doing. Polling would lose bytes while the game draws or loads.
 *    The AT dialog before that is polled.
 */

/* BIOS calls, as SGL's SEGA_INT.H defines them (SGL.H includes it only when SATURN is defined) */
#define INT_SetScuFunc(n, h)  ((**(void(**)(Uint32, void*))0x6000300)((n), (h)))
#define INT_GetScuFunc(n)     ((void*)(**(void(*(**)(Uint32))(Uint32))0x6000304)(n))
#define INT_ChgMsk(ena, dis)  ((**(void(**)(Uint32, Uint32))0x6000344)(~(Uint32)(ena), (dis)))
#define INT_MSK_NULL          0
#define INT_MSK_VBLK_IN       (1 << 0)
#define INT_MSK_ABUS          (1 << 15)

#define NL_REG(n)    (*(volatile unsigned char *)(0x25895001 + 4 * (n)))
#define NL_QUIRK     (*(volatile unsigned char *)0x2582503D)
#define NL_RBR 0     /* RBR, THR, DLL */
#define NL_THR 0
#define NL_DLL 0
#define NL_IER 1     /* IER, DLM */
#define NL_DLM 1
#define NL_FCR 2     /* FCR when written, IIR when read */
#define NL_LCR 3
#define NL_MCR 4
#define NL_LSR 5
#define NL_MSR 6
#define NL_SCR 7
#define NL_VEC       0x5c
#define NL_IACK      (*(volatile Uint32 *)0x25fe00a8)   /* SCU A-bus interrupt acknowledge */
#define SMPC_COMREG  (*(volatile unsigned char *)0x2010001F)
#define SMPC_SF      (*(volatile unsigned char *)0x20100063)

volatile Uint32 ztNetFields;            /* counted by ztVBLANKcustom */
int nlBytesIn, nlLost, nlIrqs, nlBaud;

static int nlState;                     /* 0 off, 1 the modem answers, 2 connected */
static unsigned char nlRx[512], nlTx[512];
static volatile int nlRxHead, nlRxTail, nlTxHead, nlTxTail;
static volatile int nlTxOn;             /* the THRE interrupt is on: nlTx holds bytes */
static int nlFifo = 1;                  /* bytes the transmit FIFO takes at a THRE: 16 on a 16550 */
static void (*nlIsrWas)(void);

static unsigned char nlGet(int r)
{
    unsigned char v = NL_REG(r);
    NL_QUIRK = 0xff;
    return v;
}

static void nlSet(int r, unsigned char v)
{
    NL_REG(r) = v;
    NL_QUIRK = 0xff;
}

static unsigned char nlLsr(void)
{
    unsigned char v = nlGet(NL_LSR);
    if (v & 2)
        nlLost++;                       /* overrun: a byte came to a full FIFO */
    return v;
}

/* SGL sends its INTBACK from the V-blank-in interrupt: masked so the two commands never cross */
static void nlSmpc(int c)
{
    int t;
    INT_ChgMsk(INT_MSK_NULL, INT_MSK_VBLK_IN);
    for (t = 0; (SMPC_SF & 1) && t < 1000000; t++)
        ;
    SMPC_SF = 1;
    SMPC_COMREG = (unsigned char)c;
    for (t = 0; (SMPC_SF & 1) && t < 1000000; t++)
        ;
    INT_ChgMsk(INT_MSK_VBLK_IN, INT_MSK_NULL);
}

static void nlWaitFields(int n)
{
    Uint32 t0 = ztNetFields;
    while ((int)(ztNetFields - t0) < n)
        ;
}

/* the receive FIFO into nlRx */
static void nlTake(void)
{
    int n;
    for (n = 0; n < 64 && (nlLsr() & 1); n++)
    {
        int h = (nlRxHead + 1) & (sizeof(nlRx) - 1);
        unsigned char b = nlGet(NL_RBR);
        if (h == nlRxTail)
        {
            nlLost++;
            continue;
        }
        nlRx[nlRxHead] = b;
        nlRxHead = h;
        nlBytesIn++;
    }
}

static void nlIsr(void)
{
    int n, k;
    for (n = 0; n < 8; n++)             /* every pending cause, highest first */
    {
        unsigned char iir = nlGet(NL_FCR);
        if (iir & 1)
            break;
        switch (iir & 0x0e)
        {
            case 0x02:                  /* transmit FIFO empty: refill it from nlTx */
                for (k = 0; k < nlFifo && nlTxTail != nlTxHead; k++)
                {
                    nlSet(NL_THR, nlTx[nlTxTail]);
                    nlTxTail = (nlTxTail + 1) & (sizeof(nlTx) - 1);
                }
                if (nlTxTail == nlTxHead)
                {
                    nlTxOn = 0;
                    nlSet(NL_IER, 0x05);
                }
                break;
            case 0x06:                  /* line status */
                nlLsr();
                break;
            default:                    /* received data, or its timeout */
                nlTake();
                break;
        }
    }
    nlIrqs++;
    NL_IACK = 1;
}

static void nlIrqArm(int on)
{
    if (on)
    {
        nlIsrWas = (void (*)(void))INT_GetScuFunc(NL_VEC);
        INT_SetScuFunc(NL_VEC, nlIsr);
        nlSet(NL_FCR, 0x01);            /* FIFOs on but not cleared (the relay may already speak), interrupt at the first byte */
        nlSet(NL_MCR, 0x0b);            /* DTR, RTS, OUT2 */
        nlTxHead = nlTxTail = nlTxOn = 0;
        nlSet(NL_IER, 0x05);            /* received data, line status; THRE only while nlTx holds bytes */
        NL_IACK = 1;
        INT_ChgMsk(INT_MSK_ABUS, INT_MSK_NULL);
    }
    else
    {
        INT_ChgMsk(INT_MSK_NULL, INT_MSK_ABUS);
        nlSet(NL_IER, 0);
        INT_SetScuFunc(NL_VEC, nlIsrWas);
    }
}

/* the THRE interrupt on when bytes wait */
static void nlKick(void)
{
    INT_ChgMsk(INT_MSK_NULL, INT_MSK_ABUS);
    if (!nlTxOn && nlTxTail != nlTxHead)
    {
        nlTxOn = 1;
        nlSet(NL_IER, 0x07);            /* comes at once: the transmit FIFO is empty */
    }
    INT_ChgMsk(INT_MSK_ABUS, INT_MSK_NULL);
}

int nlRecv(unsigned char *d, int max)
{
    int n = 0;
    while (n < max && nlRxTail != nlRxHead)
    {
        d[n++] = nlRx[nlRxTail];
        nlRxTail = (nlRxTail + 1) & (sizeof(nlRx) - 1);
    }
    return n;
}

int nlSend(const unsigned char *d, int n)
{
    int i, t;
    if (nlState != 2)
        return 0;
    for (i = 0; i < n; i++)
    {
        int h = (nlTxHead + 1) & (sizeof(nlTx) - 1);
        if (h == nlTxTail)
        {
            nlKick();
            for (t = 0; h == nlTxTail && t < 1000000; t++)
                ;
            if (h == nlTxTail)
                return i;               /* never drained: give up rather than overwrite */
        }
        nlTx[nlTxHead] = d[i];
        nlTxHead = h;
    }
    nlKick();
    return n;
}

/* the AT dialog, polled: the modem's echo and answers are read into nlRx while a command goes out */
static int nlGetc(void)
{
    unsigned char c;
    if (nlRxTail == nlRxHead)
        nlTake();
    if (nlRxTail == nlRxHead)
        return -1;
    c = nlRx[nlRxTail];
    nlRxTail = (nlRxTail + 1) & (sizeof(nlRx) - 1);
    return c;
}

static void nlSendStr(const char *s)
{
    int t;
    for (; *s; s++)
    {
        for (t = 0; !(nlLsr() & 0x20) && t < 100000; t++)
            nlTake();
        nlSet(NL_THR, (unsigned char)*s);
        nlTake();
    }
}

/* 1 = a line starting with `want` came before an error line and within `fields` fields */
static int nlAnswer(const char *want, int fields)
{
    static const char *const fail[4] = {"ERROR", "NO CARRIER", "BUSY", "NO DIALTONE"};
    char line[48];
    int len = 0, c, i;
    Uint32 t0 = ztNetFields;
    while ((int)(ztNetFields - t0) < fields)
    {
        while ((c = nlGetc()) >= 0)
        {
            if (c != '\r' && c != '\n')
            {
                if (len < (int)sizeof(line) - 1)
                    line[len++] = (char)c;
                continue;
            }
            line[len] = 0;
            if (len && !strncmp(line, want, strlen(want)))
                return 1;
            for (i = 0; i < 4; i++)
                if (!strncmp(line, fail[i], strlen(fail[i])))
                    return 0;
            len = 0;
        }
    }
    return 0;
}

static int nlAt(const char *cmd, int fields)
{
    nlRxHead = nlRxTail = 0;
    nlSendStr(cmd);
    nlSendStr("\r");
    return nlAnswer("OK", fields);
}

/* power, UART, Hayes: 1 = the modem answers */
int nlOpen(void)
{
    static const unsigned char divisor[2] = {4, 8};     /* 28800, 14400 baud */
    int d;
    nlState = nlBaud = 0;
    nlSmpc(0x0B);                       /* off, then on: the modem boots from its EEPROM (~700 ms) */
    nlWaitFields(6);
    nlSmpc(0x0A);
    nlWaitFields(42);
    for (d = 0; d < 2 && !nlBaud; d++)
    {
        nlSet(NL_LCR, 0x80);            /* DLAB: set the divisor */
        nlSet(NL_DLL, divisor[d]);
        nlSet(NL_DLM, 0);
        nlSet(NL_LCR, 0x03);            /* 8N1 */
        nlSet(NL_FCR, 0x07);            /* FIFOs on and cleared */
        nlSet(NL_IER, 0);
        nlSet(NL_MCR, 0x03);            /* DTR, RTS */
        if (!d)
        {
            nlSet(NL_SCR, 0x55);        /* no NetLink in the slot: nothing holds the value */
            if (nlGet(NL_SCR) != 0x55)
                return 0;
            nlFifo = (nlGet(NL_FCR) & 0xc0) == 0xc0 ? 16 : 1;
        }
        nlWaitFields(6);
        nlState = 1;
        if (nlAt("AT", 60) || nlAt("AT", 60))
            nlBaud = d ? 14400 : 28800;
    }
    if (!nlBaud)
    {
        nlState = 0;
        return 0;
    }
    nlAt("ATZ", 120);
    nlAt("ATE0", 60);                   /* no echo */
    nlAt("ATV1", 60);                   /* answers in words */
    nlAt("AT&K3", 60);                  /* RTS/CTS flow control */
    return 1;
}

/* 1 = CONNECT within 40 s */
int nlDial(const char *number)
{
    Uint32 t0;
    if (nlState < 1)
        return 0;
    nlRxHead = nlRxTail = 0;
    nlSendStr("ATDT");
    nlSendStr(number);
    nlSendStr("\r");
    if (!nlAnswer("CONNECT", 60 * 40))
        return 0;
    /* nlAnswer stopped at the '\r' of "CONNECT 28800\r\n": drop the '\n', or it would read as the first byte of data.
       What follows it (the relay may already speak) stays in nlRx */
    t0 = ztNetFields;
    while (nlRxTail == nlRxHead && (int)(ztNetFields - t0) < 10)
        nlTake();
    if (nlRxTail != nlRxHead && nlRx[nlRxTail] == '\n')
        nlRxTail = (nlRxTail + 1) & (sizeof(nlRx) - 1);
    nlState = 2;
    nlIrqArm(1);
    return 1;
}

int nlConnected(void)
{
    return nlState == 2 && (nlGet(NL_MSR) & 0x80);    /* carrier detect */
}

void nlClose(void)
{
    if (nlState == 2)
        nlIrqArm(0);
    if (nlState)
    {
        nlSet(NL_MCR, 0x00);            /* DTR down: hang up */
        nlWaitFields(60);
        nlSmpc(0x0B);
    }
    nlState = 0;
}
