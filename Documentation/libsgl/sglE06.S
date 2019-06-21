
sglE06.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetWork>:
   0:	c5 07       	mov.w	@(14,gbr),r0
   2:	20 08       	tst	r0,r0
   4:	89 08       	bt	18 <gtwk_0>
   6:	70 ff       	add	#-1,r0
   8:	c1 07       	mov.w	r0,@(14,gbr)
   a:	62 03       	mov	r0,r2
   c:	d0 03       	mov.l	1c <IMM_RemainWork>,r0	! 0 <_slGetWork>
   e:	42 08       	shll2	r2
  10:	00 2e       	mov.l	@(r0,r2),r0
  12:	e2 00       	mov	#0,r2
  14:	00 0b       	rts	
  16:	20 22       	mov.l	r2,@r0

00000018 <gtwk_0>:
  18:	00 0b       	rts	
  1a:	00 09       	nop	

0000001c <IMM_RemainWork>:
  1c:	00 00       	.word 0x0000
	...
