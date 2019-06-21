#include "ZTE_DEF.h"

entity_t entities[MAX_MODELS];
unsigned int gouraudCounter;

void calcModelVector( XPDATA *model )
{
	int	i,j,p,s;
	FIXED	x,y,z,l,x2,y2,z2;
	FIXED	*vect;
	POLYGON	*poly;

	p = model->nbPoint;
	s = model->nbPolygon;
	vect = (FIXED*)model->vntbl;

	for( i=0; i<p; i++ ) {
		x=y=z=0;
		poly = model->pltbl;
		for( j=0; j<s; j++ ) {
			if( poly->Vertices[0] == i || poly->Vertices[1] == i ||
				poly->Vertices[2] == i || poly->Vertices[3] == i ) {
				x += poly->norm[0];
				y += poly->norm[1];
				z += poly->norm[2];
			}
			poly++;
		}
		x2 = slMulFX(x,x);
		y2 = slMulFX(y,y);
		z2 = slMulFX(z,z);
		l = slSquartFX(x2+y2+z2);
		*vect++ = slDivFX(l,x);
		*vect++ = slDivFX(l,y);
		*vect++ = slDivFX(l,z);
	}
}

/*
void setgstb( XPDATA *model )
{
	Sint32	i,s;
	static  Uint16  g = 0;
	ATTR	*attr;

	s = model->nbPolygon;
	attr = model->attbl;


	for( i=0; i<s; i++ ) {
		attr->gstb = GRaddr+g;
		attr++;
		g++;
	}
}*/

#define USE_BUMP_MAP (4)
#define ALT_VECTORS (3)
void setModelTextures(Uint16 id, entity_t * model, unsigned int total_meshes, int UseRealtimeGouraud)
{
    unsigned int i, ii;
    Uint16 colVal;
    if (UseRealtimeGouraud==USE_BUMP_MAP) colVal=1792+240;
    else colVal=1792+239;

    for (i=0; i< total_meshes; i++)
    {
        if (UseRealtimeGouraud==ALT_VECTORS)
        {
            calcModelVector(model->pol[i]);
        }
        for (ii=0; ii<model->pol[i]->nbPolygon; ii++)
        {
            if ((UseRealtimeGouraud==USE_BUMP_MAP) || (model->pol[i]->attbl[ii].colno ==  49680))
            {
                /**TODO : Add bump mapping : 64 and 80 are good, 240 very good**/

                ATTR bufAttr = ATTRIBUTE(Single_Plane, SORT_CEN, 0, colVal, GRtbl(gouraudCounter), (MESHoff | CL_Gouraud | CL256Bnk | Window_In), sprPolygon, (UseGouraud | UsePalette));

                model->pol[i]->attbl[ii] = bufAttr;
                model->pol[i]->attbl[ii].colno |= 1<<14;
                if (UseRealtimeGouraud==USE_BUMP_MAP)
                    model->pol[i]->attbl[ii].colno |= 4<<11;
                else
                    model->pol[i]->attbl[ii].colno |= 2<<11;
                gouraudCounter++;
            }
            else if (model->pol[i]->attbl[ii].dir & sprNoflip)
            {
                model->pol[i]->attbl[ii].texno+=id;
                model->pol[i]->attbl[ii].colno=LUTidx(model->pol[i]->attbl[ii].texno);
                if (UseRealtimeGouraud==true || UseRealtimeGouraud==ALT_VECTORS)
                {
                    if (model->pol[i]->attbl[ii].atrb & SPdis)
                    {
                        ATTR bufAttr = ATTRIBUTE(model->pol[i]->attbl[ii].flag, SORT_CEN, model->pol[i]->attbl[ii].texno, model->pol[i]->attbl[ii].colno, GRtbl(gouraudCounter), Window_In|MESHoff|HSSon|ECdis|SPdis|CL16Look|CL_Gouraud, sprNoflip, UseGouraud|UseNearClip);
                        model->pol[i]->attbl[ii] = bufAttr;
                    }
                    else
                    {
                        ATTR bufAttr = ATTRIBUTE(model->pol[i]->attbl[ii].flag, SORT_CEN, model->pol[i]->attbl[ii].texno, model->pol[i]->attbl[ii].colno, GRtbl(gouraudCounter), Window_In|MESHoff|HSSon|ECdis|SPenb|CL16Look|CL_Gouraud, sprNoflip, UseGouraud|UseNearClip);
                        model->pol[i]->attbl[ii] = bufAttr;
                    }
                    gouraudCounter++;
                }
            }
            else
            {
                if (UseRealtimeGouraud==true || UseRealtimeGouraud==ALT_VECTORS)
                {
                    if (model->pol[i]->attbl[ii].colno != 0x8000)
                    {
                        ATTR bufAttr = ATTRIBUTE(model->pol[i]->attbl[ii].flag, SORT_CEN, No_Texture, model->pol[i]->attbl[ii].colno, GRtbl(gouraudCounter), MESHoff|Window_In|CL_Gouraud, sprPolygon, UseGouraud);
                        model->pol[i]->attbl[ii] = bufAttr;
                        gouraudCounter++;
                    }
                    else
                    {
                        ATTR bufAttr = ATTRIBUTE(model->pol[i]->attbl[ii].flag, SORT_CEN, No_Texture, model->pol[i]->attbl[ii].colno, 0, MESHoff|Window_In|1<<11, sprPolygon, 0);
                        model->pol[i]->attbl[ii] = bufAttr;
                    }

                }
            }

        }
    }
}


