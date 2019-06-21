
sglA21.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPushMatrix>:
   0:	c4 20       	mov.b	@(32,gbr),r0
   2:	e2 14       	mov	#20,r2
   4:	30 23       	cmp/ge	r2,r0
   6:	8d 13       	bt.s	30 <push_pop_err>
   8:	70 01       	add	#1,r0
   a:	c0 20       	mov.b	r0,@(32,gbr)
   c:	c6 07       	mov.l	@(28,gbr),r0
   e:	e5 30       	mov	#48,r5
  10:	35 0c       	add	r0,r5
  12:	e7 03       	mov	#3,r7

00000014 <psmtx_0>:
  14:	61 06       	mov.l	@r0+,r1
  16:	62 06       	mov.l	@r0+,r2
  18:	63 06       	mov.l	@r0+,r3
  1a:	64 06       	mov.l	@r0+,r4
  1c:	15 10       	mov.l	r1,@(0,r5)
  1e:	15 21       	mov.l	r2,@(4,r5)
  20:	15 32       	mov.l	r3,@(8,r5)
  22:	15 43       	mov.l	r4,@(12,r5)
  24:	47 10       	dt	r7
  26:	8f f5       	bf.s	14 <psmtx_0>
  28:	75 10       	add	#16,r5
  2a:	c2 07       	mov.l	r0,@(28,gbr)
  2c:	00 0b       	rts	
  2e:	e0 01       	mov	#1,r0

00000030 <push_pop_err>:
  30:	00 0b       	rts	
  32:	e0 00       	mov	#0,r0

00000034 <_slDecMatrixPtr>:
  34:	c4 20       	mov.b	@(32,gbr),r0
  36:	40 15       	cmp/pl	r0
  38:	8f fa       	bf.s	30 <push_pop_err>
  3a:	70 ff       	add	#-1,r0
  3c:	c0 20       	mov.b	r0,@(32,gbr)
  3e:	c6 07       	mov.l	@(28,gbr),r0
  40:	70 d0       	add	#-48,r0
  42:	c2 07       	mov.l	r0,@(28,gbr)
  44:	00 0b       	rts	
  46:	e0 01       	mov	#1,r0
