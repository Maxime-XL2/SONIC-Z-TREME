#ifndef COMMON_H
#define COMMON_H

/*
 * The objective of this header is to make it easier to use Netbeans compiler code assistance.
 * You can include this file anywhere in the code with the #include <common.h> instead of the whole path to the SGL headers.
 */
#define SATLINK_DEBUG /**Note that it's also included in the GFS SBL files**/

#ifdef SATLINK_DEBUG
void load_sclib_4d_stub_from_cdrom(void);
#endif // SATLINK_DEBUG

#include "../../Compiler/SGL_302j/INC/SGL.H"

/*---- [1.This part must not be modified] ---------------------------------*/
#define  SystemWork  0x060ffc00   /* System Variable         */

/*---- [2.This part must not be modified] ---------------------------------*/

#define  MAX_VERTICES		2800 /* number of vertices that can be used */
#define  MAX_POLYGONS		1900 /* number of polygons that can be used */
#define  MAX_EVENTS		1   /* number of events that can be used   */
#define  MAX_WORKS		1   /* number of works that can be used    */

#define  WORK_AREA		0x060C0000   /* SGL Work Area           */

#define  trans_list		0x060fb800   /* DMA Transfer Table      */
#define  pcmbuf			SoundRAM+0x78000 /* PCM Stream Address      */
#define  PCM_SIZE		0x8000    /* PCM Stream Size         */

#define  master_stack		SystemWork   /* MasterSH2 StackPointer  */
#define  slave_stack		0x06001e00   /* SlaveSH2  StackPointer  */

/*---- [3.Macro] ----------------------------------------------------------*/
#define  _Byte_			sizeof(Uint8)
#define  _Word_			sizeof(Uint16)
#define  _LongWord_		sizeof(Uint32)
#define  _Sprite_		(sizeof(Uint16) * 18)

#define  AdjWork(pt,sz,ct) (pt + (sz) * (ct))

#define     HWRAM_DYNAMIC_MEM_SIZE (300*1024)  //The amount of RAM you want to reserve in the HWRAM (to load data)

//#include "../../Compiler/COMMON/MEM/SEGA_MEM.H"


#endif /* COMMON_H */

