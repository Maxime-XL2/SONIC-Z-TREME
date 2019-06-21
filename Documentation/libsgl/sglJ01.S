
sglJ01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_SlaveControl>:
   0:	d0 15       	mov.l	58 <IMM_CommandBuf>,r0	! 0 <_SlaveControl>
   2:	d1 14       	mov.l	54 <IMM_SYSTEM_CTRL>,r1	! 60ffc00
   4:	d2 15       	mov.l	5c <IMM_CasheThrough>,r2	! 20000000
   6:	60 02       	mov.l	@r0,r0
   8:	41 1e       	ldc	r1,gbr
   a:	20 2b       	or	r2,r0
   c:	c2 11       	mov.l	r0,@(68,gbr)

0000000e <excmd_lp_0>:
   e:	d2 14       	mov.l	60 <IMM_ComWrPtr>,r2	! 260ffc48
  10:	64 03       	mov	r0,r4
  12:	61 22       	mov.l	@r2,r1

00000014 <excmd_lp_1>:
  14:	31 40       	cmp/eq	r4,r1
  16:	89 13       	bt	40 <excmd_lp_10>
  18:	60 46       	mov.l	@r4+,r0
  1a:	e1 7c       	mov	#124,r1
  1c:	21 09       	and	r0,r1
  1e:	c7 11       	mova	64 <comjmp_tbl>,r0
  20:	01 1e       	mov.l	@(r0,r1),r1
  22:	60 46       	mov.l	@r4+,r0
  24:	41 0b       	jsr	@r1
  26:	00 09       	nop	
  28:	d2 0d       	mov.l	60 <IMM_ComWrPtr>,r2	! 260ffc48
  2a:	60 43       	mov	r4,r0
  2c:	61 22       	mov.l	@r2,r1
  2e:	c2 11       	mov.l	r0,@(68,gbr)
  30:	31 43       	cmp/ge	r4,r1
  32:	89 ef       	bt	14 <excmd_lp_1>
  34:	d0 08       	mov.l	58 <IMM_CommandBuf>,r0	! 0 <_SlaveControl>
  36:	d1 09       	mov.l	5c <IMM_CasheThrough>,r1	! 20000000
  38:	60 02       	mov.l	@r0,r0
  3a:	20 1b       	or	r1,r0
  3c:	af e7       	bra	e <excmd_lp_0>
  3e:	c2 11       	mov.l	r0,@(68,gbr)

00000040 <excmd_lp_10>:
  40:	91 06       	mov.w	50 <IMM_FRTC>,r1	! fe11

00000042 <excmd_lp_11>:
  42:	60 10       	mov.b	@r1,r0
  44:	c8 80       	tst	#-128,r0
  46:	89 fc       	bt	42 <excmd_lp_11>
  48:	e0 00       	mov	#0,r0
  4a:	21 00       	mov.b	r0,@r1
  4c:	af df       	bra	e <excmd_lp_0>
  4e:	c6 11       	mov.l	@(68,gbr),r0

00000050 <IMM_FRTC>:
  50:	fe 11       	fsub	fr1,fr14
	...

00000054 <IMM_SYSTEM_CTRL>:
  54:	06 0f       	mac.l	@r0+,@r6+
  56:	fc 00       	fadd	fr0,fr12

00000058 <IMM_CommandBuf>:
  58:	00 00       	.word 0x0000
	...

0000005c <IMM_CasheThrough>:
  5c:	20 00       	mov.b	r0,@r0
	...

00000060 <IMM_ComWrPtr>:
  60:	26 0f       	muls.w	r0,r6
  62:	fc 48       	fmov	@r4,fr12

00000064 <comjmp_tbl>:
  64:	00 00       	.word 0x0000
  66:	00 ac       	mov.b	@(r0,r10),r0
  68:	00 00       	.word 0x0000
  6a:	00 00       	.word 0x0000
  6c:	00 00       	.word 0x0000
  6e:	01 82       	stc	r0_bank,r1
  70:	00 00       	.word 0x0000
  72:	01 58       	.word 0x0158
  74:	00 00       	.word 0x0000
  76:	02 8e       	mov.l	@(r0,r8),r2
	...
  88:	00 00       	.word 0x0000
  8a:	01 6a       	sts	fpscr,r1
  8c:	00 00       	.word 0x0000
  8e:	00 00       	.word 0x0000
  90:	00 00       	.word 0x0000
  92:	03 02       	stc	sr,r3
  94:	00 00       	.word 0x0000
  96:	00 b0       	.word 0x00b0
  98:	00 00       	.word 0x0000
  9a:	01 44       	mov.b	r4,@(r0,r1)
  9c:	00 00       	.word 0x0000
  9e:	03 20       	.word 0x0320
  a0:	00 00       	.word 0x0000
  a2:	01 76       	mov.l	r7,@(r0,r1)
  a4:	00 00       	.word 0x0000
  a6:	01 7a       	.word 0x017a
  a8:	00 00       	.word 0x0000
  aa:	01 7e       	mov.l	@(r0,r7),r1

