/*-----------------------------------------------------------------------------
 *  FILE: mem_mall.c
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
 *          <4> MEM_Malloc()    -   メモリブロック確保
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
 * NAME:    MEM_Malloc()            - メモリブロック確保
 *
 * PARAMETERS :
 *      (1) Uint32 mem_size         - <i>  要求メモリブロックサイズ(バイト単位)
 *
 * DESCRIPTION:
 *      要求メモリを確保します．
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

void *MEM_Malloc(Uint32 mem_size)
{
	Uint32	req_size = ( ( mem_size + sizeof( MemHead ) -1 )/(sizeof( MemHead )) +1);
	/* 割り当てに必要なサイズ。最後の+1はヘッダの分 */
	MemHead	*current,*prev,*last;
	if( ( prev = MEM_empty_top ) == NULL )			/* リストのとっかかり */
		return NULL;								/* 残り無しの場合 */
	else{
		last = prev;									/* リストのおしまい */
		for( current = prev->s.next ;; prev = current, current = prev->s.next ){
			if( current->s.size >= req_size ){			/* 大きさの確認 */
				if( current->s.size == req_size ){		/* ぴったりの場合 */
					/*	prev->s.next = current->s.next;		 前の領域に後ろの領域を繋ぐ */
					if( prev == current )				/* 最後の1個の場合 */
						prev = NULL;					/* 残り無し */
					else								/* まだ残っている場合 */
						prev->s.next = current->s.next;	/* 前後を連結して切り離す */
				}
				else{									/* 余裕がある場合 */
					current->s.size -= req_size;		/* 領域の大きさを調整 */
					current += current->s.size;			/* ポインタをずらす */
					current->s.size = req_size;			/* 新領域の大きさを設定 */
				}
				current->s.next = NULL;					/* 無くても可 */
				MEM_empty_top = prev;					/* リストのとっかかり */
				return	(void *)( current +1 );			/* ポインタを返す */
			}
			if( current == last )						/* 全部評価したか */
				return	NULL;							/* 該当無し */
		}
	}
}
