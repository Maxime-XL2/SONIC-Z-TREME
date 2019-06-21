#include "ZTE_DEF.h"

/**GLOBALS**/

int         tot_rejected;
unsigned int mapTick;
/**TEMP***/
bool        dispFBSprite = 0;

/***********/

/**TO BE CLEANED UP!**/
GOURAUDTBL		gourRealMax[GOUR_REAL_MAX];
Uint8			vwork[GOUR_REAL_MAX];
FIXED light[XYZ];
ANGLE light_ang[XYZ];
Uint8 enableRTG = 1;
Uint8 showDebugStats = 0;
static int ringSpriteAnim=0;
#include "../SRC/sprites_data.h"


/**
Particles
**/
particles_t particleArray[MAX_PARTICLES];
Sint32            currentParticle;
/**End of particles**/

void computeLight()
{
    FIXED light_init[XYZ] = { -toFIXED(0.57735026), toFIXED(0.57735026), toFIXED(0.57735026) };
//FIXED light_init[XYZ] = { -toFIXED(2000.0), -toFIXED(5000.0), -toFIXED(2000.0) };
    slPushUnitMatrix();
    {

        slRotX(light_ang[X]);
        slRotY(light_ang[Y]);
        slRotZ(light_ang[Z]);
        //slTranslate(toFIXED(15.0), 0, 0);
        slCalcVector(light_init, light);
    }
    slPopMatrix();
    light_ang[X] += DEGtoANG(0.5);
    light_ang[Y] += DEGtoANG(0.5);
    light_ang[Z] += DEGtoANG(0.5);
}

extern Uint16 ztDepthBuffer[];
void ztGetDepthBuffer(void);


/******
FUNCTION EXECUTED DURING VBLANK
*******/
void ztVBLANKcustom()
{

    if(enableRTG == 1)
        slGouraudTblCopy();
    /*extern bool dispFBnbg;
    if (dispFBnbg)
    {
        int j;
        for (j=0; j<=BUFFER_HEIGHT; j++) //Unroll it?
        DMA_ScuMemCopy((void*)(BUFFER_VRAM +(j*1024)), (void*)(&ztDepthBuffer[j*BUFFER_WIDTH]),  BUFFER_WIDTH*2);
    }*/

    #ifdef SATLINK_DEBUG
    /*
     * sc_check : check I/O with USB port.
     * Any timing to call this function is OK, so it can be
     * called less frequently than every time gamepad is checked.
     *
     * This function is not blocking : reads USB port status, and
     * returns if there are no I/Os waiting. So calling it frequently
     * (at a reasonable rate such as less than 100 times a second)
     * shouldn't have a significant effect on game performances.
     */
    sc_check();
    #endif // SATLINK_DEBUG
}


void ztInitDisplay(Uint32 nbPlayers)
{
    ztClearText();
    mapTick=1;
    extern FIXED PSEUDO_FISHEYE;
    if (nbPlayers == 1)
    {
        //draw_distance=MDATA.MAP_DRAW_DISTANCE;
        draw_distance=def_drawDist;

        slCurWindow(winFar);
        slWindow(352, 0, 512-1, 112-1, draw_distance*4, 432, 56); //Includes the draw distance. Also I left 40 pixels for a HUD.
        slPerspective(FOV);
        slZdspLevel(6);

        slCurWindow(winNear);
        slWindow(0, 0, ZT_TV_WIDTH-1, ZT_TV_HEIGHT-1, draw_distance, ZT_TV_WIDTH/2, ZT_TV_HEIGHT/2); //Includes the draw distance. Also I left 40 pixels for a HUD.
        slScrWindow0(0 , 0 , ZT_TV_WIDTH-1, ZT_TV_HEIGHT-1) ;
        slScrWindowModeNbg1(win0_IN);
        slScrWindowModeNbg0(win0_IN);
        slPerspective(FOV);
        slZdspLevel(6);
        slSetScreenDist(PSEUDO_FISHEYE);

    }
    else
    {
        //draw_distance=MDATA.MAP_DRAW_DISTANCE*4/5;
        draw_distance=def_drawDist2;
        slCurWindow(winNear);
        slWindow(0, 0, ZT_TV_WIDTH-1, ZT_TV_HEIGHT/2-1, draw_distance, ZT_TV_WIDTH/2, ZT_TV_HEIGHT/4);
        slScrWindow0(0 , 0 , ZT_TV_WIDTH-1, ZT_TV_HEIGHT/2-1) ;
        slPerspective(FOV);
        slZdspLevel(6);
        slNearClipFlag(1);
        slSetScreenDist(PSEUDO_FISHEYE); //Same thing as slPerspective, just different input...to be removed

        slCurWindow(winFar);
        slWindow(0, ZT_TV_HEIGHT/2, ZT_TV_WIDTH-1, ZT_TV_HEIGHT-1, draw_distance, ZT_TV_WIDTH/2, ZT_TV_HEIGHT/4*3);
        slScrWindow1(0 , ZT_TV_HEIGHT/2, ZT_TV_WIDTH-1, ZT_TV_HEIGHT-1) ;
        slPerspective(FOV);
        slZdspLevel(6);
        slNearClipFlag(1); //Unknown
        slSetScreenDist(PSEUDO_FISHEYE);
        slScrWindowModeNbg1(win0_IN);
        slScrWindowModeNbg0(win0_OUT);

    }
    //init_vdp2();
    ztInitFrustum();
/****/

    slInitGouraud(gourRealMax, gouraudCounter, GRaddr, vwork);
	slIntFunction(ztVBLANKcustom);


}