000000ac <_sbNoOperation>:
  ac:	00 0b       	rts	
  ae:	74 fc       	add	#-4,r4

000000b0 <_sbUseOperation>:
  b0:	2f e6       	mov.l	r14,@-r15
  b2:	2f d6       	mov.l	r13,@-r15
  b4:	2f c6       	mov.l	r12,@-r15
  b6:	2f b6       	mov.l	r11,@-r15
  b8:	2f a6       	mov.l	r10,@-r15
  ba:	2f 96       	mov.l	r9,@-r15
  bc:	2f 86       	mov.l	r8,@-r15
  be:	2f 46       	mov.l	r4,@-r15
  c0:	4f 22       	sts.l	pr,@-r15
  c2:	40 0b       	jsr	@r0
  c4:	64 42       	mov.l	@r4,r4
  c6:	4f 26       	lds.l	@r15+,pr
  c8:	64 f6       	mov.l	@r15+,r4
  ca:	68 f6       	mov.l	@r15+,r8
  cc:	69 f6       	mov.l	@r15+,r9
  ce:	6a f6       	mov.l	@r15+,r10
  d0:	6b f6       	mov.l	@r15+,r11
  d2:	6c f6       	mov.l	@r15+,r12
  d4:	6d f6       	mov.l	@r15+,r13
  d6:	6e f6       	mov.l	@r15+,r14
  d8:	00 0b       	rts	
  da:	74 04       	add	#4,r4

000000dc <clrZbuf>:
  dc:	e0 00       	mov	#0,r0
  de:	e1 40       	mov	#64,r1

000000e0 <clrzb_lp>:
  e0:	22 02       	mov.l	r0,@r2
  e2:	12 01       	mov.l	r0,@(4,r2)
  e4:	41 10       	dt	r1
  e6:	8f fb       	bf.s	e0 <clrzb_lp>
  e8:	72 08       	add	#8,r2
  ea:	00 0b       	rts	
  ec:	00 09       	nop	

000000ee <init_CLoffset>:
  ee:	65 03       	mov	r0,r5
  f0:	e2 04       	mov	#4,r2
  f2:	42 18       	shll8	r2
  f4:	e3 20       	mov	#32,r3
  f6:	e7 1f       	mov	#31,r7
  f8:	e0 10       	mov	#16,r0

000000fa <inclo_lp_0>:
  fa:	30 38       	sub	r3,r0
  fc:	e1 20       	mov	#32,r1

000000fe <inclo_lp_1>:
  fe:	e6 00       	mov	#0,r6
 100:	40 15       	cmp/pl	r0
 102:	8b 03       	bf	10c <inclo_lp_2>
 104:	66 03       	mov	r0,r6
 106:	36 77       	cmp/gt	r7,r6
 108:	8b 00       	bf	10c <inclo_lp_2>
 10a:	66 73       	mov	r7,r6

0000010c <inclo_lp_2>:
 10c:	25 60       	mov.b	r6,@r5
 10e:	35 2c       	add	r2,r5
 110:	25 60       	mov.b	r6,@r5
 112:	35 2c       	add	r2,r5
 114:	25 60       	mov.b	r6,@r5
 116:	35 28       	sub	r2,r5
 118:	35 28       	sub	r2,r5
 11a:	70 01       	add	#1,r0
 11c:	41 10       	dt	r1
 11e:	8f ee       	bf.s	fe <inclo_lp_1>
 120:	75 01       	add	#1,r5
 122:	43 10       	dt	r3
 124:	8f e9       	bf.s	fa <inclo_lp_0>
 126:	e0 10       	mov	#16,r0
 128:	d3 53       	mov.l	278 <IMM_GouraudRAM>,r3	! 25c7ff00
 12a:	e0 00       	mov	#0,r0
 12c:	92 ae       	mov.w	28c <IMM_RGBadder>,r2	! 421
 12e:	e1 20       	mov	#32,r1

