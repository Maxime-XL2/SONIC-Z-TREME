
sglM00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitGouraud>:
   0:	c7 c6       	mova	31c <GouraudWorkTbl>,r0
   2:	10 41       	mov.l	r4,@(4,r0)
   4:	10 60       	mov.l	r6,@(0,r0)
   6:	35 6c       	add	r6,r5
   8:	10 52       	mov.l	r5,@(8,r0)
   a:	10 74       	mov.l	r7,@(16,r0)
   c:	e1 00       	mov	#0,r1
   e:	10 17       	mov.l	r1,@(28,r0)
  10:	10 18       	mov.l	r1,@(32,r0)
  12:	10 19       	mov.l	r1,@(36,r0)
  14:	10 15       	mov.l	r1,@(20,r0)
  16:	e1 ff       	mov	#-1,r1
  18:	10 16       	mov.l	r1,@(24,r0)
  1a:	61 03       	mov	r0,r1
  1c:	c7 cd       	mova	354 <GouraudTable>,r0
  1e:	11 03       	mov.l	r0,@(12,r1)
  20:	e1 20       	mov	#32,r1
  22:	e2 00       	mov	#0,r2
  24:	d3 ba       	mov.l	310 <CH421>,r3	! 421

00000026 <ginit_00>:
  26:	20 21       	mov.w	r2,@r0
  28:	70 02       	add	#2,r0
  2a:	41 10       	dt	r1
  2c:	8f fb       	bf.s	26 <ginit_00>
  2e:	32 3c       	add	r3,r2
  30:	00 0b       	rts	
  32:	00 09       	nop	

00000034 <slMakeGouraud>:
  34:	2f a6       	mov.l	r10,@-r15
  36:	2f 96       	mov.l	r9,@-r15
  38:	2f 86       	mov.l	r8,@-r15
  3a:	c7 b8       	mova	31c <GouraudWorkTbl>,r0
  3c:	51 41       	mov.l	@(4,r4),r1
  3e:	52 45       	mov.l	@(20,r4),r2
  40:	53 04       	mov.l	@(16,r0),r3
  42:	65 03       	mov	r0,r5
  44:	75 28       	add	#40,r5
  46:	e8 01       	mov	#1,r8
  48:	48 28       	shll16	r8
  4a:	69 8b       	neg	r8,r9

0000004c <mkg_00>:
  4c:	00 28       	clrmac	
  4e:	05 2f       	mac.l	@r2+,@r5+
  50:	05 2f       	mac.l	@r2+,@r5+
  52:	05 2f       	mac.l	@r2+,@r5+
  54:	06 0a       	sts	mach,r6
  56:	07 1a       	sts	macl,r7
  58:	27 6d       	xtrct	r6,r7
  5a:	67 7b       	neg	r7,r7
  5c:	37 83       	cmp/ge	r8,r7
  5e:	8d 09       	bt.s	74 <mkg_01>
  60:	e6 1f       	mov	#31,r6
  62:	37 97       	cmp/gt	r9,r7
  64:	8f 06       	bf.s	74 <mkg_01>
  66:	e6 00       	mov	#0,r6
  68:	47 19       	shlr8	r7
  6a:	47 09       	shlr2	r7
  6c:	47 09       	shlr2	r7
  6e:	77 10       	add	#16,r7
  70:	e6 1f       	mov	#31,r6
  72:	26 79       	and	r7,r6

00000074 <mkg_01>:
  74:	23 60       	mov.b	r6,@r3
  76:	73 01       	add	#1,r3
  78:	41 10       	dt	r1
  7a:	8f e7       	bf.s	4c <mkg_00>
  7c:	75 f4       	add	#-12,r5
  7e:	51 43       	mov.l	@(12,r4),r1
  80:	52 42       	mov.l	@(8,r4),r2
  82:	53 44       	mov.l	@(16,r4),r3
  84:	54 04       	mov.l	@(16,r0),r4
  86:	55 03       	mov.l	@(12,r0),r5
  88:	56 05       	mov.l	@(20,r0),r6
  8a:	57 06       	mov.l	@(24,r0),r7
  8c:	58 00       	mov.l	@(0,r0),r8
  8e:	59 01       	mov.l	@(4,r0),r9

