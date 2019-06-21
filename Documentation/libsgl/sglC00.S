
sglC00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitSprite>:
   0:	d0 40       	mov.l	104 <IMM_CommandBuf>,r0	! 0 <_slInitSprite>
   2:	d1 41       	mov.l	108 <IMM_CasheThrough>,r1	! 20000000
   4:	60 02       	mov.l	@r0,r0
   6:	20 1b       	or	r1,r0
   8:	c2 11       	mov.l	r0,@(68,gbr)
   a:	c2 12       	mov.l	r0,@(72,gbr)
   c:	63 03       	mov	r0,r3
   e:	d7 3f       	mov.l	10c <IMM_SpriteVRAM>,r7	! 25c00000
  10:	d6 3f       	mov.l	110 <IMM_SpritePort>,r6	! 25d00000
  12:	90 72       	mov.w	fa <IMM_FUNC_End>,r0	! 8000
  14:	27 01       	mov.w	r0,@r7
  16:	c4 b0       	mov.b	@(176,gbr),r0
  18:	e1 1f       	mov	#31,r1
  1a:	24 19       	and	r1,r4
  1c:	c9 80       	and	#-128,r0
  1e:	20 4b       	or	r4,r0
  20:	c8 10       	tst	#16,r0
  22:	89 00       	bt	26 <insp_01>
  24:	c9 7f       	and	#127,r0

00000026 <insp_01>:
  26:	c0 b0       	mov.b	r0,@(176,gbr)
  28:	40 09       	shlr2	r0
  2a:	40 01       	shlr	r0
  2c:	c9 01       	and	#1,r0
  2e:	44 08       	shll2	r4
  30:	81 60       	mov.w	r0,@(0,r6)
  32:	13 41       	mov.l	r4,@(4,r3)
  34:	e1 08       	mov	#8,r1
  36:	13 10       	mov.l	r1,@(0,r3)
  38:	60 33       	mov	r3,r0
  3a:	d1 3c       	mov.l	12c <IMM_FRT_INTR>,r1	! 21000000
  3c:	70 08       	add	#8,r0
  3e:	c2 12       	mov.l	r0,@(72,gbr)
  40:	21 01       	mov.w	r0,@r1
  42:	60 53       	mov	r5,r0
  44:	c2 0f       	mov.l	r0,@(60,gbr)
  46:	d0 38       	mov.l	128 <IMM_TVSizeTbl>,r0	! 0 <_slInitSprite>
  48:	e1 01       	mov	#1,r1
  4a:	02 4e       	mov.l	@(r0,r4),r2
  4c:	41 28       	shll16	r1
  4e:	60 29       	swap.w	r2,r0
  50:	40 28       	shll16	r0
  52:	c2 1a       	mov.l	r0,@(104,gbr)
  54:	60 2b       	neg	r2,r0
  56:	30 1c       	add	r1,r0
  58:	c2 1e       	mov.l	r0,@(120,gbr)
  5a:	d0 29       	mov.l	100 <IMM_FrameXsize_2>,r0	! 1400200
  5c:	71 01       	add	#1,r1
  5e:	30 2c       	add	r2,r0
  60:	c2 26       	mov.l	r0,@(152,gbr)
  62:	60 23       	mov	r2,r0
  64:	c2 24       	mov.l	r0,@(144,gbr)
  66:	30 18       	sub	r1,r0
  68:	c2 1f       	mov.l	r0,@(124,gbr)
  6a:	32 2c       	add	r2,r2
  6c:	60 23       	mov	r2,r0
  6e:	c2 20       	mov.l	r0,@(128,gbr)
  70:	c2 21       	mov.l	r0,@(132,gbr)
  72:	30 18       	sub	r1,r0
  74:	17 05       	mov.l	r0,@(20,r7)
  76:	e0 00       	mov	#0,r0
  78:	c2 e0       	mov.l	r0,@(896,gbr)
  7a:	c2 e2       	mov.l	r0,@(904,gbr)
  7c:	e0 01       	mov	#1,r0
  7e:	c2 de       	mov.l	r0,@(888,gbr)
  80:	d0 1e       	mov.l	fc <IMM_512_320>,r0	! 2000140
  82:	c2 c1       	mov.l	r0,@(772,gbr)
  84:	43 28       	shll16	r3
  86:	23 0b       	or	r0,r3
  88:	33 3c       	add	r3,r3
  8a:	60 23       	mov	r2,r0
  8c:	30 3c       	add	r3,r0
  8e:	c2 23       	mov.l	r0,@(140,gbr)
  90:	91 33       	mov.w	fa <IMM_FUNC_End>,r1	! 8000
  92:	60 73       	mov	r7,r0
  94:	70 20       	add	#32,r0
  96:	20 11       	mov.w	r1,@r0
  98:	d0 1e       	mov.l	114 <IMM_SpriteBuf>,r0	! 0 <_slInitSprite>
  9a:	d1 1f       	mov.l	118 <IMM_SpriteBufSize>,r1	! 0 <_slInitSprite>
  9c:	60 02       	mov.l	@r0,r0
  9e:	61 12       	mov.l	@r1,r1
  a0:	70 dc       	add	#-36,r0
  a2:	41 01       	shlr	r1
  a4:	30 1c       	add	r1,r0
  a6:	c2 0c       	mov.l	r0,@(48,gbr)
  a8:	e0 00       	mov	#0,r0
  aa:	c2 10       	mov.l	r0,@(64,gbr)
  ac:	d1 20       	mov.l	130 <IMM_FUNC_SystemClip>,r1	! 10090004
  ae:	27 12       	mov.l	r1,@r7
  b0:	e0 00       	mov	#0,r0
  b2:	81 61       	mov.w	r0,@(2,r6)
  b4:	e0 02       	mov	#2,r0
  b6:	81 62       	mov.w	r0,@(4,r6)
  b8:	e0 00       	mov	#0,r0
  ba:	c1 39       	mov.w	r0,@(114,gbr)
  bc:	81 63       	mov.w	r0,@(6,r6)
  be:	81 64       	mov.w	r0,@(8,r6)
  c0:	90 19       	mov.w	f6 <IMM_ERASE_SIZE>,r0	! 58ff
  c2:	d1 16       	mov.l	11c <IMM_Pbuffer>,r1	! 0 <_slInitSprite>
  c4:	d2 17       	mov.l	124 <IMM_MaxVertices>,r2	! 0 <_slInitSprite>
  c6:	d3 16       	mov.l	120 <IMM_MaxPolygons>,r3	! 0 <_slInitSprite>
  c8:	81 65       	mov.w	r0,@(10,r6)
  ca:	60 12       	mov.l	@r1,r0
  cc:	62 21       	mov.w	@r2,r2
  ce:	63 31       	mov.w	@r3,r3
  d0:	c2 09       	mov.l	r0,@(36,gbr)
  d2:	60 29       	swap.w	r2,r0
  d4:	20 3d       	xtrct	r3,r0
  d6:	c2 22       	mov.l	r0,@(136,gbr)
  d8:	90 0e       	mov.w	f8 <IMM_7fff>,r0	! 7fff
  da:	c1 38       	mov.w	r0,@(112,gbr)
  dc:	e0 00       	mov	#0,r0
  de:	c0 a8       	mov.b	r0,@(168,gbr)
  e0:	c2 1d       	mov.l	r0,@(116,gbr)
  e2:	c2 13       	mov.l	r0,@(76,gbr)
  e4:	c2 14       	mov.l	r0,@(80,gbr)
  e6:	e0 ff       	mov	#-1,r0
  e8:	c0 a6       	mov.b	r0,@(166,gbr)
  ea:	40 28       	shll16	r0
  ec:	c2 15       	mov.l	r0,@(84,gbr)
  ee:	e0 01       	mov	#1,r0
  f0:	c0 a6       	mov.b	r0,@(166,gbr)
  f2:	00 0b       	rts	
  f4:	c0 ac       	mov.b	r0,@(172,gbr)

