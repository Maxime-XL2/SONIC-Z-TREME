/*-----------------------------------------------------------------------------
 *  FILE: mem_free.c
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
 *          <3> MEM_Free()      -   メモリ管理領域設定
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
 *      1995-12-06  H.O Ver.1.01
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
 * NAME:    MEM_Free()              - メモリブロック解放
 *
 * PARAMETERS :
 *      (1) void *mem_ptr           - <i>  メモリブロックへのポインタ
 *
 * DESCRIPTION:
 *      メモリブロックを解放します．
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

void MEM_Free(void *mem_ptr){
	MemHead	*list;								/* リスト検索用 */
	MemHead	*free = (MemHead *)mem_ptr -1;		/* 開放したい領域 */
	if( ( list = MEM_empty_top ) == NULL ){		/* リストの取得 */
		MEM_empty_top = free;					/* 空きリストが無い場合 */
		free->s.next = free;					/* 要素が1個の循環リスト */
	}
	else{
		while( !( (free > list) && (free < list->s.next) )){
		/* 要素nと要素n+1の間に開放領域が存在し得ない間はループ */
			if(list >= list->s.next)			/* 環状リストの繋ぎめか要素が単一の場合 */
				if( (free > list)||(free < list->s.next) )	/* 繋ぎ目に連結するべきか */
					break;							/* 繋ぎ目に連結する */
			list = list->s.next;					/* 次の要素 */
		}
		if( free+free->s.size == list->s.next ){	/* 直後の要素と合体できる場合 */
			free->s.size += list->s.size;			/* サイズの変更 */
			free->s.next = list->s.next->s.next;	/* 繋ぎ替え */
		}
		else{										/* 合体できない場合 */
			free->s.next = list->s.next;			/* 取り敢えず前に連結 */
		}
		if( list+list->s.size == free ){			/* 直前の要素と合体できる場合 */
			list->s.size += free->s.size;			/* サイズの変更 */
			list->s.next = free->s.next;			/* 繋ぎ替え */
		}
		else{										/* 合体できない場合 */
			list->s.next = free;					/* 繋ぎ替え */
		}
		MEM_empty_top = list;						/* 後処理 */
	}
}
