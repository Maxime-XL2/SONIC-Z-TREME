
sglJ03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_sbMakeDMATable>:
   0:	da 44       	mov.l	114 <IMM_Zbuffer>,r10	! 0 <_sbMakeDMATable>
   2:	db 43       	mov.l	110 <IMM_SortList>,r11	! 0 <_sbMakeDMATable>
   4:	6a a2       	mov.l	@r10,r10
   6:	9c 80       	mov.w	10a <IMM_ZmaxcntX4X2>,r12	! 400
   8:	6b b2       	mov.l	@r11,r11
   a:	d0 49       	mov.l	130 <IMM_Resolution>,r0	! 260ffcb0
   c:	3a cc       	add	r12,r10
   e:	60 00       	mov.b	@r0,r0
  10:	6c a3       	mov	r10,r12
  12:	c8 80       	tst	#-128,r0
  14:	8d 03       	bt.s	1e <stpr_lp_0>
  16:	7a fc       	add	#-4,r10
  18:	d0 46       	mov.l	134 <IMM_ErasePolygonData>,r0	! 0 <_sbMakeDMATable>
  1a:	1b 02       	mov.l	r0,@(8,r11)
  1c:	7b 0c       	add	#12,r11

0000001e <stpr_lp_0>:
  1e:	99 75       	mov.w	10c <IMM_Zmaxcnt>,r9	! 80

00000020 <stpr_lp_1>:
  20:	68 a2       	mov.l	@r10,r8

00000022 <stpr_lp_2>:
  22:	7a fc       	add	#-4,r10
  24:	28 88       	tst	r8,r8
  26:	8f 10       	bf.s	4a <stpr_lp_10>
  28:	49 10       	dt	r9
  2a:	8f fa       	bf.s	22 <stpr_lp_2>
  2c:	68 a2       	mov.l	@r10,r8
  2e:	c4 a9       	mov.b	@(169,gbr),r0
  30:	c8 20       	tst	#32,r0
  32:	8d 3b       	bt.s	ac <stpr_lp_30>
  34:	e0 00       	mov	#0,r0
  36:	c0 a9       	mov.b	r0,@(169,gbr)
  38:	60 a3       	mov	r10,r0
  3a:	d1 38       	mov.l	11c <IMM_Window2_data>,r1	! 60fff00
  3c:	70 04       	add	#4,r0
  3e:	d2 39       	mov.l	124 <IMM_Center2_data>,r2	! 60fff2c
  40:	c2 0e       	mov.l	r0,@(56,gbr)
  42:	1b 12       	mov.l	r1,@(8,r11)
  44:	1b 25       	mov.l	r2,@(20,r11)
  46:	af ea       	bra	1e <stpr_lp_0>
  48:	7b 18       	add	#24,r11

0000004a <stpr_lp_10>:
  4a:	e6 00       	mov	#0,r6
  4c:	e7 00       	mov	#0,r7

0000004e <stpr_lp_11>:
  4e:	85 8f       	mov.w	@(30,r8),r0
  50:	52 88       	mov.l	@(32,r8),r2
  52:	60 0c       	extu.b	r0,r0
  54:	40 08       	shll2	r0
  56:	36 02       	cmp/hs	r0,r6
  58:	8d 01       	bt.s	5e <stpr_lp_15>
  5a:	01 ce       	mov.l	@(r0,r12),r1
  5c:	66 03       	mov	r0,r6

0000005e <stpr_lp_15>:
  5e:	18 18       	mov.l	r1,@(32,r8)
  60:	77 01       	add	#1,r7
  62:	0c 86       	mov.l	r8,@(r0,r12)
  64:	22 28       	tst	r2,r2
  66:	8f f2       	bf.s	4e <stpr_lp_11>
  68:	68 23       	mov	r2,r8
  6a:	1a 21       	mov.l	r2,@(4,r10)
  6c:	68 c3       	mov	r12,r8
  6e:	38 6c       	add	r6,r8

00000070 <stpr_lp_20>:
  70:	66 82       	mov.l	@r8,r6
  72:	78 fc       	add	#-4,r8
  74:	26 68       	tst	r6,r6
  76:	89 fb       	bt	70 <stpr_lp_20>

00000078 <stpr_lp_25>:
  78:	50 68       	mov.l	@(32,r6),r0
  7a:	1b 62       	mov.l	r6,@(8,r11)
  7c:	7b 0c       	add	#12,r11
  7e:	66 03       	mov	r0,r6
  80:	20 08       	tst	r0,r0
  82:	8f f9       	bf.s	78 <stpr_lp_25>
  84:	47 10       	dt	r7
  86:	8f f3       	bf.s	70 <stpr_lp_20>
  88:	18 01       	mov.l	r0,@(4,r8)