/************
DRAWS DEBUG STATS
************/
void draw_stats(player_t * currentPlayer)
{
    //if (currentPlayer->PLAYER_ID != 0 ) return;
    Uint32 curTime = TIMER>>6;
    slPrintHex(slHex2Dec(currentPlayer->OWNED), slLocate (3,3));
    slPrintHex(slHex2Dec(curTime), slLocate(3, 6));
    slPrintHex(slHex2Dec(currentPlayer->LIVES), slLocate(8,26));

    #ifdef USE_TRANSP_BUFFER
/*
    if (dispFBSprite)
    {
        SPR_ATTR sprFrameBuf = SPR_ATTRIBUTE(totalTextures-1, 0, No_Gouraud, CL32KRGB | ECdis | SPenb | HSSoff | MESHoff | Window_In ,  sprNoflip | _ZmCC );
        FIXED pos[XYZS] = {-(BUFFER_WIDTH>>4)<<16 , BUFFER_HEIGHT<<15, toFIXED(120), toFIXED(0.999)};
        slDispSprite(pos, &sprFrameBuf, 0);
    }
*/
    #endif

    if (showDebugStats==false) {tot_rejected=0; return;}
    #ifndef NO_DEBUG
    slPrintFX(currentPlayer->ROTATION[Z], slLocate (0,3));
    slPrintFX(currentPlayer->POSITION[X], slLocate(0,1));
    slPrintFX(currentPlayer->POSITION[Y], slLocate(14,1));
    slPrintFX(currentPlayer->POSITION[Z], slLocate(28,1));
    slPrintFX(slMulFX(currentPlayer->ROTATION[Y], 360<<16), slLocate(0,2));
    #endif

    #ifndef PAL_VERSION
    slPrintFX(toFIXED(60/ZT_FRAMERATE), slLocate(13, 24));
    #else
    slPrintFX(toFIXED(50/ZT_FRAMERATE), slLocate(13, 24));
    #endif
    extern Sint16 MsClipXAdder, MsClipYAdder;
    extern FIXED MsScreenDist;
    slPrintFX(MsScreenDist, slLocate(26,25));
    slPrintHex(slHex2Dec(MsClipXAdder), slLocate(20,24));
    slPrintHex(slHex2Dec(MsClipYAdder), slLocate(28,24));

    slPrintFX(TotalPolygons<<16, slLocate(13, 25));
    slPrintFX(DispPolygons<<16, slLocate(13, 26));
    slPrintFX(TotalVertices<<16, slLocate(13, 27));
    slPrintFX(toFIXED(PutCount), slLocate(0,22));
    slPrintFX(toFIXED(tot_rejected), slLocate(0,23));
    tot_rejected=0;
}

extern Uint16 FrameSizeX;
extern Uint16 MsScreenSizeX  ;
extern Uint16 MsWindowSizeX;
extern Uint16 * SpritePtr;
//void * CommandBuf;



