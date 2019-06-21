

#ifndef SEGA_SYS_H
#define SEGA_SYS_H

/***********************************************************************
 *      インクルードファイル
 ***********************************************************************/
#include "sega_xpt.h"

/***********************************************************************
 *      処理マクロ
 ***********************************************************************/
#define SYS_SETUINT(_Num_, _Hdr_) \
        ((**(volatile void(**)(Uint32, void*))0x6000300)((_Num_), (_Hdr_)))
#define SYS_GETUINT(_Num_) \
        ((void*)(**(void(*(**)(Uint32))(Uint32))0x6000304)(_Num_))

#define SYS_SETSINT(_Num_, _Hdr_) \
        ((**(volatile void(**)(Uint32, void*))0x6000310)((_Num_), (_Hdr_)))
#define SYS_GETSINT(_Num_) \
        ((void*)(**(void(*(**)(Uint32))(Uint32))0x6000314)(_Num_))

#define SYS_TASSEM(_Num_) \
        ((**(volatile Uint32(**)(Uint32))0x6000330)(_Num_))
#define SYS_CLRSEM(_Num_) \
        ((**(volatile void(**)(Uint32))0x6000334)(_Num_))

#define SYS_SETSCUIM(_MaskPat_) \
        ((**(volatile void(**)(Uint32))0x6000340)(_MaskPat_))
#define SYS_CHGSCUIM(_AndMask_, _OrMask_) \
        ((**(volatile void(**)(Uint32, Uint32))0x6000344)((_AndMask_), (_OrMask_)))
#define SYS_GETSCUIM \
        (*(volatile Uint32*)0x6000348)

#define SYS_CHGSYSCK(_CkMode_) \
        ((**(volatile void(**)(Uint32))0x6000320)(_CkMode_))
#define SYS_GETSYSCK \
        (*(volatile Uint32*)0x6000324)

#define SYS_CHGUIPR(_IprTab_) \
        ((**(volatile void(**)(Uint32*))0x6000280)(_IprTab_))

#define SYS_EXECDMP \
        (**(volatile void(**)(void))0x600026C)

#define SYS_PCLRMEM \
        (*(volatile Uint8*)0x6000210)

#define SYS_CHKMPEG(_dummy_) \
        ((**(volatile Sint32(**)(Sint32))0x6000274)(_dummy_))

/***********************************************************************
 *      関数の宣言
 ***********************************************************************/
void SYS_CheckTrack(Sint32 tno);
void SYS_Exit(Sint32 code);

#endif

