#include "ZTE_DEF.h"

/*****
File containing useful functions not specify to any other files
*****/


void Cel2VRAM( Uint8 *Cel_Data , void *Cell_Adr , Uint32 suu )
{
	Uint32 i;
	Uint8 *VRAM;

	VRAM = (Uint8 *)Cell_Adr;

	for( i = 0; i < suu; i++ )
		*(VRAM++) = *(Cel_Data++);
}
void Map2VRAM( Uint16 *Map_Data , void *Map_Adr , Uint16 suuj , Uint16 suui , Uint16 palnum ,Uint32 mapoff)
{
	Uint16 i , j;
	Uint16 paloff;
	Uint16 *VRAM;

	paloff= palnum << 12;
	VRAM = (Uint16 *)Map_Adr;


	for( i = 0; i < suui; i++ ) {
		for( j = 0; j < suuj; j++ ) {
			*VRAM++ = (*Map_Data | paloff) + mapoff;
			Map_Data++;
		}
		VRAM += (64 - suuj);
	}
}
void Pal2CRAM( Uint16 *Pal_Data , void *Col_Adr , Uint32 suu )
{
	Uint16 i;
	Uint16 *VRAM;

	VRAM = (Uint16 *)Col_Adr;

	for( i = 0; i < suu; i++ )
		*(VRAM++) = *(Pal_Data++);
}

void memcpy_w(volatile Sint16 *dst, Sint16 *src, Sint32 ctn_size)
{
	register Sint32	i;

	for (i = 0; i < ctn_size; i+= sizeof(Sint16)) {
		*dst++ = *src++;
	}
}

void memset_w(volatile Sint16 *dest, Sint16 pattern, Sint32 cnt_size)
{
	register Sint32	i;

	for (i = 0; i < cnt_size; i+= sizeof(Sint16)) {
		*dest++ = pattern;
	}
}


void memcpy_l(volatile Sint32 *dst, Sint32 *src, Sint32 cnt_size)
{
	register Sint32	i;

	for (i = 0; i < cnt_size; i+= sizeof(Sint32)) {
		*dst++ = *src++;
	}
}

void memset_l(volatile Sint32 *dest, Sint32 pattern, Sint32 cnt_size)
{
	register Sint32	i;

	for (i = 0; i < cnt_size; i+= sizeof(Sint32)) {
		*dest++ = pattern;
	}
}

#define Color_offset (255)
void fadeIn(void)
{
    int i;
    slSynch(); //Clear framebuffer
    slBack1ColSet((void *) BACK_CRAM, CD_Black);
    slColOffsetB(-Color_offset,-Color_offset,-Color_offset);
    slColOffsetOn(NBG0ON | NBG1ON | NBG2ON | NBG3ON | SPRON | RBG0ON);
	slColOffsetBUse(NBG0ON | NBG1ON | NBG2ON | NBG3ON | SPRON | RBG0ON);

    slTVOn();
    for (i=Color_offset; i>=0;)
    {
     //  slSndVolume(100-(i>>2));
       // SND_SetTlVl(15 - i/16);
        slColOffsetB(-i,-i,-i);
        slSynch();
        i-=(ZT_FRAMERATE*4);
    }
  //  SND_SetTlVl(15);
    slColOffsetB(0,0,0);

}

void fadeOut(bool clearBG)
{

    int i;
    slBack1ColSet((void *) BACK_CRAM, CD_Black);
    //slColOffsetB(0,0,0);
    slColOffsetOn(NBG0ON | NBG1ON | NBG2ON | NBG3ON | SPRON | RBG0ON);
	slColOffsetBUse(NBG0ON | NBG1ON | NBG2ON | NBG3ON | SPRON | RBG0ON);
    ztStopCDDA();

    for (i=0; i<=Color_offset;)
    {
        slColOffsetB(-i,-i,-i);
        i+=(ZT_FRAMERATE*4);
        ztWait((unsigned int)ZT_FRAMERATE);

    }
    slSynch();
    if (clearBG==true)
    {
        memset_w((Sint16*)VDP2_VRAM_A0, 0, 0x040000);
        memset_w((Sint16*)VDP2_VRAM_B0, 0, 0x020000);

    }
    ztClearText();
    slSynch();
    slColOffsetB(-Color_offset,-Color_offset,-Color_offset);
    slScrPosNbg0(toFIXED(0.0), toFIXED(0.0));
    slScrPosNbg1(toFIXED(0.0), toFIXED(0.0));
    //SND_SetTlVl(0);

    slTVOff();
}