/**Custom polygon draw function for transparent layer...not used anymore as I now got a better function. To be added someday... **/
const FIXED xOff = toFIXED(0.4545454545);
const FIXED yOff = toFIXED(0.5);
void ztDrawPolygon(PDATA * pol)
{
    Uint32 cnt, nbPt, nbPol;
    nbPt = pol->nbPoint;

    POINT pnt[nbPt];

    for (cnt=0; cnt < nbPt; cnt++)
    {
        pnt[cnt][Z]=slConvert3Dto2DFX(pol->pntbl[cnt], pnt[cnt]);
        pnt[cnt][X]=slMulFX(pnt[cnt][X], xOff)>>16;
        pnt[cnt][Y]=slMulFX(pnt[cnt][Y], yOff)>>16;
    }

    nbPol=pol->nbPolygon;
    Uint32 ptv[4];
    extern FIXED MsScreenDist;
    FIXED z, nearP=slMulFX(MsScreenDist, toFIXED(0.41)), farP=draw_distance<<16;
    FIXED min[XY], max[XY];
   // VECTOR norm;
    for (cnt=0; cnt < nbPol; cnt++)
    {
        //"Load" the values
        ptv[0]=pol->pltbl[cnt].Vertices[0];
        ptv[1]=pol->pltbl[cnt].Vertices[1];
        ptv[2]=pol->pltbl[cnt].Vertices[2];
        ptv[3]=pol->pltbl[cnt].Vertices[3];


        //Check the orientation ?  Should also flip the h value
        if (pol->attbl[cnt].flag==Single_Plane)
        {
            if ((pnt[ptv[0]][X]-pnt[ptv[3]][X]) * (pnt[ptv[0]][Y] - pnt[ptv[2]][Y]) >=
                (pnt[ptv[0]][Y]-pnt[ptv[3]][Y]) * (pnt[ptv[0]][X] - pnt[ptv[2]][X])) continue;
        }

        //Test if it's in the z display area
        z=pnt[ptv[0]][Z];
        if (pol->attbl[cnt].sort == SORT_MAX) {
            if (pnt[ptv[1]][Z] > z) z= pnt[ptv[1]][Y];
            if (pnt[ptv[2]][Z] > z) z= pnt[ptv[2]][Y];
            if (pnt[ptv[3]][Z] > z) z= pnt[ptv[3]][Y]; }
        else if (pol->attbl[cnt].sort == SORT_MIN) {
            if (pnt[ptv[1]][Z] < z) z= pnt[ptv[1]][Y];
            if (pnt[ptv[2]][Z] < z) z= pnt[ptv[2]][Y];
            if (pnt[ptv[3]][Z] < z) z= pnt[ptv[3]][Y];  }
        else {
            z+= pnt[ptv[1]][Z] + pnt[ptv[2]][Z] + pnt[ptv[3]][Z];
            z=z>>2; }
        if (z <= nearP) continue;
        else if (z>=farP) continue;


        //Find min, max;
        max[X]=min[X]=pnt[ptv[0]][X];
        max[Y]=min[Y]=pnt[ptv[0]][Y];

        /**Could be optimized here*/
        //Test X
        if (pnt[ptv[1]][X] > max[X]) max[X]=pnt[ptv[1]][X];
        if (pnt[ptv[2]][X] > max[X]) max[X]=pnt[ptv[2]][X];
        if (pnt[ptv[3]][X] > max[X]) max[X]=pnt[ptv[3]][X];
        if (pnt[ptv[1]][X] < min[X]) min[X]=pnt[ptv[1]][X];
        if (pnt[ptv[2]][X] < min[X]) min[X]=pnt[ptv[2]][X];
        if (pnt[ptv[3]][X] < min[X]) min[X]=pnt[ptv[3]][X];
        if (max[X] < -(80)) continue;
        if (min[X] > (79)) continue;

        //Test Y
        if (pnt[ptv[1]][Y] > max[Y]) max[Y]= pnt[ptv[1]][Y];
        if (pnt[ptv[2]][Y] > max[Y]) max[Y]= pnt[ptv[2]][Y];
        if (pnt[ptv[3]][Y] > max[Y]) max[Y]= pnt[ptv[3]][Y];
        if (pnt[ptv[1]][Y] < min[Y]) min[Y]= pnt[ptv[1]][Y];
        if (pnt[ptv[2]][Y] < min[Y]) min[Y]= pnt[ptv[2]][Y];
        if (pnt[ptv[3]][Y] < min[Y]) min[Y]= pnt[ptv[3]][Y];
        if (max[Y] < -(56)) continue;
        if (min[Y] > (55)) continue;

        //Display if it's all good
        ztSetPolygon(pnt[ptv[0]],pnt[ptv[1]],pnt[ptv[2]],pnt[ptv[3]], pol->attbl[cnt].dir, pol->attbl[cnt].atrb&0xFEFF,
                     tex_def[pol->attbl[cnt].texno].CGadr,pol->attbl[cnt].colno,tex_def[pol->attbl[cnt].texno].HVsize,
                     pol->attbl[cnt].gstb,z);

    }
}

