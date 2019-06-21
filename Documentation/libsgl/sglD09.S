
sglD09.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuGetStatus>:
   0:	24 48       	tst	r4,r4
   2:	8d 06       	bt.s	12 <cstat_00>
   4:	e3 8c       	mov	#-116,r3
   6:	c4 ba       	mov.b	@(186,gbr),r0
   8:	c8 10       	tst	#16,r0
   a:	89 08       	bt	1e <cstat_01>
   c:	50 34       	mov.l	@(16,r3),r0
   e:	00 0b       	rts	
  10:	c9 02       	and	#2,r0

00000012 <cstat_00>:
  12:	c4 b9       	mov.b	@(185,gbr),r0
  14:	c8 10       	tst	#16,r0
  16:	89 02       	bt	1e <cstat_01>
  18:	60 32       	mov.l	@r3,r0
  1a:	00 0b       	rts	
  1c:	c9 02       	and	#2,r0

0000001e <cstat_01>:
  1e:	00 0b       	rts	
  20:	e0 02       	mov	#2,r0
	...
