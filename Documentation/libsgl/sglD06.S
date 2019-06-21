
sglD06.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuStop>:
   0:	24 48       	tst	r4,r4
   2:	8d 0a       	bt.s	1a <cstp_00>
   4:	e3 8c       	mov	#-116,r3
   6:	c4 ba       	mov.b	@(186,gbr),r0
   8:	c8 10       	tst	#16,r0
   a:	8d 0e       	bt.s	2a <cstp_01>
   c:	e3 9c       	mov	#-100,r3
   e:	60 32       	mov.l	@r3,r0
  10:	c9 fe       	and	#-2,r0
  12:	23 02       	mov.l	r0,@r3
  14:	e0 04       	mov	#4,r0
  16:	00 0b       	rts	
  18:	c0 ba       	mov.b	r0,@(186,gbr)

0000001a <cstp_00>:
  1a:	c4 b9       	mov.b	@(185,gbr),r0
  1c:	c8 10       	tst	#16,r0
  1e:	89 04       	bt	2a <cstp_01>
  20:	60 32       	mov.l	@r3,r0
  22:	c9 fe       	and	#-2,r0
  24:	23 02       	mov.l	r0,@r3
  26:	e0 04       	mov	#4,r0
  28:	c0 b9       	mov.b	r0,@(185,gbr)

0000002a <cstp_01>:
  2a:	00 0b       	rts	
  2c:	00 09       	nop	
	...