Uint16 loadModelTextures(void * startAddress, modelData_t * modelData)
{
    int i;
    img_t * pimg[modelData->TOT_TEXT];
    void *  currentAddress = (void*)(startAddress+sizeof(modelData_t));
    Sint32     first_sprite = totalTextures;    if (first_sprite < 0) first_sprite=0;

    for (i=0; i<modelData->TOT_TEXT; ++i)
    {
        pimg[i] = (img_t *)currentAddress;
        currentAddress=(void*)(currentAddress+sizeof(img_t));
        pimg[i]->data = (Uint16*)(currentAddress);
        currentAddress=(void*)(currentAddress+(pimg[i]->width/2 * pimg[i]->height));
        ztAddTexture(pimg[i]);
    }
    //slDMACopy(currentAddress, (void*)(returnLUTaddr((Uint16)firstMapTexture)), sizeof(Uint16)*16 * MDATA.TOT_TEXT);
    slDMACopy(currentAddress, (void*)(returnLUTaddr((Uint16)first_sprite)), sizeof(Uint16)*16 * modelData->TOT_TEXT);
    slDMAWait();

    //first_sprite=totalTextures;
    return (Uint16)(first_sprite);
}

void * loadAnimations(void * startAddress, entity_t * model, modelData_t * modelData)
{
    void * currentAddress = startAddress;
    unsigned int a, i; //, ii;

    for (a=0; a<modelData->nbFrames; a++)  /**NEED TO DIVIDE NBFRAMES BY INTERPOLATION**/
    {
        model->animation[a]=(anim_struct*)(currentAddress);
        currentAddress=(void*)(currentAddress+sizeof(anim_struct));

        unsigned int totPoints=0;
        unsigned int totNormals=0;

        for (i=0; i<model->nbMeshes; i++)
        {
            totPoints+=model->pol[i]->nbPoint;
            totNormals+=model->pol[i]->nbPolygon;
        }
        {

            model->animation[a]->cVert = (compVert*)(currentAddress);
            currentAddress=(void*)(currentAddress+(sizeof(compVert) * totPoints));

            if (totPoints % 2 != 0)
               currentAddress=(void*)(currentAddress+(sizeof(short)));

            model->animation[a]->cNorm = (compNorm*)(currentAddress);
            currentAddress=(void*)(currentAddress+(sizeof(compNorm) * totNormals));
            while (totNormals % 4 != 0)
            {
                currentAddress=(void*)(currentAddress+(sizeof(char)));
                totNormals++;
            }

        }
    }

    return currentAddress;

}

void * loadModelPDATA(void * startAddress, entity_t * model, modelData_t * modelData)
{
    void * currentAddress = startAddress;
    unsigned int i;

    for (i=0; i<modelData->TOTAL_MESH; i++)
    {
        model->pol[i]=(XPDATA*)currentAddress;
        currentAddress=(void*)(currentAddress + sizeof(XPDATA));
        model->pol[i]->pntbl = (POINT*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(POINT)* model->pol[i]->nbPoint));
        model->pol[i]->pltbl = (POLYGON*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(POLYGON)* model->pol[i]->nbPolygon));
        model->pol[i]->attbl = (ATTR*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(ATTR)*model->pol[i]->nbPolygon));
        model->pol[i]->vntbl = (VECTOR*)currentAddress;
        currentAddress=(void*)(currentAddress + (sizeof(VECTOR)*model->pol[i]->nbPoint));
    }

    return currentAddress;
}

