#include "../ZTE/ZTE_DEF.H"

animArray_t animArray[64];

void ztResetAllEntities()
{
    int i, ii;
    for (i=0; i<MDATA.TOTAL_NODES; i++)
    {
        for (ii=0; ii<nodes[i]->nbEntities; ii++)
        {
            nodes[i]->entbl[ii].status = 1;
            nodes[i]->entbl[ii].tick = 0;
        }
    }
}
extern Uint8 showDebugStats;
void ztReset(player_t *currentPlayer)
{


    camera_t * curCam;
    if (currentPlayer->PLAYER_ID==0)
    {
        slPrint("SONIC Z-TREME SAGE 2018 DEMO (v.0.0813)" , slLocate(3,0));
        slPrint("LIVES : " , slLocate(0,26));
        //slPrint("¬¢¤²¬£@±*³¼½¾", slLocate(5,1));
        curCam=&cam1;
        TIMER=0;
        /*slPrint("RINGS : ", slLocate(0,4));
        slPrint("TIME  : ", slLocate(0,5));*/

        //#ifndef NO_DEBUG
        if (showDebugStats)
        {
            slPrint("FRAME TM: ", slLocate(15,3));
            slPrint("FRAMERATE : ", slLocate(0,24));
            slPrint("TOTAL QUADS : ", slLocate(0,25));
            slPrint("DISP QUADS : ", slLocate(0,26));
            slPrint("TOTAL VERTS : ", slLocate(0,27));

        }
        ztResetAllEntities();
        PLAYER_2.INVINCIBLE = 60*3;
       // #endif
    }
    else curCam=&cam2;

	currentPlayer->SPEED[X] = toFIXED(0.0);
	currentPlayer->SPEED[Y] = toFIXED(0.0);
	currentPlayer->SPEED[Z] = toFIXED(0.0);

    currentPlayer->POSITION[X] = toFIXED(0.0);
    currentPlayer->POSITION[Y] = -toFIXED(50.0);

    if (currentPlayer->PLAYER_ID == 0) currentPlayer->POSITION[Z] = toFIXED(0.0);
    else currentPlayer->POSITION[Z] = toFIXED(60.0);

    if (currentPlayer->PLAYER_ID==0) currentPlayer->ROTATION[Y] = 32768;
    else
    currentPlayer->ROTATION[Y] = 0;

    currentPlayer->ROTATION[X] = DEGtoANG(0.0);
    currentPlayer->ROTATION[Z] = DEGtoANG(0.0);
    currentPlayer->STATUS = DOUBLE_JUMP | CAN_JUMP;
    currentPlayer->INVINCIBLE=60*3;
    currentPlayer->OWNED = 0;
    currentPlayer->COLOR=0;
    currentPlayer->LAST_INPUTS=65535;
    currentPlayer->SPIN_CHARGE=0;
    curCam->pos[X]=currentPlayer->POSITION[X];
    curCam->pos[Y]=currentPlayer->POSITION[Y];
    curCam->pos[Z]=currentPlayer->POSITION[Z];
    curCam->yOffset=-toFIXED(80.0);
    curCam->camDist=toFIXED(50.0);
    curCam->camAngle[X]=0;
    curCam->camAngle[Y]=0;
    curCam->camAngle[Z]=0;
    curCam->targetAngle=curCam->camAngle[Y];
    update_camera(currentPlayer, curCam);


}

int mapId=0;
char * ztMapNameLookUp(int lvl)
{
    char * filename;
    if (lvl != 0)            mapId = lvl;
    else            mapId++;
    if (mapId>3)mapId=1;


        if (mapId==1) filename = "JADE1.ZTM";
        else if (mapId==2) filename = "RED.ZTM";//"CRYST2.ZTM";
        //else if (mapId==3) filename = "GALAXY.ZTM";
        else if (mapId==3) filename = "TEST5.ZTM";
        else if (mapId==4) filename = "TEST.ZTM";//"PEACH.ZTM";
        else if (mapId==5) filename = "TEST2.ZTM";//"E1L1.ZTM";
        else filename = "JADE1.ZTM";


    Uint16 cmode;
    if (filename == "JADE1.ZTM" || filename == "JADE1.LQ" || filename == "PEACH.ZTM")
        cmode=ztLoadVDP2bmp("BG", "CRYSTBG.ZTI", (Uint16 *)VDP2_VRAM_A1, 0, bmNBG1);
        //cmode=ztLoadVDP2bmp("BG", "JADEBG.ZTI", (Uint16 *)VDP2_VRAM_A0, 0, bmNBG1);
    else if (filename == "CRYST2.ZTM" || filename == "CRYST2.LQ")
        cmode=ztLoadVDP2bmp("BG", "CRYSTBG.ZTI", (Uint16 *)VDP2_VRAM_A1, 0, bmNBG1);
    else
        cmode=ztLoadVDP2bmp("BG", "REDBG.ZTI", (Uint16 *)VDP2_VRAM_A1, 0, bmNBG1);

    if (totalPlayers>1)
    {
        if (cmode==2)
        {
            slBitMapNbg0(COL_TYPE_16, BM_512x256, (void *)VDP2_VRAM_A1);
            slBMPalette(bmNBG0 , 0);
            slPriorityNbg0(3);
        }
        else
        {
            slBitMapNbg0(COL_TYPE_256, BM_512x512, (void *)VDP2_VRAM_A1);
            slBMPalette(bmNBG0 , 0);
            slPriorityNbg0(3);
        }

    }
    else
        slPriorityNbg0(0);

    return filename;
}

