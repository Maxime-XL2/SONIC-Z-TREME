#ifndef ZT_SPRITES_H
#define ZT_SPRITES_H

Uint32  ztAddTexture(img_t *img);
Uint32  ztLoadTexture(Sint8 * filename, void * currentAddress);
void	ztClrVRAM(void);
void    ztRemoveSpritesFrom(Uint32 firstSpriteId);

static inline void ztSetSystemClip(int x, int y, FIXED drawPrty)
{
    SPRITE user_sprite;
    user_sprite.CTRL = FUNC_SystemClip;
    user_sprite.LINK =0x3000;
    user_sprite.XC=x;
    user_sprite.YC=y;
    slSetSprite(&user_sprite, drawPrty);
}

static inline void ztSetUserClip(Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2,  FIXED drawPrty)
{
    SPRITE user_sprite;
    user_sprite.CTRL = FUNC_UserClip;
    user_sprite.LINK =0x3000;
    user_sprite.XA=x1;
    user_sprite.YA=y1;
    user_sprite.XC=x2;
    user_sprite.YC=y2;
    slSetSprite(&user_sprite, drawPrty);
}

static inline void ztSetLocalCoord(Sint16 x, Sint16 y, FIXED drawPrty)
{
    SPRITE user_sprite;
    user_sprite.CTRL = FUNC_BasePosition;
    user_sprite.LINK =0x3000;
    user_sprite.XA=x;
    user_sprite.YA=y;
    slSetSprite(&user_sprite, drawPrty);
}

static inline void ztSetScaledSprite(Sint16 x1, Sint16 y1, Sint16 x2, Sint16 y2, Uint16 cmdpmod, Uint16 cmdsrca, Uint16 cmdcolr, Uint16 cmdsize, Uint16 zoomPt, FIXED drawPrty)
{
    SPRITE user_sprite;
    user_sprite.CTRL = FUNC_Sprite | zoomPt;
    user_sprite.LINK =0x3000;
    user_sprite.PMOD=cmdpmod;
    user_sprite.SRCA=cmdsrca;
    user_sprite.COLR=cmdcolr;
    user_sprite.SIZE=cmdsize;
    user_sprite.XA=x1;
    user_sprite.YA=y1;
    user_sprite.XB=x2;
    user_sprite.YB=y2;
    user_sprite.GRDA=0;
    slSetSprite(&user_sprite, drawPrty);
}


static inline void ztSetPolygon(POINT p1, POINT p2, POINT p3, POINT p4, Uint16 cmdctrl,
                                Uint16 cmdpmod, Uint16 cmdsrca, Uint16 cmdcolr,
                                Uint16 cmdsize, Uint16 cmdgrda, FIXED drawPrty)
{
    SPRITE user_sprite;
    user_sprite.CTRL = cmdctrl;
    user_sprite.LINK =0x3000;
    user_sprite.PMOD=cmdpmod;
    user_sprite.SRCA=cmdsrca;
    user_sprite.COLR=cmdcolr;
    user_sprite.SIZE=cmdsize;
    user_sprite.XA=p1[X];
    user_sprite.YA=p1[Y];
    user_sprite.XB=p2[X];
    user_sprite.YB=p2[Y];
    user_sprite.XC=p3[X];
    user_sprite.YC=p3[Y];
    user_sprite.XD=p4[X];
    user_sprite.YD=p4[Y];
    user_sprite.GRDA=cmdgrda;
    slSetSprite(&user_sprite, drawPrty);
}

static inline void ztSetNormalSprite(unsigned int id, int x, int y, FIXED drawPrty)
{
    SPRITE user_sprite;
    user_sprite.CTRL = 0;
    user_sprite.LINK =0x3000;
    user_sprite.PMOD = (1<<12) | (0<<11) | (1<<10) | (0<<9) | (1<<7)|(0<<6)| (CL16Look);
    user_sprite.SRCA = (tex_def[id].CGadr);
    user_sprite.SIZE = (tex_def[id].HVsize);
    user_sprite.COLR = LUTidx(id);
    user_sprite.XA= x;
    user_sprite.YA= y;
    slSetSprite(&user_sprite, drawPrty);
}

static inline void ztPutSprite(Uint32 id, FIXED x, FIXED y, FIXED z, FIXED scale, ANGLE rotationZ, Uint16 mesh )
{
    FIXED pos[XYZS];    pos[X]=(x); pos[Y]=(y); pos[Z]=(z); pos[S]=scale;
    SPR_ATTR spr_attributes = SPR_ATTRIBUTE(id, LUTidx(id), No_Gouraud, CL16Look | ECdis | SPenb | HSSon | mesh | Window_In , sprNoflip | _ZmCC );
    slPutSprite(pos , &spr_attributes , rotationZ) ;
}

#endif // ZT_SPRITES_H
