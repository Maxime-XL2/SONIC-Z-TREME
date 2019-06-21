
sglC03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slWindow>:
   0:	c4 73       	mov.b	@(115,gbr),r0
   2:	20 08       	tst	r0,r0
   4:	8d 05       	bt.s	12 <wnst_0>
   6:	64 4f       	exts.w	r4,r4
   8:	c4 72       	mov.b	@(114,gbr),r0
   a:	88 01       	cmp/eq	#1,r0
   c:	8d 53       	bt.s	b6 <bool_error>
   e:	70 01       	add	#1,r0
  10:	c0 72       	mov.b	r0,@(114,gbr)

00000012 <wnst_0>:
  12:	e0 00       	mov	#0,r0
  14:	c0 73       	mov.b	r0,@(115,gbr)
  16:	65 5f       	exts.w	r5,r5
  18:	67 7f       	exts.w	r7,r7
  1a:	35 77       	cmp/gt	r7,r5
  1c:	8f 03       	bf.s	26 <wnst_1>
  1e:	66 6f       	exts.w	r6,r6
  20:	27 5a       	xor	r5,r7
  22:	25 7a       	xor	r7,r5
  24:	27 5a       	xor	r5,r7

00000026 <wnst_1>:
  26:	34 67       	cmp/gt	r6,r4
  28:	8f 03       	bf.s	32 <wnst_2>
  2a:	c6 12       	mov.l	@(72,gbr),r0
  2c:	26 4a       	xor	r4,r6
  2e:	24 6a       	xor	r6,r4
  30:	26 4a       	xor	r4,r6

00000032 <wnst_2>:
  32:	63 03       	mov	r0,r3
  34:	45 28       	shll16	r5
  36:	25 4d       	xtrct	r4,r5
  38:	13 52       	mov.l	r5,@(8,r3)
  3a:	47 28       	shll16	r7
  3c:	27 6d       	xtrct	r6,r7
  3e:	13 73       	mov.l	r7,@(12,r3)
  40:	50 f0       	mov.l	@(0,r15),r0
  42:	60 0f       	exts.w	r0,r0
  44:	40 15       	cmp/pl	r0
  46:	89 00       	bt	4a <wnst_3>
  48:	c5 38       	mov.w	@(112,gbr),r0

0000004a <wnst_3>:
  4a:	c1 38       	mov.w	r0,@(112,gbr)
  4c:	81 33       	mov.w	r0,@(6,r3)
  4e:	52 f2       	mov.l	@(8,r15),r2
  50:	51 f1       	mov.l	@(4,r15),r1
  52:	42 28       	shll16	r2
  54:	22 1d       	xtrct	r1,r2
  56:	13 24       	mov.l	r2,@(16,r3)
  58:	c4 72       	mov.b	@(114,gbr),r0
  5a:	81 32       	mov.w	r0,@(4,r3)
  5c:	e0 10       	mov	#16,r0
  5e:	13 00       	mov.l	r0,@(0,r3)
  60:	73 14       	add	#20,r3
  62:	60 33       	mov	r3,r0
  64:	d3 16       	mov.l	c0 <IMM_FRT_INTR>,r3	! 21000000
  66:	c2 12       	mov.l	r0,@(72,gbr)
  68:	23 01       	mov.w	r0,@r3
  6a:	c6 c1       	mov.l	@(772,gbr),r0
  6c:	e3 01       	mov	#1,r3
  6e:	43 28       	shll16	r3
  70:	73 01       	add	#1,r3
  72:	33 7c       	add	r7,r3
  74:	33 58       	sub	r5,r3
  76:	60 09       	swap.w	r0,r0
  78:	30 0c       	add	r0,r0
  7a:	30 3c       	add	r3,r0
  7c:	c2 23       	mov.l	r0,@(140,gbr)
  7e:	60 33       	mov	r3,r0
  80:	c2 21       	mov.l	r0,@(132,gbr)
  82:	34 18       	sub	r1,r4
  84:	35 28       	sub	r2,r5
  86:	60 59       	swap.w	r5,r0
  88:	20 4d       	xtrct	r4,r0
  8a:	c2 1e       	mov.l	r0,@(120,gbr)
  8c:	60 73       	mov	r7,r0
  8e:	30 28       	sub	r2,r0
  90:	36 18       	sub	r1,r6
  92:	40 28       	shll16	r0
  94:	20 6d       	xtrct	r6,r0
  96:	c2 1f       	mov.l	r0,@(124,gbr)
  98:	c6 c1       	mov.l	@(772,gbr),r0
  9a:	66 4b       	neg	r4,r6
  9c:	63 5b       	neg	r5,r3
  9e:	43 28       	shll16	r3
  a0:	61 03       	mov	r0,r1
  a2:	60 33       	mov	r3,r0
  a4:	20 6d       	xtrct	r6,r0
  a6:	c2 24       	mov.l	r0,@(144,gbr)
  a8:	36 1c       	add	r1,r6
  aa:	33 1c       	add	r1,r3
  ac:	23 6d       	xtrct	r6,r3
  ae:	60 33       	mov	r3,r0
  b0:	c2 26       	mov.l	r0,@(152,gbr)
  b2:	00 0b       	rts	
  b4:	e0 01       	mov	#1,r0

000000b6 <bool_error>:
  b6:	00 0b       	rts	
  b8:	e0 00       	mov	#0,r0

000000ba <IMM_FrameXsize2>:
  ba:	01 40       	.word 0x0140

000000bc <IMM_FrameYsize2>:
  bc:	02 00       	.word 0x0200
	...

000000c0 <IMM_FRT_INTR>:
  c0:	21 00       	mov.b	r0,@r1
	...
