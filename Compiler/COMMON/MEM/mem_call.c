/*-----------------------------------------------------------------------------
 *  FILE: mem_call.c
 *
 *      Copyright(c) 1994 SEGA.
 *
 *  PURPOSE:
 *
 *      メモリライブラリソースファイル。
 *
 *  DESCRIPTION:
 *
 *      メモリ管理を実現する。
 *
 *  INTERFACE:
 *
 *      < FUNCTIONS LIST >
 *          <2> MEM_Calloc()    -   配列領域確保
 *
 *  CAVEATS:
 *
 *      なし。
 *
 *  AUTHOR(S)
 *
 *      1994-07-06  N.T Ver.1.00
 *
 *  MOD HISTORY:
 *
 *-----------------------------------------------------------------------------
 */

/*
 * C VIRTUAL TYPES DEFINITIONS
 */
#include <stdio.h>
#include "sega_xpt.h"

/*
 * USER SUPPLIED INCLUDE FILES
 */
#define	__MEM_LIB_SOURCE__
#include "sega_mem.h"

/*
 * GLOBAL DECLARATIONS
 */

/*
 * LOCAL DEFINES/MACROS
 */

/*
 * TYPEDEFS
 */

/*
 * STATIC DECLARATIONS
 */

/*
 * STATIC FUNCTION PROTOTYPE DECLARATIONS
 */

/******************************************************************************
 *
 * NAME:    MEM_Calloc()            - 配列領域確保
 *
 * PARAMETERS :
 *      (1) Uint32 arg_num          - <i>  配列要素数
 *      (2) Uint32 arg_size         - <i>  配列要素数のバイト数
 *
 * DESCRIPTION:
 *      配列領域を確保します．
 *
 * PRECONDITIONS:
 *      なし。
 *
 * POSTCONDITIONS:
 *      なし
 *
 * CAVEATS:
 *      なし。
 *
 ******************************************************************************
 */

void *MEM_Calloc(Uint32 arg_num, Uint32 arg_size){
	Uint32	memsize = arg_num * arg_size;		/* トータルの大きさ */
	unsigned char	*ptr;
	if ( ( ptr = (unsigned char *)MEM_Malloc(memsize) ) == NULL )
		return	NULL;							/* なかった場合 */
	else{
		Uint32	cnt;
		for(cnt = 0 ; cnt < memsize ;  cnt++ )
			*(ptr + cnt) = 0;					/* バイト単位でクリア */
		return	ptr;
	}
}
