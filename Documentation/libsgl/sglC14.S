
sglC14.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCurWindow>:
   0:	c4 72       	mov.b	@(114,gbr),r0
   2:	34 00       	cmp/eq	r0,r4
   4:	8d 3a       	bt.s	7c <NoChangeWindow>
   6:	60 43       	mov	r4,r0
   8:	c9 01       	and	#1,r0
   a:	c0 72       	mov.b	r0,@(114,gbr)
   c:	e0 00       	mov	#0,r0
   e:	c0 73       	mov.b	r0,@(115,gbr)
  10:	c6 12       	mov.l	@(72,gbr),r0
  12:	e1 38       	mov	#56,r1
  14:	10 10       	mov.l	r1,@(0,r0)
  16:	10 41       	mov.l	r4,@(4,r0)
  18:	d1 1b       	mov.l	88 <IMM_FRT_INTR>,r1	! 21000000
  1a:	70 08       	add	#8,r0
  1c:	c2 12       	mov.l	r0,@(72,gbr)
  1e:	21 01       	mov.w	r0,@r1
  20:	d2 18       	mov.l	84 <IMM_CTRL_POLYGON_WINDOW>,r2	! 260ffefc
  22:	44 08       	shll2	r4
  24:	32 4c       	add	r4,r2
  26:	85 2f       	mov.w	@(30,r2),r0
  28:	54 23       	mov.l	@(12,r2),r4
  2a:	c0 ac       	mov.b	r0,@(172,gbr)
  2c:	50 29       	mov.l	@(36,r2),r0
  2e:	55 25       	mov.l	@(20,r2),r5
  30:	c2 1a       	mov.l	r0,@(104,gbr)
  32:	85 2e       	mov.w	@(28,r2),r0
  34:	56 2e       	mov.l	@(56,r2),r6
  36:	c1 50       	mov.w	r0,@(160,gbr)
  38:	e0 01       	mov	#1,r0
  3a:	40 28       	shll16	r0
  3c:	70 01       	add	#1,r0
  3e:	30 5c       	add	r5,r0
  40:	30 48       	sub	r4,r0
  42:	c2 21       	mov.l	r0,@(132,gbr)
  44:	60 63       	mov	r6,r0
  46:	30 48       	sub	r4,r0
  48:	c2 24       	mov.l	r0,@(144,gbr)
  4a:	61 49       	swap.w	r4,r1
  4c:	c6 c1       	mov.l	@(772,gbr),r0
  4e:	63 59       	swap.w	r5,r3
  50:	62 69       	swap.w	r6,r2
  52:	30 2c       	add	r2,r0
  54:	c1 4c       	mov.w	r0,@(152,gbr)
  56:	31 28       	sub	r2,r1
  58:	c6 c1       	mov.l	@(772,gbr),r0
  5a:	33 28       	sub	r2,r3
  5c:	40 29       	shlr16	r0
  5e:	30 6c       	add	r6,r0
  60:	c1 4d       	mov.w	r0,@(154,gbr)
  62:	44 28       	shll16	r4
  64:	45 28       	shll16	r5
  66:	60 63       	mov	r6,r0
  68:	40 28       	shll16	r0
  6a:	34 08       	sub	r0,r4
  6c:	35 08       	sub	r0,r5
  6e:	24 1d       	xtrct	r1,r4
  70:	60 43       	mov	r4,r0
  72:	c2 1e       	mov.l	r0,@(120,gbr)
  74:	25 3d       	xtrct	r3,r5
  76:	60 53       	mov	r5,r0
  78:	00 0b       	rts	
  7a:	c2 1f       	mov.l	r0,@(124,gbr)

0000007c <NoChangeWindow>:
  7c:	00 0b       	rts	
  7e:	e0 01       	mov	#1,r0

00000080 <IMM_FrameXsize2>:
  80:	01 40       	.word 0x0140

00000082 <IMM_FrameYsize2>:
  82:	02 00       	.word 0x0200

00000084 <IMM_CTRL_POLYGON_WINDOW>:
  84:	26 0f       	muls.w	r0,r6
  86:	fe fc       	fmov	fr15,fr14

00000088 <IMM_FRT_INTR>:
  88:	21 00       	mov.b	r0,@r1
	...
