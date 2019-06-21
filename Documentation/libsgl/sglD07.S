
sglD07.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuAllStop>:
   0:	c4 b9       	mov.b	@(185,gbr),r0
   2:	c8 10       	tst	#16,r0
   4:	8d 05       	bt.s	12 <castp_01>
   6:	e3 8c       	mov	#-116,r3
   8:	60 32       	mov.l	@r3,r0
   a:	c9 fe       	and	#-2,r0
   c:	23 02       	mov.l	r0,@r3
   e:	e0 04       	mov	#4,r0
  10:	c0 b9       	mov.b	r0,@(185,gbr)

00000012 <castp_01>:
  12:	c4 ba       	mov.b	@(186,gbr),r0
  14:	c8 10       	tst	#16,r0
  16:	89 04       	bt	22 <castp_02>
  18:	50 34       	mov.l	@(16,r3),r0
  1a:	c9 fe       	and	#-2,r0
  1c:	13 04       	mov.l	r0,@(16,r3)
  1e:	e0 04       	mov	#4,r0
  20:	c0 ba       	mov.b	r0,@(186,gbr)

00000022 <castp_02>:
  22:	00 0b       	rts	
  24:	00 09       	nop	
	...