00000130 <inclo_lp_10>:
 130:	81 30       	mov.w	r0,@(0,r3)
 132:	81 31       	mov.w	r0,@(2,r3)
 134:	81 32       	mov.w	r0,@(4,r3)
 136:	81 33       	mov.w	r0,@(6,r3)
 138:	30 2c       	add	r2,r0
 13a:	41 10       	dt	r1
 13c:	8f f8       	bf.s	130 <inclo_lp_10>
 13e:	73 08       	add	#8,r3
 140:	00 0b       	rts	
 142:	00 09       	nop	

00000144 <_sbZdspLevel>:
 144:	c0 ad       	mov.b	r0,@(173,gbr)
 146:	61 03       	mov	r0,r1
 148:	c4 a9       	mov.b	@(169,gbr),r0
 14a:	d3 8b       	mov.l	378 <IMM_CTRL_POLYGON_WINDOW>,r3	! 60ffefc
 14c:	c9 03       	and	#3,r0
 14e:	40 08       	shll2	r0
 150:	70 1f       	add	#31,r0
 152:	33 0c       	add	r0,r3
 154:	00 0b       	rts	
 156:	23 10       	mov.b	r1,@r3

00000158 <_sbSetPerspective>:
 158:	c2 1b       	mov.l	r0,@(108,gbr)
 15a:	61 03       	mov	r0,r1
 15c:	c4 a9       	mov.b	@(169,gbr),r0
 15e:	d3 86       	mov.l	378 <IMM_CTRL_POLYGON_WINDOW>,r3	! 60ffefc
 160:	c9 03       	and	#3,r0
 162:	40 08       	shll2	r0
 164:	70 24       	add	#36,r0
 166:	00 0b       	rts	
 168:	03 16       	mov.l	r1,@(r0,r3)

0000016a <_sbSetLight>:
 16a:	c2 16       	mov.l	r0,@(88,gbr)
 16c:	60 46       	mov.l	@r4+,r0
 16e:	c2 17       	mov.l	r0,@(92,gbr)
 170:	60 46       	mov.l	@r4+,r0
 172:	00 0b       	rts	
 174:	c2 18       	mov.l	r0,@(96,gbr)

00000176 <_sbNearClipFlag>:
 176:	00 0b       	rts	
 178:	c2 df       	mov.l	r0,@(892,gbr)

0000017a <_sbPolygonPutLevel>:
 17a:	00 0b       	rts	
 17c:	c2 e1       	mov.l	r0,@(900,gbr)

0000017e <_sbWindowClipLevel>:
 17e:	00 0b       	rts	
 180:	c2 e3       	mov.l	r0,@(908,gbr)

