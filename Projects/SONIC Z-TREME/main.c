#include "ZTE/ZTE_DEF.h"

/****
SONIC Z-TREME v.0.0813 BY XL2
GPL license : If you share a binary version of this, you share back the code.
And please don't be a jerk, just give me some credits somewhere.

Note on this code : it's not pretty, I know!

Note on this build : it was rushed for SAGE 2018. I had no working build in 2018 and wanted to try a new engine using octrees.
I also wrote a custom animation system, which I was proud of (done in like 2 weeks part time, I was very pleased with the results even if it's not user friendly).
THIS VERSION IS POST-SAGE : I did many experiments, so it's not as good as the Sage version.

About the map compiler : It truly sucks. I won't share it for now, I would need to clean it quite a bit, but it really sucks. It started as simple model converter to a collision generator to
a full map compiler. And I did so many experiments, so many different iterations of the engine that it's a real shitshow of unused code, abandonned experiments,
working experiments with terrible code, duplicate functions, etc.
In other words, it's terrible even to myself, so I won't share it yet.
****/

/**GLOBAL VARIABLES**/
mapData_t       MDATA;
player_t        PLAYER_1, PLAYER_2;
octree_node_t * nodes[MAX_OBJECT];
XPDATA *        LevelMesh[MAX_OBJECT];
XPDATA *        LevelMeshLOD[MAX_OBJECT];
CDATA *         LevelColl[MAX_OBJECT];
Uint32          draw_distance;
Uint32          totalTextures;
Uint32          totalPlayers=0;
TEXTURE	        tex_def[MAX_SPRITES];
camera_t        cam1, cam2;
Sint8           ZT_FRAMERATE;
Sint8           DELAYED_CHANGEMAP;
Sint16          padding;
Uint8 *         HWRAM_DYNAMIC_MEM_PTR;
//Uint8 *         HWRAM_MEM_MAPSTART;
Uint32          TIMER;
Uint32          PSEUDO_FISHEYE=toFIXED(188.73475);
Uint32          USE_MAP_GOURAUD = 0;
animArray_t     animArray[64];

#ifdef SATLINK_DEBUG
int _sclib_4d_pclink_use;
#endif // SATLINK_DEBUG


unsigned char * PVS;
/**END**/


void ztInit()
{
    #ifdef SATLINK_DEBUG
    /*
     * sclib_4d initialization : if sclib_4d stub is pre-loaded in LRAM,
     * then sclib_4d is initialized so that file access to PC and log
     * messages display to PC (via USB dev cart and SatLink) are enabled.
     *
     * Note : it is possible to pre-load sclib_4d stub by setting up SatLink
     * in order to upload sclib_4d stub in LRAM from from the following address
     *  SCLIB_4D_LOAD_ADDRESS (0x002E0000)
     * and then to upload and execute the program to test.
     * Please note that it is LRAM shouldn't be cleared when executing program
     * to test (= uncheck "Clear LRAM" from SatLink main tab -> "Exec Parameters"),
     * so that stub is kept when executing program to test.
     *
     * Note : when sclib_4d stub is not found in LRAM (for example when executing
     * this program from CD-ROM), then sclib_4d is not enabled, and file access is
     * done on CD-ROM.
     */
    if(sclib_4d_stub_check())
    {
        /* Initialize sclib_4d. */
        sclib_4d_init();

        /* Enable usage of PC link instead of CD-ROM access. */
        _sclib_4d_pclink_use = 1;

       scd_msgout(1, "System init");
       scd_logout("Init system...")
       {
           //sc_check();
           scd_logflush();
       }



    }
    #endif

    slInitSystem(ZT_RES, tex_def, DEFAULT_FRAMERATE);
    slTVOff();

	slDynamicFrame(ON) ;
    SynchConst=DEFAULT_FRAMERATE;

    ZT_FRAMERATE=(DEFAULT_FRAMERATE);
	slPerspective(DEGtoANG(70.0));

	totalTextures=0;
    ztCDinit();
    slColOffsetB(-255,-255,-255);
    slColOffsetOn(NBG0ON | NBG1ON | NBG2ON | NBG3ON | SPRON | RBG0ON);
	slColOffsetBUse(NBG0ON | NBG1ON | NBG2ON | NBG3ON | SPRON | RBG0ON);
    ztFont2NBG3();
    slPriorityNbg3(0);
    ztLoadVDP2bmp("LOGO", "SEGATA.ZTI", (Uint16*)VDP2_VRAM_A0, 1, bmNBG0);
    fadeIn();

    ztInitSound();
    slInitGouraud(gourRealMax, GOUR_REAL_MAX, GRaddr, vwork);
	slIntFunction(ztVBLANKcustom);

    ztLoadPermanentAssets(2);
    fadeOut(1);
    slPriorityNbg3(7);
    ztLoadLogo();
    ztInitTimer(1);
    PLAYER_1.PLAYER_ID=0;
    PLAYER_1.ENTITY_ID=0;
    PLAYER_2.PLAYER_ID=15;
    PLAYER_2.ENTITY_ID=1;
    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "Assets loaded");
        scd_logflush();
    }
    #endif // SATLINK_DEBUG
}




int main(void)
{
    /**Init display**/
	ztInit();

    Sint32 gameState = 0;
	while (1)
	{
	    gameState = mainMenu();
	    if (gameState == GS_1PLAYER) {gameState = ztGameLoop(1);}
	    if (gameState == GS_2PLAYERS) {gameState = ztGameLoop(2);}
	    if (gameState == GS_EXIT)    SYS_Exit(0);
	    if (gameState == GS_DEMO)    {gameState = GS_MAIN_SCREEN;} //Temporary, it's meant to add a demo mode
        if (gameState==  GS_MAIN_SCREEN)       ztLoadLogo();
	}
	return 7;
}
