/*-----------------------------------------------------------------------------
 *  FILE: mem_init.c
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
 *          <1> MEM_Init()      -   メモリ管理領域設定
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
 *      1994-11/30  H.O Ver.1.10
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

MemHead *MEM_empty_top = NULL;				/* 空きセルの先頭            */

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
 * NAME:    MEM_Init()              - メモリ管理領域設定
 *
 * PARAMETERS :
 *      (1) Uint32 top_address      - <i>  メモリ管理領域先頭アドレス
 *      (2) Uint32 mem_size         - <i>  メモリ管理領域サイズ
 *
 * DESCRIPTION:
 *      メモリ管理領域を設定します.
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

void MEM_Init(Uint32 top_address, Uint32 mem_size){
	MemHead	*top = (MemHead *)(top_address&(~0x03));	/* 端数は切り捨て */
	Uint32	num =  (mem_size-(top_address&0x03))/sizeof( MemHead );	/* 端数は切り捨て */
	MEM_empty_top = top;							/* 先頭アドレスの記録 */
	top->s.next = top;								/* リンクリストの構築 */
	top->s.size = num;								/* ヘッダを含むサイズ */
}