00000182 <_sbInitialize>:
 182:	d2 3a       	mov.l	26c <IMM_TVSizeTbl>,r2	! 0 <_SlaveControl>
 184:	c9 7c       	and	#124,r0
 186:	30 2c       	add	r2,r0
 188:	62 05       	mov.w	@r0+,r2
 18a:	63 01       	mov.w	@r0,r3
 18c:	d5 38       	mov.l	270 <IMM_CTRL_POLYGON_BASE>,r5	! 60fff28
 18e:	d7 3c       	mov.l	280 <IMM_ErasePolygonData>,r7	! 3bc <ErasePolygonData>
 190:	60 39       	swap.w	r3,r0
 192:	20 2d       	xtrct	r2,r0
 194:	15 03       	mov.l	r0,@(12,r5)
 196:	15 04       	mov.l	r0,@(16,r5)
 198:	c2 25       	mov.l	r0,@(148,gbr)
 19a:	30 0c       	add	r0,r0
 19c:	c2 cc       	mov.l	r0,@(816,gbr)
 19e:	60 2b       	neg	r2,r0
 1a0:	61 3b       	neg	r3,r1
 1a2:	41 28       	shll16	r1
 1a4:	21 0d       	xtrct	r0,r1
 1a6:	17 13       	mov.l	r1,@(12,r7)
 1a8:	60 29       	swap.w	r2,r0
 1aa:	c2 1b       	mov.l	r0,@(108,gbr)
 1ac:	e0 0a       	mov	#10,r0
 1ae:	81 52       	mov.w	r0,@(4,r5)
 1b0:	d0 34       	mov.l	284 <IMM_FUNC_BasePosition>,r0	! 100a000c
 1b2:	15 00       	mov.l	r0,@(0,r5)
 1b4:	95 57       	mov.w	266 <IMM_320>,r5	! 140
 1b6:	90 57       	mov.w	268 <IMM_512>,r0	! 200
 1b8:	35 2c       	add	r2,r5
 1ba:	30 3c       	add	r3,r0
 1bc:	40 28       	shll16	r0
 1be:	20 5d       	xtrct	r5,r0
 1c0:	c2 27       	mov.l	r0,@(156,gbr)
 1c2:	d5 6d       	mov.l	378 <IMM_CTRL_POLYGON_WINDOW>,r5	! 60ffefc
 1c4:	32 2c       	add	r2,r2
 1c6:	33 3c       	add	r3,r3
 1c8:	72 ff       	add	#-1,r2
 1ca:	73 ff       	add	#-1,r3
 1cc:	43 28       	shll16	r3
 1ce:	23 2d       	xtrct	r2,r3
 1d0:	15 35       	mov.l	r3,@(20,r5)
 1d2:	15 36       	mov.l	r3,@(24,r5)
 1d4:	17 34       	mov.l	r3,@(16,r7)
 1d6:	e0 01       	mov	#1,r0
 1d8:	c0 ad       	mov.b	r0,@(173,gbr)
 1da:	61 53       	mov	r5,r1
 1dc:	71 1f       	add	#31,r1
 1de:	80 10       	mov.b	r0,@(0,r1)
 1e0:	80 14       	mov.b	r0,@(4,r1)
 1e2:	e0 08       	mov	#8,r0
 1e4:	81 52       	mov.w	r0,@(4,r5)
 1e6:	d0 28       	mov.l	288 <IMM_FUNC_UserClip>,r0	! 10080008
 1e8:	15 00       	mov.l	r0,@(0,r5)
 1ea:	90 3b       	mov.w	264 <IMM_7fff>,r0	! 7fff
 1ec:	61 53       	mov	r5,r1
 1ee:	c1 50       	mov.w	r0,@(160,gbr)
 1f0:	71 1c       	add	#28,r1
 1f2:	21 01       	mov.w	r0,@r1
 1f4:	81 12       	mov.w	r0,@(4,r1)
 1f6:	c6 1b       	mov.l	@(108,gbr),r0
 1f8:	15 09       	mov.l	r0,@(36,r5)
 1fa:	15 0a       	mov.l	r0,@(40,r5)
 1fc:	e0 00       	mov	#0,r0
 1fe:	15 03       	mov.l	r0,@(12,r5)
 200:	15 04       	mov.l	r0,@(16,r5)
 202:	c0 a9       	mov.b	r0,@(169,gbr)
 204:	c2 e1       	mov.l	r0,@(900,gbr)
 206:	c2 e3       	mov.l	r0,@(908,gbr)
 208:	e0 01       	mov	#1,r0
 20a:	c2 df       	mov.l	r0,@(892,gbr)
 20c:	d0 6a       	mov.l	3b8 <IMM_SpriteBuf>,r0	! 0 <_SlaveControl>
 20e:	d2 5b       	mov.l	37c <IMM_Pbuffer>,r2	! 0 <_SlaveControl>
 210:	60 02       	mov.l	@r0,r0
 212:	c2 0d       	mov.l	r0,@(52,gbr)
 214:	60 22       	mov.l	@r2,r0
 216:	c2 0a       	mov.l	r0,@(40,gbr)
 218:	e0 00       	mov	#0,r0
 21a:	c2 16       	mov.l	r0,@(88,gbr)
 21c:	c2 17       	mov.l	r0,@(92,gbr)
 21e:	c2 10       	mov.l	r0,@(64,gbr)
 220:	e0 ff       	mov	#-1,r0
 222:	40 28       	shll16	r0
 224:	c2 18       	mov.l	r0,@(96,gbr)
 226:	d0 62       	mov.l	3b0 <IMM_Zbuffer>,r0	! 0 <_SlaveControl>
 228:	4f 22       	sts.l	pr,@-r15
 22a:	60 02       	mov.l	@r0,r0
 22c:	bf 56       	bsr	dc <clrZbuf>
 22e:	62 03       	mov	r0,r2
 230:	60 23       	mov	r2,r0
 232:	bf 53       	bsr	dc <clrZbuf>
 234:	c2 0e       	mov.l	r0,@(56,gbr)
 236:	bf 51       	bsr	dc <clrZbuf>
 238:	00 09       	nop	
 23a:	bf 4f       	bsr	dc <clrZbuf>
 23c:	00 09       	nop	
 23e:	d0 0d       	mov.l	274 <IMM_CLOfstBuf>,r0	! 0 <_SlaveControl>
 240:	60 02       	mov.l	@r0,r0
 242:	bf 54       	bsr	ee <init_CLoffset>
 244:	c2 19       	mov.l	r0,@(100,gbr)
 246:	d3 5b       	mov.l	3b4 <IMM_SortList>,r3	! 0 <_SlaveControl>
 248:	d1 0c       	mov.l	27c <IMM_SortListSize>,r1	! 0 <_SlaveControl>
 24a:	63 32       	mov.l	@r3,r3
 24c:	61 12       	mov.l	@r1,r1
 24e:	d0 4c       	mov.l	380 <IMM_SpriteVRAM>,r0	! 25c00060
 250:	31 3c       	add	r3,r1
 252:	e2 1e       	mov	#30,r2