00000090 <mkg_02>:
  90:	84 31       	mov.b	@(1,r3),r0
  92:	40 00       	shll	r0
  94:	8b 22       	bf	dc <mkg_05>
  96:	85 34       	mov.w	@(8,r3),r0
  98:	6a 0d       	extu.w	r0,r10
  9a:	3a 88       	sub	r8,r10
  9c:	3a 72       	cmp/hs	r7,r10
  9e:	89 00       	bt	a2 <mkg_03>
  a0:	67 a3       	mov	r10,r7

000000a2 <mkg_03>:
  a2:	3a 66       	cmp/hi	r6,r10
  a4:	8b 00       	bf	a8 <mkg_04>
  a6:	66 a3       	mov	r10,r6

000000a8 <mkg_04>:
  a8:	4a 08       	shll2	r10
  aa:	4a 00       	shll	r10
  ac:	3a 9c       	add	r9,r10
  ae:	85 26       	mov.w	@(12,r2),r0
  b0:	00 4c       	mov.b	@(r0,r4),r0
  b2:	40 00       	shll	r0
  b4:	00 5d       	mov.w	@(r0,r5),r0
  b6:	2a 01       	mov.w	r0,@r10
  b8:	7a 02       	add	#2,r10
  ba:	85 27       	mov.w	@(14,r2),r0
  bc:	00 4c       	mov.b	@(r0,r4),r0
  be:	40 00       	shll	r0
  c0:	00 5d       	mov.w	@(r0,r5),r0
  c2:	2a 01       	mov.w	r0,@r10
  c4:	7a 02       	add	#2,r10
  c6:	85 28       	mov.w	@(16,r2),r0
  c8:	00 4c       	mov.b	@(r0,r4),r0
  ca:	40 00       	shll	r0
  cc:	00 5d       	mov.w	@(r0,r5),r0
  ce:	2a 01       	mov.w	r0,@r10
  d0:	7a 02       	add	#2,r10
  d2:	85 29       	mov.w	@(18,r2),r0
  d4:	00 4c       	mov.b	@(r0,r4),r0
  d6:	40 00       	shll	r0
  d8:	00 5d       	mov.w	@(r0,r5),r0
  da:	2a 01       	mov.w	r0,@r10

000000dc <mkg_05>:
  dc:	72 14       	add	#20,r2
  de:	41 10       	dt	r1
  e0:	8f d6       	bf.s	90 <mkg_02>
  e2:	73 0c       	add	#12,r3
  e4:	c7 8d       	mova	31c <GouraudWorkTbl>,r0
  e6:	10 65       	mov.l	r6,@(20,r0)
  e8:	10 76       	mov.l	r7,@(24,r0)
  ea:	68 f6       	mov.l	@r15+,r8
  ec:	69 f6       	mov.l	@r15+,r9
  ee:	6a f6       	mov.l	@r15+,r10
  f0:	00 0b       	rts	
  f2:	00 09       	nop	

