#include "ZTE_DEF.h"


void	ztClrVRAM(void)
{
    totalTextures=0;
	Uint32	*vr = (Uint32 *)0x25c00000;
	Uint32	i;

	for(i=0;i<20000;i++)	{
		vr[i]=0x00000000;
	}
}

void ztRemoveSpritesFrom(Uint32 firstSpriteId)
{
    totalTextures=firstSpriteId;
}

Uint32 ztAddTexture(img_t *img)
{
	TEXTURE *txptr;
	txptr = &tex_def[totalTextures];
	if (totalTextures == 0) txptr->CGadr=TEXTURE_BASE_ADDRESS/8;
	txptr->Hsize=img->width; //height;
	txptr->Vsize=img->height; //width;
	txptr->HVsize= ((img->width & 0x1f8)<<5) | img->height;

	slDMACopy((void *)img->data, (void *)(SpriteVRAM + (txptr->CGadr << 3)),
           	(Uint32)((txptr->Hsize * txptr->Vsize * 4) >> (img->cmode))); //16 CLUT only for now

    totalTextures++;

    tex_def[totalTextures].CGadr= (txptr->CGadr)+((((4*img->height*img->width) >> img->cmode) + 7) /8);  //Took me a while to figure it out, but you need to round up else you can't use odd heights!
	slDMAWait();
	return (totalTextures -1);
}

Uint32 ztLoadTexture(Sint8 * filename, void * currentAddress)
{
    Sint32 fid = ztCDopen((Sint8*)filename); //GFS_NameToId((Sint8*)filename);
    if (fid < 0)
        {
            slPrint("ERROR LOADING...", slLocate(0,0));
            slPrint((char*)filename, slLocate(17, 0));
        }
    ztCDload(fid, 0, (Uint32 *)currentAddress, 512*512+sizeof(img_t)+32);   //GFS_Load(fid, 0, (Uint32 *)currentAddress, 512*512+sizeof(img_t)+32);  //Will reach EOF unless the img is really large
    img_t * img;
    img = (img_t*)currentAddress;
    currentAddress = (void*)(currentAddress + sizeof(img_t));
    img->data = (Uint16*)(currentAddress);
    Uint32 texno = ztAddTexture(img);
    currentAddress=(void*)(currentAddress+ (img->width * img->height * 4 >> img->cmode)+32);
    if (img->cmode==COL_16) slDMACopy((void*)&img->data+4+((img->width*img->height*4)>>COL_16), (void*)(returnLUTaddr((Uint16)texno)), 32);
    slDMAWait();
    return texno;
}





