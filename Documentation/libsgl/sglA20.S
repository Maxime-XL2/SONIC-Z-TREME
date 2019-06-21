
sglA20.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitMatrix>:
   0:	e0 00       	mov	#0,r0
   2:	c0 20       	mov.b	r0,@(32,gbr)
   4:	c7 19       	mova	6c <MatrixBuf>,r0
   6:	a0 0e       	bra	26 <unmx_1>
   8:	c2 07       	mov.l	r0,@(28,gbr)

0000000a <_slPushUnitMatrix>:
   a:	c4 20       	mov.b	@(32,gbr),r0
   c:	e2 14       	mov	#20,r2
   e:	30 23       	cmp/ge	r2,r0
  10:	8d 2a       	bt.s	68 <push_pop_err>
  12:	70 01       	add	#1,r0
  14:	c0 20       	mov.b	r0,@(32,gbr)
  16:	c6 07       	mov.l	@(28,gbr),r0
  18:	e4 00       	mov	#0,r4
  1a:	70 30       	add	#48,r0
  1c:	c2 07       	mov.l	r0,@(28,gbr)

0000001e <_slUnitMatrix>:
  1e:	24 48       	tst	r4,r4
  20:	8f 12       	bf.s	48 <unmx_2>
  22:	60 43       	mov	r4,r0
  24:	c6 07       	mov.l	@(28,gbr),r0

00000026 <unmx_1>:
  26:	e1 01       	mov	#1,r1
  28:	41 28       	shll16	r1
  2a:	e2 00       	mov	#0,r2
  2c:	10 10       	mov.l	r1,@(0,r0)
  2e:	10 24       	mov.l	r2,@(16,r0)
  30:	10 28       	mov.l	r2,@(32,r0)
  32:	10 21       	mov.l	r2,@(4,r0)
  34:	10 15       	mov.l	r1,@(20,r0)
  36:	10 29       	mov.l	r2,@(36,r0)
  38:	10 22       	mov.l	r2,@(8,r0)
  3a:	10 26       	mov.l	r2,@(24,r0)
  3c:	10 1a       	mov.l	r1,@(40,r0)
  3e:	10 23       	mov.l	r2,@(12,r0)
  40:	10 27       	mov.l	r2,@(28,r0)
  42:	10 2b       	mov.l	r2,@(44,r0)
  44:	00 0b       	rts	
  46:	e0 01       	mov	#1,r0

00000048 <unmx_2>:
  48:	e1 01       	mov	#1,r1
  4a:	41 28       	shll16	r1
  4c:	e2 00       	mov	#0,r2
  4e:	10 10       	mov.l	r1,@(0,r0)
  50:	10 21       	mov.l	r2,@(4,r0)
  52:	10 22       	mov.l	r2,@(8,r0)
  54:	10 23       	mov.l	r2,@(12,r0)
  56:	10 14       	mov.l	r1,@(16,r0)
  58:	10 25       	mov.l	r2,@(20,r0)
  5a:	10 26       	mov.l	r2,@(24,r0)
  5c:	10 27       	mov.l	r2,@(28,r0)
  5e:	10 18       	mov.l	r1,@(32,r0)
  60:	10 29       	mov.l	r2,@(36,r0)
  62:	10 2a       	mov.l	r2,@(40,r0)
  64:	00 0b       	rts	
  66:	10 2b       	mov.l	r2,@(44,r0)

00000068 <push_pop_err>:
  68:	00 0b       	rts	
  6a:	e0 00       	mov	#0,r0

0000006c <MatrixBuf>:
	...
