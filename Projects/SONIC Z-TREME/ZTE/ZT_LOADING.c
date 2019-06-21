#include "ZTE_DEF.h"

Uint32 WIREFRAME_TEST=0;

Sint32           firstMapTexture;

/******************
Gouraud shading variables
******************/
#ifdef USE_GOURAUD
static	Uint16	DepthData[32] = {
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 16, 16, 16 ),
	GRTBL( 15, 15, 15 ),
	GRTBL( 14, 14, 14 ),
	GRTBL( 13, 13, 13 ),
	GRTBL( 12, 12, 12 ),
	GRTBL( 11, 11, 11 ),
	GRTBL( 10, 10, 10 ),
	GRTBL(  9,  9,  9 ),
	GRTBL(  8,  8,  8 ),
	GRTBL(  7,  7,  7 ),
	GRTBL(  6,  6,  6 ),
	GRTBL(  5,  5,  5 ),
	GRTBL(  4,  4,  4 ),
	GRTBL(  3,  3,  3 ),
	GRTBL(  2,  2,  2 ),
	GRTBL(  1,  1,  1 ),
	GRTBL(  0,  0,  0 ),
};
#endif // USE_GOURAUD
extern void calcModelVector( XPDATA *model );
void setGouraudShading(XPDATA * currentPol, Uint32 gouraudCnt)
{
    GOURAUDTBL		tempGrd[currentPol->nbPolygon];

    int i, ii, tot=currentPol->nbPolygon;
    Uint16 col;

    calcModelVector(currentPol);
    POLYGON * pol;
    FIXED curLight[XYZ]=POStoFIXED(100.0, -200.0,  -100.0);
    VecNormalize(curLight);
    for (i=0; i<tot; i++)
    {
        currentPol->attbl[i].atrb |= CL_Gouraud;
        currentPol->attbl[i].gstb |= tex_def[totalTextures].CGadr+(gouraudCnt+i);
        pol=&currentPol->pltbl[i];
        for (ii=0; ii<4; ii++)
        {
          col= (Uint16)((toFIXED(16.0)+ slMulFX(slInnerProduct( currentPol->vntbl[pol->Vertices[ii]], curLight), toFIXED(8.0)))/65536);
          col=MIN(col, 20);
          tempGrd[i][ii]=GRTBL(col,col,col);
        }

    }

    memcpy_w((Sint16*)(SpriteVRAM + ((tex_def[totalTextures].CGadr+(gouraudCnt))<<3)), (Sint16*)tempGrd, currentPol->nbPolygon*sizeof(GOURAUDTBL));

}

void texturesToVRAM(void * startAddress)
{
    int i;
    img_t *  pimg[MDATA.TOT_TEXT];
    void * currentAddress=startAddress;
    int totCLUT=0;
    for (i=0; i<MDATA.TOT_TEXT; ++i)
    {
        pimg[i] = (img_t*)currentAddress;
        currentAddress=(void*)(currentAddress+sizeof(img_t));
        pimg[i]->data = (Uint16*)(currentAddress);
        currentAddress=(void*)(currentAddress+(pimg[i]->width * 4 * pimg[i]->height >> pimg[i]->cmode));
        ztAddTexture(pimg[i]);
        if (pimg[i]->cmode==COL_16)totCLUT++;
    }
    #ifdef USE_PALETTE
    slDMACopy(currentAddress, (void*)(returnLUTaddr((Uint16)firstMapTexture)), 32 * totCLUT * CRAM_MAX/256);
    #else
    slDMACopy(currentAddress, (void*)(returnLUTaddr((Uint16)firstMapTexture)), 32 * totCLUT);
    currentAddress = (void*)(currentAddress+ 32 * totCLUT);
    slDMACopy(currentAddress, (void*)(SpriteVRAM + ((tex_def[totalTextures].CGadr)<<3)), MDATA.TOTAL_GOURAUD*8);
    #endif



}

