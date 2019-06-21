
sglC11.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSetTVMode>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	b0 5f       	bsr	c4 <_slSetScrTVMode>
   4:	00 09       	nop	
   6:	4f 26       	lds.l	@r15+,pr

00000008 <_slSetSprTVMode>:
   8:	e1 1f       	mov	#31,r1
   a:	24 19       	and	r1,r4
   c:	c4 b0       	mov.b	@(176,gbr),r0
   e:	66 43       	mov	r4,r6
  10:	26 0a       	xor	r0,r6
  12:	e2 04       	mov	#4,r2
  14:	26 28       	tst	r2,r6
  16:	8f 73       	bf.s	100 <tvmd_err>
  18:	e2 08       	mov	#8,r2
  1a:	22 49       	and	r4,r2
  1c:	c5 d0       	mov.w	@(416,gbr),r0
  1e:	e1 d7       	mov	#-41,r1
  20:	20 19       	and	r1,r0
  22:	20 2b       	or	r2,r0
  24:	c1 d0       	mov.w	r0,@(416,gbr)
  26:	c4 b0       	mov.b	@(176,gbr),r0
  28:	d3 38       	mov.l	10c <IMM_SpritePort>,r3	! 25d00000
  2a:	c9 80       	and	#-128,r0
  2c:	20 4b       	or	r4,r0
  2e:	c8 10       	tst	#16,r0
  30:	89 00       	bt	34 <tvmd_01>
  32:	c9 7f       	and	#127,r0

00000034 <tvmd_01>:
  34:	c0 b0       	mov.b	r0,@(176,gbr)
  36:	40 09       	shlr2	r0
  38:	40 01       	shlr	r0
  3a:	c9 01       	and	#1,r0
  3c:	81 30       	mov.w	r0,@(0,r3)
  3e:	60 43       	mov	r4,r0
  40:	c9 10       	and	#16,r0
  42:	40 01       	shlr	r0
  44:	81 31       	mov.w	r0,@(2,r3)
  46:	c6 12       	mov.l	@(72,gbr),r0
  48:	e1 10       	mov	#16,r1
  4a:	67 03       	mov	r0,r7
  4c:	90 5a       	mov.w	104 <IMM_7fff>,r0	! 7fff
  4e:	17 10       	mov.l	r1,@(0,r7)
  50:	17 01       	mov.l	r0,@(4,r7)
  52:	61 43       	mov	r4,r1
  54:	d0 32       	mov.l	120 <IMM_TVSizeTbl>,r0	! 0 <_slSetTVMode>
  56:	41 08       	shll2	r1
  58:	01 1e       	mov.l	@(r0,r1),r1
  5a:	e0 00       	mov	#0,r0
  5c:	17 02       	mov.l	r0,@(8,r7)
  5e:	60 19       	swap.w	r1,r0
  60:	40 28       	shll16	r0
  62:	c2 1a       	mov.l	r0,@(104,gbr)
  64:	17 06       	mov.l	r0,@(24,r7)
  66:	e2 0c       	mov	#12,r2
  68:	17 25       	mov.l	r2,@(20,r7)
  6a:	e2 01       	mov	#1,r2
  6c:	42 28       	shll16	r2
  6e:	60 1b       	neg	r1,r0
  70:	30 2c       	add	r2,r0
  72:	72 01       	add	#1,r2
  74:	c2 1e       	mov.l	r0,@(120,gbr)
  76:	60 13       	mov	r1,r0
  78:	17 14       	mov.l	r1,@(16,r7)
  7a:	c2 24       	mov.l	r0,@(144,gbr)
  7c:	30 0c       	add	r0,r0
  7e:	c2 20       	mov.l	r0,@(128,gbr)
  80:	c2 21       	mov.l	r0,@(132,gbr)
  82:	30 28       	sub	r2,r0
  84:	17 03       	mov.l	r0,@(12,r7)
  86:	63 03       	mov	r0,r3
  88:	60 13       	mov	r1,r0
  8a:	30 28       	sub	r2,r0
  8c:	c2 1f       	mov.l	r0,@(124,gbr)
  8e:	c6 c1       	mov.l	@(772,gbr),r0
  90:	60 09       	swap.w	r0,r0
  92:	30 1c       	add	r1,r0
  94:	c2 26       	mov.l	r0,@(152,gbr)
  96:	d2 1e       	mov.l	110 <IMM_SpriteVRAM>,r2	! 25c00000
  98:	e0 1c       	mov	#28,r0
  9a:	30 7c       	add	r7,r0
  9c:	12 35       	mov.l	r3,@(20,r2)
  9e:	d1 21       	mov.l	124 <IMM_FRT_INTR>,r1	! 21000000
  a0:	c2 12       	mov.l	r0,@(72,gbr)
  a2:	21 01       	mov.w	r0,@r1
  a4:	e1 08       	mov	#8,r1
  a6:	24 18       	tst	r1,r4
  a8:	8d 0a       	bt.s	c0 <tvmd_06>
  aa:	26 18       	tst	r1,r6
  ac:	89 08       	bt	c0 <tvmd_06>
  ae:	d2 1a       	mov.l	118 <IMM_SCRL_TVSTAT>,r2	! 25f80004