void setHUD()
{

    /*ztCDsetDir("HUD");
    {
        Sint32 fid;
        fid = GFS_NameToId((Sint8*)"CRAM.CRM");
        GFS_Load(fid, 0, (Uint32 *)LWRAM, (256*sizeof(short)));
        Pal2CRAM((void*)LWRAM, (void*)(VDP2_COLRAM), 256);
        fid = GFS_NameToId((Sint8*)"VDP2.RIP");
        GFS_Load(fid, 0x60000/0x800, (Uint32 *)LWRAM, (0x20000));
        slDMACopy((void*)LWRAM, (void*)(VDP2_VRAM_B1), 0x20000);
    }
    ztCDsetRoot();
    */
    /*void * ptr = (void*)LWRAM;
    ztCDsetDir("HUD");
    {
        Sint32 fid = GFS_NameToId((Sint8*)"HUD.BIN");
        if (fid >= 0) GFS_Load(fid, 0, (Uint32 *)ptr, 12416);
    }
    ztCDsetRoot();

    ptr=((void*)(0x25e60000+0x6000));
    Cel2VRAM((Uint8*)LWRAM , (void*)ptr , 58*64);
    slCharNbg2(COL_TYPE_256, 58*64);
    slPageNbg2(ptr, (void*)(CRAM_Base+(CRAM_MAX*2)), PNB_1WORD | CN_10BIT);
    //Pal2CRAM((void*)(LWRAM+58*64), (void*)(CRAM_Base+(CRAM_MAX*2)), 256);

    ptr = (void*)(0x25e60000+0x6000+58*64+512);
    Map2VRAM((Uint16*)(LWRAM+58*64+512), ptr, 64, 64, 7, 0);
    slMapNbg2(ptr, ptr, ptr, ptr);
    slPriorityNbg2(7);*/
}
//static void * modelStartAddr = NULL;
//static unsigned char	__heap[65536];
//static Uint8 HWRAM_DYNAMIC_MEM[HWRAM_DYNAMIC_MEM_SIZE];

