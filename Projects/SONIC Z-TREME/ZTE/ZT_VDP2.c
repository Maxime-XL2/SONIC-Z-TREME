#include "ZTE_DEF.H"

void ztClearText(void)
{
    Uint16 i;
    for (i=0; i<64; ++i)
        slPrint("                                                                ", slLocate(0, i));
}

void ztFont2NBG3(void)
{
    slCharNbg3(COL_TYPE_256, CHAR_SIZE_1x1);
    slPageNbg3((void*)0x25e60000, 0, PNB_1WORD|CN_10BIT );
    slPlaneNbg3(PL_SIZE_1x1);
    slMapNbg3((void*)0x25e76000, (void*)0x25e76000, (void*)0x25e76000, (void*)0x25e76000);

    slBitMapNbg0(COL_TYPE_16, BM_512x256, (void *)VDP2_VRAM_A0);
    slBMPalette(bmNBG0 , 0);
    slPriorityNbg0(5);
    slPriorityNbg1(4);
    slPriorityNbg2(1);
    slPriorityNbg3(7);
    slPrioritySpr0(6);
    slPriorityRbg0(2);
    slScrAutoDisp(NBG0ON|NBG1ON|NBG3ON|SPRON);
}

void ztSetRBG0(void)
{

}

/**That &%$/$ color RAM AGAIN!!!**/
/*void ztSetLineColor(void * startAddress, Uint32 cnt)
{
	Uint16	*line_tt;
	Sint32	aa,bx;
	Uint16	*Line_Color_Pal0;

	Line_Color_Pal0	=(Uint16 *)(CRAM_Base+(CRAM_MAX*2));
	for(aa = 0; aa < 224; aa++)	{
		Line_Color_Pal0[aa+32] = 0x8000;
	}
	for(aa = 0; aa < 32; aa++)
	{
		Line_Color_Pal0[80-aa+32] = (aa << 10 | aa << 5 | aa | 0x8000);
		Line_Color_Pal0[81+aa-32] = (aa << 10 | aa << 5 | aa | 0x8000);
	}
	Line_Color_Pal0	=(Uint16 *)LINE_COLOR_TABLE;
	for(aa = 0; aa < 224; aa++)
	{
		Line_Color_Pal0[aa] = aa+256*3+32;
	}
	slLineColDisp( RBG0ON | NBG2ON);
	slLineColTable((void *)LINE_COLOR_TABLE);
 	slColorCalc( CC_ADD | CC_TOP | RBG0ON | NBG2ON);
	slColorCalcOn( RBG0ON |NBG2ON);
	slColRateLNCL(0x1f);
}*/

void ztSetColorCalc(void)
{
    slSpriteCCalcCond(CC_pr_CN);
    slColorCalcOn(CC_RATE | CC_TOP | SPRON|BACKON);
    slSpriteType(0);
    slSpriteCCalcNum(4);
    slPrioritySpr0(5);
    slPrioritySpr1(3);
    slPrioritySpr2(3);
    slPrioritySpr3(3);
    slPrioritySpr4(3);
    slPrioritySpr5(3);
    slPrioritySpr6(3);
    slPrioritySpr7(3);

    slColRateSpr0(2);
    slColRateSpr1(4);
    slColRateSpr2(6);
    slColRateSpr3(9);
    slColRateSpr4(13);
    slColRateSpr5(18);
    slColRateSpr6(23);
    slColRateSpr7(28);

}

Uint16 ztLoadVDP2bmp(const char *const subdir, char * filename, Uint16 *VDP2RAM, unsigned short paletteId, bool NBGtype)
{
    char * ptr = (char*)LWRAM;

    if (subdir != NULL)     ztCDsetDir(subdir);

    Sint32 fid = ztCDopen((Sint8*)filename);

    if (fid < 0)
        {slPrint("ERROR", slLocate(10,5)); fadeIn(); return 0;}
    else
        ztCDload(fid, 0, (void*)LWRAM, 512*512+128+512);

    if (subdir != NULL)     ztCDsetRoot();

    img_t * img;
    img = (img_t*)(LWRAM);
    img->data = (Uint16*)(LWRAM+12);

    if (img->cmode == COL_16) img->cmode=2;
    else img->cmode=1;

    if (img->nbcol <= 16) img->nbcol=16;
    else img->nbcol=256;

    int vdp2_width;
    if (img->width <= 512) vdp2_width=512;
    else vdp2_width=1024;

    Sint32 yy, xx;
    Uint8 *Cel_Data = (Uint8*)(LWRAM+12);
	Uint8 *VRAM = (Uint8 *) VDP2RAM;

    for (yy = 0; yy < img->height; yy++)
    {
        for (xx=0; xx< img->width/img->cmode; xx++)
        {
            *(VRAM) = Cel_Data[xx+(yy*img->width/img->cmode)];//*(Cel_Data++);
            *(VRAM++);
        }
        *(VRAM+=(vdp2_width/img->cmode - (img->width/img->cmode)));
    }


    ptr = (char*)(LWRAM+12+(img->width*img->height/img->cmode));

    Pal2CRAM((unsigned short*)(ptr), (void*)(VDP2_COLRAM + (paletteId*0x0200)), img->nbcol);

    if (NBGtype==bmNBG1)
    {
        //if (ptr[0]==0 && ptr[1]==0) slScrTransparent(NBG1ON);
        if (img->cmode == 2) slBitMapNbg1(COL_TYPE_16, BM_512x256, (void *)VDP2RAM); //Need some kind of offset
        else slBitMapNbg1(COL_TYPE_256, BM_512x512, (void *)VDP2RAM);
        slBMPalette(bmNBG1 , paletteId);  //This is the CRAM Offset (0 to 7) -> 2048 colors, each palette containing 256 colors. In 16 colors mode, only the first 16 colors can be choosen
    }
    else
    {
        //if (ptr[1]==0) slScrTransparent(NBG0OFF);
        if (img->cmode == 2) slBitMapNbg0(COL_TYPE_16, BM_512x256, (void *)VDP2RAM); //Need some kind of offset
        else slBitMapNbg0(COL_TYPE_256, BM_512x512, (void *)VDP2RAM);
        slBMPalette(bmNBG0 , paletteId);  //This is the CRAM Offset (0 to 7) -> 2048 colors, each palette containing 256 colors. In 16 colors mode, only the first 16 colors can be choosen
    }
    slScrPosNbg1(toFIXED(0.0), toFIXED(0.0));
    slScrPosNbg0(toFIXED(0.0), toFIXED(0.0));
    slScrAutoDisp(NBG0ON | NBG1ON);
	slColOffsetA(0,0,0);

	return img->cmode;
}
