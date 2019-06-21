/*                                       */
/*      SEGA Library defines Ver3.00     */
/*                                       */

#ifndef SEGA_XPT_H
#define SEGA_XPT_H

#if 0
#  define ST_V				/* or ST_VE (for Enhanced ST-V) */
#  define TITAN
#endif

#define		shc		1
#define		sh_gcc		2
#define		Compiler	sh_gcc		/* fot Hitachi then "shc" */

#if Compiler == shc
#  define  STCNS  static const
#else
#  define  STCNS  static
#endif

/*****************************************************************************/
/****************************** Šî–{ƒf?[ƒ^Œ^?éŒ¾ *****************************/
/*****************************************************************************/

typedef unsigned char	Uint8 ;		/* •„?†‚È‚µ‚PƒoƒCƒg?®?” */
typedef signed   char	Sint8 ;		/* •„?†‚Â‚«‚PƒoƒCƒg?®?” */
typedef unsigned short	Uint16 ;	/* •„?†‚È‚µ‚QƒoƒCƒg?®?” */
typedef signed   short	Sint16 ;	/* •„?†‚Â‚«‚QƒoƒCƒg?®?” */
typedef unsigned long	Uint32 ;	/* •„?†‚È‚µ‚SƒoƒCƒg?®?” */
typedef signed   long	Sint32 ;	/* •„?†‚Â‚«‚SƒoƒCƒg?®?” */
typedef float		Float32 ;	/* ‚SƒoƒCƒgŽÀ?” */
typedef double		Float64 ;	/* ‚WƒoƒCƒgŽÀ?” */

typedef int		Int ;		/* INTŒ^?iƒc?[ƒ‹—p?j		*/

typedef int		Bool ;		/* ˜_—?Œ^?i˜_—?’è?”‚ð’l‚É‚Æ‚é?j	*/

/*****************************************************************************/
/********************************* ’è?”ƒ}ƒNƒ? ********************************/
/*****************************************************************************/

#ifndef NULL
#define NULL		((void *)0)	/* NULL */
#endif  /* NULL */

/*****************************************************************************/
/********************************** —ñ‹“’è?” *********************************/
/*****************************************************************************/

enum BooleanLogic {			/* ˜_—?’è?”‚P?i‹U?A?^?j */
    FALSE = 0 ,
    TRUE  = 1
};

enum BooleanSwitch {			/* ˜_—?’è?”‚Q?iƒXƒCƒbƒ`?j */
    OFF = 0 ,
    ON  = 1
};

enum Judgement {			/* Œ‹‰Ê”»’è‚Ì’è?”?i?¬Œ÷?AŽ¸”s?j */
    OK = 0 ,				/* ?¬Œ÷ */
    NG = -1				/* Ž¸”s */
};


/********************ADDED BY XL2 - 2019-05-10********************************/
#ifdef SATLINK_DEBUG
/* Inclusion of sclib_4d stuff. */
#include "../../satLinkLib/sclib_4d.h"

/* Defined in jo-engine -> fs.c.
 * Must be set to 1 after loading and initializing
 * sclib_4b stub in order to enable PC link.
 */
extern int _sclib_4d_pclink_use;
#endif
/****************************************************************************/

/*****************************************************************************/
/********************************* ?ˆ—?ƒ}ƒNƒ? ********************************/
/*****************************************************************************/

#define MAX(x, y)	((x) > (y) ? (x) : (y))	/* ?Å‘å’l */
#define MIN(x, y)	((x) < (y) ? (x) : (y))	/* ?Å?¬’l */
#define ABS(x)		((x) < 0 ? -(x) : (x))	/* ?â‘Î’l */

/*------------------------------------------------------------------------------------*/

#define	    DI		15		/* Š„‚è?ž‚Ý‚Ì‹ÖŽ~ */
#define	    EI		 0		/* Š„‚è?ž‚Ý‚Ì‹–‰Â */

#if 0	/* Ver2.1 ‚æ‚è?í?œ */
#define	    MAX_EVENTS	64		/* Žg—p‚Å‚«‚éƒCƒxƒ“ƒg‚Ì?” */
#define	    MAX_WORKS	256		/* Žg—p‚Å‚«‚éƒ??[ƒN‚Ì?” */
#endif

#define	    MAX_NEST	20		/* ƒ}ƒgƒŠƒNƒX‚ÌƒlƒXƒg‚Å‚«‚é?” */

#define	    WORK_SIZE	0x40		/* ƒ??[ƒN‚Ì‘å‚«‚³ */
#define	    EVENT_SIZE	0x80		/* ƒCƒxƒ“ƒg‚Ì‘å‚«‚³ */

typedef	    Sint16	ANGLE ;		/* ˆêŽü‚R‚U‚O“x‚ð ‚P‚Uƒrƒbƒg‚Å•\‚·  */
typedef	    Sint32	FIXED ;		/* ?ãˆÊ‚P‚Uƒrƒbƒg‚Å?®?”•”?A‰ºˆÊ‚P‚Uƒrƒbƒg‚Å?¬?”•”‚ð•\‚·ŒÅ’è?¬?”“_Œ^ */

enum ps {X , Y , Z , XYZ , XYZS , XYZSS , XY = Z , S = XYZ , Sh = S , Sv = XYZS} ;

typedef struct work {
    struct work *next ;
    Uint8	user[WORK_SIZE - sizeof(struct work *)] ;
} WORK ;

typedef struct evnt {
    WORK		*work ;
    struct evnt		*next ;
    struct evnt		*before ;
    void		(*exad)() ;
    Uint8		 user[EVENT_SIZE - (sizeof(WORK *) + sizeof(struct evnt *) * 2 + sizeof(void (*)()))] ;
} EVENT ;

typedef     FIXED	MATRIX[4][3] ;		/* ƒ}ƒgƒŠƒNƒXƒf?[ƒ^ */
typedef     FIXED	VECTOR[XYZ] ;		/* ƒxƒNƒgƒ‹ƒf?[ƒ^ */
typedef     FIXED	POINT[XYZ] ;		/* ’¸“_‚ÌˆÊ’uƒf?[ƒ^ */

#define	    CURRENT		0		/* Current Matrix */
#define	    ORIGINAL		(0.99999)	/* Original Scale */

enum mtrx {M00 , M01 , M02 ,		/* ƒ}ƒgƒŠƒNƒX‚Ì—v‘f”Ô?† */
	   M10 , M11 , M12 ,
	   M20 , M21 , M22 ,
	   M30 , M31 , M32 ,
	   MTRX
	   } ;

enum tvsz {
	TV_320x224 , TV_320x240 , TV_320x256 , TV_dummy1 ,
	TV_352x224 , TV_352x240 , TV_352x256 , TV_dummy2 ,
	TV_640x224 , TV_640x240 , TV_640x256 , TV_dummy3 ,
	TV_704x224 , TV_704x240 , TV_704x256 , TV_dummy4 ,

	TV_320x448 , TV_320x480 , TV_320x512 , TV_dummy5 ,
	TV_352x448 , TV_352x480 , TV_352x512 , TV_dummy6 ,
	TV_640x448 , TV_640x480 , TV_640x512 , TV_dummy7 ,
	TV_704x448 , TV_704x480 , TV_704x512 , TV_dummy8
    } ;

#define		_SysPause		64
#define		_SprPause		 2
#define		_ScrPause		 1

/*----------------------------------------------------------------------------------*/

#define     M_PI                3.1415926535897932
#define	    toFIXED(a)		((FIXED)(65536.0 * (a)))
#define	    POStoFIXED(x,y,z)	{toFIXED(x),toFIXED(y),toFIXED(z)}
#define	    ATTRIBUTE(f,s,t,c,g,a,d,o)	{f,(s)|(((d)>>16)&0x1c)|(o),t,(a)|(((d)>>24)&0xc0),c,g,(d)&0x3f}
#define	    SPR_ATTRIBUTE(t,c,g,a,d)	{t,(a)|(((d)>>24)&0xc0),c,g,(d)&0x0f3f}
#define	    DEGtoANG(d)		((ANGLE)((65536.0 * (d)) / 360.0))
#define     RADtoANG(d)         ((ANGLE)((65536.0 * (d)) / (2*M_PI)))
#define	    RGB(r,g,b)		(0x8000|((b)<<10)|((g)<<5)|(r))
#define	    DGTtoRGB(c)		(0x8000|(((c)&0x0f00)<<3)|(((c)&0x4000)>>4)|(((c)&0x00f0)<<2)|(((c)&0x2000)>>8)|(((c)&0x000f)<<1)|(((c)&0x1000)>>12))
#define	    SLocate(x,y,p)	((p) * Page + (y) * Line + (x))

/*  Sprite control function */

#define	    FUNC_Sprite		1
#define	    FUNC_Texture	2
#define	    FUNC_Polygon	4
#define	    FUNC_PolyLine	5
#define	    FUNC_Line		6
#define	    FUNC_SystemClip	9
#define	    FUNC_UserClip	8
#define	    FUNC_BasePosition	10
#define	    FUNC_End		-1

#define	    _ZmLT		(0x05 << 8)	/* Zoom base Left Top */
#define	    _ZmLC		(0x09 << 8)	/* Zoom base Left Center */
#define	    _ZmLB		(0x0d << 8)	/* Zoom base Left Bottom */
#define	    _ZmCT		(0x06 << 8)	/* Zoom base Center Top */
#define	    _ZmCC		(0x0a << 8)	/* Zoom base Center Center */
#define	    _ZmCB		(0x0e << 8)	/* Zoom base Center Bottom */
#define	    _ZmRT		(0x07 << 8)	/* Zoom base Right Top */
#define	    _ZmRC		(0x0b << 8)	/* Zoom base Right Center */
#define	    _ZmRB		(0x0f << 8)	/* Zoom base Right Bottom */

#define	    MSBon		(1 << 15)	/* ƒtƒŒ?[ƒ€ƒoƒbƒtƒ@‚É?‘‚«?ž‚Þ‚l‚r‚a‚ð‚P‚É‚·‚é */
#define	    HSSon		(1 << 12)	/* ƒnƒCƒXƒs?[ƒhƒVƒ…ƒŠƒ“ƒN—LŒø */
#define	    HSSoff		(0 << 12)	/* ƒnƒCƒXƒs?[ƒhƒVƒ…ƒŠƒ“ƒN–³Œø(default) */
#define	    No_Window		(0 << 9)	/* ƒEƒBƒ“ƒhƒE‚Ì?§ŒÀ‚ðŽó‚¯‚È‚¢(default)*/
#define	    Window_In		(2 << 9)	/* ƒEƒBƒ“ƒhƒE‚Ì“à‘¤‚É•\Ž¦ */
#define	    Window_Out		(3 << 9)	/* ƒEƒBƒ“ƒhƒE‚ÌŠO‘¤‚É•\Ž¦ */
#define	    MESHoff		(0 << 8)	/* ’Ê?í•\Ž¦(default) */
#define	    MESHon		(1 << 8)	/* ƒ?ƒbƒVƒ…‚Å•\Ž¦ */
#define	    ECdis		(1 << 7)	/* ƒGƒ“ƒhƒR?[ƒh‚ðƒpƒŒƒbƒg‚Ì‚Ð‚Æ‚Â‚Æ‚µ‚ÄŽg—p */
#define	    ECenb		(0 << 7)	/* ƒGƒ“ƒhƒR?[ƒh—LŒø */
#define	    SPdis		(1 << 6)	/* ƒXƒy?[ƒXƒR?[ƒh‚ðƒpƒŒƒbƒg‚Ì‚Ð‚Æ‚Â‚Æ‚µ‚ÄŽg—p */
#define	    SPenb		(0 << 6)	/* ƒXƒy?[ƒX‚Í•\Ž¦‚µ‚È‚¢(default) */
#define	    CL16Bnk		(0 << 3)	/* ƒJƒ‰?[ƒoƒ“ƒN‚P‚U?Fƒ‚?[ƒh (default) */
#define	    CL16Look		(1 << 3)	/* ƒJƒ‰?[ƒ‹ƒbƒNƒAƒbƒv‚P‚U?Fƒ‚?[ƒh */
#define	    CL64Bnk		(2 << 3)	/* ƒJƒ‰?[ƒoƒ“ƒN‚U‚S?Fƒ‚?[ƒh */
#define	    CL128Bnk		(3 << 3)	/* ƒJƒ‰?[ƒoƒ“ƒN‚P‚Q‚W?Fƒ‚?[ƒh */
#define	    CL256Bnk		(4 << 3)	/* ƒJƒ‰?[ƒoƒ“ƒN‚Q‚T‚U?Fƒ‚?[ƒh */
#define	    CL32KRGB		(5 << 3)	/* ‚q‚f‚a‚R‚Q‚j?Fƒ‚?[ƒh */
#define	    CL_Replace		0		/* ?d‚Ë?‘‚«(?ã?‘‚«)ƒ‚?[ƒh */
#define	    CL_Shadow		1		/* ‰eƒ‚?[ƒh */
#define	    CL_Half		2		/* ”¼‹P“xƒ‚?[ƒh */
#define	    CL_Trans		3		/* ”¼“§–¾ƒ‚?[ƒh */
#define	    CL_Gouraud		4		/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒOƒ‚?[ƒh */

#define	    UseTexture		(1 << 2)	/* ƒeƒNƒXƒ`ƒƒ‚ð“\‚éƒ|ƒŠƒSƒ“ */
#define	    UseLight		(1 << 3)	/* ŒõŒ¹‚Ì‰e‹¿‚ðŽó‚¯‚éƒ|ƒŠƒSƒ“ */
#define	    UsePalette		(1 << 5)	/* ƒ|ƒŠƒSƒ“‚ÌƒJƒ‰?[ */

/* SGL Ver3.0 Add */
#define	    UseNearClip		(1 << 6)	/* ƒjƒA?EƒNƒŠƒbƒsƒ“ƒO‚ð‚·‚é */
#define	    UseGouraud		(1 << 7)	/* ƒŠƒAƒ‹ƒO?[ƒ??[ */
#define	    UseDepth		(1 << 4)	/* ƒfƒvƒXƒLƒ…?[ */
/* */

#if 0 /* SGL Ver3.0 Delete */
#define	    UseClip		(1 << 4)		/* ‰æ–ÊŠO‚É’¸“_‚ª?o‚½‚ç•\Ž¦‚µ‚È‚¢ */
#else
#define	    UseClip		UseNearClip		/* ƒjƒA?EƒNƒŠƒbƒsƒ“ƒO‚ð‚·‚é */
#endif

#define	    sprHflip		((1 << 4) | FUNC_Texture | (UseTexture << 16))
#define	    sprVflip		((1 << 5) | FUNC_Texture | (UseTexture << 16))
#define	    sprHVflip		((3 << 4) | FUNC_Texture | (UseTexture << 16))
#define	    sprNoflip		((0) | FUNC_Texture | (UseTexture << 16))
#define	    sprPolygon		(FUNC_Polygon | ((ECdis | SPdis) << 24))
#define	    sprPolyLine		(FUNC_PolyLine | ((ECdis | SPdis) << 24))
#define	    sprLine		(FUNC_Line | ((ECdis | SPdis) << 24))

#define	    No_Texture		0		/* ƒeƒNƒXƒ`ƒƒ‚ðŽg—p‚µ‚È‚¢Žž */
#define	    No_Option		0		/* ƒIƒvƒVƒ‡ƒ“‚ðŽg—p‚µ‚È‚¢Žž */
#define	    No_Gouraud		0		/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒO‚ðŽg—p‚µ‚È‚¢Žž */
#define	    No_Palet	        0		/* ƒJƒ‰?[ƒpƒŒƒbƒg‚ÌŽw’è‚ª‚¢‚ç‚È‚¢Žž */
#define	    GouraudRAM		(0x00080000 - (32*8))	/* ŒõŒ¹‚Ì‰e‹¿—p‚ÌƒO?[ƒ??[ƒoƒbƒtƒ@ */

typedef struct {
    VECTOR	 norm ;			/* –@?üƒxƒNƒgƒ‹ */
    Uint16	 Vertices[4] ;		/* ƒ|ƒŠƒSƒ“‚ð?\?¬‚·‚é’¸“_”Ô?† */
} POLYGON ;

