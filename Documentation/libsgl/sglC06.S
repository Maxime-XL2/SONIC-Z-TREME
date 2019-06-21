
sglC06.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispSprite>:
   0:	d0 36       	mov.l	dc <IMM_SpriteEntry>,r0	! 0 <_slDispSprite>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	52 42       	mov.l	@(8,r4),r2
   8:	4f 26       	lds.l	@r15+,pr
   a:	51 43       	mov.l	@(12,r4),r1
   c:	c6 12       	mov.l	@(72,gbr),r0
   e:	21 18       	tst	r1,r1
  10:	8d 62       	bt.s	d8 <dspspr_09>
  12:	67 03       	mov	r0,r7
  14:	e0 fe       	mov	#-2,r0
  16:	25 09       	and	r0,r5
  18:	85 54       	mov.w	@(8,r5),r0
  1a:	63 23       	mov	r2,r3
  1c:	23 0d       	xtrct	r0,r3
  1e:	41 15       	cmp/pl	r1
  20:	8d 1c       	bt.s	5c <dspspr_01>
  22:	17 31       	mov.l	r3,@(4,r7)
  24:	c6 1a       	mov.l	@(104,gbr),r0
  26:	63 1b       	neg	r1,r3
  28:	33 05       	dmulu.l	r0,r3
  2a:	e1 ff       	mov	#-1,r1
  2c:	41 18       	shll8	r1
  2e:	00 0a       	sts	mach,r0
  30:	03 1a       	sts	macl,r3
  32:	23 0d       	xtrct	r0,r3
  34:	11 20       	mov.l	r2,@(0,r1)
  36:	60 39       	swap.w	r3,r0
  38:	60 0f       	exts.w	r0,r0
  3a:	11 04       	mov.l	r0,@(16,r1)
  3c:	43 28       	shll16	r3
  3e:	11 35       	mov.l	r3,@(20,r1)
  40:	61 55       	mov.w	@r5+,r1
  42:	62 55       	mov.w	@r5+,r2
  44:	63 55       	mov.w	@r5+,r3
  46:	60 55       	mov.w	@r5+,r0
  48:	43 28       	shll16	r3
  4a:	23 2d       	xtrct	r2,r3
  4c:	17 33       	mov.l	r3,@(12,r7)
  4e:	40 28       	shll16	r0
  50:	20 1d       	xtrct	r1,r0
  52:	17 02       	mov.l	r0,@(8,r7)
  54:	e1 ff       	mov	#-1,r1
  56:	41 18       	shll8	r1
  58:	51 17       	mov.l	@(28,r1),r1
  5a:	a0 0a       	bra	72 <dspspr_02>

0000005c <dspspr_01>:
  5c:	17 16       	mov.l	r1,@(24,r7)
  5e:	61 55       	mov.w	@r5+,r1
  60:	62 55       	mov.w	@r5+,r2
  62:	63 55       	mov.w	@r5+,r3
  64:	60 55       	mov.w	@r5+,r0
  66:	43 28       	shll16	r3
  68:	23 2d       	xtrct	r2,r3
  6a:	17 33       	mov.l	r3,@(12,r7)
  6c:	40 28       	shll16	r0
  6e:	20 1d       	xtrct	r1,r0
  70:	17 02       	mov.l	r0,@(8,r7)

00000072 <dspspr_02>:
  72:	50 40       	mov.l	@(0,r4),r0
  74:	51 41       	mov.l	@(4,r4),r1
  76:	17 04       	mov.l	r0,@(16,r7)
  78:	66 6d       	extu.w	r6,r6
  7a:	26 68       	tst	r6,r6
  7c:	8d 24       	bt.s	c8 <dspspr_05>
  7e:	17 15       	mov.l	r1,@(20,r7)
  80:	60 68       	swap.b	r6,r0
  82:	40 09       	shlr2	r0
  84:	40 09       	shlr2	r0
  86:	e2 0c       	mov	#12,r2
  88:	22 09       	and	r0,r2
  8a:	c7 17       	mova	e8 <scidx_tbl>,r0
  8c:	32 0c       	add	r0,r2
  8e:	61 24       	mov.b	@r2+,r1
  90:	60 24       	mov.b	@r2+,r0
  92:	65 63       	mov	r6,r5
  94:	26 1a       	xor	r1,r6
  96:	91 2f       	mov.w	f8 <IMM_3ffe>,r1	! 3ffe
  98:	25 0a       	xor	r0,r5
  9a:	d0 12       	mov.l	e4 <IMM_sin_tbl>,r0	! 0 <_slDispSprite>
  9c:	26 19       	and	r1,r6
  9e:	25 19       	and	r1,r5
  a0:	06 6d       	mov.w	@(r0,r6),r6
  a2:	05 5d       	mov.w	@(r0,r5),r5
  a4:	60 24       	mov.b	@r2+,r0
  a6:	61 24       	mov.b	@r2+,r1
  a8:	66 6d       	extu.w	r6,r6
  aa:	65 5d       	extu.w	r5,r5
  ac:	76 02       	add	#2,r6
  ae:	75 02       	add	#2,r5
  b0:	26 0a       	xor	r0,r6
  b2:	25 1a       	xor	r1,r5
  b4:	17 67       	mov.l	r6,@(28,r7)
  b6:	17 58       	mov.l	r5,@(32,r7)
  b8:	e0 18       	mov	#24,r0
  ba:	17 00       	mov.l	r0,@(0,r7)
  bc:	e0 24       	mov	#36,r0
  be:	30 7c       	add	r7,r0
  c0:	d1 07       	mov.l	e0 <IMM_FRT_INTR>,r1	! 21000000
  c2:	c2 12       	mov.l	r0,@(72,gbr)
  c4:	00 0b       	rts	
  c6:	21 01       	mov.w	r0,@r1

000000c8 <dspspr_05>:
  c8:	e0 1c       	mov	#28,r0
  ca:	17 00       	mov.l	r0,@(0,r7)
  cc:	e0 1c       	mov	#28,r0
  ce:	30 7c       	add	r7,r0
  d0:	d1 03       	mov.l	e0 <IMM_FRT_INTR>,r1	! 21000000
  d2:	c2 12       	mov.l	r0,@(72,gbr)
  d4:	00 0b       	rts	
  d6:	21 01       	mov.w	r0,@r1

000000d8 <dspspr_09>:
  d8:	00 0b       	rts	
  da:	e0 00       	mov	#0,r0

000000dc <IMM_SpriteEntry>:
  dc:	00 00       	.word 0x0000
	...

000000e0 <IMM_FRT_INTR>:
  e0:	21 00       	mov.b	r0,@r1
	...

000000e4 <IMM_sin_tbl>:
  e4:	00 00       	.word 0x0000
	...

000000e8 <scidx_tbl>:
  e8:	00 ff       	mac.l	@r15+,@r0+
  ea:	00 00       	.word 0x0000
  ec:	ff 00       	fadd	fr0,fr15
  ee:	00 ff       	mac.l	@r15+,@r0+
  f0:	00 ff       	mac.l	@r15+,@r0+
  f2:	ff ff       	.word 0xffff
  f4:	ff 00       	fadd	fr0,fr15
  f6:	ff 00       	fadd	fr0,fr15

000000f8 <IMM_3ffe>:
  f8:	3f fe       	addc	r15,r15