0000008a <stpr_lp_29>:
  8a:	29 98       	tst	r9,r9
  8c:	8f c9       	bf.s	22 <stpr_lp_2>
  8e:	68 a2       	mov.l	@r10,r8
  90:	c4 a9       	mov.b	@(169,gbr),r0
  92:	c8 20       	tst	#32,r0
  94:	8d 0a       	bt.s	ac <stpr_lp_30>
  96:	e0 00       	mov	#0,r0
  98:	c0 a9       	mov.b	r0,@(169,gbr)
  9a:	60 a3       	mov	r10,r0
  9c:	70 04       	add	#4,r0
  9e:	d1 1f       	mov.l	11c <IMM_Window2_data>,r1	! 60fff00
  a0:	d2 20       	mov.l	124 <IMM_Center2_data>,r2	! 60fff2c
  a2:	c2 0e       	mov.l	r0,@(56,gbr)
  a4:	1b 12       	mov.l	r1,@(8,r11)
  a6:	1b 25       	mov.l	r2,@(20,r11)
  a8:	af b9       	bra	1e <stpr_lp_0>
  aa:	7b 18       	add	#24,r11

000000ac <stpr_lp_30>:
  ac:	d2 1e       	mov.l	128 <IMM_End_Sprite>,r2	! 8000010e
  ae:	1b 22       	mov.l	r2,@(8,r11)
  b0:	51 b1       	mov.l	@(4,r11),r1
  b2:	e0 01       	mov	#1,r0
  b4:	c0 a8       	mov.b	r0,@(168,gbr)
  b6:	60 1d       	extu.w	r1,r0
  b8:	40 09       	shlr2	r0
  ba:	40 09       	shlr2	r0
  bc:	40 01       	shlr	r0
  be:	70 fd       	add	#-3,r0
  c0:	c1 52       	mov.w	r0,@(164,gbr)
  c2:	e0 ff       	mov	#-1,r0
  c4:	c0 a6       	mov.b	r0,@(166,gbr)
  c6:	d6 14       	mov.l	118 <IMM_Window1_data>,r6	! 60ffefc
  c8:	74 fc       	add	#-4,r4
  ca:	d7 1c       	mov.l	13c <IMM_SpriteVRAM>,r7	! 25c00020
  cc:	50 60       	mov.l	@(0,r6),r0
  ce:	51 63       	mov.l	@(12,r6),r1
  d0:	52 65       	mov.l	@(20,r6),r2
  d2:	17 00       	mov.l	r0,@(0,r7)
  d4:	17 13       	mov.l	r1,@(12,r7)
  d6:	17 25       	mov.l	r2,@(20,r7)
  d8:	50 6b       	mov.l	@(44,r6),r0
  da:	51 6e       	mov.l	@(56,r6),r1
  dc:	17 08       	mov.l	r0,@(32,r7)
  de:	17 1b       	mov.l	r1,@(44,r7)
  e0:	d2 12       	mov.l	12c <IMM_SpriteBuf>,r2	! 0 <_sbMakeDMATable>
  e2:	c6 10       	mov.l	@(64,gbr),r0
  e4:	62 22       	mov.l	@r2,r2
  e6:	30 2c       	add	r2,r0
  e8:	c2 0d       	mov.l	r0,@(52,gbr)
  ea:	e1 a4       	mov	#-92,r1
  ec:	41 08       	shll2	r1
  ee:	e0 11       	mov	#17,r0
  f0:	80 12       	mov.b	r0,@(2,r1)
  f2:	00 09       	nop	
  f4:	00 09       	nop	
  f6:	00 09       	nop	
  f8:	00 09       	nop	
  fa:	00 09       	nop	
  fc:	00 09       	nop	
  fe:	00 09       	nop	
 100:	00 09       	nop	
 102:	00 09       	nop	
 104:	00 09       	nop	
 106:	00 0b       	rts	
 108:	00 09       	nop	

0000010a <IMM_ZmaxcntX4X2>:
 10a:	04 00       	.word 0x0400

0000010c <IMM_Zmaxcnt>:
 10c:	00 80       	.word 0x0080

0000010e <_End_Sprite>:
 10e:	80 00       	mov.b	r0,@(0,r0)

00000110 <IMM_SortList>:
 110:	00 00       	.word 0x0000
	...

00000114 <IMM_Zbuffer>:
 114:	00 00       	.word 0x0000
	...

00000118 <IMM_Window1_data>:
 118:	06 0f       	mac.l	@r0+,@r6+
 11a:	fe fc       	fmov	fr15,fr14

0000011c <IMM_Window2_data>:
 11c:	06 0f       	mac.l	@r0+,@r6+
 11e:	ff 00       	fadd	fr0,fr15

00000120 <IMM_Center1_data>:
 120:	06 0f       	mac.l	@r0+,@r6+
 122:	ff 28       	fmov	@r2,fr15

00000124 <IMM_Center2_data>:
 124:	06 0f       	mac.l	@r0+,@r6+
 126:	ff 2c       	fmov	fr2,fr15

00000128 <IMM_End_Sprite>:
 128:	80 00       	mov.b	r0,@(0,r0)
 12a:	01 0e       	mov.l	@(r0,r0),r1

0000012c <IMM_SpriteBuf>:
 12c:	00 00       	.word 0x0000
	...

00000130 <IMM_Resolution>:
 130:	26 0f       	muls.w	r0,r6
 132:	fc b0       	fadd	fr11,fr12

00000134 <IMM_ErasePolygonData>:
 134:	00 00       	.word 0x0000
	...

00000138 <IMM_SortListSize>:
 138:	00 00       	.word 0x0000
	...

0000013c <IMM_SpriteVRAM>:
 13c:	25 c0       	mov.b	r12,@r5
 13e:	00 20       	.word 0x0020