000000f4 <_slPutPolygonX>:
  f4:	4f 22       	sts.l	pr,@-r15
  f6:	2f 96       	mov.l	r9,@-r15
  f8:	2f 86       	mov.l	r8,@-r15
  fa:	69 53       	mov	r5,r9
  fc:	d0 e5       	mov.l	494 <PolygonS>,r0	! 0 <_slInitGouraud>
  fe:	40 0b       	jsr	@r0
 100:	68 43       	mov	r4,r8
 102:	50 85       	mov.l	@(20,r8),r0
 104:	20 08       	tst	r0,r0
 106:	89 13       	bt	130 <ppx_00>
 108:	d0 e5       	mov.l	4a0 <PushMatrix>,r0	! 0 <_slInitGouraud>
 10a:	40 0b       	jsr	@r0
 10c:	00 09       	nop	
 10e:	d0 e2       	mov.l	498 <TransposeMatrix>,r0	! 0 <_slInitGouraud>
 110:	40 0b       	jsr	@r0
 112:	00 09       	nop	
 114:	c7 81       	mova	31c <GouraudWorkTbl>,r0
 116:	70 28       	add	#40,r0
 118:	65 03       	mov	r0,r5
 11a:	d0 e0       	mov.l	49c <CalcVector>,r0	! 0 <_slInitGouraud>
 11c:	40 0b       	jsr	@r0
 11e:	64 93       	mov	r9,r4
 120:	c7 7e       	mova	31c <GouraudWorkTbl>,r0
 122:	70 28       	add	#40,r0
 124:	65 03       	mov	r0,r5
 126:	bf 85       	bsr	34 <slMakeGouraud>
 128:	64 83       	mov	r8,r4
 12a:	d0 de       	mov.l	4a4 <PopMatrix>,r0	! 0 <_slInitGouraud>
 12c:	40 0b       	jsr	@r0
 12e:	00 09       	nop	

00000130 <ppx_00>:
 130:	68 f6       	mov.l	@r15+,r8
 132:	69 f6       	mov.l	@r15+,r9
 134:	4f 26       	lds.l	@r15+,pr
 136:	00 0b       	rts	
 138:	00 09       	nop	

0000013a <_slGouraudTblCopy>:
 13a:	4f 22       	sts.l	pr,@-r15
 13c:	c7 77       	mova	31c <GouraudWorkTbl>,r0
 13e:	61 03       	mov	r0,r1
 140:	56 15       	mov.l	@(20,r1),r6
 142:	50 16       	mov.l	@(24,r1),r0
 144:	36 08       	sub	r0,r6
 146:	76 01       	add	#1,r6
 148:	46 08       	shll2	r6
 14a:	46 00       	shll	r6
 14c:	88 ff       	cmp/eq	#-1,r0
 14e:	89 10       	bt	172 <gtc_00>
 150:	54 10       	mov.l	@(0,r1),r4
 152:	34 0c       	add	r0,r4
 154:	44 08       	shll2	r4
 156:	44 00       	shll	r4
 158:	d2 d3       	mov.l	4a8 <VRAM_ADDR>,r2	! 25c00000
 15a:	34 2c       	add	r2,r4
 15c:	55 11       	mov.l	@(4,r1),r5
 15e:	40 08       	shll2	r0
 160:	40 00       	shll	r0
 162:	35 0c       	add	r0,r5
 164:	e0 00       	mov	#0,r0
 166:	11 05       	mov.l	r0,@(20,r1)
 168:	e0 ff       	mov	#-1,r0
 16a:	11 06       	mov.l	r0,@(24,r1)
 16c:	d0 cf       	mov.l	4ac <ScuCopy>,r0	! 0 <_slInitGouraud>
 16e:	40 0b       	jsr	@r0
 170:	00 09       	nop	

00000172 <gtc_00>:
 172:	d1 69       	mov.l	318 <FlatGourFlag>,r1	! 0 <_slInitGouraud>
 174:	41 01       	shlr	r1
 176:	8b 09       	bf	18c <gtc_01>
 178:	d4 cd       	mov.l	4b0 <FlatGourAddr>,r4	! 25c7ff00
 17a:	c7 86       	mova	394 <FlatGourTbl>,r0
 17c:	65 03       	mov	r0,r5
 17e:	d6 cd       	mov.l	4b4 <FlatGourSize>,r6	! 100
 180:	d0 ca       	mov.l	4ac <ScuCopy>,r0	! 0 <_slInitGouraud>
 182:	40 0b       	jsr	@r0
 184:	00 09       	nop	
 186:	c7 64       	mova	318 <FlatGourFlag>,r0
 188:	e1 00       	mov	#0,r1
 18a:	20 12       	mov.l	r1,@r0

0000018c <gtc_01>:
 18c:	4f 26       	lds.l	@r15+,pr
 18e:	00 0b       	rts	
 190:	00 09       	nop	