00000254 <sbint_01>:
 254:	13 01       	mov.l	r0,@(4,r3)
 256:	13 20       	mov.l	r2,@(0,r3)
 258:	73 0c       	add	#12,r3
 25a:	33 13       	cmp/ge	r1,r3
 25c:	8f fa       	bf.s	254 <sbint_01>
 25e:	70 20       	add	#32,r0
 260:	a0 96       	bra	390 <_CashOn>
 262:	4f 26       	lds.l	@r15+,pr

00000264 <IMM_7fff>:
 264:	7f ff       	add	#-1,r15

00000266 <IMM_320>:
 266:	01 40       	.word 0x0140

00000268 <IMM_512>:
 268:	02 00       	.word 0x0200
	...

0000026c <IMM_TVSizeTbl>:
 26c:	00 00       	.word 0x0000
	...

00000270 <IMM_CTRL_POLYGON_BASE>:
 270:	06 0f       	mac.l	@r0+,@r6+
 272:	ff 28       	fmov	@r2,fr15

00000274 <IMM_CLOfstBuf>:
 274:	00 00       	.word 0x0000
	...

00000278 <IMM_GouraudRAM>:
 278:	25 c7       	div0s	r12,r5
 27a:	ff 00       	fadd	fr0,fr15

0000027c <IMM_SortListSize>:
 27c:	00 00       	.word 0x0000
	...

00000280 <IMM_ErasePolygonData>:
 280:	00 00       	.word 0x0000
 282:	03 bc       	mov.b	@(r0,r11),r3

00000284 <IMM_FUNC_BasePosition>:
 284:	10 0a       	mov.l	r0,@(40,r0)
 286:	00 0c       	mov.b	@(r0,r0),r0

00000288 <IMM_FUNC_UserClip>:
 288:	10 08       	mov.l	r0,@(32,r0)
 28a:	00 08       	clrt	

0000028c <IMM_RGBadder>:
 28c:	04 21       	.word 0x0421

0000028e <_sbSetWindow>:
 28e:	c1 50       	mov.w	r0,@(160,gbr)
 290:	d3 39       	mov.l	378 <IMM_CTRL_POLYGON_WINDOW>,r3	! 60ffefc
 292:	61 03       	mov	r0,r1
 294:	60 09       	swap.w	r0,r0
 296:	c0 a9       	mov.b	r0,@(169,gbr)
 298:	c9 01       	and	#1,r0
 29a:	20 08       	tst	r0,r0
 29c:	8d 05       	bt.s	2aa <sbwin_1>
 29e:	65 03       	mov	r0,r5
 2a0:	40 08       	shll2	r0
 2a2:	d2 43       	mov.l	3b0 <IMM_Zbuffer>,r2	! 0 <_SlaveControl>
 2a4:	33 0c       	add	r0,r3
 2a6:	60 22       	mov.l	@r2,r0
 2a8:	c2 0e       	mov.l	r0,@(56,gbr)