/**Simple system to display the particles effects**/
void displayParticles()
{
    Uint32 i;
    particles_t * curP = &particleArray[0];
    for (i=0; i<MAX_PARTICLES; i++)
    {
        if (curP->life != 0)
        {
            slPutSprite(curP->pos, &sprites[curP->spriteID] , curP->rotation);
        }

        curP++;
    }

}

/***Displays entities (enemies, rings, explosions, lives, etc.) **/
#include "../SRC/explosion.h"
void displaySpriteEnt(octree_node_t * curNode, FIXED dist)
{
    int i;
    staticEntity * curEnt=&curNode->entbl[0]; //We checked before calling this function to make sure we have at least one entity, so it's safe
    int spriteAnim = ringSpriteAnim;
    SPR_ATTR spr_attributes = sprites[spriteAnim];
    SPR_ATTR spr_attributesLOD = sprites[spriteAnim+8];
    FIXED pos[XYZS];
    ANGLE rotationY = (TIMER&0xFF)<<10;
    FIXED scaleE;
    for (i=0; i<curNode->nbEntities; i++)
    {
        if (curEnt->status != 0)
        {
            if (curEnt->id==50)
            {
                pos[X]=curEnt->pos[X];
                pos[Y]=curEnt->pos[Y];
                pos[Z]=curEnt->pos[Z];
                if (curEnt->status < 0)
                {
                    scaleE = TIMER-curEnt->tick;
                    if (scaleE >=0 || (Uint32)scaleE <= curEnt->tick)
                        curEnt->status=0;
                    else
                        {
                            pos[S] = (3<<16) - (scaleE<<12);//(34-scaleE)<<20;
                            slPutSprite(pos, &sprites[17] , 0) ;
                        }
                }
                else if (dist > 0)
                {
                    pos[S]=131072;
                    slPutSprite(pos, &spr_attributesLOD , 0) ;
                }
                else
                {
                    pos[S]=65536;
                    slPutSprite(pos, &spr_attributes , 0) ;
                }
            }

            else if (curEnt->id==40 || curEnt->id == 41)
            {
                slPushMatrix();
                {
                    if (curEnt->status < 0)
                    {
                        scaleE = TIMER-curEnt->tick;
                        if (scaleE >=0 || (Uint32)scaleE <= curEnt->tick)
                            curEnt->status=0;
                        else
                        {
                            slTranslate(curEnt->pos[X], curEnt->pos[Y]+(32<<16), curEnt->pos[Z]);
                            slRotY(rotationY);
                            scaleE = (32+scaleE)<<20;
                            slScale(scaleE, scaleE, scaleE);
                            if (totalPlayers==1)
                            {
                                #ifdef USE_TRANSP_BUFFER
                                slCurWindow(winFar);
                                ztDrawPolygon(&MeshExplosion);
                                slCurWindow(winNear);
                                #else
                                slPutPolygon(&MeshExplosion);
                                #endif // USE_TRANSP_BUFFER
                            }
                            else
                            slPutPolygon(&MeshExplosion);
                        }
                    }
                    else
                    {
                        slTranslate(curEnt->pos[X], curEnt->pos[Y], curEnt->pos[Z]);
                        slRotY(rotationY);
                        if (curEnt->id==40)
                            display_model(&entities[2],0);
                        else if (curEnt->id==41)
                            display_model(&entities[3],0);
                    }
                }
                slPopMatrix();
            }
            else if (curEnt->id == 51)
            {
                ztPutSprite(spriteAnim+20,curEnt->pos[X],curEnt->pos[Y],curEnt->pos[Z], toFIXED(ORIGINAL),0, 0);
            }

        }
        *curEnt++;
    }
}