00000192 <_slSetGouraudTbl>:
 192:	c7 62       	mova	31c <GouraudWorkTbl>,r0
 194:	00 0b       	rts	
 196:	10 43       	mov.l	r4,@(12,r0)

00000198 <_slSetGouraudColor>:
 198:	2f 96       	mov.l	r9,@-r15
 19a:	2f 86       	mov.l	r8,@-r15
 19c:	60 43       	mov	r4,r0
 19e:	c9 1f       	and	#31,r0
 1a0:	e1 1f       	mov	#31,r1
 1a2:	31 08       	sub	r0,r1
 1a4:	60 43       	mov	r4,r0
 1a6:	40 09       	shlr2	r0
 1a8:	40 09       	shlr2	r0
 1aa:	40 01       	shlr	r0
 1ac:	c9 1f       	and	#31,r0
 1ae:	e2 1f       	mov	#31,r2
 1b0:	32 08       	sub	r0,r2
 1b2:	60 43       	mov	r4,r0
 1b4:	40 19       	shlr8	r0
 1b6:	40 09       	shlr2	r0
 1b8:	c9 1f       	and	#31,r0
 1ba:	e3 1f       	mov	#31,r3
 1bc:	33 08       	sub	r0,r3
 1be:	c7 65       	mova	354 <GouraudTable>,r0
 1c0:	64 03       	mov	r0,r4
 1c2:	c7 56       	mova	31c <GouraudWorkTbl>,r0
 1c4:	10 43       	mov.l	r4,@(12,r0)
 1c6:	55 07       	mov.l	@(28,r0),r5
 1c8:	56 08       	mov.l	@(32,r0),r6
 1ca:	57 09       	mov.l	@(36,r0),r7
 1cc:	e8 00       	mov	#0,r8

000001ce <sgc_00>:
 1ce:	60 83       	mov	r8,r0
 1d0:	30 18       	sub	r1,r0
 1d2:	30 53       	cmp/ge	r5,r0
 1d4:	89 00       	bt	1d8 <sgc_01>
 1d6:	60 53       	mov	r5,r0

000001d8 <sgc_01>:
 1d8:	69 03       	mov	r0,r9
 1da:	60 83       	mov	r8,r0
 1dc:	30 28       	sub	r2,r0
 1de:	30 63       	cmp/ge	r6,r0
 1e0:	89 00       	bt	1e4 <sgc_02>
 1e2:	60 63       	mov	r6,r0

000001e4 <sgc_02>:
 1e4:	40 08       	shll2	r0
 1e6:	40 08       	shll2	r0
 1e8:	40 00       	shll	r0
 1ea:	29 0b       	or	r0,r9
 1ec:	60 83       	mov	r8,r0
 1ee:	30 38       	sub	r3,r0
 1f0:	30 73       	cmp/ge	r7,r0
 1f2:	89 00       	bt	1f6 <sgc_03>
 1f4:	60 73       	mov	r7,r0

000001f6 <sgc_03>:
 1f6:	40 18       	shll8	r0
 1f8:	40 08       	shll2	r0
 1fa:	29 0b       	or	r0,r9
 1fc:	24 91       	mov.w	r9,@r4
 1fe:	78 01       	add	#1,r8
 200:	60 83       	mov	r8,r0
 202:	88 20       	cmp/eq	#32,r0
 204:	8f e3       	bf.s	1ce <sgc_00>
 206:	74 02       	add	#2,r4
 208:	68 f6       	mov.l	@r15+,r8
 20a:	69 f6       	mov.l	@r15+,r9
 20c:	00 0b       	rts	
 20e:	00 09       	nop	

00000210 <_slSetAmbient>:
 210:	e0 1f       	mov	#31,r0
 212:	61 43       	mov	r4,r1
 214:	21 09       	and	r0,r1
 216:	62 43       	mov	r4,r2
 218:	42 09       	shlr2	r2
 21a:	42 09       	shlr2	r2
 21c:	42 01       	shlr	r2
 21e:	22 09       	and	r0,r2
 220:	63 43       	mov	r4,r3
 222:	43 19       	shlr8	r3
 224:	43 09       	shlr2	r3
 226:	23 09       	and	r0,r3
 228:	c7 3c       	mova	31c <GouraudWorkTbl>,r0
 22a:	10 17       	mov.l	r1,@(28,r0)
 22c:	10 28       	mov.l	r2,@(32,r0)
 22e:	10 39       	mov.l	r3,@(36,r0)
 230:	00 0b       	rts	
 232:	00 09       	nop	