000002aa <sbwin_1>:
 2aa:	66 46       	mov.l	@r4+,r6
 2ac:	60 46       	mov.l	@r4+,r0
 2ae:	13 63       	mov.l	r6,@(12,r3)
 2b0:	13 05       	mov.l	r0,@(20,r3)
 2b2:	e2 01       	mov	#1,r2
 2b4:	42 28       	shll16	r2
 2b6:	72 01       	add	#1,r2
 2b8:	30 2c       	add	r2,r0
 2ba:	30 68       	sub	r6,r0
 2bc:	c2 cc       	mov.l	r0,@(816,gbr)
 2be:	60 13       	mov	r1,r0
 2c0:	81 3e       	mov.w	r0,@(28,r3)
 2c2:	60 46       	mov.l	@r4+,r0
 2c4:	73 2c       	add	#44,r3
 2c6:	13 03       	mov.l	r0,@(12,r3)
 2c8:	62 03       	mov	r0,r2
 2ca:	60 69       	swap.w	r6,r0
 2cc:	61 29       	swap.w	r2,r1
 2ce:	31 08       	sub	r0,r1
 2d0:	60 23       	mov	r2,r0
 2d2:	30 68       	sub	r6,r0
 2d4:	40 28       	shll16	r0
 2d6:	20 1d       	xtrct	r1,r0
 2d8:	c2 25       	mov.l	r0,@(148,gbr)
 2da:	61 09       	swap.w	r0,r1
 2dc:	d0 2b       	mov.l	38c <IMM_FrameYOffset>,r0	! 260fff04
 2de:	66 19       	swap.w	r1,r6
 2e0:	60 02       	mov.l	@r0,r0
 2e2:	46 28       	shll16	r6
 2e4:	31 0c       	add	r0,r1
 2e6:	30 6c       	add	r6,r0
 2e8:	20 1d       	xtrct	r1,r0
 2ea:	25 58       	tst	r5,r5
 2ec:	8f 07       	bf.s	2fe <sbwin_2>
 2ee:	c2 27       	mov.l	r0,@(156,gbr)
 2f0:	61 29       	swap.w	r2,r1
 2f2:	c7 32       	mova	3bc <ErasePolygonData>,r0
 2f4:	63 2b       	neg	r2,r3
 2f6:	61 1b       	neg	r1,r1
 2f8:	43 28       	shll16	r3
 2fa:	23 1d       	xtrct	r1,r3
 2fc:	10 33       	mov.l	r3,@(12,r0)

000002fe <sbwin_2>:
 2fe:	00 0b       	rts	
 300:	00 09       	nop	

00000302 <_sbResetPointer>:
 302:	4f 22       	sts.l	pr,@-r15
 304:	d0 1d       	mov.l	37c <IMM_Pbuffer>,r0	! 0 <_SlaveControl>
 306:	74 fc       	add	#-4,r4
 308:	60 02       	mov.l	@r0,r0
 30a:	70 10       	add	#16,r0
 30c:	c2 0a       	mov.l	r0,@(40,gbr)
 30e:	d1 2a       	mov.l	3b8 <IMM_SpriteBuf>,r1	! 0 <_SlaveControl>
 310:	c6 10       	mov.l	@(64,gbr),r0
 312:	61 12       	mov.l	@r1,r1
 314:	30 1c       	add	r1,r0
 316:	b0 3b       	bsr	390 <_CashOn>
 318:	c2 0d       	mov.l	r0,@(52,gbr)
 31a:	4f 26       	lds.l	@r15+,pr
 31c:	e0 00       	mov	#0,r0
 31e:	c0 a9       	mov.b	r0,@(169,gbr)

00000320 <_sbSelectWindow>:
 320:	63 03       	mov	r0,r3
 322:	c4 a9       	mov.b	@(169,gbr),r0
 324:	d2 14       	mov.l	378 <IMM_CTRL_POLYGON_WINDOW>,r2	! 60ffefc
 326:	c9 f0       	and	#-16,r0
 328:	20 3b       	or	r3,r0
 32a:	c0 a9       	mov.b	r0,@(169,gbr)
 32c:	d0 20       	mov.l	3b0 <IMM_Zbuffer>,r0	! 0 <_SlaveControl>
 32e:	43 08       	shll2	r3
 330:	32 3c       	add	r3,r2
 332:	23 38       	tst	r3,r3
 334:	8f 02       	bf.s	33c <slwn_01>
 336:	60 02       	mov.l	@r0,r0
 338:	91 1d       	mov.w	376 <ZmaxcntX4>,r1	! 200
 33a:	30 1c       	add	r1,r0