/**
Octree traversal
This got updated a bit post Sage 2018
The frustum culling is problematic in this version because I ditched the SGL's implementation (which used a middle point and radius)
But I didn't update the map tool to keep a tight bounding box, so it won't cull out everything 100% right.
The solution is to update the map tool, which isn't too hard, but if I update it, I should just update the rendering code as well to my newer engine
which allows better lighting support and much better culling than SGL
**/
void traverse_octree(octree_node_t * curNode, POINT camPos, Uint32 parentFrustTest) //, FRUSTUM_INTERSECTION lastRes)// POINT camPos)
{
    POINT pos;

    pos[X]=curNode->bv.x;
    pos[Y]=curNode->bv.y;
    pos[Z]=curNode->bv.z;
    VECTOR FarPoint;
    f_plane_t * Plane=(f_plane_t*)&PLANE[NEAR_PLANE];

    /**Temporary...for testing..will have to change it to keep both the center point, the max and min**/
    VECTOR boxMin = {curNode->bv.x - curNode->bv.length, curNode->bv.y-curNode->bv.length, curNode->bv.z-curNode->bv.length};
    VECTOR boxMax = {curNode->bv.x + curNode->bv.length, curNode->bv.y+curNode->bv.length, curNode->bv.z+curNode->bv.length};
    /****/
    if (parentFrustTest != INSIDE_FRUSTUM){
        if (ztCheckBoxInFrustum(boxMin, boxMax)==OUTSIDE_FRUSTUM) {
                tot_rejected++; return;}
    }

    if (curNode->PDATAid >= 0) //It's a leaf if it's >=0, so no children
    {

        #ifdef USE_PVS
        if (curNode->tick != mapTick) return; /**PVS attempt, didn't work well with octrees**/
        #endif // USE_PVS

        if (curNode->parentID & IS_SINGLE_PLANE_NODE)
        {
            if (ztCheckOnPlane(camPos, LevelMeshLOD[curNode->PDATAid]->pntbl[0], LevelMeshLOD[curNode->PDATAid]->pltbl[0].norm) < 0)
            {
                if (curNode->nbEntities>0)
                {
                    if (parentFrustTest == INTERSECTS_FRUSTUM)
                        { if (ztCheckBoxInFrustum(boxMin, boxMax) != OUTSIDE_FRUSTUM) displaySpriteEnt(curNode, 0);}
                    else
                        displaySpriteEnt(curNode, 0);
                }
              tot_rejected++;
              return;
            }
        }
        /**Get the node's distance from the near plane**/
        FarPoint[X]= ((Plane->normal[X] > 0) ? boxMin[X]:boxMax[X]);
        FarPoint[Y]= ((Plane->normal[Y] > 0) ? boxMin[Y]:boxMax[Y]);
        FarPoint[Z]= ((Plane->normal[Z] > 0) ? boxMin[Z]:boxMax[Z]);
        FIXED dist = slInnerProduct(FarPoint, Plane->normal)+Plane->d;
        if (dist >= 450<<16)  //LOD transition point
        {
            Sint32 v;
            PDATA * curPol = (PDATA*)LevelMeshLOD[curNode->PDATAid];
            v = (dist- (450<<16)) >> 23; if (v>7) v=7; else if (v<0) v=0;
            #ifdef USE_PALETTE  /**For palettes : Allow smooth fade in/out using VDP2 color calculation ratios. Won't work in the current build (since it uses RGB color codes)***/
            Uint32 i;
            for (i=0; i<curPol->nbPolygon; ++i)
            {
                curPol->attbl[i].colno = ((curPol->attbl[i].colno & 0xC7FF) | (v<<11));
            }
            #endif
            slPutPolygon(curPol);
            if (v<4) //v<4 = display the entities, else skip them
            {
               if (curNode->nbEntities>0)displaySpriteEnt(curNode, v);
            }
        }

        else if (dist >= -250<<16)  //Should be ScreenDist>>zDsp
        {
            PDATA * curPol = (PDATA*)LevelMesh[curNode->PDATAid];
            slPutPolygon(curPol);
            if (curNode->nbEntities>0)displaySpriteEnt(curNode, 0);
        }
    }
    /**Else = No polygonal data, so not a leaf**/
    else
    {
        Uint32 curFrustumInters = parentFrustTest;
        if (curFrustumInters == INTERSECTS_FRUSTUM)
        {
            curFrustumInters=ztCheckBoxInFrustum(boxMin, boxMax);
            if (curFrustumInters == OUTSIDE_FRUSTUM)
            {   tot_rejected++;            return;}
        }

        /**Near to far traversal of the octree. If the sprite or vertex buffer gets full, at least you will still see the sprites close to camera and skip those further away**/
        int i = ((camPos[X] < curNode->bv.x) ? 0:1) | ((camPos[Y] < curNode->bv.y) ? 0:4) | ((camPos[Z] < curNode->bv.z) ? 0:2);
        if (curNode->child[i] >= 0)     traverse_octree(nodes[curNode->child[i]], camPos, curFrustumInters);
        if (curNode->child[i^1] >= 0)   traverse_octree(nodes[curNode->child[i^1]], camPos, curFrustumInters);
        if (curNode->child[i^2] >= 0)   traverse_octree(nodes[curNode->child[i^2]], camPos, curFrustumInters);
        if (curNode->child[i^4] >= 0)   traverse_octree(nodes[curNode->child[i^4]], camPos, curFrustumInters);
        if (curNode->child[i^3] >= 0)   traverse_octree(nodes[curNode->child[i^3]], camPos, curFrustumInters);
        if (curNode->child[i^5] >= 0)   traverse_octree(nodes[curNode->child[i^5]], camPos, curFrustumInters);
        if (curNode->child[i^6] >= 0)   traverse_octree(nodes[curNode->child[i^6]], camPos, curFrustumInters);
        if (curNode->child[i^7] >= 0)   traverse_octree(nodes[curNode->child[i^7]], camPos, curFrustumInters);

        if (curNode->nbEntities>0)displaySpriteEnt(curNode, 0);
    }
}