000000b0 <tvmd_05>:
  b0:	60 21       	mov.w	@r2,r0
  b2:	c8 02       	tst	#2,r0
  b4:	89 fc       	bt	b0 <tvmd_05>
  b6:	c4 12       	mov.b	@(18,gbr),r0
  b8:	70 01       	add	#1,r0
  ba:	c9 fe       	and	#-2,r0
  bc:	c0 12       	mov.b	r0,@(18,gbr)
  be:	c0 13       	mov.b	r0,@(19,gbr)

000000c0 <tvmd_06>:
  c0:	00 0b       	rts	
  c2:	e0 01       	mov	#1,r0

000000c4 <_slSetScrTVMode>:
  c4:	e1 1f       	mov	#31,r1
  c6:	24 19       	and	r1,r4
  c8:	c4 b0       	mov.b	@(176,gbr),r0
  ca:	66 43       	mov	r4,r6
  cc:	26 0a       	xor	r0,r6
  ce:	e2 04       	mov	#4,r2
  d0:	26 28       	tst	r2,r6
  d2:	8f 15       	bf.s	100 <tvmd_err>
  d4:	e2 10       	mov	#16,r2
  d6:	d1 11       	mov.l	11c <IMM_TVModeTbl>,r1	! 0 <_slSetTVMode>
  d8:	24 28       	tst	r2,r4
  da:	8d 02       	bt.s	e2 <scmd_01>
  dc:	31 4c       	add	r4,r1
  de:	c9 7f       	and	#127,r0
  e0:	c0 b0       	mov.b	r0,@(176,gbr)

000000e2 <scmd_01>:
  e2:	60 10       	mov.b	@r1,r0
  e4:	c0 c1       	mov.b	r0,@(193,gbr)
  e6:	61 43       	mov	r4,r1
  e8:	d0 0d       	mov.l	120 <IMM_TVSizeTbl>,r0	! 0 <_slSetTVMode>
  ea:	41 08       	shll2	r1
  ec:	01 1e       	mov.l	@(r0,r1),r1
  ee:	d2 09       	mov.l	114 <IMM_RotScrParA>,r2	! 60ffe54
  f0:	60 19       	swap.w	r1,r0
  f2:	22 01       	mov.w	r0,@r2
  f4:	81 24       	mov.w	r0,@(8,r2)
  f6:	72 68       	add	#104,r2
  f8:	22 01       	mov.w	r0,@r2
  fa:	81 24       	mov.w	r0,@(8,r2)
  fc:	00 0b       	rts	
  fe:	e0 01       	mov	#1,r0

00000100 <tvmd_err>:
 100:	00 0b       	rts	
 102:	e0 00       	mov	#0,r0

00000104 <IMM_7fff>:
 104:	7f ff       	add	#-1,r15

00000106 <IMM_FrameXsize2>:
 106:	01 40       	.word 0x0140

00000108 <IMM_FrameYsize2>:
 108:	02 00       	.word 0x0200
	...

0000010c <IMM_SpritePort>:
 10c:	25 d0       	mov.b	r13,@r5
	...

00000110 <IMM_SpriteVRAM>:
 110:	25 c0       	mov.b	r12,@r5
	...

00000114 <IMM_RotScrParA>:
 114:	06 0f       	mac.l	@r0+,@r6+
 116:	fe 54       	fcmp/eq	fr5,fr14

00000118 <IMM_SCRL_TVSTAT>:
 118:	25 f8       	tst	r15,r5
 11a:	00 04       	mov.b	r0,@(r0,r0)

0000011c <IMM_TVModeTbl>:
 11c:	00 00       	.word 0x0000
	...

00000120 <IMM_TVSizeTbl>:
 120:	00 00       	.word 0x0000
	...

00000124 <IMM_FRT_INTR>:
 124:	21 00       	mov.b	r0,@r1
	...