00000234 <_slSetFlatColor>:
 234:	2f e6       	mov.l	r14,@-r15
 236:	2f d6       	mov.l	r13,@-r15
 238:	2f c6       	mov.l	r12,@-r15
 23a:	2f b6       	mov.l	r11,@-r15
 23c:	2f a6       	mov.l	r10,@-r15
 23e:	2f 96       	mov.l	r9,@-r15
 240:	2f 86       	mov.l	r8,@-r15
 242:	60 43       	mov	r4,r0
 244:	c9 1f       	and	#31,r0
 246:	e1 1f       	mov	#31,r1
 248:	31 08       	sub	r0,r1
 24a:	60 43       	mov	r4,r0
 24c:	40 09       	shlr2	r0
 24e:	40 09       	shlr2	r0
 250:	40 01       	shlr	r0
 252:	c9 1f       	and	#31,r0
 254:	e2 1f       	mov	#31,r2
 256:	32 08       	sub	r0,r2
 258:	60 43       	mov	r4,r0
 25a:	40 19       	shlr8	r0
 25c:	40 09       	shlr2	r0
 25e:	c9 1f       	and	#31,r0
 260:	e3 1f       	mov	#31,r3
 262:	33 08       	sub	r0,r3
 264:	c7 2d       	mova	31c <GouraudWorkTbl>,r0
 266:	55 07       	mov.l	@(28,r0),r5
 268:	56 08       	mov.l	@(32,r0),r6
 26a:	57 09       	mov.l	@(36,r0),r7
 26c:	c6 19       	mov.l	@(100,gbr),r0
 26e:	64 03       	mov	r0,r4
 270:	c7 48       	mova	394 <FlatGourTbl>,r0
 272:	68 03       	mov	r0,r8
 274:	d9 27       	mov.l	314 <C1024>,r9	! 400
 276:	ea f0       	mov	#-16,r10

00000278 <sfc_00>:
 278:	eb 00       	mov	#0,r11

0000027a <sfc_01>:
 27a:	e0 1f       	mov	#31,r0
 27c:	6c b3       	mov	r11,r12
 27e:	3c 18       	sub	r1,r12
 280:	3c ac       	add	r10,r12
 282:	3c 53       	cmp/ge	r5,r12
 284:	89 00       	bt	288 <sfc_02>
 286:	6c 53       	mov	r5,r12

00000288 <sfc_02>:
 288:	3c 07       	cmp/gt	r0,r12
 28a:	8b 00       	bf	28e <sfc_03>
 28c:	6c 03       	mov	r0,r12

0000028e <sfc_03>:
 28e:	6d b3       	mov	r11,r13
 290:	3d 28       	sub	r2,r13
 292:	3d ac       	add	r10,r13
 294:	3d 63       	cmp/ge	r6,r13
 296:	89 00       	bt	29a <sfc_04>
 298:	6d 63       	mov	r6,r13

0000029a <sfc_04>:
 29a:	3d 07       	cmp/gt	r0,r13
 29c:	8b 00       	bf	2a0 <sfc_05>
 29e:	6d 03       	mov	r0,r13

000002a0 <sfc_05>:
 2a0:	6e b3       	mov	r11,r14
 2a2:	3e 38       	sub	r3,r14
 2a4:	3e ac       	add	r10,r14
 2a6:	3e 73       	cmp/ge	r7,r14
 2a8:	89 00       	bt	2ac <sfc_06>
 2aa:	6e 73       	mov	r7,r14

000002ac <sfc_06>:
 2ac:	3e 07       	cmp/gt	r0,r14
 2ae:	8b 00       	bf	2b2 <sfc_07>
 2b0:	6e 03       	mov	r0,r14