/**Octree+PVS...it didn't go well**/
void UncompressPVS(unsigned int Node)
{
    int i;
    unsigned int PVSOFFSET=nodes[Node]->PVSIndex;// LeafArray[leaf].PVSIndex;
    unsigned char *PVSPointer=(unsigned char*)PVS[0];
    PVSPointer+=PVSOFFSET;
    unsigned int currentleaf=0;
    unsigned int totalNodes=MDATA.TOTAL_NODES;

    unsigned char mask;//=1<<i;
    unsigned char pvs;//=*PVSPointer;
    unsigned int curTick=mapTick;
    unsigned char RunLength;

    while (currentleaf<totalNodes)
    {
        if (*PVSPointer!=0)
        {
            pvs=*PVSPointer;
            for (i=0;i<8;i++)
            {
                mask=1<<i;
                if (pvs&mask){
                    nodes[currentleaf]->tick=curTick;
                }// end for if pvsdata
                currentleaf++;
            }// end for i;
            PVSPointer++;
        }// if pvspointer!=0; In other words if this is not a compressed byte

        else {// we have hit a zero so read in the next byte and see how long the run of zeros is
            PVSPointer++;
            RunLength=*PVSPointer;
            PVSPointer++;
            currentleaf+=RunLength*8;
        }
    }// end for while

}





/**Display 3d model. Not used anymore in newer versions of the engine **/
void display_model(entity_t * model, bool UseRealtimeGouraud)
{
    /*
    //You could add parameters to the function and check if the model is onscreen for culling
    FIXED dist = slCheckOnScreen(model->pos, model->length[X]);
    if (dist < 0) return;*/
    int i;
    for (i=0; i<model->nbMeshes; ++i)
    {
       if (UseRealtimeGouraud) slPutPolygonX((XPDATA*)model->pol[i], light);
       else slPutPolygon((PDATA*)model->pol[i]);
    }
}



