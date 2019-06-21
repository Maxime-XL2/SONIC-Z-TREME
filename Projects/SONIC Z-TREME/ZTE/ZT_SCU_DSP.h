/*----------------------------------------------------------------------------
 *  dsp_ctrl.c -- DSP ライブラリ CTRL モジュール
 *  Copyright(c) 1994 SEGA
 *  Written by H.E on 1994-04-04 Ver.0.80
 *  Updated by H.E on 1994-07-25 Ver.1.00
 *
 *  このライブラリはＤＳＰ制御処理モジュールで、以下のルーチンを含む。
 *
 *  DSP_LoadProgram         -  プログラムロード
 *  DSP_WriteData           -  データライト
 *  DSP_ReadData            -  データリード
 *  DSP_Start               -  実行開始
 *  SPR_Stop                -  実行停止
 *  SPR_CheckEnd            -  実行終了チェック
 *
 *  このライブラリを使用するには次のインクルードファイルを定義する必要がある。
 *
 *  #include "sega_dsp.h"
 *
 *----------------------------------------------------------------------------
 */

/*
 * USER SUPPLIED INCLUDE FILES
 */
#include "sega_int.h"
#include "sega_dsp.h"
#ifdef _SH
#include <machine.h>
#endif


/*****************************************************************************
 *
 * NAME:  DSP_LoadProgram()    - Load DSP Program
 *
 * PARAMETERS :
 *
 *     (1) Uint8   dst         - <i> ＤＳＰプログラムＲＡＭ内のアドレス
 *     (2) Uint32  *src        - <i> ワークＲＡＭ内プログラムエリアアドレス
 *     (3) Uint16  count       - <i> プログラムサイズ（ロングワード単位）
 *
 * DESCRIPTION:
 *
 *     ＤＳＰを停止し、ＤＳＰへ指定プログラムをロードする。
 *
 * POSTCONDITIONS:
 *
 *     No exist.
 *
 * CAVEATS:
 *
 *
 *****************************************************************************
 */
void DSP_LoadProgram(Uint8 dst, Uint32 *src, Uint16 count)
{
    Uint32  ctrl;
    int     i;

    /** BEGIN ***************************************************************/
    INT_ChgMsk(INT_MSK_NULL, INT_MSK_DSP);   /* DSP の割り込みをマスクする  */
    DSP_WRITE_REG(DSP_RW_CTRL, 0);    /* DSP Stop                           */
    ctrl = 0x8000 | dst;
    DSP_WRITE_REG(DSP_RW_CTRL, ctrl); /* Set Program Pos                    */
    for(i=0; i<count; i++)
        DSP_WRITE_REG(DSP_W_PDAT, *src++); /* Write DSP Program             */
}


/*****************************************************************************
 *
 * NAME:  DSP_WriteData()      - Write Data in the DSP Data RAM
 *
 * PARAMETERS :
 *
 *     (1) Uint8   dst         - <i> ＤＳＰデータＲＡＭ内のアドレス
 *     (2) Uint32  *src        - <i> ワークＲＡＭ内データエリアアドレス
 *     (3) Uint16  count       - <i> データサイズ（ロングワード単位）
 *
 * DESCRIPTION:
 *
 *     ＤＳＰを停止し、ＤＳＰのデータＲＡＭへ指定データを書き込む。
 *
 * POSTCONDITIONS:
 *
 *     No exist.
 *
 * CAVEATS:
 *
 *
 *****************************************************************************
 */
void DSP_WriteData(Uint8 dst, Uint32 *src, Uint16 count)
{
    Uint32  ramAddr;
    int     i;

    /** BEGIN ***************************************************************/
    DSP_WRITE_REG(DSP_RW_CTRL, 0);      /* DSP Stop                         */
    ramAddr = dst;
    DSP_WRITE_REG(DSP_W_DADR, ramAddr); /* Write Data Address               */
    for(i=0; i<count; i++)
        DSP_WRITE_REG(DSP_RW_DDAT, *src++);   /* Write Data                 */
}