0000033c <slwn_01>:
 33c:	c2 0e       	mov.l	r0,@(56,gbr)
 33e:	85 2f       	mov.w	@(30,r2),r0
 340:	c0 ad       	mov.b	r0,@(173,gbr)
 342:	50 29       	mov.l	@(36,r2),r0
 344:	c2 1b       	mov.l	r0,@(108,gbr)
 346:	85 2e       	mov.w	@(28,r2),r0
 348:	c1 50       	mov.w	r0,@(160,gbr)
 34a:	50 25       	mov.l	@(20,r2),r0
 34c:	53 23       	mov.l	@(12,r2),r3
 34e:	e1 01       	mov	#1,r1
 350:	41 28       	shll16	r1
 352:	71 01       	add	#1,r1
 354:	30 1c       	add	r1,r0
 356:	51 2e       	mov.l	@(56,r2),r1
 358:	30 38       	sub	r3,r0
 35a:	c2 cc       	mov.l	r0,@(816,gbr)
 35c:	60 13       	mov	r1,r0
 35e:	d2 0b       	mov.l	38c <IMM_FrameYOffset>,r2	! 260fff04
 360:	30 38       	sub	r3,r0
 362:	c2 25       	mov.l	r0,@(148,gbr)
 364:	61 03       	mov	r0,r1
 366:	60 22       	mov.l	@r2,r0
 368:	62 19       	swap.w	r1,r2
 36a:	32 0c       	add	r0,r2
 36c:	41 28       	shll16	r1
 36e:	30 1c       	add	r1,r0
 370:	20 2d       	xtrct	r2,r0
 372:	00 0b       	rts	
 374:	c2 27       	mov.l	r0,@(156,gbr)

00000376 <ZmaxcntX4>:
 376:	02 00       	.word 0x0200

00000378 <IMM_CTRL_POLYGON_WINDOW>:
 378:	06 0f       	mac.l	@r0+,@r6+
 37a:	fe fc       	fmov	fr15,fr14

0000037c <IMM_Pbuffer>:
 37c:	00 00       	.word 0x0000
	...

00000380 <IMM_SpriteVRAM>:
 380:	25 c0       	mov.b	r12,@r5
 382:	00 60       	.word 0x0060

00000384 <IMM_Win1Zlimit>:
 384:	06 0f       	mac.l	@r0+,@r6+
 386:	ff 18       	fmov	@r1,fr15

00000388 <IMM_POLYGON_BASE>:
 388:	06 0f       	mac.l	@r0+,@r6+
 38a:	ff 28       	fmov	@r2,fr15

0000038c <IMM_FrameYOffset>:
 38c:	26 0f       	muls.w	r0,r6
 38e:	ff 04       	fcmp/eq	fr0,fr15

00000390 <_CashOn>:
 390:	e1 a4       	mov	#-92,r1
 392:	41 08       	shll2	r1
 394:	e0 11       	mov	#17,r0
 396:	80 12       	mov.b	r0,@(2,r1)
 398:	00 09       	nop	
 39a:	00 09       	nop	
 39c:	00 09       	nop	
 39e:	00 09       	nop	
 3a0:	00 09       	nop	
 3a2:	00 09       	nop	
 3a4:	00 09       	nop	
 3a6:	00 09       	nop	
 3a8:	00 09       	nop	
 3aa:	00 09       	nop	
 3ac:	00 0b       	rts	
 3ae:	00 09       	nop	

000003b0 <IMM_Zbuffer>:
 3b0:	00 00       	.word 0x0000
	...

000003b4 <IMM_SortList>:
 3b4:	00 00       	.word 0x0000
	...

000003b8 <IMM_SpriteBuf>:
 3b8:	00 00       	.word 0x0000
	...

000003bc <ErasePolygonData>:
 3bc:	05 01       	.word 0x0501
 3be:	00 00       	.word 0x0000
 3c0:	00 40       	.word 0x0040
 3c2:	00 00       	.word 0x0000
 3c4:	ff e0       	fadd	fr14,fr15
 3c6:	01 01       	.word 0x0101
 3c8:	00 00       	.word 0x0000
 3ca:	00 00       	.word 0x0000
 3cc:	02 bf       	mac.l	@r11+,@r2+
 3ce:	01 ff       	mac.l	@r15+,@r1+