int loadTextures()
{
    /**First step : ''Free'' the VRAM**/
    if (firstMapTexture>=0) {ztRemoveSpritesFrom(firstMapTexture);}
    void * currentAddress = (void*)(LWRAM+((CRAM_MAX*sizeof(short))+sizeof(mapData_t))+sizeof(animArray_t)*64);
    firstMapTexture = totalTextures;
    if (firstMapTexture<0) firstMapTexture=0;
    //slSlaveFunc(texturesToVRAM , (void*)currentAddress) ;
    texturesToVRAM(currentAddress);

    slDMAWait();
    return firstMapTexture;
}


void * loadPDATA(void * startAddress)
{
    void * currentAddress = startAddress;
    unsigned int i;

    for (i=0; i<MDATA.TOTAL_NODES; i++)
    {
        nodes[i] = (octree_node_t*)currentAddress;
        currentAddress = (void*)(currentAddress + sizeof(octree_node_t));
            nodes[i]->entbl = (staticEntity*)currentAddress;
            currentAddress=(void*)(currentAddress + (sizeof(staticEntity)*nodes[i]->nbEntities));

    }

    for (i=0; i<MDATA.TOTAL_MESH; i++)
    {
        LevelMesh[i]=(XPDATA *)currentAddress;
        currentAddress=(void*)(currentAddress + sizeof(XPDATA));
        LevelMesh[i]->pntbl = (POINT*)currentAddress;
        LevelMesh[i]->vntbl = (VECTOR*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(POINT)* LevelMesh[i]->nbPoint));
        LevelMesh[i]->pltbl = (POLYGON*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(POLYGON)* LevelMesh[i]->nbPolygon));
        LevelMesh[i]->attbl = (ATTR*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(ATTR)*LevelMesh[i]->nbPolygon));
    }

    return currentAddress;
}

void * loadLODpdata(void * startAddress)
{
    void * currentAddress = startAddress;
    unsigned int i;
    for (i=0; i<MDATA.TOTAL_MESH; i++)
    {
        LevelMeshLOD[i]=(XPDATA *)currentAddress;
        currentAddress=(void*)(currentAddress + sizeof(XPDATA));
        LevelMeshLOD[i]->pntbl = (POINT*)LevelMesh[i]->pntbl;
        LevelMeshLOD[i]->vntbl = (VECTOR*)LevelMesh[i]->vntbl;

        if (LevelMeshLOD[i]->nbPolygon == LevelMesh[i]->nbPolygon)
        {
            LevelMeshLOD[i]->pltbl = (POLYGON*)LevelMesh[i]->pltbl;
        }
        else
        {
            LevelMeshLOD[i]->pltbl = (POLYGON*)currentAddress;
            currentAddress=(void*)(currentAddress + (sizeof(POLYGON)* LevelMeshLOD[i]->nbPolygon));
        }

        LevelMeshLOD[i]->attbl = (ATTR*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(ATTR)*LevelMeshLOD[i]->nbPolygon));
    }
    return currentAddress;
}

void * loadCollision(void * startAddress)
{
    void * currentAddress = startAddress;
    unsigned int i;
    for (i=0; i<MDATA.TOTAL_MESH; i++)
    {
        LevelColl[i]=(CDATA*)currentAddress;
        currentAddress=(void*)(currentAddress + sizeof(CDATA));
        LevelColl[i]->cotbl=(COLLISION*)currentAddress;
        currentAddress = (void*)(currentAddress + (sizeof(COLLISION) * LevelColl[i]->nbCo));
    }
    return currentAddress;
}