void ztLoadPermanentAssets(Uint32 nbPlayers)
{
    ztRemoveSpritesFrom(0);
    void * ptr = (void*)(LWRAM);
    void * currentAddress = (void*)DYNAMIC_RAM;
    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "Load permanent assets");
        scd_logflush();
      // currentAddress=(void*)(LWRAM+(768*1024));
    }
    #endif // SATLINK_DEBUG

    ztCDsetDir("SPRITES");
    {   //A bit slower than I'd like, I will have to create a function in my image converter to pack many images
        ztLoadTexture((Sint8*)"1.ZTI", ptr);
        ztLoadTexture((Sint8*)"2.ZTI", ptr);
        ztLoadTexture((Sint8*)"3.ZTI", ptr);
        ztLoadTexture((Sint8*)"4.ZTI", ptr);
        ztLoadTexture((Sint8*)"5.ZTI", ptr);
        ztLoadTexture((Sint8*)"6.ZTI", ptr);
        ztLoadTexture((Sint8*)"7.ZTI", ptr);
        ztLoadTexture((Sint8*)"8.ZTI", ptr);
        ztLoadTexture((Sint8*)"L1.ZTI", ptr);
        ztLoadTexture((Sint8*)"L2.ZTI", ptr);
        ztLoadTexture((Sint8*)"L3.ZTI", ptr);
        ztLoadTexture((Sint8*)"L4.ZTI", ptr);
        ztLoadTexture((Sint8*)"L5.ZTI", ptr);
        ztLoadTexture((Sint8*)"L6.ZTI", ptr);
        ztLoadTexture((Sint8*)"L7.ZTI", ptr);
        ztLoadTexture((Sint8*)"L8.ZTI", ptr);
        ztLoadTexture((Sint8*)"SHADOW.ZTI", ptr);
        ztLoadTexture((Sint8*)"RSTAR.ZTI", ptr);
        ztLoadTexture((Sint8*)"RINGS.ZTI", ptr);
        ztLoadTexture((Sint8*)"TIME.ZTI", ptr);

        ztLoadTexture((Sint8*)"UP01.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP03.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP05.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP07.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP09.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP11.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP13.ZTI", ptr);
        ztLoadTexture((Sint8*)"UP15.ZTI", ptr);

        ztLoadTexture((Sint8*)"BSTAR.ZTI", ptr);
        //ztLoadTexture((Sint8*)"SBALL.ZTI", ptr);
    }
    ztCDsetRoot();



    ztCDsetDir("MODELS");
    {
        gouraudCounter=0;

        currentAddress = ztLoad3Dmodel((Sint8*)"SONIC.ZTP", currentAddress, &entities[0], 1);
        currentAddress = ztLoad3Dmodel((Sint8*)"SONIC.ZTP", currentAddress, &entities[1], 4);

        currentAddress = ztLoad3Dmodel((Sint8*)"DRILL.ZTP", currentAddress, &entities[2], 3);
        currentAddress = ztLoad3Dmodel((Sint8*)"DRILL.ZTP", currentAddress, &entities[3], 4);

          //  entities[0]=entities[2];
    //entities[1]=entities[0];
        //currentAddress = ztLoad3Dmodel((Sint8*)"TAILS.ZTP", currentAddress, &entities[1], 1);
        //currentAddress = ztLoad3Dmodel((Sint8*)"TAILS.ZTP", currentAddress, &entities[2], 1);
        //currentAddress = ztLoad3Dmodel((Sint8*)"SONIC.ZTP", currentAddress, &entities[2], 1);
    }
    ztCDsetRoot();
    //HWRAM_MEM_MAPSTART=(Uint8*)currentAddress;

    firstMapTexture=totalTextures;
    //setHUD();




}