/*****************************************************************************
 *
 * NAME:  DSP_ReadData()       - Read Data from the DSP Data RAM
 *
 * PARAMETERS :
 *
 *     (1) Uint32  *dst        - <o> ワークＲＡＭ内データエリアアドレス
 *     (2) Uint8   src         - <i> ＤＳＰデータＲＡＭ内のアドレス
 *     (3) Uint16  count       - <i> データサイズ（ロングワード単位）
 *
 * DESCRIPTION:
 *
 *     ＤＳＰを停止し、ＤＳＰのデータＲＡＭから指定データを読み出す。
 *
 * POSTCONDITIONS:
 *
 *     No exist.
 *
 * CAVEATS:
 *
 *
 *****************************************************************************
 */
void DSP_ReadData(Uint32 *dst, Uint8 src, Uint16 count)
{
    Uint32  ramAddr;
    int     i;

    /** BEGIN ***************************************************************/
    DSP_WRITE_REG(DSP_RW_CTRL, 0);        /* DSP Stop                       */
    ramAddr = src;
    DSP_WRITE_REG(DSP_W_DADR, ramAddr++); /* Write Data Address             */
    for(i=0; i<count; i++)
        *dst++ = DSP_READ_REG(DSP_RW_DDAT);   /* Read  Data                 */
}


/*****************************************************************************
 *
 * NAME:  DSP_Start()          - Execute DSP Program
 *
 * PARAMETERS :
 *
 *     (1) Uint8   pc          - <i> ＤＳＰプログラムの開始位置
 *
 * DESCRIPTION:
 *
 *     指定されたＤＳＰプログラムの実行開始位置から実行する。
 *
 * POSTCONDITIONS:
 *
 *     No exist.
 *
 * CAVEATS:
 *
 *
 *****************************************************************************
 */
void DSP_Start(Uint8 pc)
{
    Uint32  ctrl;

    /** BEGIN ***************************************************************/
    DSP_WRITE_REG(DSP_RW_CTRL, 0);    /* DSP Stop                           */
    ctrl = 0x18000 | pc;
    DSP_WRITE_REG(DSP_RW_CTRL, ctrl); /* Set Program pc & start DSP         */
}


/*****************************************************************************
 *
 * NAME:  DSP_Stop()           - Stop DSP Program
 *
 * PARAMETERS :
 *
 *     No exist.
 *
 * DESCRIPTION:
 *
 *     実行中のＤＳＰプログラムを停止する。
 *
 * POSTCONDITIONS:
 *
 *     No exist.
 *
 * CAVEATS:
 *
 *
 *****************************************************************************
 */
void DSP_Stop(void)
{
    /** BEGIN ***************************************************************/
    DSP_WRITE_REG(DSP_RW_CTRL, 0);    /* DSP Stop                           */
}


/*****************************************************************************
 *
 * NAME:  DSP_CheckEnd()           - Check DSP Process End
 *
 * PARAMETERS :
 *
 *     No exist.
 *
 * DESCRIPTION:
 *
 *     ＤＳＰプログラムの処理終了をチェックする。
 *
 * POSTCONDITIONS:
 *
 *     Uint8   result              - <o> 終了フラグ
 *                                       DSP_END     = 実行終了
 *                                       DSP_NOT_END = 実行中
 *
 * CAVEATS:
 *
 *
 *****************************************************************************
 */
Uint8 DSP_CheckEnd(void)
{
#if	0
	/*
	**■1995-07-26	高橋智延
	**	使ってないので削除
	*/
    Uint32  vbr, *irqVector;
    int     iMask;
    Uint32  *l, i;
#endif
    /** BEGIN ***************************************************************/
    if((*(volatile Uint32*)0x25fe00a4) & 0x20) {
        for(; DSP_READ_REG(DSP_RW_CTRL) & 0x800000; ) {}
        *(volatile Uint32*)0x25fe00a4  = ~0x20;
        *(volatile Uint16*)0xfffffe92 |= 0x10;   /* cash parge */
        return DSP_END;
    }  else
        return DSP_NOT_END;
#if 0
    if(INT_GetStat() & INT_ST_DSP) {
        for(; DSP_READ_REG(DSP_RW_CTRL) & 0x800000; ) {}
        INT_ResStat(INT_ST_DSP);
        *((volatile Uint16*)0xfffffe92) |= 0x10;   /* cash parge */
        return DSP_END;
    }  else
        return DSP_NOT_END;
#endif
}

/*  end of file */
