#include "ZTE_DEF.H"






#ifdef USE_TRANSP_BUFFER
#define FrameBuffer0 (0x5C80000)
#define FrameBuffer1 (0x5CC0000)

bool        dispFBnbg = 1;
bool        transFB = 1;

Uint16 ztDepthBuffer[BUFFER_WIDTH*BUFFER_HEIGHT]; //It's called "DepthBuffer" because it started as a way to test occlusion culling using the framebuffer. Since I used palette codes with priority ratios, the priorities could tell how far/close a pixel is and could be used for occlusion. I then switched to using the framebuffer for a transparent layer à la Burning Rangers

void ztGetDepthBuffer(void)
{

  if (KEY_PRESS(PLAYER_1.LAST_INPUTS, PER_DGT_TL) && KEY_PRESS(PLAYER_1.LAST_INPUTS, PER_DGT_TR))
  {
      if (transFB) transFB=0;
      else transFB=1;
  }
  if (transFB == 0) return;

int i;
for (i=0; i<BUFFER_HEIGHT; i++)
{
    DMA_ScuMemCopy((void*)(&ztDepthBuffer[i*BUFFER_WIDTH]), (void*)(FrameBuffer0+BUFFER_OFFSET+(i<<BUFFER_VSKIP)), BUFFER_WIDTH*2);
}

return;

    /*int i;
    for (i=0; i<88*56; i++)
    {
        if ((ztDepthBuffer[i]& 0x8000)==0)
            ztDepthBuffer[i] |= 1<<15;
    }*/



    DMA_ScuMemCopy((void*)((tex_def[totalTextures-1].CGadr<<3) + SpriteVRAM), (void*)ztDepthBuffer,  BUFFER_WIDTH*BUFFER_HEIGHT*2);

}
#endif

extern Uint8 showDebugStats;
Sint32 ztGameLoop(Uint32 nbPlayers)
{
    slSynch();
    totalPlayers=nbPlayers;

    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "GAME_LOOP");
        scd_logflush();
    }
    #endif // SATLINK_DEBUG

    ztInitDisplay(nbPlayers);
    ztLoadMap(1, nbPlayers);
    DELAYED_CHANGEMAP=0;
    PerDigital pad1;
    PerDigital pad2;
    TIMER=0;
    PLAYER_1.LIVES=10;
    while (1)
    {
        if (DELAYED_CHANGEMAP==1)        {
            ztLoadMap(0, nbPlayers);
            DELAYED_CHANGEMAP=0;
        }


        pad1 = Smpc_Peripheral[0];
        pad2 = Smpc_Peripheral[15];
        ztUpdateFramerate();

        if (PLAYER_1.LIVES<0) {ztClearText(); slPrint("GAME OVER!", slLocate(17,15)); ztWait(60*5); break;}

        if (KEY_PRESS(pad1.data, PER_DGT_TA) && KEY_PRESS(pad1.data, PER_DGT_TB) && KEY_PRESS(pad1.data, PER_DGT_TC) && KEY_PRESS(pad1.push, PER_DGT_ST) ) break;
        /**If you press START, you can change maps or reset the current level**/
        if (KEY_PRESS(pad1.push, PER_DGT_ST))
        {
            if      (KEY_PRESS(pad1.data, PER_DGT_TL) && KEY_PRESS(pad1.data, PER_DGT_TR))            ztLoadMap(0, nbPlayers);
            else if (KEY_PRESS(pad1.data, PER_DGT_KU))      ztLoadMap(0, nbPlayers);
            else if (KEY_PRESS(pad1.data, PER_DGT_KD))      {SynchConst++; if (SynchConst > 3) SynchConst = 1; }
            else if (KEY_PRESS(pad1.data, PER_DGT_KL))      {slSynch(); slDynamicFrame(OFF); ztUpdateFramerate(); slSynch(); }
            else if (KEY_PRESS(pad1.data, PER_DGT_KR))      {slSynch(); slDynamicFrame(ON);  ztUpdateFramerate(); slSynch(); }
            else if (KEY_PRESS(pad1.data, PER_DGT_TB))      {if (showDebugStats==false) {showDebugStats=true; ztClearText();}
                                                            else {showDebugStats=false; ztClearText();}}
            else    playerHurt(&PLAYER_1, 1);
        }
        if (KEY_PRESS(pad2.push, PER_DGT_ST) && nbPlayers > 1)
        {
            playerHurt(&PLAYER_2, 1);
        }
        slUnitMatrix(0);
        main_loop(nbPlayers);
        TIMER+=ZT_FRAMERATE;


        //ztGetDepthBuffer();
        slSynch();

        #ifdef USE_TRANSP_BUFFER
        if (KEY_PRESS(pad1.data, PER_DGT_TX) && KEY_PRESS(pad1.data, PER_DGT_TZ))   {
            if (dispFBnbg)  {
                dispFBnbg=0;
                slPriorityNbg0(0);
            }
            else  {
                dispFBnbg=1;
                slPriorityNbg0(6);
            }
        }
        #endif

    }
    fadeOut(true);
    ztRemoveSpritesFrom(firstMapTexture);
return GS_END_CREDITS;
}