typedef struct {
    Uint8	 flag ;			/* •Ð–Ê‚©—¼–Ê‚©‚Ìƒtƒ‰ƒO */
    Uint8	 sort ;			/* ƒ\?[ƒg‚ÌŠî?€ˆÊ’u‚ÆƒIƒvƒVƒ‡ƒ“?Ý’è */
    Uint16	 texno ;		/* ƒeƒNƒXƒ`ƒƒ”Ô?† */
    Uint16	 atrb ;			/* ƒAƒgƒŠƒrƒ…?[ƒgƒf?[ƒ^(•\Ž¦ƒ‚?[ƒh) */
    Uint16	 colno ;		/* ƒJƒ‰?[ƒiƒ“ƒo?[ */
    Uint16	 gstb ;			/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒOƒe?[ƒuƒ‹ */
    Uint16	 dir ;			/* ƒeƒNƒXƒ`ƒƒ‚Ì”½“]‚Æƒtƒ@ƒ“ƒNƒVƒ‡ƒ“ƒiƒ“ƒo?[ */
} ATTR ;

typedef struct {
    Uint16	 texno ;		/* ƒeƒNƒXƒ`ƒƒ”Ô?† */
    Uint16	 atrb ;			/* ƒAƒgƒŠƒrƒ…?[ƒgƒf?[ƒ^(•\Ž¦ƒ‚?[ƒh) */
    Uint16	 colno ;		/* ƒJƒ‰?[ƒiƒ“ƒo?[ */
    Uint16	 gstb ;			/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒOƒe?[ƒuƒ‹ */
    Uint16	 dir ;			/* ƒeƒNƒXƒ`ƒƒ‚Ì”½“]‚Æƒtƒ@ƒ“ƒNƒVƒ‡ƒ“ƒiƒ“ƒo?[ */
} SPR_ATTR ;

typedef struct {
    POINT	*pntbl ;		/* ’¸“_‚ÌˆÊ’uƒf?[ƒ^ƒe?[ƒuƒ‹ */
    Uint32	 nbPoint ;		/* ’¸“_‚Ì?” */
    POLYGON	*pltbl ;		/* ƒ|ƒŠƒSƒ“’è‹`ƒe?[ƒuƒ‹ */
    Uint32	 nbPolygon ;		/* ƒ|ƒŠƒSƒ“‚Ì?” */
    ATTR	*attbl ;		/* ƒ|ƒŠƒSƒ“‚ÌƒAƒgƒŠƒrƒ…?[ƒgƒe?[ƒuƒ‹ */
} PDATA ;

/* SGL Ver3.0 Add */
typedef struct {
    POINT	*pntbl ;		/* ’¸“_‚ÌˆÊ’uƒf?[ƒ^ƒe?[ƒuƒ‹ */
    Uint32	 nbPoint ;		/* ’¸“_‚Ì?” */
    POLYGON	*pltbl ;		/* ƒ|ƒŠƒSƒ“’è‹`ƒe?[ƒuƒ‹ */
    Uint32	 nbPolygon ;		/* ƒ|ƒŠƒSƒ“‚Ì?” */
    ATTR	*attbl ;		/* ƒ|ƒŠƒSƒ“‚ÌƒAƒgƒŠƒrƒ…?[ƒgƒe?[ƒuƒ‹ */
    VECTOR	*vntbl;
} XPDATA ;
/* */

#ifdef ST_VE

typedef struct {
    Uint16	 pmod ;			/* ƒXƒvƒ‰ƒCƒg•\Ž¦ƒ‚?[ƒh */
    Uint16	 colno ;		/* ƒJƒ‰?[ƒiƒ“ƒo?[ */
    Uint16	 CGadr ;		/* ƒXƒvƒ‰ƒCƒg‚b‚fƒAƒhƒŒƒX / ‚W */
    Uint16	 HVsize ;		/* ‚gƒTƒCƒY/‚W?A‚uƒTƒCƒY(ƒn?[ƒh—p) */
} gxATTR_VDP1 ;

typedef struct {
    Uint32	 texcel ;		/* ƒeƒNƒXƒ`ƒƒƒZƒ‹ƒAƒhƒŒƒX */
    Uint16	 dspmode ;		/* ƒfƒBƒXƒvƒŒƒCƒ‚?[ƒhƒtƒ‰ƒO */
    Uint16	 colno ;		/* ƒJƒ‰?[ƒf?[ƒ^ */
    Uint8	 TXA , TYA ;		/* ƒeƒNƒXƒ`ƒƒƒ|ƒCƒ“ƒg */
    Uint8	 TXB , TYB ;
    Uint8	 TXC , TYC ;
    Uint8	 TXD , TYD ;
} gxATTR_ENHC ;

typedef struct{
    Uint16	 texno ;		/* ƒeƒNƒXƒ`ƒƒ”Ô?† */
    Uint16	 atrb ;			/* ƒAƒgƒŠƒrƒ…?[ƒgƒf?[ƒ^(•\Ž¦ƒ‚?[ƒh) */
    Uint16	 colno ;		/* ƒJƒ‰?[ƒiƒ“ƒo?[ */
    Uint16	 gstb ;			/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒOƒe?[ƒuƒ‹ */
    Uint16	 dir ;			/* ƒeƒNƒXƒ`ƒƒ‚Ì”½“]‚Æƒtƒ@ƒ“ƒNƒVƒ‡ƒ“ƒiƒ“ƒo?[ */
} gxSPR_ATTR ;

typedef struct {
    Uint16	texno ;			/* ƒeƒNƒXƒ`ƒƒƒIƒtƒZƒbƒgƒAƒhƒŒƒX */
    Uint8	attr ;			/* Ž¿Š´ƒR?[ƒh?Aƒ\?[ƒeƒBƒ“ƒOƒ‚?[ƒh“™ */
    Uint8	nvface ;		/* –Ê–@?üƒxƒNƒgƒ‹ƒiƒ“ƒo?[ */
    Uint8	nvnum[4] ;		/* ’¸“_–@?üƒxƒNƒgƒ‹ƒiƒ“ƒo?[ */
    Uint8	Vertices[4] ;		/* ƒ|ƒŠƒSƒ“‚ð?\?¬‚·‚é’¸“_”Ô?† */
} gxPOLYGON ;

typedef struct {
    POINT	*pntbl ;		/* ’¸“_‚ÌˆÊ’uƒf?[ƒ^ƒe?[ƒuƒ‹ */
    Uint16	 nbPoint ;		/* ’¸“_‚Ì?” */
    Uint16	 nbNVector ;		/* –@?üƒxƒNƒgƒ‹‚Ì?” */
    VECTOR	*nvtbl ;		/* –@?üƒxƒNƒgƒ‹ƒf?[ƒ^ƒe?[ƒuƒ‹ */
    gxPOLYGON	*pltbl ;		/* ƒ|ƒŠƒSƒ“’è‹`ƒe?[ƒuƒ‹ */
    Uint32	 nbPolygon ;		/* ƒ|ƒŠƒSƒ“‚Ì?” */
    gxATTR_VDP1	*attbl ;		/* ƒ|ƒŠƒSƒ“‚ÌƒAƒgƒŠƒrƒ…?[ƒgƒe?[ƒuƒ‹ */
} gxPDATA ;

typedef struct {
    Uint32	 texadr ;		/* ƒeƒNƒXƒ`ƒƒƒf?[ƒ^ƒe?[ƒuƒ‹ */
    Uint8	 BD ;			/* Še’¸“_‚Ì‹P“x */
    Uint8	 BC ;
    Uint8	 BB ;
    Uint8	 BA ;
    Sint16	 XA ;			/* Še’¸“_‚ÌˆÊ’u */
    Sint16	 YA ;
    Sint16	 XB ;
    Sint16	 YB ;
    Sint16	 XC ;
    Sint16	 YC ;
    Sint16	 XD ;
    Sint16	 YD ;
    Uint16	 ZA ;			/* Še’¸“_‚Ì‚y’l */
    Uint16	 ZB ;
    Uint16	 ZC ;
    Uint16	 ZD ;
    Uint16	 winno ;		/* ƒEƒBƒ“ƒhƒEƒiƒ“ƒo?[ */
    Uint16	 ZF ;			/* ‘ã•\‚y’l */
} gxDIRECT ;

#define		winEXn		0	/* ƒGƒ“ƒnƒ“ƒT‘¤ Žè‘O(near) */
#define		winEXf		1	/* ƒGƒ“ƒnƒ“ƒT‘¤ ‰œ(far) */
#define		winSTn		2	/* ‚r‚s-‚u‘¤ Žè‘O(near) */
#define		winSTf		3	/* ‚r‚s-‚u‘¤ ‰œ(far) */

#define	    gxPOLYTBL(f,s,t,m,n)	{((f)<<16)|((t)<<20)|((s)<<12)|((m)<<8)|(n)
#define	    gxNormal(a,b,c,d)		(a,b,c,d)
#define	    gxVertices(a,b,c,d)		(a,b,c,d)}
#define	    gxATTRVDP1(p,c,a,s)		{p,c,a,s}
#define	    gxATTRENHC(cx,cy,sx,sy,cm,cl,an,hf,ms,sp,te,fm)	{\
					((cx)<<4)|((cy)<<14)|(sx)|((sy)<<10)|(cm),\
					((ms)>>5)|(((sp)^SPdis)>>4)|((te)<<1)|\
					((an)<<8)|((hf)<<6)|(fm),(cl)
#endif

typedef struct obj{
    PDATA	*pat ;			/* ƒ|ƒŠƒSƒ“ƒ‚ƒfƒ‹ƒf?[ƒ^ƒe?[ƒuƒ‹ */
    FIXED	 pos[XYZ] ;		/* ‘Š‘ÎˆÊ’uƒf?[ƒ^ */
    ANGLE	 ang[XYZ] ;		/* ‰ñ“]Špƒf?[ƒ^ */
    FIXED	 scl[XYZ] ;		/* ƒXƒP?[ƒŠƒ“ƒOƒf?[ƒ^ */
    struct obj	*child ;		/* ŽqƒIƒuƒWƒFƒNƒgƒf?[ƒ^ */
    struct obj	*sibling ;		/* ŒZ’íƒIƒuƒWƒFƒNƒgƒf?[ƒ^ */
} OBJECT ;

typedef struct {
    Uint16	 Hsize ;		/* ƒXƒvƒ‰ƒCƒg‚Ì‚gƒTƒCƒY */
    Uint16	 Vsize ;		/* ƒXƒvƒ‰ƒCƒg‚Ì‚uƒTƒCƒY */
    Uint16	 CGadr ;		/* ƒXƒvƒ‰ƒCƒg‚b‚fƒAƒhƒŒƒX / ‚W */
    Uint16	 HVsize ;		/* ‚gƒTƒCƒY/‚W?A‚uƒTƒCƒY(ƒn?[ƒh—p) */
} TEXTURE ;

typedef struct {
    Uint16	 texno ;		/* ƒeƒNƒXƒ`ƒƒ”Ô?† */
    Uint16	 cmode ;		/* ƒJƒ‰?[ƒ‚?[ƒh */
    void	*pcsrc ;		/* Œ³ƒf?[ƒ^‚Ì?Š?Ý */
} PICTURE ;

#define	    COL_16	(2+1)		/* ƒJƒ‰?[ƒoƒ“ƒN‚P‚U?Fƒ‚?[ƒh */
#define	    COL_64	(2+0)		/* ƒJƒ‰?[ƒoƒ“ƒN‚U‚S?Fƒ‚?[ƒh */
#define	    COL_128	(2+0)		/* ƒJƒ‰?[ƒoƒ“ƒN‚P‚Q‚W?Fƒ‚?[ƒh */
#define	    COL_256	(2+0)		/* ƒJƒ‰?[ƒoƒ“ƒN‚Q‚T‚U?Fƒ‚?[ƒh */
#define	    COL_32K	(2-1)		/* ‚q‚f‚a‚R‚Q‚j?Fƒ‚?[ƒh */

    enum base {
	SORT_BFR ,			/* ’¼‘O‚É•\Ž¦‚µ‚½ƒ|ƒŠƒSƒ“‚ÌˆÊ’u‚ðŽg‚¤ */
	SORT_MIN ,			/* ‚S“_‚Ì“à?Aˆê”ÔŽè‘O‚Ì“_‚ðŽg‚¤ */
	SORT_MAX ,			/* ‚S“_‚Ì“àˆê”Ô‰“‚¢“_‚ðŽg‚¤ */
	SORT_CEN			/* ‚S“_‚Ì•½‹ÏˆÊ’u‚ðŽg‚¤ */
    } ;

    enum pln {
	Single_Plane ,			/* •Ð–Êƒ|ƒŠƒSƒ“ */
	Dual_Plane			/* —¼–Êƒ|ƒŠƒSƒ“(•\— ”»’è‚ÌŒ‹‰Ê‚ðŒ©‚È‚¢) */
    } ;

typedef struct {
    Uint16	CTRL ;			/* ƒRƒ“ƒgƒ??[ƒ‹ƒtƒ@ƒ“ƒNƒVƒ‡ƒ“ */
    Uint16	LINK ;			/* ƒŠƒ“ƒNƒAƒhƒŒƒX */
    Uint16	PMOD ;			/* ƒvƒbƒgƒ‚?[ƒh */
    Uint16	COLR ;			/* ƒJƒ‰?[ƒf?[ƒ^ */
    Uint16	SRCA ;			/* ‚b‚fƒAƒhƒŒƒX */
    Uint16	SIZE ;			/* ƒLƒƒƒ‰ƒNƒ^ƒTƒCƒY */
    Sint16	  XA ;			/* •\Ž¦ˆÊ’u ‚` */
    Sint16	  YA ;
    Sint16	  XB ;			/* •\Ž¦ˆÊ’u ‚a */
    Sint16	  YB ;
    Sint16	  XC ;			/* •\Ž¦ˆÊ’u ‚b */
    Sint16	  YC ;
    Sint16	  XD ;			/* •\Ž¦ˆÊ’u ‚c */
    Sint16	  YD ;
    Uint16	GRDA ;			/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒOƒe?[ƒuƒ‹ */
    Uint16	DMMY ;			/* ƒTƒCƒY?‡‚í‚¹—p ƒ_ƒ~?[ƒf?[ƒ^ */
} SPRITE ;

/**Added 2019-04-23 by Maxime, AKA XL2 *******************************/
typedef struct {
    Uint16	CTRL ;			/* ƒRƒ“ƒgƒ??[ƒ‹ƒtƒ@ƒ“ƒNƒVƒ‡ƒ“ */
    Uint16	LINK ;			/* ƒŠƒ“ƒNƒAƒhƒŒƒX */
    Uint16	PMOD ;			/* ƒvƒbƒgƒ‚?[ƒh */
    Uint16	COLR ;			/* ƒJƒ‰?[ƒf?[ƒ^ */
    Uint16	SRCA ;			/* ‚b‚fƒAƒhƒŒƒX */
    Uint16	SIZE ;			/* ƒLƒƒƒ‰ƒNƒ^ƒTƒCƒY */
    Sint16	  XA ;			/* •\Ž¦ˆÊ’u ‚` */
    Sint16	  YA ;
    Sint16	  XB ;			/* •\Ž¦ˆÊ’u ‚a */
    Sint16	  YB ;
    Sint16	  XC ;			/* •\Ž¦ˆÊ’u ‚b */
    Sint16	  YC ;
    Sint16	  XD ;			/* •\Ž¦ˆÊ’u ‚c */
    Sint16	  YD ;
    Uint16	GRDA ;			/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒOƒe?[ƒuƒ‹ */
    Sint16	   Z ;			/* Z distance for the z sort buffer */
    Uint32 *  NEXT ;
} SPRITE_T ;
/********************************************************/

#define	    SpriteVRAM		0x25c00000

/*-----------------------------------------------------------------------*/

/* ‚q‚f‚aƒ‚?[ƒhƒJƒ‰?[ƒTƒ“ƒvƒ‹ƒf?[ƒ^ */

#define	    RGB_Flag		0x8000

#define	    CD_Black		( 0 << 10) | ( 0 << 5) | (0)  | RGB_Flag
#define	    CD_DarkRed		( 0 << 10) | ( 0 << 5) | (8)  | RGB_Flag
#define	    CD_DarkGreen	( 0 << 10) | ( 8 << 5) | (0)  | RGB_Flag
#define	    CD_DarkYellow	( 0 << 10) | ( 8 << 5) | (8)  | RGB_Flag
#define	    CD_DarkBlue		( 8 << 10) | ( 0 << 5) | (0)  | RGB_Flag
#define	    CD_DarkPurple	( 8 << 10) | ( 0 << 5) | (8)  | RGB_Flag
#define	    CD_DarkMagenta	( 8 << 10) | ( 8 << 5) | (0)  | RGB_Flag
#define	    CD_DarkWhite	( 8 << 10) | ( 8 << 5) | (8)  | RGB_Flag
#define	    CD_MediumRed	( 0 << 10) | ( 0 << 5) | (16) | RGB_Flag
#define	    CD_MediumGreen	( 0 << 10) | (16 << 5) | (0)  | RGB_Flag
#define	    CD_MediumYellow	( 0 << 10) | (16 << 5) | (16) | RGB_Flag
#define	    CD_MediumBlue	(16 << 10) | ( 0 << 5) | (0)  | RGB_Flag
#define	    CD_MediumPurple	(16 << 10) | ( 0 << 5) | (16) | RGB_Flag
#define	    CD_MediumMagenta	(16 << 10) | (16 << 5) | (0)  | RGB_Flag
#define	    CD_MediumWhite	(16 << 10) | (16 << 5) | (16) | RGB_Flag
#define	    CD_SemiRed		( 0 << 10) | ( 0 << 5) | (24) | RGB_Flag
#define	    CD_SemiGreen	( 0 << 10) | (24 << 5) | (0)  | RGB_Flag
#define	    CD_SemiYellow	( 0 << 10) | (24 << 5) | (24) | RGB_Flag
#define	    CD_SemiBlue		(24 << 10) | ( 0 << 5) | (0)  | RGB_Flag
#define	    CD_SemiPurple	(24 << 10) | ( 0 << 5) | (24) | RGB_Flag
#define	    CD_SemiMagenta	(24 << 10) | (24 << 5) | (0)  | RGB_Flag
#define	    CD_SemiWhite	(24 << 10) | (24 << 5) | (24) | RGB_Flag
#define	    CD_Red		( 0 << 10) | ( 0 << 5) | (31) | RGB_Flag
#define	    CD_Green		( 0 << 10) | (31 << 5) | (0)  | RGB_Flag
#define	    CD_Yellow		( 0 << 10) | (31 << 5) | (31) | RGB_Flag
#define	    CD_Blue		(31 << 10) | ( 0 << 5) | (0)  | RGB_Flag
#define	    CD_Purple		(31 << 10) | ( 0 << 5) | (31) | RGB_Flag
#define	    CD_Magenta		(31 << 10) | (31 << 5) | (0)  | RGB_Flag
#define	    CD_White		(31 << 10) | (31 << 5) | (31) | RGB_Flag

/*------[ Scroll control ]------------------------------------------------*/

/*	Scroll V-RAM map address	*/

#define	    VDP2_VRAM_A0	0x25e00000
#define	    VDP2_VRAM_A1	0x25e20000
#define	    VDP2_VRAM_B0	0x25e40000
#define	    VDP2_VRAM_B1	0x25e60000

#define	    CGN01_RAM		VDP2_VRAM_B1		/* ƒXƒNƒ??[ƒ‹‚O?A‚P—p‚b‚fƒf?[ƒ^ */
#define	    NBG0_MAP		(CGN01_RAM+0x16000)	/* ƒXƒNƒ??[ƒ‹‚O‚Ì‚u‚q‚`‚lƒAƒhƒŒƒX */
#define	    NBG1_MAP		(CGN01_RAM+0x18000)	/* ƒXƒNƒ??[ƒ‹‚P‚Ì‚u‚q‚`‚lƒAƒhƒŒƒX */

#define	    KTBL0_RAM		VDP2_VRAM_A1		/* ‰ñ“]ƒXƒNƒ??[ƒ‹—pŒW?”ƒe?[ƒuƒ‹ */
#define	    BACK_CRAM		(KTBL0_RAM + 0x1fffe)	/* Back color */
#define     RBG_PARA_ADR	(KTBL0_RAM + 0x1ff00)
#define     RBG_PARB_ADR	(RBG_PARA_ADR+ 0x80)

#define	    CGR0_RAM		    VDP2_VRAM_A0		/* ‰ñ“]ƒXƒNƒ??[ƒ‹—p‚b‚fƒf?[ƒ^*/
#define	    RBG0_MAP		    VDP2_VRAM_B0		/* ‰ñ“]ƒXƒNƒ??[ƒ‹‚O‚Ì‚u‚q‚`‚lƒAƒhƒŒƒX */
#define	    VDP2_COLRAM    		0x25f00000

#define	    CG_Size		        (8*8)		    /* ‚PƒZƒ‹‚Ì‘å‚«‚³(CG) */
#define     CG16Size            (8*8/2)         /* ‚PƒZƒ‹‚Ì‘å‚«‚³(CG 16Colors) */
#define     CG256Size           (8*8)           /* ‚PƒZƒ‹‚Ì‘å‚«‚³(CG 256Colors) */
#define     CG2048Size          (8*8*2)         /* ‚PƒZƒ‹‚Ì‘å‚«‚³(CG 2048Colors) */
#define     CG32KSize           (8*8*2)         /* ‚PƒZƒ‹‚Ì‘å‚«‚³(CG 32KColors) */

typedef     Uint16		CELL ;		/* ‚PƒZƒ‹‚Ì‘å‚«‚³(Pattern name) */
#define	    Line		64		/* ‚Pƒ‰ƒCƒ“‚Ì‘å‚«‚³ */
#define	    Page		(64*Line)	/* ‚Pƒy?[ƒW‚Ì‘å‚«‚³ */

typedef struct rdat{
    FIXED	XST ;		/* ƒXƒNƒŠ?[ƒ“‰æ–ÊƒXƒ^?[ƒg?À•W ‚wst */
    FIXED	YST ;		/* ƒXƒNƒŠ?[ƒ“‰æ–ÊƒXƒ^?[ƒg?À•W ‚xst */
    FIXED	ZST ;		/* ƒXƒNƒŠ?[ƒ“‰æ–ÊƒXƒ^?[ƒg?À•W ‚yst */
    FIXED	DXST ;		/* ƒXƒNƒŠ?[ƒ“‰æ–Ê?‚’¼•ûŒü?À•W‘?•ª ‚„‚wst */
    FIXED	DYST ;		/* ƒXƒNƒŠ?[ƒ“‰æ–Ê?‚’¼•ûŒü?À•W‘?•ª ‚„‚xst */
    FIXED	DX ;		/* ƒXƒNƒŠ?[ƒ“‰æ–Ê?…•½•ûŒü?À•W‘?•ª ‚„‚w */
    FIXED	DY ;		/* ƒXƒNƒŠ?[ƒ“‰æ–Ê?…•½•ûŒü?À•W‘?•ª ‚„‚x */
    FIXED	MATA ;		/* ‰ñ“]ƒ}ƒgƒŠƒNƒXƒpƒ‰ƒ??[ƒ^‚` */
    FIXED	MATB ;		/* ‰ñ“]ƒ}ƒgƒŠƒNƒXƒpƒ‰ƒ??[ƒ^‚a */
    FIXED	MATC ;		/* ‰ñ“]ƒ}ƒgƒŠƒNƒXƒpƒ‰ƒ??[ƒ^‚b */
    FIXED	MATD ;		/* ‰ñ“]ƒ}ƒgƒŠƒNƒXƒpƒ‰ƒ??[ƒ^‚c */
    FIXED	MATE ;		/* ‰ñ“]ƒ}ƒgƒŠƒNƒXƒpƒ‰ƒ??[ƒ^‚d */
    FIXED	MATF ;		/* ‰ñ“]ƒ}ƒgƒŠƒNƒXƒpƒ‰ƒ??[ƒ^‚e */

    Sint16	PX ;		/* Ž‹“_?À•W ‚ox */
    Sint16	PY ;		/* Ž‹“_?À•W ‚oy */
    Sint16	PZ ;		/* Ž‹“_?À•W ‚oz */
    Sint16	dummy0 ;
    Sint16	CX ;		/* ’†?S?À•W ‚bx */
    Sint16	CY ;		/* ’†?S?À•W ‚by */
    Sint16	CZ ;		/* ’†?S?À•W ‚bz */
    Sint16	dummy1 ;

    FIXED	MX ;		/* •½?sˆÚ“®—Ê ‚lx */
    FIXED	MY ;		/* •½?sˆÚ“®—Ê ‚ly */
    FIXED	KX ;		/* Šg‘å?k?¬ŒW?” kx */
    FIXED	KY ;		/* Šg‘å?k?¬ŒW?” ky */

    Uint32	KAST ;		/* ŒW?”ƒe?[ƒuƒ‹ƒXƒ^?[ƒgƒAƒhƒŒƒX ‚j‚`st */
    Sint32	DKAST ;		/* ŒW?”ƒe?[ƒuƒ‹?‚’¼•ûŒüƒAƒhƒŒƒX‘?•ª ‚j‚`st */
    Sint32	DKA ;		/* ŒW?”ƒe?[ƒuƒ‹?…•½•ûŒüƒAƒhƒŒƒX‘?•ª ‚j‚` */
} ROTSCROLL ;

/* slExtSignal */
#define		EXLTEN			0x0200		/* External latch enable */
#define		EXSYEN			0x0100		/* External synch enable */
#define		DASEL			0x0002		/* Display area select */
#define		EXBGEN			0x0001		/* External background screen enable */

/* slColRAMMode */
#define		CRM16_1024		0
#define		CRM16_2048		1
#define		CRM32_1024		2
/* slChar */
#define		COL_TYPE_16		0x00
#define		COL_TYPE_256		0x10
#define		COL_TYPE_2048		0x20
#define		COL_TYPE_32768		0x30
#define		COL_TYPE_1M		0x40
#define		CHAR_SIZE_1x1		0
#define		CHAR_SIZE_2x2		1
/* slPage */
#define		PNB_2WORD		0
#define		PNB_1WORD		0x8000
#define		CN_10BIT       		0
#define		CN_12BIT		0x4000
/* slPlane */
#define		PL_SIZE_1x1		0
#define		PL_SIZE_2x1		1
#define		PL_SIZE_2x2		3
/* slScrDisp */
#define		NBG0ON			(1<<0)
#define		NBG1ON			(1<<1)
#define		NBG2ON			(1<<2)
#define		NBG3ON			(1<<3)
#define		RBG0ON			(1<<4)
#define		LNCLON			(1<<5)
#define		SPRON			(1<<6)
#define		BACKON			(1<<5)
#define		NBG0OFF			(1<<16)
#define		NBG1OFF			(1<<17)
#define		NBG2OFF			(1<<18)
#define		NBG3OFF			(1<<19)
#define		RBG0OFF			(1<<20)
/* slZoomMode */
#define		ZOOM_1			0
#define		ZOOM_HALF	       	1
#define		ZOOM_QUARTER	       	2
/* slKtable */
#define		K_OFF		       	0
#define		K_ON		       	1
#define		K_2WORD		       	0
#define		K_1WORD		       	2
#define		K_MODE0		       	0
#define		K_MODE1			4
#define		K_MODE2			8
#define		K_MODE3			12
#define		K_LINECOL		0x10
#define		K_DOT			0x20
#define		K_LINE			0
#define		K_FIX			0x40
/* slCurRpara */
/* slRparaMode */
#define		RA			0
#define		RB			1
#define		K_CHANGE       		2
#define		W_CHANGE       		3

#define		LnRd_Xst		0x01
#define		LnRd_Yst		0x02
#define		LnRd_KAst		0x04

/* slColCalc */
#define		CC_RATE		       	0
#define		CC_ADD		       	0x100
#define		CC_TOP		       	0
#define		CC_2ND		       	0x200
#define		CC_EXT		       	0x400

/* Gradation control */
#define		grdNBG0			0xa000
#define		grdNBG1			0xc000
#define		grdNBG2			0xd000
#define		grdNBG3			0xe000
#define		grdRBG0			0x9000
#define		grdSPR			0x8000

/* color */
#define		COL_R			(1<<0)
#define		COL_G			(1<<5)
#define		COL_B			(1<<10)
/* SpriteColorCalc */
#define		CC_pr_CN		0	/* Priority <= CCalcNum */
#define		CC_PR_CN		1	/* Priority == CCalcNum */
#define		CC_PR_cn		2	/* Priority >= CCalcNum */
#define		CC_MSB			3	/* Use MSB */

#define		SPR_PAL			0	/* Palette code only */
#define		SPR_PAL_RGB		1	/* Use Palette and RGB */

    enum color_rate{
	CLRate31_1 ,		/* Top 31 : Second 1 */
	CLRate30_2 ,
	CLRate29_3 ,
	CLRate28_4 ,
	CLRate27_5 ,
	CLRate26_6 ,
	CLRate25_7 ,
	CLRate24_8 ,
	CLRate23_9 ,
	CLRate22_10 ,
	CLRate21_11 ,
	CLRate20_12 ,
	CLRate19_13 ,
	CLRate18_14 ,
	CLRate17_15 ,
	CLRate16_16 ,
	CLRate15_17 ,
	CLRate14_18 ,
	CLRate13_19 ,
	CLRate12_20 ,
	CLRate11_21 ,
	CLRate10_22 ,
	CLRate9_23 ,
	CLRate8_24 ,
	CLRate7_25 ,
	CLRate6_26 ,
	CLRate5_27 ,
	CLRate4_28 ,
	CLRate3_29 ,
	CLRate2_30 ,
	CLRate1_31 ,
	CLRate0_32		/* Top 0 : Second 32 */
    } ;

/* Screen select */
#define		scnNBG0			1
#define		scnNBG1			0
#define		scnNBG2			3
#define		scnNBG3			2
#define		scnRBG0			5
#define		scnRBGA			5
#define		scnRBGB			4
#define		scnSPR			4
#define		scnROT			7
#define		scnCCAL			6

#define		scnLNCL			7
#define		scnBACK			6

#define		scnSPR0			-7
#define		scnSPR1			-8
#define		scnSPR2			-5
#define		scnSPR3			-6
#define		scnSPR4			-3
#define		scnSPR5			-4
#define		scnSPR6			-1
#define		scnSPR7			-2

#define		bmNBG0			1
#define		bmNBG1			0
#define		bmRBG0			3

/* Window control */
#define		win_OR			0x80
#define		win_AND			0x00

#define		win0_IN			0x03
#define		win0_OUT		0x02

#define		win1_IN			0x0c
#define		win1_OUT		0x08

#define		spw_IN			0x30
#define		spw_OUT			0x20

/* Line Scroll control */
#define		lineSZ1			0x00
#define		lineSZ2	 		0x10
#define		lineSZ4			0x20
#define		lineSZ8			0x30

#define		lineZoom		0x08
#define		lineVScroll		0x04
#define		lineHScroll		0x02
#define		VCellScroll		0x01

/* BitMap control */
#define		BM_512x256		0x02
#define		BM_512x512		0x06
#define		BM_1024x256		0x0a
#define		BM_1024x512		0x0e

/* Special Function Control */
#define		spPRI_Scrn		0
#define		spPRI_Char		1
#define		spPRI_Dot		2

#define		spCCAL_Scrn		0
#define		spCCAL_Char		1
#define		spCCAL_Dot		2
#define		spCCAL_MSB		3

#define		sfCOL_01		0x01
#define		sfCOL_23		0x02
#define		sfCOL_45		0x04
#define		sfCOL_67		0x08
#define		sfCOL_89		0x10
#define		sfCOL_ab		0x20
#define		sfCOL_cd		0x40
#define		sfCOL_ef		0x80

/* V-RAM Division */
#define		Div_A			1
#define		Div_B			2

/*------[ D.M.A. control ]------------------------------------------------*/
#define		Sinc_Dinc_Byte		0
#define		Sdec_Dinc_Byte		1
#define		Sinc_Ddec_Byte		2
#define		Sfix_Dinc_Byte		3
#define		Sfix_Ddec_Byte		4
#define		Sinc_Dfix_Byte		5
#define		Sdec_Dfix_Byte		6

#define		Sinc_Dinc_Word		7
#define		Sdec_Dinc_Word		8
#define		Sinc_Ddec_Word		9
#define		Sfix_Dinc_Word		10
#define		Sfix_Ddec_Word		11
#define		Sinc_Dfix_Word		12
#define		Sdec_Dfix_Word		13

#define		Sinc_Dinc_Long		14
#define		Sdec_Dinc_Long		15
#define		Sinc_Ddec_Long		16
#define		Sfix_Dinc_Long		17
#define		Sfix_Ddec_Long		18
#define		Sinc_Dfix_Long		19
#define		Sdec_Dfix_Long		20

/*------[ Sound control ]-------------------------------------------------*/

typedef struct{
    Uint8	mode ;		/* Mode */
    Uint8	channel ;	/* PCM Channel Number */
    Uint8	level ;		/* 0 ~ 127 */
    Sint8	pan ;		/* -128 ~ +127 */
    Uint16	pitch ;
    Uint8	eflevelR ;	/* Effect level for Right(mono) 0 ~ 7 */
    Uint8	efselectR ;	/* Effect select for Right(mono) 0 ~ 15 */
    Uint8	eflevelL ;	/* Effect level for Left 0 ~ 7 */
    Uint8	efselectL ;	/* Effect select for Left 0 ~ 15 */
} PCM ;

#define		_Stereo		0x80
#define		_Mono		0x00

#define		_PCM16Bit	0x00
#define		_PCM8Bit	0x10

#define		SND_SEQ_START		0x01	/* Sequence Start */
#define		SND_SEQ_STOP		0x02	/* Sequence Stop */
#define		SND_SEQ_PAUSE		0x03	/* Sequence Pause */
#define		SND_SEQ_CONT		0x04	/* Sequence Continue */
#define		SND_SEQ_VOL		0x05	/* Sequence Volume */
#define		SND_TEMPO_CHG		0x07	/* Tempo Change */
#define		SND_MAP_CHG		0x08	/* map Change */
#define		SND_MIDI_CTRL_DIR	0x09	/* MIDI direct control */
#define		SND_VOL_ANL_START	0x0a	/* Volume analize start */
#define		SND_VOL_ANL_STOP	0x0b	/* Volume analize stop */
#define		SND_DSP_STOP		0x0c	/* DSP stop */
#define		SND_ALL_OFF		0x0d	/* Sound all OFF */
#define		SND_SEQ_PAN		0x0e	/* Sequence PAN */
#define		SND_CDDA_LEV		0x80	/* CD-DA Level */
#define		SND_CDDA_PAN		0x81	/* CD-DA pan */
#define		SND_TTL_VOL		0x82	/* Total Volume */
#define		SND_EFCT_CHG		0x83	/* Effect Change */
#define		SND_PCM_START		0x85	/* PCM start */
#define		SND_PCM_STOP		0x86	/* PCM stop */
#define		SND_MIX_CHG		0x87	/* Mixer change */
#define		SND_MIX_PRM_CHG		0x88	/* Mixer parameter change */
#define		SND_HARD_CHK		0x89	/* Hard check */
#define		SND_PCM_PRM_CHG		0x8a	/* PCM parameter change */

#define		SoundRAM		0x25a00000

/*------[ System Work Assignments ]---------------------------------------*/

    extern const void*   MasterStack ;	/* Stack area End */
    extern const Uint16  MaxVertices ;	/* Calculatable vertice numbers */
    extern const Uint16  MaxPolygons ;	/* Calculatable polygon numbers */
    extern const Uint16  EventSize ;	/* sizeof(EVENT) */
    extern const Uint16  WorkSize ;	/* sizeof(WORK) */
    extern const Uint16  MaxEvents ;	/* Useful Event count */
    extern const Uint16  MaxWorks ;	/* Useful Work count */
    extern const void*   SortList ;	/* SCU D.M.A. Table */
    extern const Uint32  SortListSize ;	/* Sprite transfer request table size */
    extern const void*   TransList ;	/* SCU D.M.A. Table */
    extern const void*   Zbuffer ;	/* (128 + 128 + 256) * 4 Bytes fix */
    extern const SPRITE_T*   SpriteBuf ;	/* Main sprite control data buffer */
    extern const SPRITE_T*   SpriteBuf2 ;	/* Slave sprite control data buffer */
    extern const Uint32  SpriteBufSize ; /* Sprite control data buffer size */
    extern const void*   Pbuffer ;	/* Point calculate buffer */
    extern const void*   CLOfstBuf ;	/* 32 * 32 Bytes fix */
    extern const void*   CommandBuf ;	/* Command for slave CPU buffer */
    extern const void*   PCM_Work ;	/* PCM data buffer */
    extern const Uint32  PCM_WkSize ;	/* PCM data buffer size */

    extern EVENT  EventBuf[] ;		/* buffer for Event use */
    extern WORK   WorkBuf[] ;		/* buffer for Work use */
    extern EVENT* RemainEvent[] ;	/* Remain Event address buffer */
    extern WORK*  RemainWork[] ;	/* Remain Work address buffer */

/*------[ Prottype ]------------------------------------------------------*/

/*  Math library	*/

    extern  FIXED  slSin(ANGLE) ;
    extern  FIXED  slCos(ANGLE) ;
    extern  FIXED  slTan(ANGLE) ;
    extern  ANGLE  slAtan(FIXED , FIXED) ;
    extern  Uint32 slSquart(Uint32) ;
    extern  FIXED  slSquartFX(FIXED) ;
    extern  FIXED  slMulFX(FIXED , FIXED) ;
    extern  FIXED  slDivFX(FIXED , FIXED) ;
    extern  FIXED  slInnerProduct(VECTOR vct1 , VECTOR vct2) ;
    extern  FIXED  slCalcPoint(FIXED , FIXED , FIXED , FIXED ans[XYZ]) ;
    extern  FIXED  slCalcVector(VECTOR vct , VECTOR ans) ;
    extern  FIXED  slRandom(void) ;
    extern  void   slNormalVector(VECTOR , VECTOR , VECTOR , VECTOR) ;
    extern  void   slRevNormalVector(VECTOR , VECTOR , VECTOR , VECTOR) ;

    extern  void   slInitMatrix(void) ;
    extern  void   slUnitMatrix(MATRIX) ;
    extern  Bool   slPushMatrix(void) ;
    extern  Bool   slPopMatrix(void) ;
    extern  Bool   slPushUnitMatrix(void) ;
    extern  Bool   slIncMatrixPtr(void) ;
    extern  Bool   slDecMatrixPtr(void) ;
    extern  void   slLoadMatrix(MATRIX) ;
    extern  void   slGetMatrix(MATRIX) ;
    extern  Bool   slCopyMatrix() ;
    extern  void   slGetTranslate(FIXED*) ;
    extern  void   slLoadTranslate(FIXED , FIXED , FIXED) ;
    extern  void   slRegistMatrix(MATRIX) ;
    extern  void   slInversMatrix(void) ;
    extern  void   slTransposeMatrix(void) ;
    extern  void   slUnitAngle(MATRIX) ;
    extern  void   slUnitTranslate(MATRIX) ;

    extern  void   slTranslate(FIXED , FIXED , FIXED) ;
    extern  void   slRegistTranslate(FIXED , FIXED , FIXED) ;
    extern  void   slMultiMatrix(MATRIX) ;
    extern  void   slScale(FIXED , FIXED , FIXED) ;
    extern  void   slRotX(ANGLE) ;
    extern  void   slRotY(ANGLE) ;
    extern  void   slRotZ(ANGLE) ;
    extern  void   slRotXSC(FIXED , FIXED) ;
    extern  void   slRotYSC(FIXED , FIXED) ;
    extern  void   slRotZSC(FIXED , FIXED) ;
    extern  void   slRotAX(FIXED , FIXED , FIXED , ANGLE) ;
    extern  void   slLookAt(FIXED *camera , FIXED *target , ANGLE) ;
    extern  FIXED  slBallCollision(FIXED *pos1 , FIXED size1 , FIXED *pos2 , FIXED size2) ;
    extern  FIXED  slCheckOnScreen(FIXED *pos , FIXED size) ;
    extern  FIXED  slCheckOnScreen0(FIXED size) ;
    extern  void   slBezier(VECTOR p1,VECTOR p2,VECTOR p3,VECTOR p4,FIXED time,VECTOR ans) ;
    extern  FIXED  slConvert3Dto2D( FIXED pos[XYZ], Sint32 ans[XY]) ;
    extern  FIXED  slConvert3Dto2DFX( FIXED pos[XYZ], FIXED ans[XY]) ;

/*  Text display library	*/

    extern void   *slLocate(Uint16 , Uint16) ;
    extern void    slCurScrn(Uint16) ;
    extern void    slCurColor(Uint16) ;
    extern void    slDispHex(Uint32 , void *) ;
    extern void    slPrintHex(Uint32 , void *) ;
    extern void    slPrintMatrix(MATRIX , void *) ;
    extern void    slPrintFX(FIXED , void *) ;
    extern Uint32  slHex2Dec(Uint32) ;
    extern Uint32  slDec2Hex(Uint32) ;
    extern Uint16  slAng2Hex(ANGLE) ;
    extern Uint16  slAng2Dec(ANGLE) ;
    extern FIXED   slAng2FX(ANGLE) ;
    extern void    slPrint(char * , void *) ;
    extern void    set_vbar(Uint16) ;
    extern void    reset_vbar(Uint16) ;
    extern void    slExtendScroll(Uint8 * , void *) ;
    extern void   *slLocateNbg(Uint16 , Uint16 , Uint16) ;
#define		slLocateNbg0(x,y)	slLocateNbg(x,y,scnNBG0)
#define		slLocateNbg1(x,y)	slLocateNbg(x,y,scnNBG1)
#define		slLocateNbg2(x,y)	slLocateNbg(x,y,scnNBG2)
#define		slLocateNbg3(x,y)	slLocateNbg(x,y,scnNBG3)
    extern void   *slLocatePage(Uint16 , Uint16 , Uint16) ;

/*  Sprite library	*/

    extern  Bool   slPutPolygon(PDATA *) ;
    extern  Bool   slPutPolygonS(PDATA *) ;
    extern  Bool   slDispPolygon(PDATA * , Uint16) ;
    extern  Bool   slPutSprite(FIXED * , SPR_ATTR *attr , ANGLE) ;
    extern  Bool   slDispSprite(FIXED * , SPR_ATTR *attr , ANGLE) ;
    extern  Bool   slDispSpriteHV(FIXED * , SPR_ATTR *attr , ANGLE) ;
    extern  Bool   slDispSpriteSZ(FIXED * , SPR_ATTR *attr , ANGLE) ;
    extern  Bool   slDispSprite4P(FIXED * , FIXED , SPR_ATTR *attr) ;
    extern  void   slPerspective(ANGLE) ;
    extern  void   slSetScreenDist(FIXED) ;
    extern  Bool   slWindow(Sint16 , Sint16 , Sint16 , Sint16 , Sint16 , Sint16 , Sint16) ;
    extern  void   slLight(VECTOR) ;
    extern  Bool   slSetSprite(SPRITE * , FIXED) ;
    extern  void   slZdspLevel(Uint16) ;
    extern  Bool   slPutObject(OBJECT *) ;
    extern  void   slCurWindow(Uint8) ;
    enum {
	winFar ,		/* Far side Window */
	winNear			/* Near side Window */
    } ;
    extern  Uint8  slSprWinNum() ;
    extern  void   slFrameClipSize(Sint16 , Sint16 );
    extern  void   slSetScreenDist(FIXED);
    extern  void   slGetFrameData(void * , Uint16 , Uint16 );

/*  Scroll library	*/

    extern  void    slTVOn(void) ;
    extern  void    slTVOff(void) ;
    extern  Uint16  slGetHCount(void) ;
    extern  Uint16  slGetVCount(void) ;
    extern  void    slExtSignal(Uint16 , Uint16) ;
    extern  void    slColRAMMode(Uint16) ;
    extern  void    slVRAMMode(Uint16) ;
    extern  void    slScrCycleSet(Uint32 , Uint32 , Uint32 , Uint32) ;
    extern  void    slScrDisp(Uint32) ;
    extern  Bool    slScrAutoDisp(Uint32) ;
    extern  void    slScrTransparent(Uint16) ;
    extern  void    slZrotR(ANGLE) ;
    extern  void    slScrMatSet(void) ;
    extern  void    slBackColTable(void *) ;
    extern  void    slBack1ColSet(void * , Uint16) ;
    extern  void    slLineColTable(void *) ;
    extern  void    slLine1ColSet(void * , Uint16) ;
    extern  void    slLineColDisp(Uint16) ;
    extern  void    slColorCalc(Uint16) ;
    extern  void    slColorCalcMode(Uint16) ;
    extern  void    slColorCalcOn(Uint16) ;
    extern  void    slColRate(Sint16 , Uint16) ;
#define		slColRateNbg0(rate)	slColRate(scnNBG0 , rate)
#define		slColRateNbg1(rate)	slColRate(scnNBG1 , rate)
#define		slColRateNbg2(rate)	slColRate(scnNBG2 , rate)
#define		slColRateNbg3(rate)	slColRate(scnNBG3 , rate)
#define		slColRateRbg0(rate)	slColRate(scnRBG0 , rate)
#define		slColRateLNCL(rate)	slColRate(scnLNCL , rate)
#define		slColRateBACK(rate)	slColRate(scnBACK , rate)
#define		slColRateSpr0(rate)	slColRate(scnSPR0 , rate)
#define		slColRateSpr1(rate)	slColRate(scnSPR1 , rate)
#define		slColRateSpr2(rate)	slColRate(scnSPR2 , rate)
#define		slColRateSpr3(rate)	slColRate(scnSPR3 , rate)
#define		slColRateSpr4(rate)	slColRate(scnSPR4 , rate)
#define		slColRateSpr5(rate)	slColRate(scnSPR5 , rate)
#define		slColRateSpr6(rate)	slColRate(scnSPR6 , rate)
#define		slColRateSpr7(rate)	slColRate(scnSPR7 , rate)
    extern  void    slColOffsetOn(Uint16) ;
    extern  void    slColOffsetOff(Uint16) ;
    extern  void    slColOffsetAUse(Uint16) ;
    extern  void    slColOffsetBUse(Uint16) ;
    extern  void    slColOffsetScrn(Uint16 , Uint16) ;
    extern  void    slColOffsetA(Sint16 r,Sint16 g,Sint16 b) ;
    extern  void    slColOffsetB(Sint16 r,Sint16 g,Sint16 b) ;
    extern  void    slCharNbg0(Uint16 type,Uint16 size) ;
    extern  void    slCharNbg1(Uint16 type,Uint16 size) ;
    extern  void    slCharNbg2(Uint16 type,Uint16 size) ;
    extern  void    slCharNbg3(Uint16 type,Uint16 size) ;
    extern  void    slCharRbg0(Uint16 type,Uint16 size) ;
    extern  void    slPageNbg0(void *,void *,Uint16) ;
    extern  void    slPageNbg1(void *,void *,Uint16) ;
    extern  void    slPageNbg2(void *,void *,Uint16) ;
    extern  void    slPageNbg3(void *,void *,Uint16) ;
    extern  void    slPageRbg0(void *,void *,Uint16) ;
    extern  void    slPlaneNbg0(Uint16) ;
    extern  void    slPlaneNbg1(Uint16) ;
    extern  void    slPlaneNbg2(Uint16) ;
    extern  void    slPlaneNbg3(Uint16) ;
    extern  void    slPlaneRA(Uint16) ;
    extern  void    slPlaneRB(Uint16) ;
    extern  void    slOverRA(Uint16) ;
    extern  void    slOverRB(Uint16) ;
    extern  void    slMapNbg0(void *,void *,void *,void *) ;
    extern  void    slMapNbg1(void *,void *,void *,void *) ;
    extern  void    slMapNbg2(void *,void *,void *,void *) ;
    extern  void    slMapNbg3(void *,void *,void *,void *) ;
    extern  void    sl1MapRA(void *) ;
    extern  void    sl1MapRB(void *) ;
    extern  void    sl16MapRA(Uint8 *) ;
    extern  void    sl16MapRB(Uint8 *) ;
    extern  void    slRparaInitSet(ROTSCROLL *) ;
    extern  void    slCurRpara(Uint16) ;
    extern  void    slRparaMode(Uint16) ;
    extern  void    slMakeKtable(void *) ;
    extern  void    slKtableRA(void *,Uint16) ;
    extern  void    slKtableRB(void *,Uint16) ;
    extern  void    slPriority(Sint16 , Uint16) ;
#define		slPriorityNbg0(num)	slPriority(scnNBG0 , num)
#define		slPriorityNbg1(num)	slPriority(scnNBG1 , num)
#define		slPriorityNbg2(num)	slPriority(scnNBG2 , num)
#define		slPriorityNbg3(num)	slPriority(scnNBG3 , num)
#define		slPriorityRbg0(num)	slPriority(scnRBG0 , num)
#define		slPrioritySpr0(num)	slPriority(scnSPR0 , num)
#define		slPrioritySpr1(num)	slPriority(scnSPR1 , num)
#define		slPrioritySpr2(num)	slPriority(scnSPR2 , num)
#define		slPrioritySpr3(num)	slPriority(scnSPR3 , num)
#define		slPrioritySpr4(num)	slPriority(scnSPR4 , num)
#define		slPrioritySpr5(num)	slPriority(scnSPR5 , num)
#define		slPrioritySpr6(num)	slPriority(scnSPR6 , num)
#define		slPrioritySpr7(num)	slPriority(scnSPR7 , num)
    extern  void    slScrPosNbg0(FIXED x,FIXED y) ;
    extern  void    slScrPosNbg1(FIXED x,FIXED y) ;
    extern  void    slScrPosNbg2(FIXED x,FIXED y) ;
    extern  void    slScrPosNbg3(FIXED x,FIXED y) ;
    extern  void    slScrMoveNbg0(FIXED x,FIXED y) ;
    extern  void    slScrMoveNbg1(FIXED x,FIXED y) ;
    extern  void    slScrMoveNbg2(FIXED x,FIXED y) ;
    extern  void    slScrMoveNbg3(FIXED x,FIXED y) ;
    extern  void    slLookR(FIXED x,FIXED y) ;
    extern  void    slDispCenterR(FIXED x,FIXED y) ;
    extern  void    slZoomNbg0(FIXED x,FIXED y) ;
    extern  void    slZoomNbg1(FIXED x,FIXED y) ;
    extern  void    slZoomR(FIXED x,FIXED y) ;
    extern  void    slScrScaleNbg0(FIXED x,FIXED y) ;
    extern  void    slScrScaleNbg1(FIXED x,FIXED y) ;
    extern  void    slScrScaleR(FIXED x,FIXED y) ;
    extern  void    slZoomMode(Uint16 , Uint16) ;
#define		slZoomModeNbg0(mode)	slZoomMode(scnNBG0 , mode)
#define		slZoomModeNbg1(mode)	slZoomMode(scnNBG1 , mode)
    extern  void    slScrAscSet(void *) ;
    extern  void    slScrMatConv(void) ;
    extern  void    slSpriteCCalcCond(Uint16) ;
    extern  void    slSpriteCCalcNum(Uint16) ;
    extern  void    slSpriteColMode(Uint16) ;
    extern  void    slSpriteWinMode(Uint16) ;
    extern  void    slSpriteType(Uint16) ;
    extern  void    slScrMosaicOn(Uint16) ;
    extern  void    slScrMosSize(Uint16 , Uint16) ;
    extern  void    slScrWindow0(Uint16 , Uint16 , Uint16 , Uint16) ;
    extern  void    slScrWindow1(Uint16 , Uint16 , Uint16 , Uint16) ;
    extern  void    slScrLineWindow0(void *) ;
    extern  void    slScrLineWindow1(void *) ;
    extern  void    slScrWindowMode(Uint16 , Uint16) ;
#define		slScrWindowModeNbg0(mode)	slScrWindowMode(scnNBG0 , mode)
#define		slScrWindowModeNbg1(mode)	slScrWindowMode(scnNBG1 , mode)
#define		slScrWindowModeNbg2(mode)	slScrWindowMode(scnNBG2 , mode)
#define		slScrWindowModeNbg3(mode)	slScrWindowMode(scnNBG3 , mode)
#define		slScrWindowModeRbg0(mode)	slScrWindowMode(scnRBG0 , mode)
#define		slScrWindowModeSPR(mode)	slScrWindowMode(scnSPR  , mode)
#define		slScrWindowModeROT(mode)	slScrWindowMode(scnROT  , mode)
#define		slScrWindowModeCCAL(mode)	slScrWindowMode(scnCCAL , mode)
    extern  void    slLineScrollMode(Uint16 , Uint16) ;
#define		slLineScrollModeNbg0(mode)	slLineScrollMode(scnNBG0 , mode)
#define		slLineScrollModeNbg1(mode)	slLineScrollMode(scnNBG1 , mode)
    extern  void    slLineScrollTable0(void *) ;
    extern  void    slLineScrollTable1(void *) ;
    extern  void    slVCellTable(void *) ;
    extern  void    slGradationOn(Uint16) ;
#define		slGradationOff()	slGradationOn(OFF)
    extern  void    slShadowOn(Uint16) ;
    extern  void    slTpShadowMode(Uint16) ;
    extern  void    slOverPatRA(Uint16 pat) ;
    extern  void    slOverPatRB(Uint16 pat) ;
    extern  void    slColRAMOffsetNbg0(Uint16 offset) ;
    extern  void    slColRAMOffsetNbg1(Uint16 offset) ;
    extern  void    slColRAMOffsetNbg2(Uint16 offset) ;
    extern  void    slColRAMOffsetNbg3(Uint16 offset) ;
    extern  void    slColRAMOffsetRbg0(Uint16 offset) ;
    extern  void    slColRAMOffsetSpr(Uint16 offset) ;
    extern  void    slBitMapNbg0(Uint16 , Uint16 , void *) ;
    extern  void    slBitMapNbg1(Uint16 , Uint16 , void *) ;
    extern  void    slBitMapRbg0(Uint16 , Uint16 , void *) ;
    extern  void    slBMPalette(Uint16 , Uint16) ;
#define		slBMPaletteNbg0(pal)	slBMPalette(bmNBG0 , pal)
#define		slBMPaletteNbg1(pal)	slBMPalette(bmNBG1 , pal)
#define		slBMPaletteRbg0(pal)	slBMPalette(bmRBG0 , pal)
    extern  void    slSpecialPrioModeNbg0(Uint16) ;
    extern  void    slSpecialPrioModeNbg1(Uint16) ;
    extern  void    slSpecialPrioModeNbg2(Uint16) ;
    extern  void    slSpecialPrioModeNbg3(Uint16) ;
    extern  void    slSpecialPrioModeRbg0(Uint16) ;
    extern  void    slSpecialCCalcModeNbg0(Uint16) ;
    extern  void    slSpecialCCalcModeNbg1(Uint16) ;
    extern  void    slSpecialCCalcModeNbg2(Uint16) ;
    extern  void    slSpecialCCalcModeNbg3(Uint16) ;
    extern  void    slSpecialCCalcModeRbg0(Uint16) ;
    extern  void    slSpecialFuncCodeA(Uint16) ;
    extern  void    slSpecialFuncCodeB(Uint16) ;
    extern  void    slSpecialFuncSelectB(Uint16) ;
    extern  void    slRparaReadCtrlRA(Uint16) ;
    extern  void    slRparaReadCtrlRB(Uint16) ;
    extern  void    slSpecialPrioBitN01(Uint16 , Uint16) ;
    extern  void    slSpecialPrioBitScr(Uint16 , Uint16) ;
    extern  void    slSpecialPrioBitRbg0(Uint16) ;
#define		slSpecialPrioBitNbg0(flag)	slSpecialPrioBitN01(scnNBG0 , flag)
#define		slSpecialPrioBitNbg1(flag)	slSpecialPrioBitN01(scnNBG1 , flag)
#define		slSpecialPrioBitNbg2(flag)	slSpecialPrioBitScr(scnNBG2 , flag)
#define		slSpecialPrioBitNbg3(flag)	slSpecialPrioBitScr(scnNBG3 , flag)
#define		slSpecialPrioBitBMN0(flag)	slSpecialPrioBitN01(scnNBG0 , flag)
#define		slSpecialPrioBitBMN1(flag)	slSpecialPrioBitN01(scnNBG1 , flag)
#define		slSpecialPrioBitBMR0(flag)	slSpecialPrioBitRbg0(flag)
    extern  void    slSpecialCCalcBitN01(Uint16 , Uint16) ;
    extern  void    slSpecialCCalcBitScr(Uint16 , Uint16) ;
    extern  void    slSpecialCCalcBitRbg0(Uint16) ;
#define		slSpecialCCalcBitNbg0(flag)	slSpecialCCalcBitN01(scnNBG0 , flag)
#define		slSpecialCCalcBitNbg1(flag)	slSpecialCCalcBitN01(scnNBG1 , flag)
#define		slSpecialCCalcBitNbg2(flag)	slSpecialCCalcBitScr(scnNBG2 , flag)
#define		slSpecialCCalcBitNbg3(flag)	slSpecialCCalcBitScr(scnNBG3 , flag)
#define		slSpecialCCalcBitBMN0(flag)	slSpecialCCalcBitN01(scnNBG0 , flag)
#define		slSpecialCCalcBitBMN1(flag)	slSpecialCCalcBitN01(scnNBG1 , flag)
#define		slSpecialCCalcBitBMR0(flag)	slSpecialCCalcBitRbg0(flag)
    extern  void    setASC_1to8(Uint8 * , void * , Uint32 , Uint8) ;
    extern  void    setASC_4to8(Uint8 * , void * , Uint32 , Uint8) ;
    extern  void    setASC_1to4(Uint8 * , void * , Uint32 , Uint8 , Sint32) ;
    extern  Uint8   SGL_ASCII_CG[] ;

/*  BitMap graphics library */

    extern  Bool    slInitBitMap(Uint16 , Uint16 , void*) ;
#define         slInitBitMapNbg0(sz,adr)        slInitBitMap(bmNBG0,sz,adr)
#define         slInitBitMapNbg1(sz,adr)        slInitBitMap(bmNBG1,sz,adr)
#define         slInitBitMapRbg0(sz,adr)        slInitBitMap(bmRBG0,sz,adr)
    extern  void    slBitMapBase(Sint16 , Sint16) ;
    extern  Sint8  *slLocateBitMap(Sint16 , Sint16) ;
    extern  void    slClearBitMap(Sint8) ;
    extern  Bool    slBMPset(Sint16 , Sint16 , Sint8) ;
    extern  Sint8   slBMPoint(Sint16 , Sint16) ;
    extern  void    slBMCircle(Sint16 , Sint16 , Sint16 , Sint8) ;
    extern  Bool    slBMLine(Sint16 , Sint16 , Sint16 , Sint16 , Sint8) ;
    extern  Bool    slBMBox(Sint16 , Sint16 , Sint16 , Sint16 , Sint8) ;
    extern  Bool    slBMBoxFill(Sint16 , Sint16 , Sint16 , Sint16 , Sint8) ;
    extern  Bool    slBMGet(Sint16 , Sint16 , Sint16 , Sint16 , Sint8*) ;
    extern  Bool    slBMPut(Sint16 , Sint16 , Sint16 , Sint16 , Sint8*) ;
    extern  Bool    slBMSprPut(Sint16 , Sint16 , Sint16 , Sint16 , Sint8*) ;

#ifdef ST_VE
/*  Graphics enhancer control */

    extern  Bool gxInitEnhancer(Uint16 , Uint16 , Uint16) ;
#define	    EGX_IMMPAL		0	/* ƒpƒŒƒbƒg’¼?Ú */
#define	    EGX_PAL15		1	/* ƒpƒŒƒbƒgŠÔ?Ú ‚P‚TƒrƒbƒgƒJƒ‰?[ */
#define	    EGX_PAL24		2	/* ƒpƒŒƒbƒgŠÔ?Ú ‚Q‚SƒrƒbƒgƒJƒ‰?[ */
#define	    EGX_PAL_RGB15	3	/* ƒpƒŒƒbƒg?A‚q‚f‚a?¬?Ý ‚P‚TƒrƒbƒgƒJƒ‰?[ */
#define	    EGX_PAL_RGB24	4	/* ƒpƒŒƒbƒg?A‚q‚f‚a?¬?Ý ‚Q‚SƒrƒbƒgƒJƒ‰?[ */

#define	    USE_EXVDP1		0
#define	    USE_DSPDMA		1

    extern  void gxFocus(FIXED , FIXED) ;
    extern  void gxCalcMode(Uint16) ;
#define	    CALCNVECTOR		1	/* –@?ü?ÄŒvŽZ */
#define	    USENVECTOR		0	/* –@?üŽg—p */

#define	    NOSHADE		2	/* ƒVƒF?[ƒfƒBƒ“ƒO‚È‚µ */
#define	    FLAT		4	/* ƒtƒ‰ƒbƒgƒVƒF?[ƒfƒBƒ“ƒO */
#define	    GOURAUD		8	/* ƒO?[ƒ??[ƒVƒF?[ƒfƒBƒ“ƒO */

    extern  void gxSetMaterial(Uint16 , Uint16 , Uint16 , Uint16 , Uint16) ;

#define	    EFUNC_LoadTrans	0x0c0c0c0c
#define	    EFUNC_FlashMatrix	0x10101010
#define	    EFUNC_BaseMatrix	0x11111111
#define	    EFUNC_PushMatrix	0x12121212
#define	    EFUNC_PopMatrix	0x13131313
#define	    EFUNE_Translate	0x14141414
#define	    EFUNE_Scale		0x15151515
#define	    EFUNE_RotX		0x16161616
#define	    EFUNE_RotY		0x17171717
#define	    EFUNE_RotZ		0x18181818
#define	    EFUNE_MultiMatrix	0x19191919
#define	    EFUNC_RotLight	0x1a1a1a1a

    extern  void gxFuncOut(Uint32) ;
    extern  void gxFuncOut2(Uint32 , Uint32) ;
    extern  void gxFuncOut3(Uint32 , Uint32 , Uint32 , Uint32) ;
#define	    gxFlashMatrix()	gxFuncOut(EFUNC_FlashMatrix)
#define	    gxBaseMatrix()	gxFuncOut(EFUNC_BaseMatrix)
#define	    gxPushMatrix()	gxFuncOut(EFUNC_PushMatrix)
#define	    gxPopMatrix()	gxFuncOut(EFUNC_PopMatrix)
#define	    gxRotLight()	gxFuncOut(EFUNC_RotLight)

#define	    gxLoadTrans(x,y,z)	gxFuncOut3(EFUNC_LoadTrans , x , y , z)
#define	    gxTranslate(x,y,z)	gxFuncOut3(EFUNC_Translate , x , y , z)
#define	    gxScale(x,y,z)	gxFuncOut3(EFUNC_Scale , x , y , z)
#define	    gxRotX(ax)		gxFuncOut2(EFUNC_RotX , ax)
#define	    gxRotY(ay)		gxFuncOut2(EFUNC_RotY , ay)
#define	    gxRotZ(az)		gxFuncOut2(EFUNC_RotZ , az)

    extern  void gxMatrixOut(Uint32 , MATRIX) ;
#define	    gxLoadMatrix(mtrx)	gxMatrixOut(EFUNC_LoadMatrix , mtrx)
#define	    gxMultiMatrix(mtrx)	gxMatrixOut(EFUNC_MultiMatrix , mtrx)

    extern  void gxPutPolygon(gxPDATA*) ;
#endif

/*  Peripheral control */

#define	SMPC_MASK_STE		0x80	/* ‚r‚d‚s‚s‚h‚l‚dŽÀ?s?Ïƒ}ƒXƒN		*/
#define	SMPC_MASK_RESD		0x40	/* ƒŠƒZƒbƒgƒCƒl?[ƒuƒ‹ƒ}ƒXƒN		*/
#define	SMPC_MASK_WEEK		0xf0	/* ‚q‚s‚b—j“úƒ}ƒXƒN			*/
#define	SMPC_MASK_MONTH		0x0f	/* ‚q‚s‚bŒŽƒ}ƒXƒN			*/
#define	SMPC_MASK_CTG1		0x02	/* ƒJ?[ƒgƒŠƒbƒWƒR?[ƒh‚P			*/
#define	SMPC_MASK_CTG0		0x01	/* ƒJ?[ƒgƒŠƒbƒWƒR?[ƒh‚O			*/
#define	SMPC_MASK_DOTSEL	0x4000	/* ‚c‚n‚s‚r‚d‚k?M?†			*/
#define	SMPC_MASK_MSHNMI	0x0800	/* ‚l‚r‚g‚m‚l‚h?M?†			*/
#define	SMPC_MASK_SYSRES	0x0200	/* ‚r‚x‚r‚q‚d‚r?M?†			*/
#define	SMPC_MASK_SNDRES	0x0100	/* ‚r‚m‚c‚q‚d‚r?M?†			*/
#define	SMPC_MASK_CDRES		0x0040	/* ‚b‚c‚q‚d‚r?M?†			*/

#define	SMPC_SUN	(0 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?i“ú—j“ú?j		*/
#define	SMPC_MON	(1 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?iŒŽ—j“ú?j		*/
#define	SMPC_TUE	(2 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?i‰Î—j“ú?j		*/
#define	SMPC_WED	(3 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?i?…—j“ú?j		*/
#define	SMPC_THU	(4 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?i–Ø—j“ú?j		*/
#define	SMPC_FRI	(5 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?i‹à—j“ú?j		*/
#define	SMPC_SAT	(6 << 4)	/* ‚q‚s‚b—j“ú”Ô?†?i“y—j“ú?j		*/

#define	PER_RESULT_MAX		30	/* ?Å‘åƒyƒŠƒtƒFƒ‰ƒ‹?”			*/

#define	PER_ID_StnPad		0x02	/* ƒTƒ^?[ƒ“•W?€ƒpƒbƒh			*/
#define	PER_ID_StnLacing	0x13	/* ƒTƒ^?[ƒ“ƒŒ?[ƒVƒ“ƒOƒRƒ“ƒgƒ??[ƒ‰?[	*/
#define	PER_ID_StnAnalog	0x15	/* ƒTƒ^?[ƒ“ƒAƒiƒ?ƒOƒWƒ‡ƒCƒXƒeƒBƒbƒN	*/
#define	PER_ID_StnMouse		0x23	/* ƒTƒ^?[ƒ“ƒ}ƒEƒX			*/
#define	PER_ID_StnShooting	0x25	/* ƒTƒ^?[ƒ“ƒVƒ…?[ƒeƒBƒ“ƒOƒRƒ“ƒgƒ??[ƒ‰?[ */
#define	PER_ID_StnKeyBoard	0x34	/* ƒTƒ^?[ƒ“ƒL?[ƒ{?[ƒh			*/
#define	PER_ID_MD3BtnPad	0xe1	/* ƒ?ƒKƒhƒ‰ƒCƒu‚Rƒ{ƒ^ƒ“ƒpƒbƒh		*/
#define	PER_ID_MD6BtnPad	0xe2	/* ƒ?ƒKƒhƒ‰ƒCƒu‚Uƒ{ƒ^ƒ“ƒpƒbƒh		*/
#define	PER_ID_ShuttleMouse	0xe3	/* ƒVƒƒƒgƒ‹ƒ}ƒEƒX			*/
#define	PER_ID_ExtDigital	0x00	/* Šg’£ƒTƒCƒYƒfƒWƒ^ƒ‹ƒfƒoƒCƒX		*/
#define	PER_ID_ExtAnalog	0x10	/* Šg’£ƒTƒCƒYƒAƒiƒ?ƒOƒfƒoƒCƒX		*/
#define	PER_ID_ExtPointing	0x20	/* Šg’£ƒTƒCƒYƒ|ƒCƒ“ƒeƒBƒ“ƒOƒfƒoƒCƒX	*/
#define	PER_ID_ExtKeyBoard	0x30	/* Šg’£ƒTƒCƒYƒL?[ƒ{?[ƒhƒfƒoƒCƒX		*/
#define	PER_ID_ExtMegaDrive	0xe0	/* Šg’£ƒTƒCƒYƒ?ƒKƒhƒ‰ƒCƒuƒfƒoƒCƒX	*/
#define	PER_ID_NotConnect	0xff	/* –¢?Ú‘±				*/

					/* ƒfƒWƒ^ƒ‹ƒfƒoƒCƒX			*/
#define	PER_DGT_KR	(1 << 15)	/* Right Key				*/
#define	PER_DGT_KL	(1 << 14)	/*  Left Key				*/
#define	PER_DGT_KD	(1 << 13)	/*  Down Key				*/
#define	PER_DGT_KU	(1 << 12)	/*    Up Key				*/
#define	PER_DGT_ST	(1 << 11)	/* Start				*/
#define	PER_DGT_TA	(1 << 10)	/* A Trigger				*/
#define	PER_DGT_TC	(1 <<  9)	/* C Trigger				*/
#define	PER_DGT_TB	(1 <<  8)	/* B Trigger				*/
#define	PER_DGT_TR	(1 <<  7)	/* R Trigger				*/
#define	PER_DGT_TX	(1 <<  6)	/* X Trigger				*/
#define	PER_DGT_TY	(1 <<  5)	/* Y Trigger				*/
#define	PER_DGT_TZ	(1 <<  4)	/* Z Trigger				*/
#define	PER_DGT_TL	(1 <<  3)	/* L Trigger				*/

					/* ƒL?[ƒ{?[ƒhƒfƒoƒCƒX			*/
#define	PER_KBD_CL	(1 << 6)	/* Caps Lock				*/
#define	PER_KBD_NL	(1 << 5)	/* Num Lock				*/
#define	PER_KBD_SL	(1 << 4)	/* Scroll Lock				*/
#define	PER_KBD_MK	(1 << 3)	/* Make					*/
#define	PER_KBD_BR	(1 << 0)	/* Break				*/

enum SmpcSelect {			/* ‚r‚l‚o‚b“ü?o—ÍƒZƒŒƒNƒgƒ‚?[ƒh		*/
	SMPC_SH2_DIRECT,		/* (00) ‚r‚g‚Qƒ_ƒCƒŒƒNƒg		*/
	SMPC_CONTROL			/* (01) ‚r‚l‚o‚bƒRƒ“ƒgƒ??[ƒ‹		*/
};

enum SmpcExtLatch {			/* ‚r‚l‚o‚bŠO•”ƒ‰ƒbƒ`“ü—Íƒ‚?[ƒh		*/
	SMPC_EXL_ENA,			/* (00) ŠO•”ƒ‰ƒbƒ`“ü—Í‹–‰Â		*/
	SMPC_EXL_DIS			/* (01) ŠO•”ƒ‰ƒbƒ`“ü—Í‹ÖŽ~		*/
};

enum SmpcResetButton {			/* ‚r‚l‚o‚bƒŠƒZƒbƒgƒ{ƒ^ƒ“?ó‘Ô		*/
	SMPC_RES_ON,			/* (00) ƒŠƒZƒbƒgƒ{ƒ^ƒ“‚n‚m		*/
	SMPC_RES_OFF			/* (01) ƒŠƒZƒbƒgƒ{ƒ^ƒ“‚n‚e‚e		*/
};

enum SmpcAreaCode {			/* ƒGƒŠƒAƒR?[ƒh				*/
	SMPC_AREA_RSV_0,		/* (00) Žg—p‹ÖŽ~			*/
	SMPC_AREA_JP,			/* (01) “ú–{’nˆæ			*/
	SMPC_AREA_AJ_NTSC,		/* (02) ƒAƒWƒA‚m‚s‚r‚b’nˆæ		*/
	SMPC_AREA_RSV_3,		/* (03) Žg—p‹ÖŽ~			*/
	SMPC_AREA_NA,			/* (04) –k•Ä’nˆæ			*/
	SMPC_AREA_SA_NTSC,		/* (05) ’†“ì•Ä‚m‚s‚r‚b’nˆæ		*/
	SMPC_AREA_KO,			/* (06) ŠØ?‘’nˆæ			*/
	SMPC_AREA_RSV_7,		/* (07) Žg—p‹ÖŽ~			*/
	SMPC_AREA_RSV_8,		/* (08) Žg—p‹ÖŽ~			*/
	SMPC_AREA_RSV_9,		/* (09) Žg—p‹ÖŽ~			*/
	SMPC_AREA_AJ_PAL,		/* (0a) ƒAƒWƒA‚o‚`‚k’nˆæ		*/
	SMPC_AREA_RSV_B,		/* (0b) Žg—p‹ÖŽ~			*/
	SMPC_AREA_EU_PAL,		/* (0c) ƒˆ?[ƒ?ƒbƒp‚o‚`‚k’nˆæ		*/
	SMPC_AREA_SA_PAL,		/* (0d) ’†“ì•Ä‚o‚`‚k’nˆæ		*/
	SMPC_AREA_RSV_E,		/* (0e) Žg—p‹ÖŽ~			*/
	SMPC_AREA_RSV_F			/* (0f) Žg—p‹ÖŽ~			*/
};

enum SmpcOptimize {			/* Žæ“¾ŽžŠÔ?Å“K‰»ƒ‚?[ƒh			*/
	SMPC_OPT_DIS,			/* (00) Žæ“¾ŽžŠÔ?Å“K‰»‹ÖŽ~		*/
	SMPC_OPT_ENA			/* (01) Žæ“¾ŽžŠÔ?Å“K‰»‹–‰Â		*/
};

enum SmpcPortMode {			/* ‚r‚l‚o‚bƒ|?[ƒgƒ‚?[ƒh			*/
	SMPC_PORT_15,			/* (00) ‚P‚TƒoƒCƒgƒ‚?[ƒh		*/
	SMPC_PORT_255,			/* (01) ‚Q‚T‚TƒoƒCƒgƒ‚?[ƒh		*/
	SMPC_PORT_RSV,			/* (02) ?Ý’è‹ÖŽ~			*/
	SMPC_PORT_ZERO			/* (03) ‚OƒoƒCƒgƒ‚?[ƒh			*/
};

enum SmpcLanguage {			/* ‚r‚l‚o‚bƒ?ƒ‚ƒŠŒ¾Œê”Ô?†		*/
	SMPC_ENGLISH,			/* (00) ‰pŒê				*/
	SMPC_DEUTSCH,			/* (01) ƒhƒCƒcŒê			*/
	SMPC_FRANCAIS,			/* (02) ƒtƒ‰ƒ“ƒXŒê			*/
	SMPC_ESPANOL,			/* (03) ƒXƒyƒCƒ“Œê			*/
	SMPC_ITALIANO,			/* (04) ƒCƒ^ƒŠƒAŒê			*/
	SMPC_JAPAN			/* (05) “ú–{Œê				*/
};

enum SmpcSoundEffect {			/* ‚r‚l‚o‚bƒ?ƒ‚ƒŠŒø‰Ê‰¹ƒ‚?[ƒh		*/
	SMPC_EFFECT_OFF,		/* (00) Œø‰Ê‰¹‚n‚e‚e			*/
	SMPC_EFFECT_ON			/* (01) Œø‰Ê‰¹‚n‚m			*/
};

enum SmpcSoundOutput {			/* ‚r‚l‚o‚bƒ?ƒ‚ƒŠ‰¹?º?o—Íƒ‚?[ƒh		*/
	SMPC_SOUND_MONO,		/* (00) ƒ‚ƒmƒ‰ƒ‹			*/
	SMPC_SOUND_STEREO		/* (01) ƒXƒeƒŒƒI			*/
};

enum SmpcHelpWindow {			/* ‚r‚l‚o‚bƒ?ƒ‚ƒŠƒwƒ‹ƒvƒEƒBƒ“ƒhƒEƒ‚?[ƒh	*/
	SMPC_HELP_DIS,			/* (00) •\Ž¦‚µ‚È‚¢			*/
	SMPC_HELP_ENA			/* (01) •\Ž¦‚·‚é			*/
};

enum SmpcMonth {			/* ‚q‚s‚bŒŽ”Ô?†				*/
	SMPC_DMY,			/* (00) ƒ_ƒ~?[				*/
	SMPC_JAN,			/* (01) ?@‚PŒŽ				*/
	SMPC_FEB,			/* (02) ?@‚QŒŽ				*/
	SMPC_MAR,			/* (03) ?@‚RŒŽ				*/
	SMPC_APR,			/* (04) ?@‚SŒŽ				*/
	SMPC_MAY,			/* (05) ?@‚TŒŽ				*/
	SMPC_JUN,			/* (06) ?@‚UŒŽ				*/
	SMPC_JUL,			/* (07) ?@‚VŒŽ				*/
	SMPC_AUG,			/* (08) ?@‚WŒŽ				*/
	SMPC_SEP,			/* (09) ?@‚XŒŽ				*/
	SMPC_OCT,			/* (0a) ‚P‚OŒŽ				*/
	SMPC_NOV,			/* (0b) ‚P‚PŒŽ				*/
	SMPC_DEC			/* (0c) ‚P‚QŒŽ				*/
};

enum SmpcCommand {			/* ‚r‚l‚o‚bƒRƒ}ƒ“ƒh”Ô?†			*/
	SMPC_MSHON,			/* (00) ƒ}ƒXƒ^?@‚r‚g‚Q?@‚n‚m		*/
	SMPC_SSHON,			/* (01) ƒXƒŒ?[ƒu?@‚r‚g‚Q?@‚n‚m		*/
	SMPC_SSHOFF,			/* (02) ƒXƒŒ?[ƒu?@‚r‚g‚Q?@‚n‚e‚e	*/
	SMPC_SNDON,			/* (03) ƒTƒEƒ“ƒh?@‚n‚m			*/
	SMPC_SNDOFF,			/* (04) ƒTƒEƒ“ƒh?@‚n‚e‚e		*/
	SMPC_CDON,			/* (05) ‚b‚c?@‚n‚m			*/
	SMPC_CDOFF,			/* (06) ‚b‚c?@‚n‚e‚e			*/
	SMPC_SYSRES,			/* (07) ƒVƒXƒeƒ€‘S‘ÌƒŠƒZƒbƒg		*/
	SMPC_CKC352,			/* (08) ƒNƒ?ƒbƒNƒ`ƒFƒ“ƒW‚R‚T‚Qƒ‚?[ƒh	*/
	SMPC_CKC320,			/* (09) ƒNƒ?ƒbƒNƒ`ƒFƒ“ƒW‚R‚Q‚Oƒ‚?[ƒh	*/
	SMPC_NMIREQ,			/* (0a) ‚m‚l‚hƒŠƒNƒGƒXƒg		*/
	SMPC_RESENA,			/* (0b) ƒŠƒZƒbƒgƒCƒl?[ƒuƒ‹		*/
	SMPC_RESDIS,			/* (0c) ƒŠƒZƒbƒgƒfƒBƒXƒG?[ƒuƒ‹		*/
	SMPC_GETSTS,			/* (0d) ƒXƒe?[ƒ^ƒXŽæ“¾			*/
	SMPC_GETPER,			/* (0e) ƒyƒŠƒtƒFƒ‰ƒ‹Žæ“¾		*/
	SMPC_SETMEM,			/* (0f) ‚r‚l‚o‚bƒ?ƒ‚ƒŠ?Ý’è		*/
	SMPC_SETTIM,			/* (10) Žž???Ý’è			*/
	SMPC_CMDMAX			/* (11) ƒRƒ}ƒ“ƒh”Ô?†?Å‘å’l		*/
};

enum SmpcWaitMode {			/* ‚r‚l‚o‚bƒRƒ}ƒ“ƒhŽÀ?sƒ‚?[ƒh		*/
	SMPC_NO_WAIT,			/* (00) ƒRƒ}ƒ“ƒhŽÀ?s?I—¹‘Ò‚¿–³‚µ	*/
	SMPC_WAIT			/* (01) ƒRƒ}ƒ“ƒhŽÀ?s?I—¹‘Ò‚¿—L‚è	*/
};

typedef struct {			/* ‚q‚s‚bŽž??				*/
	Uint16	year;			/* ?¼—ï”N?†				*/
	Uint8	month;			/* —j“ú?EŒŽ				*/
	Uint8	date;			/* “ú					*/
	Uint8	hour;			/* Žž					*/
	Uint8	minute;			/* •ª					*/
	Uint8	second;			/* •b					*/
	Uint8	dummy;			/* ƒ_ƒ~?[				*/
} SmpcDateTime;

typedef struct {			/* ‚r‚l‚o‚bƒXƒe?[ƒ^ƒX			*/
	Uint8	cond;			/* ?ó‘ÔƒXƒe?[ƒ^ƒX			*/
	Uint8	dummy1;			/* ƒ_ƒ~?[‚P				*/
	Uint16	dummy2;			/* ƒ_ƒ~?[‚Q				*/
	SmpcDateTime	rtc;		/* ‚q‚s‚bŽž??				*/
	Uint8	ctg;			/* ƒJ?[ƒgƒŠƒbƒWƒR?[ƒh			*/
	Uint8	area;			/* ƒGƒŠƒAƒR?[ƒh				*/
	Uint16	system;			/* ƒVƒXƒeƒ€ƒXƒe?[ƒ^ƒX			*/
	Uint32	smem;			/* ‚r‚l‚o‚bƒ?ƒ‚ƒŠ•ÛŽ?ƒf?[ƒ^		*/
} SmpcStatus;

typedef struct {			/* ƒfƒWƒ^ƒ‹ƒfƒoƒCƒX			*/
	Uint8	id;			/* ƒyƒŠƒtƒFƒ‰ƒ‹‚h‚c			*/
	Uint8	ext;			/* Šg’£ƒf?[ƒ^ƒTƒCƒY			*/
	Uint16	data;			/* ƒ{ƒ^ƒ“Œ»?Ýƒf?[ƒ^			*/
	Uint16	push;			/* ƒ{ƒ^ƒ“‰Ÿ‰ºƒf?[ƒ^			*/
	Uint16	pull;			/* ƒ{ƒ^ƒ“ˆø?ãƒf?[ƒ^			*/
	Uint32	dummy2[4];		/* ƒ_ƒ~?[‚Q				*/
} PerDigital;

typedef struct {			/* ƒAƒiƒ?ƒOƒfƒoƒCƒX			*/
	Uint8	id;			/* ƒyƒŠƒtƒFƒ‰ƒ‹‚h‚c			*/
	Uint8	ext;			/* Šg’£ƒf?[ƒ^ƒTƒCƒY			*/
	Uint16	data;			/* ƒ{ƒ^ƒ“Œ»?Ýƒf?[ƒ^			*/
	Uint16	push;			/* ƒ{ƒ^ƒ“‰Ÿ‰ºƒf?[ƒ^			*/
	Uint16	pull;			/* ƒ{ƒ^ƒ“ˆø?ãƒf?[ƒ^			*/
	Uint8	x;			/* ‚wŽ²ƒf?[ƒ^?â‘Î’l			*/
	Uint8	y;			/* ‚xŽ²ƒf?[ƒ^?â‘Î’l			*/
	Uint8	z;			/* ‚yŽ²ƒf?[ƒ^?â‘Î’l			*/
	Uint8	dummy1;			/* ƒ_ƒ~?[‚P				*/
	Uint32	dummy2[3];		/* ƒ_ƒ~?[‚Q				*/
} PerAnalog;

typedef struct {			/* ƒ|ƒCƒ“ƒeƒBƒ“ƒOƒfƒoƒCƒX		*/
	Uint8	id;			/* ƒyƒŠƒtƒFƒ‰ƒ‹‚h‚c			*/
	Uint8	ext;			/* Šg’£ƒf?[ƒ^ƒTƒCƒY			*/
	Uint16	data;			/* ƒ{ƒ^ƒ“Œ»?Ýƒf?[ƒ^			*/
	Uint16	push;			/* ƒ{ƒ^ƒ“‰Ÿ‰ºƒf?[ƒ^			*/
	Uint16	pull;			/* ƒ{ƒ^ƒ“ˆø?ãƒf?[ƒ^			*/
	Uint16	x;			/* ‚w?À•W				*/
	Uint16	y;			/* ‚x?À•W				*/
	Uint32	dummy2[3];		/* ƒ_ƒ~?[‚Q				*/
} PerPoint;

typedef struct {			/* ƒL?[ƒ{?[ƒhƒfƒoƒCƒX			*/
	Uint8	id;			/* ƒyƒŠƒtƒFƒ‰ƒ‹‚h‚c			*/
	Uint8	ext;			/* Šg’£ƒf?[ƒ^ƒTƒCƒY			*/
	Uint16	data;			/* ƒ{ƒ^ƒ“Œ»?Ýƒf?[ƒ^			*/
	Uint16	push;			/* ƒ{ƒ^ƒ“‰Ÿ‰ºƒf?[ƒ^			*/
	Uint16	pull;			/* ƒ{ƒ^ƒ“ˆø?ãƒf?[ƒ^			*/
	Uint8	cond;			/* ?ó‘Ôƒf?[ƒ^				*/
	Uint8	code;			/* ƒL?[ƒR?[ƒh				*/
	Uint16	dummy1;			/* ƒ_ƒ~?[‚P				*/
	Uint32	dummy2[3];		/* ƒ_ƒ~?[‚Q				*/
} PerKeyBoard;

extern	Uint8	slGetPortDir1(void);
extern	Uint8	slGetPortDir2(void);
extern	Bool	slSetPortDir1(Uint8);
extern	Bool	slSetPortDir2(Uint8);

extern	Uint8	slGetPortData1(void);
extern	Uint8	slGetPortData2(void);
extern	void	slSetPortData1(Uint8);
extern	void	slSetPortData2(Uint8);

extern	Uint8	slGetPortSelect1(void);
extern	Uint8	slGetPortSelect2(void);
extern	Bool	slSetPortSelect1(Uint8);
extern	Bool	slSetPortSelect2(Uint8);

extern	Uint8	slGetPortExt1(void);
extern	Uint8	slGetPortExt2(void);
extern	Bool	slSetPortExt1(Uint8);
extern	Bool	slSetPortExt2(Uint8);

extern	Uint8	slGetLanguage(void);
extern	void	slSetLanguage(Uint8);

extern	Uint8	slGetSoundEffect(void);
extern	void	slSetSoundEffect(Uint8);

extern	Uint8	slGetSoundOutput(void);
extern	void	slSetSoundOutput(Uint8);

extern	Uint8	slGetHelpWindow(void);
extern	void	slSetHelpWindow(Uint8);

extern	void	slInitPeripheral(void);
extern	Bool	slSetResultBuffer(Uint8*, PerDigital*, Uint16);

extern	Bool	slIntBackCancel(void);
extern	Uint8	slCheckReset(void);
extern	Bool	slClearReset(void);

extern	Uint8	slGetOptimize(void);
extern	Bool	slSetOptimize(Uint8);

extern	Uint8	slGetPortMode1(void);
extern	Uint8	slGetPortMode2(void);
extern	Bool	slSetPortMode1(Uint8);
extern	Bool	slSetPortMode2(Uint8);

extern	Bool	slRequestCommand(Uint8, Uint8);

extern	SmpcStatus*	Smpc_Status;
extern	PerDigital*	Smpc_Peripheral;
extern	Uint8		Per_Connect1, Per_Connect2;

#ifdef  TITAN
typedef struct {                        /* System Switch */
        Uint8   dummy ;
        Uint8   data ;
        Uint8   push ;
        Uint8   pull ;
} SysSwitch ;

    extern  PerDigital  PerDigitalBuf[4] ;
    extern  SysSwitch   SystemSwitchBuf ;

#define     _ServiceSw          0x80    /* Šî”Õ?ã‚ÌƒXƒCƒbƒ`‚Æ‚i‚`‚l‚l‚`“ü—Í‚Ì ‚n‚q‚µ‚½‚à‚Ì */
#define     _TestSw             0x40
#define     _ServiceSwBD        0x20    /* Šî”Õ?ã‚Ìƒ^ƒNƒgƒXƒCƒbƒ` */
#define     _TestSwBD           0x10
#define     _ServiceSwJM        0x08    /* ‚i‚`‚l‚l‚`ƒRƒlƒNƒ^‚©‚ç‚ÌƒXƒCƒbƒ`“ü—Í */
#define     _TestSwJM           0x04
#define     _Coin2              0x02
#define     _Coin1              0x01
#endif

#ifdef  ST_V
    extern  PerDigital	PerDigitalBuf[4] ;
#endif
#ifdef  ST_VE
    extern  PerDigital	PerDigitalBuf[4] ;
#endif

#define	slMasterOn()			slRequestCommand(SMPC_MSHON , SMPC_NO_WAIT)
#define	slSlaveOn()			slRequestCommand(SMPC_SSHON , SMPC_NO_WAIT)
#define	slSlaveOff()			slRequestCommand(SMPC_SSHOFF, SMPC_NO_WAIT)

#ifdef TITAN
    extern void slSoundOn() ;
    extern void slSoundOff() ;
#else
#define	slSoundOn()		slRequestCommand(SMPC_SNDON , SMPC_NO_WAIT)
#define	slSoundOff()		slRequestCommand(SMPC_SNDOFF, SMPC_NO_WAIT)
#endif

#define	slCDOn()			slRequestCommand(SMPC_CDON  , SMPC_NO_WAIT)
#define	slCDOff()			slRequestCommand(SMPC_CDOFF , SMPC_NO_WAIT)
#define	slSystemReset()			slRequestCommand(SMPC_SYSRES, SMPC_NO_WAIT)
#define	slClockChange352()		slRequestCommand(SMPC_CKC352, SMPC_NO_WAIT)
#define	slClockChange320()		slRequestCommand(SMPC_CKC320, SMPC_NO_WAIT)
#define	slNMIRequest()			slRequestCommand(SMPC_NMIREQ, SMPC_NO_WAIT)
#define	slResetEnable()			slRequestCommand(SMPC_RESENA, SMPC_NO_WAIT)
#define	slResetDisable()		slRequestCommand(SMPC_RESDIS, SMPC_NO_WAIT)
#define	slGetStatus()			slRequestCommand(SMPC_GETSTS, SMPC_NO_WAIT)
#define	slGetPeripheral()		slRequestCommand(SMPC_GETPER, SMPC_NO_WAIT)
#define	slSetSmpcMemory()		slRequestCommand(SMPC_SETMEM, SMPC_NO_WAIT)
#define	slSetDateTime()			slRequestCommand(SMPC_SETTIM, SMPC_NO_WAIT)

#define	slMasterOnWait()		slRequestCommand(SMPC_MSHON , SMPC_WAIT)
#define	slSlaveOnWait()			slRequestCommand(SMPC_SSHON , SMPC_WAIT)
#define	slSlaveOffWait()		slRequestCommand(SMPC_SSHOFF, SMPC_WAIT)
#define	slSoundOnWait()			slRequestCommand(SMPC_SNDON , SMPC_WAIT)
#define	slSoundOffWait()		slRequestCommand(SMPC_SNDOFF, SMPC_WAIT)
#define	slCDOnWait()			slRequestCommand(SMPC_CDON  , SMPC_WAIT)
#define	slCDOffWait()			slRequestCommand(SMPC_CDOFF , SMPC_WAIT)
#define	slNMIRequestWait()		slRequestCommand(SMPC_NMIREQ, SMPC_WAIT)
#define	slResetEnableWait()		slRequestCommand(SMPC_RESENA, SMPC_WAIT)
#define	slResetDisableWait()		slRequestCommand(SMPC_RESDIS, SMPC_WAIT)
#define	slSetSmpcMemoryWait()		slRequestCommand(SMPC_SETMEM, SMPC_WAIT)
#define	slSetDateTimeWait()		slRequestCommand(SMPC_SETTIM, SMPC_WAIT)

/*  Event library	*/

    extern void    slInitEvent(void) ;
    extern EVENT  *slGetEvent(void) ;
    extern void    slReturnEvent(EVENT *) ;
    extern EVENT  *slSetEvent(void (*func)()) ;
    extern void    slCloseEvent(EVENT *) ;
    extern EVENT  *slSetEventNext(EVENT * , void (*func)()) ;
    extern void    slExecuteEvent(void) ;
    extern WORK   *slGetWork(void) ;
    extern void    slReturnWork(WORK *) ;

/*  DMA control */

    extern void    slDMACopy(void * , void * , Uint32) ;
    extern void    slDMAXCopy(void * , void * , Uint32 , Uint16) ;
    extern void    slDMAWait() ;
    extern Bool    slDMAStatus() ;

/* DMA control with SBL */

/*
 * GLOBAL DEFINES/MACROS DEFINES
 */

/* ’è?”(CPU-DMA) */
/**** DMAƒŒƒWƒXƒ^ƒrƒbƒgˆÊ’u **************************************************/
/******** ƒ`ƒƒƒlƒ‹ƒRƒ“ƒgƒ??[ƒ‹ƒŒƒWƒXƒ^ ***************************************/
#define DMA_CHCR_DE     0       /* DMAƒCƒl?[ƒuƒ‹ƒrƒbƒg                       */
#define DMA_CHCR_TE     1       /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒGƒ“ƒhƒtƒ‰ƒOƒrƒbƒg            */
#define DMA_CHCR_IE     2       /* ƒCƒ“ƒ^ƒ‰ƒvƒgƒCƒl?[ƒuƒ‹ƒrƒbƒg              */
#define DMA_CHCR_TA     3       /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg          */
#define DMA_CHCR_TB     4       /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒoƒXƒ‚?[ƒhƒrƒbƒg              */
#define DMA_CHCR_DL     5       /* DREQƒŒƒxƒ‹ƒrƒbƒg?@?@                      */
#define DMA_CHCR_DS     6       /* DREQƒZƒŒƒNƒgƒrƒbƒg                        */
#define DMA_CHCR_AL     7       /* ƒAƒNƒmƒŠƒbƒWƒŒƒxƒ‹ƒrƒbƒg                  */
#define DMA_CHCR_AM     8       /* ƒAƒNƒmƒŠƒbƒW/ƒgƒ‰ƒ“ƒXƒtƒ@ƒ‚?[ƒhƒrƒbƒg     */
#define DMA_CHCR_AR     9       /* ƒI?[ƒgƒŠƒNƒGƒXƒgƒrƒbƒg                    */
#define DMA_CHCR_TS     10      /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒTƒCƒYƒrƒbƒg                  */
#define DMA_CHCR_SM     12      /* ƒ\?[ƒXƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg                */
#define DMA_CHCR_DM     14      /* ƒfƒBƒXƒeƒBƒl?[ƒVƒ‡ƒ“ƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg  */
/******** DMAƒIƒyƒŒ?[ƒVƒ‡ƒ“ƒŒƒWƒXƒ^ ******************************************/
#define DMA_DMAOR_DME   0               /* DMAƒ}ƒXƒ^ƒCƒl?[ƒuƒ‹ƒrƒbƒg         */
#define DMA_DMAOR_NMIF  1               /* NMIƒtƒ‰ƒOƒrƒbƒg                   */
#define DMA_DMAOR_AE    2               /* ƒAƒhƒŒƒXƒGƒ‰?[ƒtƒ‰ƒOƒrƒbƒg        */
#define DMA_DMAOR_PR    3               /* ƒvƒ‰ƒCƒIƒŠƒeƒBƒ‚?[ƒhƒrƒbƒg        */

/*****************************************************************************/
/**** DMAƒ`ƒƒƒlƒ‹ ************************************************************/
/*****************************************************************************/
#define DMA_CPU_CH0 0                           /* ƒ`ƒƒƒlƒ‹0                 */
#define DMA_CPU_CH1 1                           /* ƒ`ƒƒƒlƒ‹1                 */

/**** (DmaCpuComPrm)‹¤’Ê“]‘—ƒpƒ‰ƒ??[ƒ^ ***************************************/
/******** (pr)ƒvƒ‰ƒCƒIƒŠƒeƒBƒ‚?[ƒh  ******************************************/
#define DMA_CPU_FIX (0 << DMA_DMAOR_PR)         /* —D?æ?‡ˆÊ‚ÍŒÅ’è            */
#define DMA_CPU_ROR (1 << DMA_DMAOR_PR)         /* —D?æ?‡ˆÊ‚Íƒ‰ƒEƒ“ƒhƒ?ƒrƒ“- */
                                                /* ‚É‚æ‚é                    */
/******** (dme)DMAƒ}ƒXƒ^ƒCƒl?[ƒuƒ‹ *******************************************/
#define DMA_CPU_DIS     (0 << DMA_DMAOR_DME)    /* ‘Sƒ`ƒƒƒlƒ‹‚ÌDMA“]‘—‚ð‹ÖŽ~ */
#define DMA_CPU_ENA     (1 << DMA_DMAOR_DME)    /* ‘Sƒ`ƒƒƒlƒ‹‚ÌDMA“]‘—‚ð‹–‰Â */
/******** (msk)ƒ}ƒXƒNƒrƒbƒg **************************************************/
#define DMA_CPU_M_PR    (1 << 0)                /* ƒvƒ‰ƒCƒIƒŠƒeƒBƒ‚?[ƒh?@?@  */
#define DMA_CPU_M_AE    (1 << 1)                /* ƒAƒhƒŒƒXƒGƒ‰?[ƒtƒ‰ƒO?@?@  */
#define DMA_CPU_M_NMIF  (1 << 2)                /* NMIƒtƒ‰ƒO           ?@?@  */
#define DMA_CPU_M_DME   (1 << 3)                /* DMAƒ}ƒXƒ^ƒCƒl?[ƒuƒ‹ ?@?@  */

/**** (DmaCpuPrm)“]‘—ƒpƒ‰ƒ??[ƒ^ **********************************************/
/******** (dm)ƒfƒBƒXƒeƒBƒl?[ƒVƒ‡ƒ“ƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg ***********************/
/******** (sm)ƒ\?[ƒXƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg *************************************/
#define DMA_CPU_AM_NOM  0x0                    /* ŒÅ’è                      */
#define DMA_CPU_AM_ADD  0x1                    /* ‘?‰Á                      */
#define DMA_CPU_AM_SUB  0x2                    /* Œ¸?­                      */
/******** (ts)ƒgƒ‰ƒ“ƒXƒtƒ@ƒTƒCƒY *********************************************/
#define DMA_CPU_1   (0 << DMA_CHCR_TS)          /* ƒoƒCƒg’PˆÊ                */
#define DMA_CPU_2   (1 << DMA_CHCR_TS)          /* ƒ??[ƒh(2ƒoƒCƒg)’PˆÊ       */
#define DMA_CPU_4   (2 << DMA_CHCR_TS)          /* ƒ?ƒ“ƒOƒ??[ƒh(4ƒoƒCƒg)’PˆÊ */
#define DMA_CPU_16  (3 << DMA_CHCR_TS)          /* 16ƒoƒCƒg“]‘—              */
/******** (ar)ƒI?[ƒgƒŠƒNƒGƒXƒgƒ‚?[ƒh *****************************************/
#define DMA_CPU_MOD     (0 << DMA_CHCR_AR)      /* ƒ‚ƒWƒ…?[ƒ‹ƒŠƒNƒGƒXƒg      */
#define DMA_CPU_AUTO    (1 << DMA_CHCR_AR)      /* ƒI?[ƒgƒŠƒNƒGƒXƒg          */
/******** (ie)ƒCƒ“ƒ^ƒ‰ƒvƒgƒCƒl?[ƒuƒ‹ *****************************************/
#define DMA_CPU_INT_ENA (1 << DMA_CHCR_IE)      /* Š„‚è?ž‚Ý—v‹?‚ð‹–‰Â        */
#define DMA_CPU_INT_DIS (0 << DMA_CHCR_IE)      /* Š„‚è?ž‚Ý—v‹?‚ð‹ÖŽ~(?‰Šú’l)*/
/******** (drcr)DMA—v‹??^‰ž“š‘I‘ð?§Œä ****************************************/
#if 0
#define DMA_CPU_DREQ    0x0                     /* DREQ(ŠO•”ƒŠƒNƒGƒXƒg)      */
/*
 *  DMA—v‹?‚ÉŠO•”ƒŠƒNƒGƒXƒg‚ðŽw’è‚·‚é‚Ì‚Í‹ÖŽ~('95-11/14 H.O)
 */
#endif
#define DMA_CPU_RXI     0x1                     /* RXI(“à‘ SCI‚ÌŽó?Mƒf?[ƒ^-  */
                                                /* ƒtƒ‹Š„‚è?ž‚Ý“]‘——v‹?)     */
#define DMA_CPU_TXI     0x2                     /* TXI(“à‘ SCI‚Ì‘—?Mƒf?[ƒ^-  */
                                                /* ƒGƒ“ƒvƒeƒBŠ„‚è?ž‚Ý“]‘——v‹?*/
/******** (msk)ƒ}ƒXƒNƒrƒbƒg **************************************************/
#define DMA_CPU_M_SAR   (1 << 0)                /* DMAƒ\?[ƒXƒAƒhƒŒƒX         */
#define DMA_CPU_M_DAR   (1 << 1)                /* DMAƒfƒBƒXƒeƒBƒl?[ƒVƒ‡ƒ“-  */
                                                /* ƒAƒhƒŒƒX                  */
#define DMA_CPU_M_TCR   (1 << 2)                /* DMAƒgƒ‰ƒ“ƒXƒtƒ@ƒJƒEƒ“ƒg   */
#define DMA_CPU_M_DM    (1 << 3)                /* DMAƒfƒBƒXƒeƒBƒl?[ƒVƒ‡ƒ“-  */
                                                /* ƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg      */
#define DMA_CPU_M_SM    (1 << 4)                /* DMAƒ\?[ƒXƒAƒhƒŒƒXƒ‚?[ƒh-  */
                                                /* ƒrƒbƒg                    */
#define DMA_CPU_M_TS    (1 << 5)                /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒTƒCƒY        */
#define DMA_CPU_M_AR    (1 << 6)                /* ƒI?[ƒgƒŠƒNƒGƒXƒgƒ‚?[ƒh    */
#define DMA_CPU_M_IE    (1 << 7)                /* ƒCƒ“ƒ^ƒ‰ƒvƒgƒCƒl?[ƒuƒ‹    */
#define DMA_CPU_M_DRCR  (1 << 8)                /* DMA—v‹??^‰ž“š‘I‘ð?§Œä     */
#define DMA_CPU_M_TE    (1 << 9)                /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒGƒ“ƒhƒtƒ‰ƒO  */

/**** (DmaCpuComStatus)‹¤’ÊƒXƒe?[ƒ^ƒX ****************************************/
/******** (ae)ƒAƒhƒŒƒXƒGƒ‰?[ƒtƒ‰ƒO *******************************************/
#define DMA_CPU_ADR_ERR     (1 << DMA_DMAOR_AE) /* DMAC‚É‚æ‚éƒAƒhƒŒƒXƒGƒ‰?[- */
                                                /* ”­?¶                      */
#define DMA_CPU_ADR_NO_ERR  (0 << DMA_DMAOR_AE) /* DMAC‚É‚æ‚éƒAƒhƒŒƒXƒGƒ‰?[- */
                                                /* ‚È‚µ                      */

/******** (nmif)NMIƒtƒ‰ƒO ****************************************************/
#define DMA_CPU_NMI_ON  (1 << DMA_DMAOR_NMIF)   /* NMIŠ„‚è?ž‚Ý”­?¶           */
#define DMA_CPU_NMI_OFF (0 << DMA_DMAOR_NMIF)   /* NMIŠ„‚è?ž‚Ý‚È‚µ           */

/**** (DmaCpuComStatus)‹¤’ÊƒXƒe?[ƒ^ƒX ****************************************/
#define DMA_CPU_TE_MV   (0 << DMA_CHCR_TE)      /* DMA“]‘—’†‚Ü‚½‚ÍDMA“]‘—’†’f*/
#define DMA_CPU_TE_SP   (1 << DMA_CHCR_TE)      /* DMA“]‘—?³?í?I—¹           */


typedef struct {
    Uint32 pr;                                  /* ƒvƒ‰ƒCƒIƒŠƒeƒBƒ‚?[ƒh      */
    Uint32 dme;                                 /* DMAƒ}ƒXƒ^ƒCƒl?[ƒuƒ‹       */
    Uint32 msk;                                 /* ƒ}ƒXƒNƒrƒbƒg              */
}DmaCpuComPrm;                                  /* ‹¤’Ê“]‘—ƒpƒ‰ƒ??[ƒ^        */

typedef struct {
    Uint32 sar;                                 /* DMAƒ\?[ƒXƒAƒhƒŒƒX         */
    Uint32 dar;                                 /* DMAƒfƒBƒXƒeƒBƒl?[ƒVƒ‡ƒ“-  */
                                                /* ƒAƒhƒŒƒX                  */
    Uint32 tcr;                                 /* DMAƒgƒ‰ƒ“ƒXƒtƒ@ƒJƒEƒ“ƒg   */
    Uint32 dm;                                  /* ƒfƒBƒXƒeƒBƒl?[ƒVƒ‡ƒ“ƒAƒh- */
                                                /* ƒŒƒXƒ‚?[ƒhƒrƒbƒg          */
    Uint32 sm;                                  /* ƒ\?[ƒXƒAƒhƒŒƒXƒ‚?[ƒhƒrƒbƒg*/
    Uint32 ts;                                  /* ƒgƒ‰ƒ“ƒXƒtƒ@ƒTƒCƒY        */
    Uint32 ar;                                  /* ƒI?[ƒgƒŠƒNƒGƒXƒgƒ‚?[ƒh    */
    Uint32 ie;                                  /* ƒCƒ“ƒ^ƒ‰ƒvƒgƒCƒl?[ƒuƒ‹    */
    Uint32 drcr;                                /* DMA—v‹??^‰ž“š‘I‘ð?§Œä     */
    Uint32 msk;                                 /* ƒ}ƒXƒNƒrƒbƒg              */
}DmaCpuPrm;                                     /* “]‘—ƒpƒ‰ƒ??[ƒ^            */

typedef struct {
    Uint32 ae;                                  /* ƒAƒhƒŒƒXƒGƒ‰?[ƒtƒ‰ƒO      */
    Uint32 nmif;                                /* NMIƒtƒ‰ƒO                 */
}DmaCpuComStatus;                               /* ‹¤’ÊƒXƒe?[ƒ^ƒX            */

typedef Uint32 DmaCpuStatus;                    /* ƒXƒe?[ƒ^ƒX                */

/* ’è?”(SCU-DMA) */
/*****************************************************************************/
/**** DMAƒ`ƒƒƒlƒ‹ ************************************************************/
/*****************************************************************************/
#define DMA_SCU_CH0 0x0                         /* ƒ`ƒƒƒlƒ‹0                 */
#define DMA_SCU_CH1 0x1                         /* ƒ`ƒƒƒlƒ‹1                 */
#define DMA_SCU_CH2 0x2                         /* ƒ`ƒƒƒlƒ‹2                 */

/**** DMAƒŒƒWƒXƒ^ƒrƒbƒgˆÊ’u **************************************************/
/******** ‰ÁŽZ’lƒŒƒWƒXƒ^ *****************************************************/
#define DMA_DXAD_DXRAD  8                       /* “Ç‚Ý?ž‚ÝƒAƒhƒŒƒX‰ÁŽZ’l    */
#define DMA_DXAD_DXWAD  0                       /* ?‘‚«?ž‚ÝƒAƒhƒŒƒX‰ÁŽZ’l    */
/******** DMA‹–‰ÂƒŒƒWƒXƒ^ ****************************************************/
#define DMA_DXEN_DXGO   0                       /* DMA‹N“®ƒrƒbƒg             */
#define DMA_DXEN_DXEN   8                       /* DMA‹–‰Âƒrƒbƒg             */
/******** DMAƒ‚?[ƒh?AƒAƒhƒŒƒX?X?V?A‹N“®—vˆöƒŒƒWƒXƒ^ **************************/
#define DMA_DXMD_DXMOD  24                      /* ƒ‚?[ƒhƒrƒbƒg              */
#define DMA_DXMD_DXRUP  16                      /* “Ç‚Ý?ž‚ÝƒAƒhƒŒƒX?X?Vƒrƒbƒg*/
#define DMA_DXMD_DXWUP   8                      /* ?‘‚«?o‚µƒAƒhƒŒƒX?X?Vƒrƒbƒg*/
#define DMA_DXMD_DXFT    0                      /* ‹N“®—vˆö‘I‘ðƒrƒbƒg        */


/*****************************************************************************/
/**** (DmaScuPrm)“]‘—ƒpƒ‰ƒ??[ƒ^ **********************************************/
/*****************************************************************************/
/******** (dxad_r)“Ç‚Ý?ž‚ÝƒAƒhƒŒƒX‰ÁŽZ’l *************************************/
#define DMA_SCU_R0  (0x0 << DMA_DXAD_DXRAD)     /* ‰ÁŽZ‚µ‚È‚¢                */
#define DMA_SCU_R4  (0x1 << DMA_DXAD_DXRAD)     /* 4ƒoƒCƒg‰ÁŽZ‚·‚é           */
/******** (dxad_w)?‘‚«?ž‚ÝƒAƒhƒŒƒX‰ÁŽZ’l *************************************/
#define DMA_SCU_W0     (0x0 << DMA_DXAD_DXWAD)  /* ‰ÁŽZ‚µ‚È‚¢                */
#define DMA_SCU_W2     (0x1 << DMA_DXAD_DXWAD)  /* 2ƒoƒCƒg‰ÁŽZ‚·‚é           */
#define DMA_SCU_W4     (0x2 << DMA_DXAD_DXWAD)  /* 4ƒoƒCƒg‰ÁŽZ‚·‚é           */
#define DMA_SCU_W8     (0x3 << DMA_DXAD_DXWAD)  /* 8ƒoƒCƒg‰ÁŽZ‚·‚é           */
#define DMA_SCU_W16    (0x4 << DMA_DXAD_DXWAD)  /* 16ƒoƒCƒg‰ÁŽZ‚·‚é          */
#define DMA_SCU_W32    (0x5 << DMA_DXAD_DXWAD)  /* 32ƒoƒCƒg‰ÁŽZ‚·‚é          */
#define DMA_SCU_W64    (0x6 << DMA_DXAD_DXWAD)  /* 64ƒoƒCƒg‰ÁŽZ‚·‚é          */
#define DMA_SCU_W128   (0x7 << DMA_DXAD_DXWAD)  /* 128ƒoƒCƒg‰ÁŽZ‚·‚é         */
/******** (dxmod)ƒ‚?[ƒhƒrƒbƒg ************************************************/
#define DMA_SCU_DIR    (0x0 << DMA_DXMD_DXMOD)  /* ’¼?Úƒ‚?[ƒh                */
#define DMA_SCU_IN_DIR (0x1 << DMA_DXMD_DXMOD)  /* ŠÔ?Úƒ‚?[ƒh                */
/******** (dxrup)“Ç‚Ý?ž‚ÝƒAƒhƒŒƒX?X?Vƒrƒbƒg **********************************/
/******** (dxwup)?‘‚«?o‚µƒAƒhƒŒƒX?X?Vƒrƒbƒg **********************************/
#define DMA_SCU_KEEP    0x0                     /* •ÛŽ?‚·‚é                  */
#define DMA_SCU_REN     0x1                     /* ?X?V‚·‚é                  */

/******** (dxft)‹N“®—vˆö‘I‘ðƒrƒbƒg *******************************************/
#define DMA_SCU_F_VBLK_IN  (0x0 << DMA_DXMD_DXFT)/* V-ƒuƒ‰ƒ“ƒN-IN            */
#define DMA_SCU_F_VBLK_OUT (0x1 << DMA_DXMD_DXFT)/* V-ƒuƒ‰ƒ“ƒN-OUT           */
#define DMA_SCU_F_HBLK_IN  (0x2 << DMA_DXMD_DXFT)/* H-ƒuƒ‰ƒ“ƒN-IN            */
#define DMA_SCU_F_TIM0     (0x3 << DMA_DXMD_DXFT)/* ƒ^ƒCƒ}0                  */
#define DMA_SCU_F_TIM1     (0x4 << DMA_DXMD_DXFT)/* ƒ^ƒCƒ}1                  */
#define DMA_SCU_F_SND      (0x5 << DMA_DXMD_DXFT)/* ƒTƒEƒ“ƒh-Req             */
#define DMA_SCU_F_SPR      (0x6 << DMA_DXMD_DXFT)/* ƒXƒvƒ‰ƒCƒg•`‰æ           */
#define DMA_SCU_F_DMA      (0x7 << DMA_DXMD_DXFT)/* DMA‹N“®—vˆöƒrƒbƒg‚ÌƒZƒbƒg*/
/******** (msk)ƒ}ƒXƒNƒrƒbƒg *************************************************/
#define DMA_SCU_M_DXR      (1 << 0)             /* “Ç‚Ý?ž‚ÝƒAƒhƒŒƒX          */
#define DMA_SCU_M_DXW      (1 << 1)             /* ?‘‚«?o‚µƒAƒhƒŒƒX          */

/*****************************************************************************/
/**** (DmaScuStatus)ƒXƒe?[ƒ^ƒX ***********************************************/
/*****************************************************************************/
/******** (dxbkr)DMA“®?ì’†ƒtƒ‰ƒO *********************************************/
/******** (ddmv)DSP‘¤DMA“®?ì’†ƒtƒ‰ƒO *****************************************/
#define DMA_SCU_MV      0x1                     /* “®?ì’†                    */
#define DMA_SCU_NO_MV   0x0                     /* “®?ì’†‚Å‚È‚¢              */

typedef struct {
    Uint32 dxr;                                 /* “Ç‚Ý?ž‚ÝƒAƒhƒŒƒX          */
    Uint32 dxw;                                 /* ?‘‚«?o‚µƒAƒhƒŒƒX          */
    Uint32 dxc;                                 /* “]‘—ƒoƒCƒg?”              */
    Uint32 dxad_r;                              /* “Ç‚Ý?ž‚ÝƒAƒhƒŒƒX‰ÁŽZ’l    */
    Uint32 dxad_w;                              /* ?‘‚«?ž‚ÝƒAƒhƒŒƒX‰ÁŽZ’l    */
    Uint32 dxmod;                               /* ƒ‚?[ƒhƒrƒbƒg              */
    Uint32 dxrup;                               /* “Ç‚Ý?ž‚ÝƒAƒhƒŒƒX?X?Vƒrƒbƒg*/
    Uint32 dxwup;                               /* ?‘‚«?ž‚ÝƒAƒhƒŒƒX?X?Vƒrƒbƒg*/
    Uint32 dxft;                                /* ‹N“®—vˆö‘I‘ðƒrƒbƒg        */
    Uint32 msk;                                 /* ƒ}ƒXƒNƒrƒbƒg              */
}DmaScuPrm;                                     /* “]‘—ƒpƒ‰ƒ??[ƒ^            */

typedef struct {
    Uint32 dxmv;                            /* DMA“®?ì’†ƒtƒ‰ƒO               */
}DmaScuStatus;                              /* ƒXƒe?[ƒ^ƒX                    */

    extern void    DMA_CpuSetComPrm(DmaCpuComPrm *) ;
    extern void    DMA_CpuSetPrm(DmaCpuPrm *, Uint32) ;
    extern void    DMA_CpuStart(Uint32) ;
    extern void    DMA_CpuStop(Uint32) ;
    extern void    DMA_CpuAllStop() ;
    extern void    DMA_CpuGetComStatus(DmaCpuComStatus *) ;
    extern DmaCpuStatus DMA_CpuGetStatus(Uint32) ;
    extern void    DMA_ScuSetPrm(DmaScuPrm *, Uint32) ;
    extern void    DMA_ScuStart(Uint32) ;
    extern void    DMA_ScuGetStatus(DmaScuStatus *, Uint32) ;

    extern void    DMA_ScuMemCopy(void *, void *, Uint32) ;
    extern Uint32  DMA_ScuResult() ;

    extern void    DMA_CpuMemCopy1(void *, void *, Uint32) ;
    extern void    DMA_CpuMemCopy2(void *, void *, Uint32) ;
    extern void    DMA_CpuMemCopy4(void *, void *, Uint32) ;
    extern void    DMA_CpuMemCopy16(void *, void *, Uint32) ;
    extern Uint32  DMA_CpuResult() ;

/*  Slave CPU control */
    extern void    slSlaveFunc(void (*func)() , void *) ;

/*  System library */
    extern  void   slInitSystem(Uint16 , TEXTURE * , Sint8) ;
    extern  void   slSetTVMode(Uint16) ;
    extern  void   slSetScrTVMode(Uint16) ;
    extern  void   slSetSprTVMode(Uint16) ;
    extern  Bool   slDynamicFrame(Uint16) ;
    extern  void   slSynch(void) ;
    extern  void   slInitSynch(void) ;
    extern  Bool   slTransferEntry(void * , void * , Uint16) ;
    extern  void   slIntFunction(void (*func)()) ;
    extern  void   slSynchFunction(void (*func)()) ;
    extern  void   SetCDFunc(void (*func)()) ;
    extern  void   slCashPurge() ;

/*  Sound library */
    extern  void   slInitSound(Uint8 * , Uint32 , Uint8 * , Uint32) ;
    extern  Bool   slBGMOn(Uint16 , Uint8 , Uint8 , Uint8) ;
    extern  Bool   slBGMPause() ;
    extern  Bool   slBGMCont() ;
    extern  Bool   slBGMOff() ;
    extern  Bool   slBGMFade(Uint8 , Uint8) ;
    extern  Bool   slBGMTempo(Sint16) ;
#define     slBGMStat()    slSequenceStat(0)
    extern  Bool   slSoundAllOff() ;
    extern  Bool   slSoundAllPause() ;
    extern  Bool   slSoundAllCont() ;
    extern  Bool   slDSPOff() ;
    extern  Bool   slSndVolume(Uint8) ;
    extern  Uint8  slSequenceOn(Uint16 , Uint8 , Uint8 , Sint8) ;
    extern  Bool   slSequenceOff(Uint8) ;
    extern  Bool   slSequenceFade(Uint8 , Uint8 , Uint8) ;
    extern  Bool   slSequenceTempo(Uint8 , Sint16) ;
    extern  Bool   slSequencePause(Uint8) ;
    extern  Bool   slSequenceCont(Uint8) ;
    extern  Bool   slSequencePan(Uint8 , Sint8) ;
    extern  Bool   slSequenceStat(Uint8) ;
    extern  Bool   slSequenceReset(Uint8) ;
    extern  void  *slSndMapChange(Uint8) ;
    extern  void   slWaitSound(void *) ;
    extern  Bool   slCDDAOn(Uint8 , Uint8 , Sint8 , Sint8) ;
    extern  Bool   slCDDAOff() ;
    extern  Sint8  slPCMOn(PCM * , void * , Uint32) ;
    extern  Bool   slPCMOff(PCM *) ;
    extern  Bool   slPCMParmChange(PCM *) ;
    extern  Bool   slPCMStat(PCM *) ;
    extern  Sint8  slSndPCMNum() ;
    extern  Uint8  slSndSeqNum() ;
    extern  Bool   slSndEffect(Uint8) ;
    extern  Bool   slSndMixChange(Uint8 , Uint8) ;
    extern  Bool   slSndMixParmChange(Uint8 , Uint8 , Sint8) ;
    extern  Sint8  slSoundRequest(const char*,...) ;
    extern  void   slSndFlush() ;

/*  Gouraud library */

    typedef Uint16 GOURAUDTBL[4];

    extern  void slInitGouraud( GOURAUDTBL *, Uint32, Uint32, Uint8 *);
    extern  void slPutPolygonX( XPDATA *, FIXED *);
    extern  void slGouraudTblCopy(void);
    extern  void slSetGouraudTbl( Uint16 *);
    extern  void slSetGouraudColor( Uint16 );
    extern  void slSetAmbient( Uint16);

    extern  void slSetFlatColor( Uint16);

    extern  void slSetDepthLimit( Uint32, Uint16, Uint16 );
    extern  void slSetDepthTbl( Uint16 *, Uint16, Uint16 );

    extern  void slNearClipFlag( Uint32 );
    extern  void slDispPlaneLevel( Sint32 );
    extern  void slWindowClipLevel( Sint32 );

/*------------------------------------------------------------------------*/

#endif