void * ztLoad3Dmodel(Sint8 * filename, void * startAddress, entity_t * model, int UseRealtimeGouraud)
{
    //memset_l((void*)startAddress,0x0000, (0xFFFE - ((Uint32)startAddress-(Uint32)LWRAM)));  //Not 100% necessary, since data can just be overwritten, but good for testing and see how much data a level takes
    void * currentAddress;
    currentAddress=startAddress;

    /**Load the file header and map data**/
    modelData_t bufModel; //If you wish to keep the model info elsewhere, you can do it
    void * ptr = &bufModel;
    Sint32 fid = ztCDopen((Sint8*)filename); //GFS_NameToId((Sint8*)filename);
    ztCDload(fid, 0, (void *)LWRAM, (sizeof(modelData_t))); //GFS_Load(fid, 0, (Uint32 *)LWRAM, (sizeof(modelData_t)));

    memcpy_l((Sint32*)ptr, (Sint32*)(LWRAM), (sizeof(modelData_t)));
if (fid<=0) {fadeIn(); slPrint("ERROR LOADING...", slLocate(5,5));}

    /**ADDED**/
    model->pos[X]=bufModel.Origin[X]; model->pos[Y]=bufModel.Origin[Y]; model->pos[Z]=bufModel.Origin[Z];
    model->length[X]=bufModel.Length[X]; model->length[Y]=bufModel.Length[Y]; model->length[Z]=bufModel.Length[Z];
    model->nbMeshes=bufModel.TOTAL_MESH;
    model->nbFrames=bufModel.nbFrames;

    /**Turns on the graphics (mainly for debugging)**/
    //slScrAutoDisp(NBG3ON);
    slPrint("NOW LOADING...", slLocate(5, 5));    slPrint((char*)filename, slLocate(5, 6));
    //fadeIn();

    /**Load the texture list (using an offset to allow DMA transfer)**/
    slPrint("LOADING TEXTURES", slLocate(5, 8));
    //#ifndef SATLINK_DEBUG
    ztCDload(fid, 0, (void*)LWRAM, bufModel.TEXT_SIZE+(sizeof(modelData_t))); //GFS_Load(fid, 0, (void*)LWRAM, bufModel.TEXT_SIZE+(sizeof(modelData_t)));
    //#endif
    Uint16 first_texture = loadModelTextures((void*)LWRAM, &bufModel);

    if (UseRealtimeGouraud==USE_BUMP_MAP)
    {
        Uint16	colorData[] = {

        0x0080,0x00a0,0x04e0,0x0900,0x0d21,0x1161,0x1581,0x1da2,        0x25c2,0x2e03,0x3223,0x3a44,0x4685,0x4ea5,0x56c6,0x6307,
        0x56a6,0x4a65,0x3e44,0x3203,0x25e3,0x1da2,0x1181,0x0d41,        0x0501,0x00e0,0x00a1,0x0081,0x0061,0x0041,0x0020,0x0000,
        0x7c00,0x7d02,0x7de4,0x7ec6,0x7f88,0x7feb,0x6fed,0x63ef,        0x6ff2,0x7ff4,0x7770,0x6eec,0x6249,0x59a6,0x5103,0x4481,
        0x3c00,0x4060,0x44e0,0x4d80,0x5220,0x4ea0,0x42c0,0x2ee0,        0x1f00,0x0740,0x0364,0x038a,0x03b0,0x03d8,0x03ff,0x0000,
        0x0000,0x0000,0x0421,0x0421,0x0842,0x0842,0x0c43,0x1064,        0x1064,0x1485,0x1485,0x18a6,0x18a6,0x20c8,0x24e9,0x2d0a,
        0x312c,0x394d,0x416e,0x458f,0x4daf,0x51b0,0x59d1,0x6213,        0x6656,0x6e99,0x72fb,0x7b3d,0x7f9f,0x7f9f,0x7f9f,0x7f9f,
        0x0000,0x0000,0x7c00,0x7800,0x7000,0x6c00,0x6400,0x5c00,        0x5800,0x5000,0x4800,0x4400,0x3c00,0x3400,0x3000,0x2800,
        0x2400,0x2000,0x1c00,0x1c00,0x1800,0x1400,0x1400,0x1000,        0x0c00,0x0c00,0x0800,0x0800,0x0400,0x0400,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,        0x0443,0x0486,0x08c9,0x0d0c,0x0d4f,0x11b2,0x1656,0x171b,
        0x1dd6,0x1d11,0x20cc,0x18a7,0x0842,0x1485,0x1ca8,0x20eb,        0x24ee,0x2111,0x2154,0x21d7,0x225a,0x1efd,0x1bff,0x0000,
        /*0x7f9f,0x7f9f,0x7b5e,0x773d,0x731c,0x6ada,0x66b9,0x6298,        0x5a56,0x5635,0x5213,0x4df2,0x45d1,0x418f,0x3d6e,0x354d,
        0x2d0a,0x28e9,0x24e9,0x20c8,0x20c7,0x1ca7,0x18a6,0x1485,        0x1485,0x1064,0x0c43,0x0c42,0x0822,0x0421,0x0401,0x0000,*/
        /**YELLOW**/
        0x11b2,0x11d3,0x1bff,0x1bff,0x1bff,0x1bff,0x1bff,0x1b9e,        0x1b5d,0x171c,0x16fa,0x16b9,0x1657,0x1615,0x11d3,0x11b2,
        0x1170,0x0d4e,0x090c,0x08ea,0x04a8,0x04a7,0x0486,0x0486,        0x0065,0x0064,0x0044,0x0043,0x0022,0x0022,0x0021,0x7fe0,


        /**Akira3**/
        0xA0A5,0x9043,0x8846,0x8868,0x90AC,0x9532,0xA593,0xC656,        0x90AC,	0x8084,	0x8042,	0x8000,	0x8042,	0x9043,	0x8042,	0x8000,
       0x8000,	0x8000,	0x8044,	0x8886,	0x9CA8,	0x8886,	0x8886,	0x8000, 0x9043,	0x9043,	0x9884,	0x9884,	0xA0A5,	0xB54A,	0xFB7B,	0xC9AE,
       /**Chrome**/
        0x0000,0x0421,0x0421,0x0842,0x0c43,0x1064,0x1485,0x18a6,        0x1ca7,0x20c7,0x24e8,0x28e9,0x2d0a,0x312b,0x354c,0x396d,
        0x3d8f,0x49f2,0x5655,0x66b9,0x731c,0x7f9f,0x773d,0x6efb,        0x66b9,0x5e77,0x5634,0x4df2,0x41b0,0x396e,0x312c,0x3230
        };
      Pal2CRAM((void*)(colorData), (void*)(CRAM_Base+(CRAM_MAX*2)), sizeof(colorData)/sizeof(short));
    }

#ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "LOAD_MODEL_TEST0");
        scd_logflush();
    }
    #endif // SATLINK_DEBUG

    /**Load PDATA**/
    slPrint("LOADING PDATA   ", slLocate(5, 8));
    Sint32 bytesOff = (bufModel.TEXT_SIZE+(sizeof(modelData_t)))/2048;
    ztCDload(fid, bytesOff, (void*)startAddress, bufModel.PDATA_SIZE + 2048 + (40*1024)); //GFS_Load(fid, bytesOff, (void*)startAddress, bufModel.PDATA_SIZE + 2048 + (40*1024));
    bytesOff = bufModel.TEXT_SIZE+(sizeof(modelData_t)) - (bytesOff*2048);
    currentAddress = (void*)(currentAddress + bytesOff);

    currentAddress = loadModelPDATA((void*)currentAddress, model, &bufModel);


    /**Set textures**/
    slPrint("SETTING TEXTURES", slLocate(5, 8));
    setModelTextures(first_texture, model, bufModel.TOTAL_MESH, UseRealtimeGouraud);

    /**Setting animation data**/
    currentAddress = loadAnimations((void*)currentAddress, model, &bufModel);
    ztClearText();

    /**Setting the gouraud data**/
    computeLight();    computeLight();    computeLight();  //just computing it 4 times to see...

#ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(2, "LOAD_MODEL_TEST1");
        scd_logflush();
        //return currentAddress;
    }
    #endif // SATLINK_DEBUG

    slUnitMatrix(0);
    {
        slTranslate(0, 0, -toFIXED(300.0));
        slRotY(DEGtoANG(180.0));

        computeLight();

        extern Uint16 MetalGrd[32];

        if (UseRealtimeGouraud != USE_BUMP_MAP)
        {
            unsigned int i, ii;
            slSetGouraudTbl(MetalGrd);
            display_model(model,1);
            for (i=0; i<model->nbMeshes; i++)
            {
                for (ii=0; ii<model->pol[i]->nbPolygon; ii++)
                {
                    if (model->pol[i]->attbl[ii].sort & UsePalette)
                    {
                        model->pol[i]->attbl[ii].sort &= ~UseGouraud;
                        model->pol[i]->attbl[ii].sort &= ~UsePalette;
                    }
                }
            }
        }

        if (UseRealtimeGouraud==USE_BUMP_MAP) slSetGouraudTbl(MetalGrd);
        else slSetGouraudColor(CD_White);
        display_model(model,1);
    }
    slSynch();
    //fadeOut(0);

    return currentAddress;
}