FIXED attributebehavior(player_t * currentPlayer, VECTOR planeNorm, FIXED dist, Sint16 passedAttr)  //True if the object must disappear, else just false
{
//if (passedAttr >= 10 && passedAttr < 20) {player.IsOnSlope = true;  return false;} //To be removed, was for the previous slope implementation
    switch (passedAttr)
    {
        case 1: return 0;
        case 50:
            ztPlaySound(SFX_RING);
            currentPlayer->OWNED++;
            currentPlayer->COLOR = ((1<<14)|(32));
            return 2;
        case 51:
            ztPlaySound(SFX_ROLL);
            currentPlayer->INVINCIBLE=60*20;
            currentPlayer->LIVES++;
            return 1;
        case 20:
            ztPlaySound(SFX_SPRING);
            currentPlayer->SPEED[Y] = slMulFX(ALT_SPRING, planeNorm[Y]);
            currentPlayer->SPEED[X] = slMulFX(ALT_SPRING, planeNorm[X]);
            currentPlayer->SPEED[Z] = slMulFX(ALT_SPRING, planeNorm[Z]);
            currentPlayer->STATUS |= SPIN_DASH;
            return 0;
        case 21:
            ztPlaySound(SFX_MUSHR);
            currentPlayer->SPEED[Y] = SPRING_JUMP;
            currentPlayer->STATUS &= ~CAN_JUMP & ~V_COLLISION; currentPlayer->STATUS |= IS_IN_AIR | DOUBLE_JUMP;
            return 1;
        case 22:
            ztPlaySound(SFX_MUSHR);
            if (currentPlayer->SPEED[Y]>MUSHR_BOUNCE) currentPlayer->SPEED[Y]=-currentPlayer->SPEED[Y];
            else  currentPlayer->SPEED[Y]=-MUSHR_BOUNCE;
            currentPlayer->STATUS &= ~CAN_JUMP & ~V_COLLISION; currentPlayer->STATUS |= IS_IN_AIR | DOUBLE_JUMP;
            return 1;
        case 25:
            //ztPlaySound(SFX_ROLL);
            if (currentPlayer->SPEED[Y]<= toFIXED(-4.0)) {currentPlayer->SPEED[Y]=-ALT_SPRING; currentPlayer->STATUS |= SPIN_DASH; ztPlaySound(SFX_ROLL);}
            else if (currentPlayer->SPEED[Y] >= toFIXED(4.0)) {currentPlayer->SPEED[Y]=ALT_SPRING; currentPlayer->STATUS |= SPIN_DASH; ztPlaySound(SFX_ROLL);}
            currentPlayer->COLOR=((1<<15)|32);

            return 1;
        case 98:
            playerHurt(currentPlayer, 1);
            return 0;
        case 99:
            playerHurt(currentPlayer, 0);
            return 0;
        case 40:
            if (currentPlayer->STATUS&IS_SPINNING || currentPlayer->STATUS & SPIN_DASH)
            {
                if (currentPlayer->SPEED[Y]>0)
                {
                    currentPlayer->SPEED[Y]= MIN(-currentPlayer->SPEED[Y], HIT_BOUNCE);
                    if (currentPlayer->SPEED[Y] < MAX_BOUNCE) currentPlayer->SPEED[Y]=MAX_BOUNCE;
                }
                else if (currentPlayer->SPEED[Y]<0)
                    currentPlayer->SPEED[Y]+=HIT_BOUNCE; //Give an illusion of impact
                currentPlayer->COLOR=((1<<15)|32);
                ztPlaySound(SFX_POP);
                return (2);
            }
            else
            {
                playerHurt(currentPlayer, 0);
                return 0;
            }
        case 41 :
            if (currentPlayer->STATUS&IS_SPINNING || currentPlayer->STATUS & SPIN_DASH)
            {
                if (currentPlayer->SPEED[Y]>0)
                {
                    currentPlayer->SPEED[Y]= MIN(-currentPlayer->SPEED[Y], MIN_BOUNCE);
                    if (currentPlayer->SPEED[Y] < MAX_BOUNCE) currentPlayer->SPEED[Y]=MAX_BOUNCE;
                }
                else if (currentPlayer->SPEED[Y]<0 && currentPlayer->INVINCIBLE==0)
                    currentPlayer->SPEED[Y]+=HIT_BOUNCE; //Give an illusion of impact
                currentPlayer->INVINCIBLE=60;
                ANGLE b = slAtan(currentPlayer->POSITION[X]-planeNorm[X],currentPlayer->POSITION[Z]-planeNorm[Z]);
                currentPlayer->SPEED[X]=slMulFX(slCos(b), toFIXED(4.5));
                currentPlayer->SPEED[Z]=slMulFX(slSin(b), toFIXED(4.5));

                ztPlaySound(SFX_SHIELD);
                return (0);
            }
            else
            {
                playerHurt(currentPlayer, 0);
                return 0;
            }
        case 77:
            ztStopCDDA();
            ztPlaySound(SFX_CASHIN);
            DELAYED_CHANGEMAP=1;
            return 77;
    }
    return 0;
}