000000f6 <IMM_ERASE_SIZE>:
  f6:	58 ff       	mov.l	@(60,r15),r8

000000f8 <IMM_7fff>:
  f8:	7f ff       	add	#-1,r15

000000fa <IMM_FUNC_End>:
  fa:	80 00       	mov.b	r0,@(0,r0)

000000fc <IMM_512_320>:
  fc:	02 00       	.word 0x0200
  fe:	01 40       	.word 0x0140

00000100 <IMM_FrameXsize_2>:
 100:	01 40       	.word 0x0140

00000102 <IMM_FrameYsize_2>:
 102:	02 00       	.word 0x0200

00000104 <IMM_CommandBuf>:
 104:	00 00       	.word 0x0000
	...

00000108 <IMM_CasheThrough>:
 108:	20 00       	mov.b	r0,@r0
	...

0000010c <IMM_SpriteVRAM>:
 10c:	25 c0       	mov.b	r12,@r5
	...

00000110 <IMM_SpritePort>:
 110:	25 d0       	mov.b	r13,@r5
	...

00000114 <IMM_SpriteBuf>:
 114:	00 00       	.word 0x0000
	...

00000118 <IMM_SpriteBufSize>:
 118:	00 00       	.word 0x0000
	...

0000011c <IMM_Pbuffer>:
 11c:	00 00       	.word 0x0000
	...

00000120 <IMM_MaxPolygons>:
 120:	00 00       	.word 0x0000
	...

00000124 <IMM_MaxVertices>:
 124:	00 00       	.word 0x0000
	...

00000128 <IMM_TVSizeTbl>:
 128:	00 00       	.word 0x0000
	...

0000012c <IMM_FRT_INTR>:
 12c:	21 00       	mov.b	r0,@r1
	...

00000130 <IMM_FUNC_SystemClip>:
 130:	10 09       	mov.l	r0,@(36,r0)
 132:	00 04       	mov.b	r0,@(r0,r0)