void setTextures(int id)
{
    unsigned int i, ii;
    for (i=0; i<MDATA.TOTAL_MESH; i++)
    {
        for (ii=0; ii<LevelMesh[i]->nbPolygon; ii++)
        {
            if (LevelMesh[i]->attbl[ii].dir & FUNC_Texture)
            {
                LevelMesh[i]->attbl[ii].texno+=id;
                //LevelMesh[i]->attbl[ii].dir |= 1;
/*
LevelMesh[i]->attbl[ii].gstb |= GRtbl(3);
LevelMesh[i]->attbl[ii].atrb |= CL_Gouraud;*/
                //LevelMesh[i]->attbl[ii].gstb &= !HSSon;
                //LevelMesh[i]->attbl[ii].colno=LUTidx(LevelMesh[i]->attbl[ii].texno);
                if (LevelMesh[i]->attbl[ii].atrb & CL16Look)
                    #ifdef USE_PALETTE
                    //LevelMesh[i]->attbl[ii].colno=LUTidx(LevelMesh[i]->attbl[ii].texno);
                    LevelMesh[i]->attbl[ii].colno+=LUTidx((Uint16)firstMapTexture);
                    #else
                    LevelMesh[i]->attbl[ii].colno=LUTidx(LevelMesh[i]->attbl[ii].texno);
                    #endif


            }
            if (WIREFRAME_TEST==1)
                {
                    if (LevelMesh[i]->attbl[ii].dir & FUNC_Polygon)
                        LevelMesh[i]->attbl[ii].colno = CD_SemiGreen;
                    LevelMesh[i]->attbl[ii].dir &= ~FUNC_Texture;
                    LevelMesh[i]->attbl[ii].dir |= FUNC_PolyLine;

                }
            else if (WIREFRAME_TEST==2)
            {
                    LevelMesh[i]->attbl[ii].dir &= ~FUNC_Texture;
                    LevelMesh[i]->attbl[ii].dir |= FUNC_Sprite;
            }
            else if (WIREFRAME_TEST==3)
            {
                    LevelMesh[i]->attbl[ii].dir &= ~FUNC_Texture;
                    LevelMesh[i]->attbl[ii].dir |= FUNC_Polygon;
                    LevelMesh[i]->attbl[ii].colno += 1;
            }
            else if (WIREFRAME_TEST==4)
            {
                LevelMesh[i]->attbl[ii].atrb |= CL_Trans;
            }
            /*else
            {
                    ATTR bufAttr = ATTRIBUTE(LevelMesh[i]->attbl[ii].flag, SORT_MAX, No_Texture, LevelMesh[i]->attbl[ii].colno, 0, CL256Bnk|MESHoff|Window_In|1<<11, sprPolygon, 0);
                    LevelMesh[i]->attbl[ii] = bufAttr;
            }*/

            //if (useGouraudDepth==true) LevelMesh[i]->attbl[ii].sort = (SORT_MAX) | (((sprNoflip) >> 16) & 0x1c) | (UseNearClip | UseDepth);
        }
    }

    for (i=0; i<MDATA.TOTAL_MESH; i++)
    {
        for (ii=0; ii<LevelMeshLOD[i]->nbPolygon; ii++)
        {
            LevelMeshLOD[i]->attbl[ii].texno+=id;
            //LevelMeshLOD[i]->attbl[ii].sort |= UsePalette;
            LevelMeshLOD[i]->attbl[ii].sort &= ~UseNearClip;
            #ifdef USE_PALETTE

            //if (useGouraudDepth==true )
              //  LevelMeshLOD[i]->attbl[ii].colno |= 1<<14 | 0<<11 ;  //BINGO!
             LevelMeshLOD[i]->attbl[ii].colno |= 1<<14; // & #bit_mask | new val
            #else
            LevelMeshLOD[i]->attbl[ii].colno = LUTidx(LevelMeshLOD[i]->attbl[ii].texno);
            #endif

            if (WIREFRAME_TEST==1)
             {
                LevelMeshLOD[i]->attbl[ii].dir &= ~FUNC_Texture;
                LevelMeshLOD[i]->attbl[ii].dir |= FUNC_PolyLine;
                LevelMeshLOD[i]->attbl[ii].atrb |= SPdis;
                //LevelMeshLOD[i]->attbl[ii].colno &= ~(1<<14);
                LevelMeshLOD[i]->attbl[ii].colno = LevelMesh[i]->attbl[ii].colno;
             }
             else if (WIREFRAME_TEST==2)
             {
                LevelMeshLOD[i]->attbl[ii].dir &= ~FUNC_Texture;
                LevelMeshLOD[i]->attbl[ii].dir |= FUNC_Sprite;
             }
             else if (WIREFRAME_TEST==3)
             {
                LevelMeshLOD[i]->attbl[ii].dir &= ~FUNC_Texture;
                LevelMeshLOD[i]->attbl[ii].dir |= FUNC_Polygon;
                LevelMeshLOD[i]->attbl[ii].colno += 1;
             }

        }
    }

    for (i=0; i<MDATA.TOT_ANIMATIONS; i++)
    {
        animArray[i].textureId+=id;
        TEXTURE * curText= &tex_def[animArray[i].textureId];
        curText->Vsize = curText->Vsize>>1;
        curText->HVsize = ((curText->Hsize&0x1f8)<<5)|curText->Vsize;
        animArray[i].pointer=curText->CGadr;
        animArray[i].timer=0;
    }
}