/*
if (passedAttr == 1) return 0;
else if (passedAttr == 50)
{
    ztPlaySound(SFX_RING);
    currentPlayer->OWNED++;
    return 2;
}
else if (passedAttr == 21 || passedAttr == 20)
{
    if (passedAttr==21)ztPlaySound(SFX_MUSHR);
    else ztPlaySound(SFX_SPRING);
    currentPlayer->SPEED[Y] = SPRING_JUMP;
    currentPlayer->STATUS &= ~CAN_JUMP & ~V_COLLISION; currentPlayer->STATUS |= IS_IN_AIR | DOUBLE_JUMP;
    return 1;}
else if (passedAttr == 22)
{
    ztPlaySound(SFX_MUSHR);
    if (currentPlayer->SPEED[Y]>toFIXED(6.8)) currentPlayer->SPEED[Y]=-currentPlayer->SPEED[Y];
    else  currentPlayer->SPEED[Y]=-toFIXED(6.8);
    currentPlayer->STATUS &= ~CAN_JUMP & ~V_COLLISION; currentPlayer->STATUS |= IS_IN_AIR | DOUBLE_JUMP;
    return 1;
}
else if (passedAttr == 99 || passedAttr == 98)
{
    if (passedAttr == 98)
        playerHurt(currentPlayer, 1);
    else
        playerHurt(currentPlayer, 0);
    return 0;
}
else if (passedAttr >= 40 && passedAttr < 50)
{
    if (currentPlayer->STATUS&IS_SPINNING || currentPlayer->STATUS & SPIN_DASH)
    {
        if (currentPlayer->SPEED[Y]>0)
        {
            currentPlayer->SPEED[Y]= -currentPlayer->SPEED[Y];
            if (currentPlayer->SPEED[Y] < MAX_BOUNCE) currentPlayer->SPEED[Y]=MAX_BOUNCE;
        }
        else if (currentPlayer->SPEED[Y]<0)
        {
            currentPlayer->SPEED[Y]+=MIN_BOUNCE; //Give an illusion of impact
        }
        ztPlaySound(SFX_POP);
        return (2);
    }
    else
    {
        playerHurt(currentPlayer, 0);
        return 0;

    }
}
else if (passedAttr == 77)
{
    ztStopCDDA();
    ztPlaySound(SFX_CASHIN);
    DELAYED_CHANGEMAP=1;
    return 77;
}
*/
extern ANGLE light_ang[XYZ];
void generateParticles(player_t * currentPlayer, ANGLE rot, Uint16 type)
{
    Sint32 p = currentParticle;
    particles_t * curParticle = &particleArray[p];
    FIXED ran;
    ran=slRandom();
    if (ran < toFIXED(0.35)) return;

    if (type==0)
    {
        ANGLE curL = light_ang[Y]<<4;
        ANGLE curLY = light_ang[Z]<<3;
        curParticle->pos[X]   = currentPlayer->POSITION[X] + (slCos(curL)<<5);
        curParticle->pos[Y]   = currentPlayer->POSITION[Y]-(ran<<3)+(slCos(curLY)<<3);
        curParticle->pos[Z]   = currentPlayer->POSITION[Z] + (slSin(curL)<<5);
        curParticle->speed[X] = -toFIXED(0.6);
        curParticle->speed[Y] = -toFIXED(0.6);
        curParticle->speed[Z] = toFIXED(0.6);
        curParticle->life    = DEF_PARTICLE_LIFE2;
        curParticle->spriteID=21;
    }
    else if (type==1)
    {
        FIXED vCos, vSin;
        vCos=-slCos(currentPlayer->ROTATION[Y]);
        vSin=-slSin(currentPlayer->ROTATION[Y]);
        curParticle->pos[X]   = currentPlayer->POSITION[X] + (vSin<<4) ;
        curParticle->pos[Y]   = currentPlayer->POSITION[Y]+(ran<<4);
        curParticle->pos[Z]   = currentPlayer->POSITION[Z] + (vCos<<4);
        curParticle->speed[X] = slMulFX(vSin<<2,ran) - (ran);
        curParticle->speed[Y] = -toFIXED(1.2);
        curParticle->speed[Z] = slMulFX(vCos<<2,ran) + (ran);
        curParticle->life    = 96;
        curParticle->spriteID=20;
    }
    else
    {
        curParticle->pos[X]   = currentPlayer->POSITION[X];
        curParticle->pos[Y]   = currentPlayer->POSITION[Y]-(ran<<4);
        curParticle->pos[Z]   = currentPlayer->POSITION[Z];
        curParticle->speed[X] = -(ran);
        curParticle->speed[Y] = toFIXED(0.7);
        curParticle->speed[Z] = toFIXED(0.1)+ran;
        curParticle->life    = DEF_PARTICLE_LIFE1;
        curParticle->spriteID=20;
    }

        curParticle->rotation=rot;
        currentParticle++;
        if (currentParticle >= MAX_PARTICLES)
            currentParticle=0;



}


void selectAnim(player_t * currentPlayer)
{
    //FIXED dist = currentPlayer->SPEED[X]*currentPlayer->SPEED[X]+currentPlayer->SPEED[Z]*currentPlayer->SPEED[Z];
    if (currentPlayer->STATUS & IS_SPINNING)
    {
        currentPlayer->SPIN_ANGLE -= ZT_FRAMERATE*DEGtoANG(14.0);
        currentPlayer->ANIM_CTRL.animID = 3;
    }
    else if (currentPlayer->STATUS & SPIN_DASH)
    {
        currentPlayer->SPIN_ANGLE -= ZT_FRAMERATE*DEGtoANG(23.3);
        currentPlayer->ANIM_CTRL.animID = 3;
    }
    else
    {
        FIXED dist = ABS(currentPlayer->SPEED[X])+ABS(currentPlayer->SPEED[Z]); //Not the right way, but faster
        currentPlayer->SPIN_ANGLE=0;
        if (currentPlayer->STATUS&IS_IN_AIR)
        {
            if (currentPlayer->SPEED[Y]<0)
                currentPlayer->ANIM_CTRL.animID = 4;
            else if (currentPlayer->SPEED[Y]>=toFIXED(3.5))
                currentPlayer->ANIM_CTRL.animID = 5;
            else if (dist>toFIXED(3.0))
                currentPlayer->ANIM_CTRL.animID = 2;
            /*else
                currentPlayer->ANIM_CTRL.animID = 5;*/
        }
        else if (dist > toFIXED(3.0))
            currentPlayer->ANIM_CTRL.animID = 2;
        else if (dist > 0)
            currentPlayer->ANIM_CTRL.animID = 1;
        else
            currentPlayer->ANIM_CTRL.animID = 0;
    }
}


