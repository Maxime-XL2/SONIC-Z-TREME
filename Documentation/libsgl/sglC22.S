
sglC22.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slFrameClipSize>:
   0:	c4 72       	mov.b	@(114,gbr),r0
   2:	92 20       	mov.w	46 <IMM_320>,r2	! 140
   4:	91 20       	mov.w	48 <IMM_512>,r1	! 200
   6:	d6 11       	mov.l	4c <IMM_CTRL_POLYGON_WINDOW>,r6	! 260ffefc
   8:	40 08       	shll2	r0
   a:	32 43       	cmp/ge	r4,r2
   c:	8d 01       	bt.s	12 <frclp_01>
   e:	36 0c       	add	r0,r6
  10:	64 23       	mov	r2,r4

00000012 <frclp_01>:
  12:	31 53       	cmp/ge	r5,r1
  14:	8d 01       	bt.s	1a <frclp_02>
  16:	53 6e       	mov.l	@(56,r6),r3
  18:	65 13       	mov	r1,r5

0000001a <frclp_02>:
  1a:	56 63       	mov.l	@(12,r6),r6
  1c:	60 49       	swap.w	r4,r0
  1e:	20 5d       	xtrct	r5,r0
  20:	c2 c1       	mov.l	r0,@(772,gbr)
  22:	61 09       	swap.w	r0,r1
  24:	c6 21       	mov.l	@(132,gbr),r0
  26:	31 1c       	add	r1,r1
  28:	30 1c       	add	r1,r0
  2a:	c2 23       	mov.l	r0,@(140,gbr)
  2c:	41 01       	shlr	r1
  2e:	60 33       	mov	r3,r0
  30:	30 68       	sub	r6,r0
  32:	30 5c       	add	r5,r0
  34:	40 28       	shll16	r0
  36:	66 69       	swap.w	r6,r6
  38:	63 39       	swap.w	r3,r3
  3a:	33 68       	sub	r6,r3
  3c:	33 4c       	add	r4,r3
  3e:	20 3d       	xtrct	r3,r0
  40:	c2 27       	mov.l	r0,@(156,gbr)
  42:	00 0b       	rts	
  44:	c2 26       	mov.l	r0,@(152,gbr)

00000046 <IMM_320>:
  46:	01 40       	.word 0x0140

00000048 <IMM_512>:
  48:	02 00       	.word 0x0200
	...

0000004c <IMM_CTRL_POLYGON_WINDOW>:
  4c:	26 0f       	muls.w	r0,r6
  4e:	fe fc       	fmov	fr15,fr14