void loadNodes(void *startAddress)
{
    Uint32 i;
    Uint8 * ptr = HWRAM_DYNAMIC_MEM_PTR;

    slDMACopy((void*)startAddress, (void*)ptr, sizeof(octree_node_t)*MDATA.TOTAL_NODES + sizeof(staticEntity)*MDATA.TOTAL_ENTITIES);


    for (i=0; i<MDATA.TOTAL_NODES; i++)
    {
        //slDMACopy((void*)nodes[i], ptr, sizeof(octree_node_t)+ sizeof(staticEntity)*nodes[i]->nbEntities);
        nodes[i]=(octree_node_t*)ptr;
        ptr=(Uint8*)(ptr+(sizeof(octree_node_t)));
        nodes[i]->entbl=(staticEntity*)ptr;
        if (nodes[i]->nbEntities==0)
            nodes[i]->entbl=NULL;
        ptr=(Uint8*)(ptr+(sizeof(staticEntity)*nodes[i]->nbEntities));
    }
    HWRAM_DYNAMIC_MEM_PTR=(Uint8*)ptr;
}

/**Temporary function to move the vertices to high work ram***/
void mallocVertices()
{

    HWRAM_DYNAMIC_MEM_PTR=(Uint8*)HWRAM_DYNAMIC_MEM;
    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "Malloc vertices");
        scd_logflush();
       //HWRAM_DYNAMIC_MEM_PTR=(void*)(LWRAM+(400*1024));
       //return;
    }
    #endif // SATLINK_DEBUG
    Uint32 i;

    Uint8 * ptr=HWRAM_DYNAMIC_MEM_PTR;
    slDMACopy((void*)nodes[0], (void*)ptr, sizeof(octree_node_t)*MDATA.TOTAL_NODES + sizeof(staticEntity)*MDATA.TOTAL_ENTITIES);
    slDMAWait();
    for (i=0; i<MDATA.TOTAL_NODES; i++)
    {
        nodes[i] = (octree_node_t*)ptr;
        ptr=(Uint8*)(ptr+sizeof(octree_node_t));
        nodes[i]->entbl=(staticEntity*)ptr;
        ptr=(Uint8*)(ptr+sizeof(staticEntity)*nodes[i]->nbEntities);
    }
    for (i=0; i<MDATA.TOTAL_MESH; i++)
    {
        slDMACopy((void*)LevelMesh[i]->pntbl, ptr, sizeof(POINT) * LevelMesh[i]->nbPoint);
        LevelMesh[i]->pntbl=(POINT*)ptr;
        LevelMeshLOD[i]->pntbl=(POINT*)ptr;
        ptr = (Uint8*)(ptr+(sizeof(POINT)*LevelMesh[i]->nbPoint));
    }
}