void update_animations(player_t * currentPlayer)
{
          //anim_cycling++; if (anim_cycling>5) anim_cycling=0;
          entity_t * curEntity = &entities[currentPlayer->ENTITY_ID];
          Uint16 interp_lvl = curEntity->AnimInterpolation;
          if (currentPlayer->ANIM_CTRL.animID==0)
          {
            currentPlayer->ANIM_CTRL.fps=4;
            currentPlayer->ANIM_CTRL.startFrm=1>>interp_lvl;
            currentPlayer->ANIM_CTRL.endFrm=(3)>>interp_lvl;
          }
          else if (currentPlayer->ANIM_CTRL.animID==1)
          {
            currentPlayer->ANIM_CTRL.fps=2;
            currentPlayer->ANIM_CTRL.startFrm=4>>interp_lvl;
            currentPlayer->ANIM_CTRL.endFrm=(12)>>interp_lvl;
          }
          else if (currentPlayer->ANIM_CTRL.animID==2)
          {
            currentPlayer->ANIM_CTRL.fps=2;
            currentPlayer->ANIM_CTRL.startFrm=13>>interp_lvl;
            currentPlayer->ANIM_CTRL.endFrm=(21)>>interp_lvl;
          }
          else if (currentPlayer->ANIM_CTRL.animID==3)
          {
            currentPlayer->ANIM_CTRL.fps=1;
            currentPlayer->ANIM_CTRL.startFrm=22>>interp_lvl;
            currentPlayer->ANIM_CTRL.endFrm=(22)>>interp_lvl;
          }
          else if (currentPlayer->ANIM_CTRL.animID==4)
          {
            currentPlayer->ANIM_CTRL.fps=4;
            currentPlayer->ANIM_CTRL.startFrm=23>>interp_lvl;
            currentPlayer->ANIM_CTRL.endFrm=(25)>>interp_lvl;
          }
          else if (currentPlayer->ANIM_CTRL.animID==5)
          {
            currentPlayer->ANIM_CTRL.fps=4;
            currentPlayer->ANIM_CTRL.startFrm=26>>interp_lvl;
            currentPlayer->ANIM_CTRL.endFrm=(29)>>interp_lvl;
          }

        ztUpdateAnimation(&currentPlayer->ANIM_CTRL, curEntity);
}

void playerHurt(player_t * currentPlayer, bool autodeath)
{
    if (currentPlayer->INVINCIBLE > 0 && autodeath==0) return;
    if (autodeath==0)
    {
        if (currentPlayer->OWNED>0)
        {
            ztPlaySound(SFX_RLOSS);
            currentPlayer->OWNED=0;
            currentPlayer->SPEED[Y]=-toFIXED(7.0);
            currentPlayer->SPEED[X]=-(currentPlayer->SPEED[X]>>1);
            currentPlayer->SPEED[Z]=-(currentPlayer->SPEED[Z]>>1);
            currentPlayer->INVINCIBLE=60*3;
            return;
        }
    }
    ztPlaySound(SFX_DEAD);
    currentPlayer->LIVES--;
    currentPlayer->STATUS |= IS_DYING;
   // ztReset(currentPlayer);
    /*if (autodeath == true || (CurrentPlayer->COLLECTED == 0 && player.Invincible == 0))
    {
        play_sound(&sound.scddead);
        //play_sound_dead();
        reset();
    }
    else if (player.Invincible == 0)
    {
    play_sound(&sound.scdringloss);

    player.collectedRings = 0;
    physics.speed.YSP = -7168;
    physics.speed.XSP = (-jo_cos_mult(5500, physics.rotation.rotY));
    physics.speed.ZSP = (-jo_sin_mult(5500, physics.rotation.rotY));
    player.Invincible ++;
    }*/
}

