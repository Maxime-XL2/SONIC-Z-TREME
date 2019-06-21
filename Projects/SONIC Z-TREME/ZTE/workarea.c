/*-------------------------------------------------------------------------*/
/*      Workarea assignment customize file                                 */
/*          for SGL ver. 2.10 (default)                                    */
/*                                                                         */
/*-------------------------------------------------------------------------*/

#include <common.h>



/*---- [4.Work Area] ------------------------------------------------------*/
enum workarea
{
	sort_list = WORK_AREA,
	zbuffer = AdjWork(sort_list, _LongWord_ * 3, MAX_POLYGONS + 6),
	spritebuf = AdjWork(zbuffer, _LongWord_, 512),
	pbuffer = AdjWork(spritebuf, _Sprite_, (MAX_POLYGONS + 6) * 2),
	clofstbuf = AdjWork(pbuffer, _LongWord_ * 4, MAX_VERTICES),
	commandbuf = AdjWork(clofstbuf, _Byte_ * 32 * 3, 32),
	NextEntry = AdjWork(commandbuf, _LongWord_ * 8, MAX_POLYGONS)
};

/*---- [5.Variable area ] -------------------------------------------------*/
const void* MasterStack = (void*) (master_stack);
const void* SlaveStack = (void*) (slave_stack);
const Uint16 MaxVertices = MAX_VERTICES;
const Uint16 MaxPolygons = MAX_POLYGONS;
const Uint16 EventSize = sizeof (EVENT);
const Uint16 WorkSize = sizeof (WORK);
const Uint16 MaxEvents = MAX_EVENTS;
const Uint16 MaxWorks = MAX_WORKS;
const void* SortList = (void*) (sort_list);
const Uint32 SortListSize = (MAX_POLYGONS + 6) * _LongWord_ * 3;
const void* Zbuffer = (void*) (zbuffer);
const SPRITE_T* SpriteBuf = (void*) (spritebuf);
const Uint32 SpriteBufSize = _Sprite_ * (MAX_POLYGONS + 6) * 2;
const void* Pbuffer = (void*) (pbuffer);
const void* CLOfstBuf = (void*) (clofstbuf);
const void* CommandBuf = (void*) (commandbuf);
const void* PCM_Work = (void*) (pcmbuf);
const Uint32 PCM_WkSize = PCM_SIZE;
const void* TransList = (void*) (trans_list);

EVENT EventBuf[MAX_EVENTS];
WORK WorkBuf[MAX_WORKS];
EVENT* RemainEvent[MAX_EVENTS];
WORK* RemainWork[MAX_WORKS];

Uint8 DYNAMIC_RAM[128*1024];
Uint8 HWRAM_DYNAMIC_MEM[HWRAM_DYNAMIC_MEM_SIZE];
/*------------------------------------------------------------------------*/
