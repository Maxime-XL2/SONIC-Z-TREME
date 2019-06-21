#include "ZTE_DEF.h"

/***
Menu implementation : A real shitshow, I just coded it as fast as I could to get the demo ready for Sage 2018...
I "cleaned" it in the newer versions of the engine and added a cooler title screen using an actual 3d map like in Saturn Quake
***/
typedef enum
{
    MM_MAIN_SCREEN,
    MM_GAME_SELECT,
    MM_OPTIONS,
} MENU_STATE;

void setMenu(void)
{
    fadeOut(1);
    ztRemoveSpritesFrom(firstMapTexture);
    slCurWindow(winFar);
    slWindow(0, 0, ZT_TV_WIDTH-1, ZT_TV_HEIGHT-1, def_drawDist, ZT_TV_WIDTH/2, ZT_TV_HEIGHT/2); //Includes the draw distance. Also I left 40 pixels for a HUD.
    slScrWindow0(0 , 0 , ZT_TV_WIDTH-1, ZT_TV_HEIGHT-1) ;
    slScrWindowModeNbg1(win0_IN);
    slScrWindowModeNbg0(win0_IN);

    void * ptr = (void*)(LWRAM);
    ztCDsetDir("MENU");
    {
        ztLoadTexture((Sint8*)"START.ZTI", ptr);
        ztLoadTexture((Sint8*)"1PLAY.ZTI", ptr);
        ztLoadTexture((Sint8*)"2PLAY.ZTI", ptr);
        ztLoadTexture((Sint8*)"OPTIO.ZTI", ptr);
        ztLoadVDP2bmp(NULL, "NBG0.ZTI", (Uint16 *)VDP2_VRAM_A0, 1, bmNBG0);
        ztLoadVDP2bmp(NULL, "CLOUD004.ZTI", (Uint16 *)VDP2_VRAM_B0, 2, bmNBG1);
    }
    ztCDsetRoot();
    ztPlayCDDA(1,1);

    #ifndef SATLINK_DEBUG
    memset_l((void*)(LWRAM), 0, 0x0FFFFF);
    #endif // SATLINK_DEBUG

    slPriorityNbg0(4);    slPriorityNbg1(3);
    slScrAutoDisp(NBG0ON|NBG1ON|NBG3ON|SPRON);
    fadeIn();
}