void updatePosition(player_t * currentPlayer)
{
    if (currentPlayer->STATUS & V_COLLISION)
    {
        currentPlayer->SPEED[X] += slMulFX(PHYS_SLOPE_FACTOR*ZT_FRAMERATE, slSin(currentPlayer->ROTATION[Z]));
        currentPlayer->SPEED[Z] += slMulFX(PHYS_SLOPE_FACTOR*ZT_FRAMERATE, slSin(currentPlayer->ROTATION[X]));
    }




    currentPlayer->POSITION[X]+=currentPlayer->SPEED[X]*ZT_FRAMERATE;
    currentPlayer->POSITION[Z]+=currentPlayer->SPEED[Z]*ZT_FRAMERATE;

  //  slPrintFX(currentPlayer->SPEED[Y], slLocate(20,7));


    if (currentPlayer->STATUS & V_COLLISION)//(currentPlayer->POSITION[Y]+currentPlayer->SPEED[Y] >= toFIXED(500.0))
    {
        //currentPlayer->SPEED[Y]=0;
        currentPlayer->STATUS &= ~IS_IN_AIR;
        currentPlayer->STATUS &= ~IS_SPINNING;
        currentPlayer->STATUS |= CAN_JUMP;
    }
    else if (currentPlayer->POSITION[Y]+currentPlayer->SPEED[Y] > toFIXED(1200.0))
        playerHurt(currentPlayer, 1);
    else
    {
        currentPlayer->STATUS |= IS_IN_AIR;
        currentPlayer->SPEED[Y]+=PHYS_GRAVITY*ZT_FRAMERATE;
        /*currentPlayer->SPEED[Y] +=  slMulFX(currentPlayer->SPEED[X], slSin(currentPlayer->ROTATION[Z])) +
                                    slMulFX(currentPlayer->SPEED[Z], slSin(currentPlayer->ROTATION[X]));*/
    }




    /***/

    if (currentPlayer->SPEED[Y]> PHYS_MAX_SPEED_Y) currentPlayer->SPEED[Y]=PHYS_MAX_SPEED_Y;
    currentPlayer->POSITION[Y]+=currentPlayer->SPEED[Y]*ZT_FRAMERATE + slMulFX(currentPlayer->SPEED[X]*ZT_FRAMERATE, slSin(currentPlayer->ROTATION[Z])) +
                                    slMulFX(currentPlayer->SPEED[Z]*ZT_FRAMERATE, slSin(currentPlayer->ROTATION[X]));

    if ((currentPlayer->STATUS & V_COLLISION)==0)
    {
        if (currentPlayer->ROTATION[X] != 0)
        {
            if (ABS(currentPlayer->ROTATION[X]) >= DEGtoANG(2.5)*ZT_FRAMERATE)
                currentPlayer->ROTATION[X]+= (currentPlayer->ROTATION[X] > 0 ? -DEGtoANG(2.5)*ZT_FRAMERATE : DEGtoANG(2.5)*ZT_FRAMERATE);
            else
                currentPlayer->ROTATION[X]=0;
        }
        if (currentPlayer->ROTATION[Z] != 0)
        {
            if (ABS(currentPlayer->ROTATION[Z]) >= DEGtoANG(2.5)*ZT_FRAMERATE)
                currentPlayer->ROTATION[Z]+= (currentPlayer->ROTATION[Z] > 0 ? -DEGtoANG(2.5)*ZT_FRAMERATE : DEGtoANG(2.5)*ZT_FRAMERATE);
            else
                currentPlayer->ROTATION[Z]=0;
        }
        if (currentPlayer->SPEED[Y] > toFIXED(6.5))
            {if (currentPlayer->STATUS&CAN_JUMP)currentPlayer->STATUS |= DOUBLE_JUMP;
            currentPlayer->STATUS &= ~CAN_JUMP; currentPlayer->STATUS |= IS_SPINNING;}
    }
    selectAnim(currentPlayer);
        //generateParticles(currentPlayer, currentPlayer->SPIN_ANGLE, 1);
    if (currentPlayer->INVINCIBLE != 0)
        generateParticles(currentPlayer, 0, 0);
    if (currentPlayer->SPIN_CHARGE != 0)
        generateParticles(currentPlayer, 0, 1);
    else if ((currentPlayer->STATUS & IS_SPINNING) && (currentPlayer->STATUS & IS_IN_AIR))
        generateParticles(currentPlayer, 0, 2);
}



/*
    short angleIncrease = 5;


    if (physics.is_in_air == true && physics.speed.YSP < 0)
    {
        if (camera.angleOffset < camera.angleMaxOffset) ++camera.angleOffset;
    }
    else if (physics.is_in_air == false || JO_DIV_BY_1024(physics.speed.YSP) > 2)
    {
        if (camera.angleOffset > camera.angleDefaultOffset) --camera.angleOffset;
    }

*/


