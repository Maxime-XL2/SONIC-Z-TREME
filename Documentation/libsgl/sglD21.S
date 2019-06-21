
sglD21.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_ScuResult>:
   0:	c4 b8       	mov.b	@(184,gbr),r0
   2:	88 01       	cmp/eq	#1,r0
   4:	89 06       	bt	14 <dmscr_10>
   6:	c4 bb       	mov.b	@(187,gbr),r0
   8:	c8 10       	tst	#16,r0
   a:	8d 0e       	bt.s	2a <dmscr_01>
   c:	c8 04       	tst	#4,r0
   e:	8b 0c       	bf	2a <dmscr_01>
  10:	00 0b       	rts	
  12:	e0 02       	mov	#2,r0

00000014 <dmscr_10>:
  14:	c4 b9       	mov.b	@(185,gbr),r0
  16:	c8 10       	tst	#16,r0
  18:	8d 07       	bt.s	2a <dmscr_01>
  1a:	c8 04       	tst	#4,r0
  1c:	8b 05       	bf	2a <dmscr_01>
  1e:	e3 8c       	mov	#-116,r3
  20:	60 32       	mov.l	@r3,r0
  22:	c8 02       	tst	#2,r0
  24:	8b 01       	bf	2a <dmscr_01>
  26:	00 0b       	rts	
  28:	e0 02       	mov	#2,r0

0000002a <dmscr_01>:
  2a:	00 0b       	rts	
  2c:	e0 00       	mov	#0,r0
	...

00000030 <IMM_Chk_CH0>:
  30:	00 01       	.word 0x0001
  32:	00 30       	.word 0x0030