void * loadBinaryMAP(void * startAddress, int lvl)
{

    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "Load binary map");
        scd_logflush();
       //currentAddress=(void*)(LWRAM+(768*1024));
    }
    #endif // SATLINK_DEBUG

    void * currentAddress;
    currentAddress=startAddress;

    /**Variables**/
    char* filename = (char*)ztMapNameLookUp(lvl);

    /**Load the file header and map data**/
    void * ptr = &MDATA;
    Sint32 fid = ztCDopen((Sint8*)filename); //GFS_NameToId((Sint8*)filename);
    ztCDload(fid, 0, (void *)LWRAM, (sizeof(mapData_t))+(CRAM_MAX*sizeof(short))+sizeof(animArray_t)*64);  //GFS_Load(fid, 0, (Uint32 *)LWRAM, (sizeof(mapData_t))+(CRAM_MAX*sizeof(short))+sizeof(animArray_t)*64);
    memcpy_l((Sint32*)ptr, (Sint32*)(LWRAM), sizeof(mapData_t));
    Pal2CRAM((void*)(LWRAM+sizeof(mapData_t)), (void*)(CRAM_Base), CRAM_MAX);
    memcpy_l((Sint32*)animArray, (Sint32*)(LWRAM+sizeof(mapData_t)+(CRAM_MAX*sizeof(short))), 64*sizeof(animArray_t));



    /**Finds the filesize**/
    /*Sint32 sctsize, nsct, lastsize;
    GFS_GetFileSize(gfs, &sctsize, &nsct, &lastsize);
    fsize = sctsize * (nsct - 1) + lastsize;*/


    /**Turns on the graphics (mainly for debugging)**/
    slScrAutoDisp(NBG3ON);
    slPrint("NOW LOADING...", slLocate(5, 5));
    slPrint(filename, slLocate(5, 6));
    fadeIn();

    /**Load the texture list (using an offset to allow DMA transfer)**/
    slPrint("LOADING TEXTURES", slLocate(5, 8));

    Uint32 loadingSize = MDATA.TEXT_SIZE+(CRAM_MAX*sizeof(short))+(sizeof(mapData_t))+64*sizeof(animArray_t) + MDATA.TOTAL_GOURAUD*8;
    ztCDload(fid, 0, (void*)LWRAM, loadingSize);    //GFS_Load(fid, 0, (void*)LWRAM, loadingSize);
    int first_texture =  loadTextures();


        #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, MDATA.MUSIC_ID);
        scd_msgout(3, "Testing");;
        scd_logflush();
       //currentAddress=(void*)(LWRAM+(768*1024));
    }
    #endif // SATLINK_DEBUG
    /**Load nodes and PDATA**/
    slPrint("LOADING PDATA   ", slLocate(5, 8));
    Sint32 bytesOff = (loadingSize)/2048;

    ztCDload(fid, bytesOff, (void*)startAddress, MDATA.PDATA_SIZE + (sizeof(octree_node_t)*MDATA.TOTAL_NODES) + MDATA.LOD_SIZE + (MDATA.TOTAL_MESH*sizeof(CDATA) + MDATA.TOT_COLL*sizeof(COLLISION)) + 2048 + MDATA.PVS_SIZE); //GFS_Load(fid, bytesOff, (void*)startAddress, MDATA.PDATA_SIZE + (sizeof(octree_node_t)*MDATA.TOTAL_NODES) + MDATA.LOD_SIZE + (MDATA.TOTAL_MESH*sizeof(CDATA) + MDATA.TOT_COLL*sizeof(COLLISION)) + 2048 + MDATA.PVS_SIZE);

    bytesOff = loadingSize - (bytesOff*2048);
    currentAddress = (void*)(currentAddress + bytesOff);
    currentAddress = loadPDATA((void*)currentAddress);

    /**Load LOD PDATA **/
    slPrint("LOADING LQ PDATA   ", slLocate(5, 8));
    currentAddress = loadLODpdata((void*)currentAddress);

    /**Load collision data**/
    slPrint("LOADING COL DATA   ", slLocate(5, 8));
    currentAddress = loadCollision(currentAddress);

    /**Load visibility data**/
    slPrint("LOADING PVS DATA   ", slLocate(5, 8));
    PVS = (unsigned char*)currentAddress;


    /**Set textures**/
    slPrint("SETTING TEXTURES   ", slLocate(5, 8));

    setTextures(first_texture);