void display_player(player_t * currentPlayer, FIXED dist)
{
    Uint8 rtg=enableRTG;
    entity_t * curEntity = &entities[currentPlayer->ENTITY_ID];
    slPushMatrix();
    {
        if (currentPlayer->ENTITY_ID!=1)
        {
            if (currentPlayer->COLOR != 0)
            {
                if (currentPlayer->COLOR & (1<<15))
                {
                    slSetGouraudColor(C_RGB(31, 31-((currentPlayer->COLOR&0x1f)-1), 31-((currentPlayer->COLOR&0x1f)-1)));
                    currentPlayer->COLOR-=ZT_FRAMERATE;
                }
                else if (currentPlayer->COLOR & (1<<14))
                {
                    slSetGouraudColor(C_RGB(31, 31, 31- ((currentPlayer->COLOR & 0x1f)-1)));
                    currentPlayer->COLOR-=ZT_FRAMERATE;
                }
                else {currentPlayer->COLOR=0;slSetGouraudColor(CD_White);}
                if ((currentPlayer->COLOR & 0x1f)<=4) currentPlayer->COLOR=0;
            }
            else
            {
                if (currentPlayer->INVINCIBLE>0)
                    slSetGouraudColor(C_RGB(31, 31,1));
                else
                    slSetGouraudColor(CD_White);
            }

        }
        else
        {
            if (currentPlayer->COLOR !=0)
            {
                slSetGouraudTbl( MetalGrd2 );
                currentPlayer->COLOR-=ZT_FRAMERATE;
                if ((currentPlayer->COLOR & 0x1f)<=4) currentPlayer->COLOR=0;
            }
            else if (currentPlayer->INVINCIBLE>0)
                slSetGouraudTbl( MetalGrd2 );
            else
                slSetGouraudTbl( MetalGrd );
        }

        slTranslate(currentPlayer->POSITION[X], currentPlayer->POSITION[Y], currentPlayer->POSITION[Z]);

        if (dist <= (640<<16))
            ztPutSprite(16, 0, currentPlayer->SHADOW_DIST-currentPlayer->POSITION[Y]+32768,0, toFIXED(1.69), 0, MESHoff | CL_Shadow);




        slRotZ(currentPlayer->ROTATION[Z]);
        slRotX(-currentPlayer->ROTATION[X]);
        if ((ABS(currentPlayer->SPEED[X])> toFIXED(0.5) || ABS(currentPlayer->SPEED[Z]) > toFIXED(0.5)))// &&(currentPlayer->ROTATION[Z]==0 && currentPlayer->ROTATION[X] == 0))
        {
            ANGLE rotDir = slAtan(currentPlayer->SPEED[Z], currentPlayer->SPEED[X]);
            slRotY(rotDir);
        }
        else slRotY(currentPlayer->ROTATION[Y]);

        #ifndef IS_FPS   //IS_FPS isn't supported in fact
        slRotX(currentPlayer->SPIN_ANGLE);
        #endif // IS_FPS


        display_model(curEntity,rtg);
    }
    slPopMatrix();

}

void animate()
{
    ringSpriteAnim=(TIMER>>2)&0x7;

    int i, tot;

    Sint8 frmrt = ZT_FRAMERATE;
    tot=MDATA.TOT_ANIMATIONS;
    animArray_t * curAnim= &animArray[0];
    TEXTURE * tex;

    for (i=0; i<tot; ++i)
    {
        tex=&tex_def[curAnim->textureId];

        if (curAnim->lodLevel==0)
        {
            if ((curAnim->timer += (frmrt<<1)) >= tex->Vsize<<1)
            curAnim->timer-=tex->Vsize<<1;
        }
        else
        {
            if ((curAnim->timer += frmrt) >= tex->Vsize<<1)
            curAnim->timer-=tex->Vsize<<1;
        }
        tex->CGadr=curAnim->pointer+(((((curAnim->timer * tex->Hsize<<1))>>curAnim->colorDepth)+7)>>3);

        *curAnim++;
    }

    particles_t * curP = &particleArray[0];
    for (i=0; i<MAX_PARTICLES; i++)
    {
        if (curP->life != 0)
        {
            if ((curP->life -= frmrt) < 0)
                curP->life = 0;
            curP->pos[X] += frmrt*curP->speed[X];
            curP->pos[Y] += frmrt*curP->speed[Y];
            curP->pos[Z] += frmrt*curP->speed[Z];
           curP->pos[S] = curP->life<<10;
        }
        curP++;

    }

}