000002b2 <sfc_07>:
 2b2:	24 c0       	mov.b	r12,@r4
 2b4:	34 9c       	add	r9,r4
 2b6:	24 d0       	mov.b	r13,@r4
 2b8:	34 9c       	add	r9,r4
 2ba:	24 e0       	mov.b	r14,@r4
 2bc:	34 98       	sub	r9,r4
 2be:	34 98       	sub	r9,r4
 2c0:	74 01       	add	#1,r4
 2c2:	60 a3       	mov	r10,r0
 2c4:	88 00       	cmp/eq	#0,r0
 2c6:	8b 0f       	bf	2e8 <sfc_08>
 2c8:	60 c3       	mov	r12,r0
 2ca:	4d 08       	shll2	r13
 2cc:	4d 08       	shll2	r13
 2ce:	4d 00       	shll	r13
 2d0:	20 db       	or	r13,r0
 2d2:	4e 18       	shll8	r14
 2d4:	4e 08       	shll2	r14
 2d6:	20 eb       	or	r14,r0
 2d8:	28 01       	mov.w	r0,@r8
 2da:	78 02       	add	#2,r8
 2dc:	28 01       	mov.w	r0,@r8
 2de:	78 02       	add	#2,r8
 2e0:	28 01       	mov.w	r0,@r8
 2e2:	78 02       	add	#2,r8
 2e4:	28 01       	mov.w	r0,@r8
 2e6:	78 02       	add	#2,r8

000002e8 <sfc_08>:
 2e8:	60 b3       	mov	r11,r0
 2ea:	88 1f       	cmp/eq	#31,r0
 2ec:	8f c5       	bf.s	27a <sfc_01>
 2ee:	7b 01       	add	#1,r11
 2f0:	60 a3       	mov	r10,r0
 2f2:	88 0f       	cmp/eq	#15,r0
 2f4:	8f c0       	bf.s	278 <sfc_00>
 2f6:	7a 01       	add	#1,r10
 2f8:	c7 07       	mova	318 <FlatGourFlag>,r0
 2fa:	e1 01       	mov	#1,r1
 2fc:	20 12       	mov.l	r1,@r0
 2fe:	68 f6       	mov.l	@r15+,r8
 300:	69 f6       	mov.l	@r15+,r9
 302:	6a f6       	mov.l	@r15+,r10
 304:	6b f6       	mov.l	@r15+,r11
 306:	6c f6       	mov.l	@r15+,r12
 308:	6d f6       	mov.l	@r15+,r13
 30a:	6e f6       	mov.l	@r15+,r14
 30c:	00 0b       	rts	
 30e:	00 09       	nop	

00000310 <CH421>:
 310:	00 00       	.word 0x0000
 312:	04 21       	.word 0x0421

00000314 <C1024>:
 314:	00 00       	.word 0x0000
 316:	04 00       	.word 0x0400

00000318 <FlatGourFlag>:
 318:	00 00       	.word 0x0000
	...

0000031c <GouraudWorkTbl>:
	...

00000354 <GouraudTable>:
	...

00000394 <FlatGourTbl>:
	...

00000494 <PolygonS>:
 494:	00 00       	.word 0x0000
	...

00000498 <TransposeMatrix>:
 498:	00 00       	.word 0x0000
	...

0000049c <CalcVector>:
 49c:	00 00       	.word 0x0000
	...

000004a0 <PushMatrix>:
 4a0:	00 00       	.word 0x0000
	...

000004a4 <PopMatrix>:
 4a4:	00 00       	.word 0x0000
	...

000004a8 <VRAM_ADDR>:
 4a8:	25 c0       	mov.b	r12,@r5
	...

000004ac <ScuCopy>:
 4ac:	00 00       	.word 0x0000
	...

000004b0 <FlatGourAddr>:
 4b0:	25 c7       	div0s	r12,r5
 4b2:	ff 00       	fadd	fr0,fr15

000004b4 <FlatGourSize>:
 4b4:	00 00       	.word 0x0000
 4b6:	01 00       	.word 0x0100
