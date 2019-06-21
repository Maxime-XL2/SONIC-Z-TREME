/*-----------------------------------------------------------------------------
 *  FILE: sega_mem.h
 *
 *      Copyright(c) 1994-1995 SEGA.
 *
 *  PURPOSE:
 *
 *      メモリライブラリヘッダファイル。
 *
 *  DESCRIPTION:
 *
 *      メモリ管理を実現する。
 *
 *  AUTHOR(S)
 *
 *      1994-07-06  N.T Ver.1.00
 *
 *  MOD HISTORY:
 *      1995-12-05  H.O Ver.1.01
 *
 *-----------------------------------------------------------------------------
 */

/*
 * C VIRTUAL TYPES DEFINITIONS
 */
//#include "sega_xpt.h"

/*
 * USER SUPPLIED INCLUDE FILES
 */

#ifndef	_SEGA_MEM_H
#define	_SEGA_MEM_H

#ifdef	__MEM_LIB_SOURCE__

/*
 * GLOBAL DEFINES/MACROS DEFINES
 */

/*
 * STRUCTURE DECLARATIONS
 */

/*
 * TYPEDEFS
 */
typedef double MemAlign;                        /* 64ビットのアライメント    */
union mem_head {                                /* セルのヘッダ              */
    struct {
        union mem_head *next;                   /* 次のセルポインタ          */
        unsigned size;                          /* セルのサイズ              */
    }s;
    MemAlign damy;
};

typedef union mem_head MemHead;                 /* セルヘッダデータ型        */

/*
 * EXTERNAL VARIABLE DECLARATIONS
 */
extern MemHead *MEM_empty_top;                  /* 空きセルの先頭            */

#endif	/* __MEM_LIB_SOURCE__ */

/*
 * EXTERNAL FUNCTION PROTOTYPE  DECLARATIONS
 */
void	 MEM_Init(Uint32, Uint32);
void	*MEM_Calloc(Uint32, Uint32);
void	*MEM_Malloc(Uint32);
void	*MEM_Realloc(void *,Uint32);
void	 MEM_Free(void *);
#endif  /* ifndef _SEGA_MEM_H */