Sint32 mainMenu(void)
{
    setMenu();
    Sint8       fadeEffect = 0;
    Sint8       currentMenu = 0;
    Sint8       currentOption = 0;
    Sint8       returnState = GS_DEMO;
    Sint32      menuTimer = 0;
    Sint32      spriteAnimation = 0;
    extern FIXED PSEUDO_FISHEYE;
    extern Uint32 WIREFRAME_TEST;

    while (1)
    {
        ztUpdateFramerate();

        slScrPosNbg1(toFIXED(menuTimer*2), toFIXED(menuTimer));

        PerDigital pad1 = Smpc_Peripheral[0];
        PerDigital pad2 = Smpc_Peripheral[14];
        if (pad1.id == PER_ID_NotConnect)
            continue;
        if ((pad1.data & PER_DGT_TX) == 0 && (pad1.data & PER_DGT_TY) == 0 &&
            (pad1.data & PER_DGT_TZ) == 0 && (pad1.data & PER_DGT_ST) == 0 )
            {returnState = GS_EXIT; break; }

        if (((pad1.push & PER_DGT_TA) == 0) || ((pad1.push & PER_DGT_ST) == 0) || ((pad1.push & PER_DGT_TC) == 0))
            ztPlaySound(60); //slSequenceOn(0<<8, 0, 127, 0);
        if ((pad1.push & PER_DGT_TB) == 0)
        {
            if (currentMenu <= 0) currentMenu = 0;
            else {currentMenu--;} //if (currentMenu==0) menuTimer = 0;}
        }

        fadeEffect+=(ZT_FRAMERATE*8);
        menuTimer += ZT_FRAMERATE;
        ztClearText();

        if (currentMenu==MM_MAIN_SCREEN)
        {
            if (menuTimer >= 60*60) {returnState=GS_DEMO; break;}
            if (((pad1.push & PER_DGT_ST) == 0) || ((pad1.push & PER_DGT_TA) == 0) || ((pad1.push & PER_DGT_TC) == 0)){ // == 0 || (Smpc_Peripheral[14].data & PER_DGT_ST) == 0 ) {
                currentMenu=1;
                currentOption=0; }
            else {
                if (fadeEffect >= 0) ztSetNormalSprite(firstMapTexture + 0, -124, 60, toFIXED(150.0));}
        }



        else if (currentMenu==MM_GAME_SELECT)
        {
                if (fadeEffect >= 0 || currentOption != 0) ztSetNormalSprite(firstMapTexture + 1, -68, -40, toFIXED(150.0));
                if (fadeEffect >= 0 || currentOption != 1) ztSetNormalSprite(firstMapTexture + 2, -68, 0, toFIXED(150.0));
                if (fadeEffect >= 0 || currentOption != 2) ztSetNormalSprite(firstMapTexture + 3, -68, 40, toFIXED(150.0));

                if ((pad1.push & PER_DGT_ST) == 0 || (pad1.push & PER_DGT_TA) == 0 || (pad1.push & PER_DGT_TC) == 0 || (pad2.push & PER_DGT_ST) == 0 )
                {
                    if (currentOption == 2) {currentMenu=2; currentOption=0;}
                    else if (currentOption == 0) {returnState=GS_1PLAYER; break;}  //Does nothing for now
                    else if (currentOption == 1) {returnState=GS_2PLAYERS; break;}  //Does nothing for now
                }

                if ((pad1.push & PER_DGT_KU) == 0 || (pad2.push & PER_DGT_KU) == 0 )
                    {currentOption--; if (currentOption < 0) currentOption=2;}
                else if ((pad1.push & PER_DGT_KD) == 0 || (pad2.push & PER_DGT_KD) == 0 )
                    {currentOption++; if (currentOption > 2) currentOption=0;}
                if (currentOption > 2) currentOption=0;
        }


        else if (currentMenu == MM_OPTIONS)
        {
            menuTimer=0;
            spriteAnimation+=ZT_FRAMERATE;
            if (spriteAnimation > 7*4) spriteAnimation=0;

            if (currentOption != 0) ztSetNormalSprite(0, -(68*2), -44, toFIXED(150.0));
            else ztSetNormalSprite(spriteAnimation>>2, -(68*2), -44, toFIXED(150.0));

            if (currentOption != 1) ztSetNormalSprite(0, -(68*2), -4, toFIXED(150.0));
            else ztSetNormalSprite(spriteAnimation>>2, -(68*2), -4, toFIXED(150.0));

            if (currentOption != 2) ztSetNormalSprite(0, -(68*2), 32, toFIXED(150.0));
            else ztSetNormalSprite(spriteAnimation>>2, -(68*2), 32, toFIXED(150.0));

            if (currentOption != 3) ztSetNormalSprite(0, -(68*2), 32+40, toFIXED(150.0));
            else ztSetNormalSprite(spriteAnimation>>2, -(68*2), 32+40, toFIXED(150.0));

            if (USE_MAP_GOURAUD==1)
                slPrint("Using HQ model gouraud (SLOW)!", slLocate(10,2));
            else
                slPrint("                              ", slLocate(10,2));

            if (WIREFRAME_TEST==1)
                slPrint("WIREFRAME DEBUG", slLocate(10,4));
            else if (WIREFRAME_TEST==2)
                slPrint("SPRITE DEBUG   ", slLocate(10,4));
            else if (WIREFRAME_TEST==3)
                slPrint("POLYGON DEBUG  ", slLocate(10,4));
            else if (WIREFRAME_TEST==4)
                slPrint("TRANSP. DEBUG  ", slLocate(10,4));
            else
                slPrint("               ", slLocate(10,4));

            slPrint("TARGET FRAMERATE : ", slLocate(10, 10));
            if (SynchConst==1) slPrint("60", slLocate(28, 10));
            else if (SynchConst==2) slPrint("30", slLocate(28,10));
            else if (SynchConst==3) slPrint("20", slLocate(28,10));
            else if (SynchConst==4) slPrint("15", slLocate(28,10));

            slPrint("PLAYER 1 MODEL : ", slLocate(10, 15));
            if (PLAYER_1.ENTITY_ID==0) slPrint("SONIC ", slLocate(28,15));
            else if (PLAYER_1.ENTITY_ID==1) slPrint("METAL ", slLocate(28,15));
            else slPrint("BADNIK", slLocate(28,15));

            slPrint("REALTIME LIGHT : ", slLocate(10, 20));
            if (enableRTG==1) slPrint("ON ", slLocate(28,20));
            else if (enableRTG==0) slPrint("OFF", slLocate(28,20));

            slPrint("PSEUDO FISHEYE : ", slLocate(10, 25));
            if (PSEUDO_FISHEYE==FISH_EYE) slPrint("ON ", slLocate(28,25));
            else slPrint("OFF", slLocate(28,25));

            if (KEY_PRESS(pad1.data,PER_DGT_TL) && KEY_PRESS(pad1.data,PER_DGT_TR) && ((pad1.push & PER_DGT_ST)==0))
            {if (USE_MAP_GOURAUD==0) USE_MAP_GOURAUD=1; else USE_MAP_GOURAUD=0;}

            if (KEY_PRESS(pad1.data,PER_DGT_TL) && KEY_PRESS(pad1.data,PER_DGT_TR) && (KEY_PRESS(pad1.push, PER_DGT_KU)))
            {WIREFRAME_TEST++; if (WIREFRAME_TEST>4) WIREFRAME_TEST=0;}

            if ((pad1.push & PER_DGT_KU) == 0 || (pad2.push & PER_DGT_KU) == 0 )
            {currentOption--; if (currentOption < 0) currentOption=3;}
            else if ((pad1.push & PER_DGT_KD) == 0 || (pad2.push & PER_DGT_KD) == 0 )
            {currentOption++; if (currentOption > 3) currentOption=0;}

            if ((pad1.push & PER_DGT_KR) == 0 || (pad2.push & PER_DGT_KR) == 0 )
            {
                if (currentOption==0) {if (SynchConst == 1) SynchConst=4; else SynchConst--;}
                else if (currentOption==1)
                    {
                        if (PLAYER_1.ENTITY_ID ++ > 2) PLAYER_1.ENTITY_ID=0;
                        //{PLAYER_1.ENTITY_ID = 0; PLAYER_2.ENTITY_ID = 0;}
                    }
                else if (currentOption==2)
                {
                    if (enableRTG==1) enableRTG=0;
                    else enableRTG=1;
                }
                else if (currentOption==3)
                {
                    if (PSEUDO_FISHEYE==toFIXED(188.73475)) PSEUDO_FISHEYE=FISH_EYE;
                    else PSEUDO_FISHEYE=toFIXED(188.73475);
                }

            }
            else if ((pad1.push & PER_DGT_KL) == 0 || (pad2.push & PER_DGT_KL) == 0 )
            {
                if (currentOption==0) {if (SynchConst++ > 3) SynchConst=1;}
                else if (currentOption==1)
                    {
                        if (PLAYER_1.ENTITY_ID == 0 ) PLAYER_1.ENTITY_ID=2;
                        else PLAYER_1.ENTITY_ID--;
                        /*if (PLAYER_1.PLAYER_ID == 0) {PLAYER_1.PLAYER_ID = 15; PLAYER_2.PLAYER_ID = 0;}
                        else if (PLAYER_2.PLAYER_ID == 0) {PLAYER_1.PLAYER_ID = 0; PLAYER_2.PLAYER_ID = 15;}*/
                    }
                else if (currentOption==2)
                {
                    if (enableRTG==1) enableRTG=0;
                    else enableRTG=1;
                }
                else if (currentOption==3)
                {
                    if (PSEUDO_FISHEYE==toFIXED(188.73475)) PSEUDO_FISHEYE=FISH_EYE;
                    else PSEUDO_FISHEYE=toFIXED(188.73475);
                }
            }
        if (PLAYER_1.ENTITY_ID == 0) PLAYER_2.ENTITY_ID=1;
        else PLAYER_2.ENTITY_ID=0;
        }


        slSynch();
    }
    fadeOut(1);
    ztRemoveSpritesFrom(firstMapTexture);

    return returnState;
}