mallocVertices();

#ifdef USE_PALETTE
    if (USE_MAP_GOURAUD == 1)
    {
        slPrint("CALCULATING LIGHTING", slLocate(5,8));
        int cnt=0, j;

        for (j=0; j<MDATA.TOTAL_MESH; j++)
        {
           setGouraudShading(LevelMesh[j], cnt);
           cnt+=LevelMesh[j]->nbPolygon;
        }

    }
#else

        slPrint("SETTING LIGHTING", slLocate(5,8));
        int cnt=0;
        unsigned int j, p;

        for (j=0; j<MDATA.TOTAL_MESH; j++)
        {
            for (p=0; p<LevelMesh[j]->nbPolygon; p++)
            {
                LevelMesh[j]->attbl[p].atrb |= CL_Gouraud;
                LevelMesh[j]->attbl[p].gstb |= tex_def[totalTextures].CGadr+(cnt);
                cnt++;
            }
            for (p=0; p<LevelMeshLOD[j]->nbPolygon; p++)
            {
                LevelMeshLOD[j]->attbl[p].atrb |= CL_Gouraud;
                LevelMeshLOD[j]->attbl[p].gstb |= tex_def[totalTextures].CGadr+(cnt);
                cnt++;
            }
        }
#endif



    ztClearText();
    fadeOut(0);

    return currentAddress;
}


//void * mapAddress = NULL;
/****
* Change map function, this is the function you call to go to the next map
****/
void ztLoadMap(int lvl, Uint32 nbPlayers)
{

    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "LOAD_MAP");
        scd_logflush();
    }
    #endif // SATLINK_DEBUG
    ztClearText();
    fadeOut(1);

    loadBinaryMAP((void*)LWRAM, lvl);


    ztPlayCDDA(MDATA.MUSIC_ID, MDATA.MUSIC_ID);



    ztSetColorCalc();
    slPriorityNbg1(3);
    if (nbPlayers>1)
        slPriorityNbg0(3);
    else
        slPriorityNbg0(0);


    ztReset(&PLAYER_1);
    if (nbPlayers>0)ztReset(&PLAYER_2);
    computeLight();

    currentParticle=0;
	int i;
	for (i=0; i<MAX_PARTICLES; i++)
     particleArray[i].life=0;

    #ifdef USE_TRANSP_BUFFER

    slScrMoveNbg0(toFIXED(0.0),toFIXED(0.0)) ;

    if (nbPlayers==1)
    {
        slBitMapNbg0(COL_TYPE_32768, BM_512x256, (void *)BUFFER_VRAM);
        slZoomNbg0(toFIXED(0.45454545),toFIXED(0.5)) ;
        slPriorityNbg0(6);
        slColorCalc( CC_RATE | CC_TOP | NBG0ON | SPRON | LNCLON);
        slColorCalcOn(NBG0ON | SPRON | LNCLON) ;
        slColRateNbg0(CLRate19_13);
        *(Uint16*)(VDP1_VRAM+20)=511; //Patches the system clipping (It stays in VRAM)
    }

    #endif // USE_TRANSP_BUFFER


    fadeIn();
    slScrAutoDisp(NBG0ON | NBG1ON | NBG3ON );

    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "MAP LOADED");
        scd_logflush();
    }
    #endif // SATLINK_DEBUG

}