#define MIN_Y (-50<<16)
#define MAX_Y (-0<<16)
/*#define camDefaultOffset    (DEGtoANG(24.0))
#define camMaxOffset        (DEGtoANG(40.0))*/
void update_camera(player_t * currentPlayer, camera_t * currentCam)
{

    ANGLE dif = currentCam->targetAngle - currentCam->camAngle[Y];
    if (dif > DEGtoANG(5.5))
        currentCam->camAngle[Y] += 540*ZT_FRAMERATE;
    else if (dif < -DEGtoANG(5.5))
        currentCam->camAngle[Y] -= 540*ZT_FRAMERATE;
    else
        currentCam->camAngle[Y] = currentCam->targetAngle;

    if (((currentPlayer->STATUS & V_COLLISION)==0) && currentPlayer->SPEED[Y]<0)
    {
        if((currentCam->yOffset-=ZT_FRAMERATE<<17) < MIN_Y) currentCam->yOffset=MIN_Y;
    }
    else if (currentPlayer->STATUS & V_COLLISION || currentPlayer->SPEED[Y] > toFIXED(2.0))
    {
        if (ABS(currentCam->yOffset) < toFIXED(5.0))
            currentCam->yOffset=0;
        else if (currentCam->yOffset>0)
            currentCam->yOffset-=ZT_FRAMERATE<<17;
        else
            currentCam->yOffset+=ZT_FRAMERATE<<17;
    }

    currentCam->pos[Y]=currentPlayer->POSITION[Y]-(80<<16);
    if (currentCam->camDist < toFIXED(300.0)) currentCam->camDist+= toFIXED(2.0)*ZT_FRAMERATE;

    currentCam->camAngle[Z]=slAtan(currentCam->camDist, currentPlayer->POSITION[Y]-currentCam->pos[Y]-currentCam->yOffset);

    currentCam->pos[X]= currentPlayer->POSITION[X] - slMulFX(slMulFX(slCos(currentCam->camAngle[Z]),
                                                                     slSin(currentCam->camAngle[Y])), currentCam->camDist);
    currentCam->pos[Z]= currentPlayer->POSITION[Z] - slMulFX(slMulFX(slCos(currentCam->camAngle[Z]),
                                                                     slCos(currentCam->camAngle[Y])), currentCam->camDist);


}

void update_physics(player_t * currentPlayer)
{
    Uint32 nbPlayers = totalPlayers;
    camera_t * currentCam;
    if (currentPlayer->PLAYER_ID==0)
        currentCam=&cam1;
    else currentCam=&cam2;


    controls(currentPlayer, currentCam);
    collision_handling(currentPlayer, nbPlayers);
    updatePosition(currentPlayer);
    update_camera(currentPlayer, currentCam);
    update_animations(currentPlayer);
    if (currentPlayer->INVINCIBLE>0) currentPlayer->INVINCIBLE-=ZT_FRAMERATE;
    if (currentPlayer->INVINCIBLE<0) currentPlayer->INVINCIBLE=0;

    /*gamepad_control(currentPlayer);
    collision_handling(currentPlayer);
    update_positions(currentPlayer);*/
}
/**END OF TEMPORARY FUNCTIONS***/

void main_loop(Uint32 nbPlayers)
{
    if (PLAYER_1.STATUS & IS_DYING) ztReset(&PLAYER_1);

    if (nbPlayers > 1)
    {
        if (PLAYER_2.STATUS & IS_DYING) ztReset(&PLAYER_2);
        //update_physics(&PLAYER_2, nbPlayers);
        slCurWindow(winFar);
        //computeLight();
        ztRender(&PLAYER_2, &cam2, nbPlayers);
        update_physics(&PLAYER_2); //slSlaveFunc(update_physics, &PLAYER_2);
        slCurWindow(winNear);
    }
    else
    {
        slCurWindow(winFar);
        ztSetScaledSprite(-80, -56, 159, 111, ((1<<11) | SPdis | CL_Replace | CL16Bnk | ECenb),
                          (0xFFE0), 0, ((0x100)| 1), _ZmLT, toFIXED(3000)); //Clear the scaled frame buffer
        slCurWindow(winNear);
    }

//computeLight();
    ztRender(&PLAYER_1, &cam1, nbPlayers);

  //  if (nbPlayers > 1)
    update_physics(&PLAYER_1);


}

