#include "ZTE_DEF.H"


void        ztInitTimer(unsigned char mode)
{
    unsigned char tcr = (unsigned char)(TIM_PEEK_B(TIM_REG_TCR) & ~TIM_M_CKS);
    if( ( ( mode ) & TIM_M_CKS ) != TIM_M_CKS )    {
        tcr |= ( ( mode ) & TIM_M_CKS );
        TIM_POKE_B(TIM_REG_TCR , tcr);
    }
    TIM_FRT_SET_FRC(0);
}

void        ztWait(unsigned int nbFrames)
{
    unsigned int     ticks = 0;

    while (ticks < (nbFrames*1600))
    {
        ticks += TIM_FRT_CNT_TO_MCR( TIM_FRT_GET_FRC());
        TIM_FRT_SET_FRC(0);

    }
}

#ifndef PAL_VERSION
#define TIM_DIV (16000)
#else
#define TIM_DIV (19000)
#endif // PAL_VERSION

extern Sint16 FRT_Count;
extern Uint8 showDebugStats;


static unsigned long     ticks = 0;

unsigned long ztUpdateTimer(void)
{
    ticks += TIM_FRT_CNT_TO_MCR( TIM_FRT_GET_FRC())/TIM_DIV;


    if (showDebugStats)
    {
        slPrintHex(slHex2Dec( FRT_Count), slLocate(26,3));
    }

    TIM_FRT_SET_FRC(0);
    return (ticks);
}


void        ztUpdateFramerate(void)
{

    /*unsigned int curtime;
    curtime = ztUpdateTimer();
    static unsigned long lasttime=0;
    int Framerate = (curtime-lasttime);*/
    unsigned int frm = TIM_FRT_CNT_TO_MCR( TIM_FRT_GET_FRC());
    TIM_FRT_SET_FRC(0);
    if (showDebugStats)
        slPrintHex(slHex2Dec(frm), slLocate(26,3));
    ZT_FRAMERATE = (frm/TIM_DIV);
    #ifndef PAL_VERSION
    if (ZT_FRAMERATE < 1) ZT_FRAMERATE=1;
    #else
    if (ZT_FRAMERATE < 1) ZT_FRAMERATE=4;
    #endif
    else if (ZT_FRAMERATE > 10) ZT_FRAMERATE=10;
}


void ztLoadLogo()
{
    slBack1ColSet((void *) BACK_CRAM, CD_Black);
    slPriorityNbg3(7); slPrioritySpr0(6); slPriorityNbg0(5); slPriorityNbg1(4);
    #ifndef IS_DEBUG
    ztLoadVDP2bmp("LOGO", "ZTE.ZTI", (Uint16 *)VDP2_VRAM_A0, 1, bmNBG0);
    slScrAutoDisp(NBG0ON | NBG1ON);
    fadeIn();
    Uint16 logoTimer=0;
    while (logoTimer<= 90)
    {
        if (KEY_PRESS(Smpc_Peripheral[0].data,PER_DGT_ST) || KEY_PRESS(Smpc_Peripheral[0].data,PER_DGT_TA) || KEY_PRESS(Smpc_Peripheral[0].data,PER_DGT_TB) || KEY_PRESS(Smpc_Peripheral[0].data,PER_DGT_TC))
            break;
        logoTimer+=ZT_FRAMERATE;
        slSynch();
    }
    #endif
}

