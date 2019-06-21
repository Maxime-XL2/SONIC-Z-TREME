/*----------------------------------------------------------------------------
 *  sega_dsp.h -- DSP ライブラリ インクルードファイル
 *  Copyright(c) 1994 SEGA
 *  Written by H.E on 1994-04-04 Ver.0.80
 *  Updated by H.E on 1994-04-04 Ver.0.80
 *
 *  ＤＳＰ制御処理モジュール用インクルードファイル
 *
 *----------------------------------------------------------------------------
 */

#ifndef SEGA_DSP_H
#define SEGA_DSP_H

#include "sega_xpt.h"
//#include "sega_def.h"
#include "SGL.h"

/*
 * GLOBAL DEFINES/MACROS DEFINES
 */

#define  DSP_REG_BASE        0x25FE0080 /* DSP Register base address        */

#define  DSP_RW_CTRL         0x00000000 /* DSP Control Port                 */
#define  DSP_W_PDAT          0x00000004 /* DSP Program RAM Data Port        */
#define  DSP_W_DADR          0x00000008 /* DSP Data RAM Address Port        */
#define  DSP_RW_DDAT         0x0000000c /* DSP Data RAM Data Port           */

#define  DSP_RAM_0           0x00       /* DSP RAM 0 Address                */
#define  DSP_RAM_1           0x40       /* DSP RAM 1 Address                */
#define  DSP_RAM_2           0x80       /* DSP RAM 2 Address                */
#define  DSP_RAM_3           0xc0       /* DSP RAM 3 Address                */

#define  DSP_END             1          /* DSP Process End Code             */
#define  DSP_NOT_END         0          /* DSP Process Not End Code         */

#define DSP_WRITE_REG(reg, val) \
      *(volatile Uint32*)(DSP_REG_BASE+(reg)) = (val)
#define DSP_READ_REG(reg) \
      (*(volatile Uint32*)(DSP_REG_BASE+(reg)))

/*
 * EXTERNAL FUNCTION PROTOTYPE DECLARATIONS
 */
void  DSP_LoadProgram(Uint8 dst, Uint32 *src, Uint16 count);
void  DSP_WriteData(Uint8 dst, Uint32 *src, Uint16 count);
void  DSP_ReadData(Uint32 *dst, Uint8 src, Uint16 count);
void  DSP_Start(Uint8 pc);
void  DSP_Stop(void);
Uint8 DSP_CheckEnd(void);

#endif /* ifndef SEGA_DSP_H */

/*  end of file */