/**Find the current node**/
unsigned int octreeRetrieveNode(POINT pos)
{
    octree_node_t * curNode = nodes[0];
    int i;
    unsigned int nodeId=0;

    while (1)
    {
        i = ((pos[X] < curNode->bv.x) ? 0:1) | ((pos[Y] < curNode->bv.y) ? 0:4) | ((pos[Z] < curNode->bv.z) ? 0:2);
        if(curNode->child[i] >= 0)
        {
            nodeId=curNode->child[i];
            curNode=nodes[nodeId];
        }
        else
            return nodeId;
    }
    return nodeId; //Shouldn't happen, but it keeps the compiler happy
}

/**********
MAIN DRAW FUNCTION
Could/should be cleaned up. It also should call draw functions ASAP to make the slave SH2 busy, so here it's not super efficient
The function updates the NBG0/1 layers position. Then it updates the matrix, display the players' models and creates the frustum
**********/
void			ztRender(player_t * currentPlayer, camera_t * currentCamera, Uint32 nbPlayers)
{
    mapTick++;
    Sint32 BGAnim=mapId;
    Uint32 curTimer=TIMER;
    Uint8 rtg=enableRTG;
    if (BGAnim == 2 || BGAnim == 4) BGAnim=curTimer<< 17;
    else BGAnim=0;
    if (currentPlayer->PLAYER_ID == 0)
    {
        slScrPosNbg1(slMulFX(currentCamera->camAngle[Y], (2048<<16)) + (BGAnim<<1), (slMulFX(slSin(currentCamera->camAngle[Z]), 256<<16))+(nbPlayers* ZT_TV_HEIGHT<<8)+BGAnim);
        animate(); //To be put elsewhere...
        if (nbPlayers == 1)
            {
                ztSetNormalSprite(18, -170, -92, toFIXED(30.0));
                ztSetNormalSprite(19, -170, -70, toFIXED(30.0));
            }
        else
            {
                ztSetNormalSprite(18, -170, -36, toFIXED(30.0));
                ztSetNormalSprite(19, -170, -14, toFIXED(30.0));
            }
    }

    else
        slScrPosNbg0(slMulFX(currentCamera->camAngle[Y], (2048<<16)) + (BGAnim<<1), (slMulFX(slSin(currentCamera->camAngle[Z]), 256<<16))+(ZT_TV_HEIGHT<<18)+BGAnim);

        slPushMatrix() ;
        {

            slRotX(currentCamera->camAngle[Z]);
            slRotZ(currentCamera->camAngle[X]);
            slRotY(-currentCamera->camAngle[Y]);
            slTranslate(-currentCamera->pos[X], -currentCamera->pos[Y], -currentCamera->pos[Z]);

            if (rtg) computeLight();  //Wrong implementation, I never spent time improving it

            display_player(currentPlayer, 0);  //Display the current player



            if (nbPlayers>1)                //For multiplayer, displays the other player
            {
                player_t * otherPlayer;
                entity_t * otherEntity;
                if (currentPlayer->PLAYER_ID==0) {
                    otherPlayer=&PLAYER_2;
                    otherEntity=&entities[otherPlayer->ENTITY_ID];
                }
                else {
                    otherPlayer=&PLAYER_1;
                    otherEntity=&entities[otherPlayer->ENTITY_ID];
                }
                FIXED dist=slCheckOnScreen(otherPlayer->POSITION, otherEntity->length[Y]);
                if (dist >=0)
                   display_player(otherPlayer, dist);
            }

            /**octree+PVS attempt...didn't go well...Might try again with anti-portals instead?**/
            #ifdef USE_PVS
                unsigned int curNode = octreeRetrieveNode(currentCamera->pos);
                UncompressPVS(curNode);
            #endif // USE_PVS

            ztUpdateFrustum(currentCamera->pos, currentCamera);
            traverse_octree(nodes[0], currentCamera->pos, INTERSECTS_FRUSTUM);

            displayParticles();
        }
        slPopMatrix() ;

        if (currentPlayer->PLAYER_ID == 0)
            draw_stats(currentPlayer);

}


