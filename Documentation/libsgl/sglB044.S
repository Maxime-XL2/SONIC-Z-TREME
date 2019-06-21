
sglB044.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrMatSet>:
   0:	e0 00       	mov	#0,r0
   2:	c0 cc       	mov.b	r0,@(204,gbr)
   4:	2f 86       	mov.l	r8,@-r15
   6:	4f 22       	sts.l	pr,@-r15
   8:	2f e6       	mov.l	r14,@-r15
   a:	2f d6       	mov.l	r13,@-r15
   c:	2f c6       	mov.l	r12,@-r15
   e:	2f b6       	mov.l	r11,@-r15
  10:	2f a6       	mov.l	r10,@-r15
  12:	2f 96       	mov.l	r9,@-r15
  14:	4f 13       	stc.l	gbr,@-r15
  16:	c6 07       	mov.l	@(28,gbr),r0
  18:	66 03       	mov	r0,r6
  1a:	c6 78       	mov.l	@(480,gbr),r0
  1c:	0e 12       	stc	gbr,r14
  1e:	40 1e       	ldc	r0,gbr
  20:	50 60       	mov.l	@(0,r6),r0
  22:	c2 07       	mov.l	r0,@(28,gbr)
  24:	50 61       	mov.l	@(4,r6),r0
  26:	c2 08       	mov.l	r0,@(32,gbr)
  28:	50 62       	mov.l	@(8,r6),r0
  2a:	c2 09       	mov.l	r0,@(36,gbr)
  2c:	50 64       	mov.l	@(16,r6),r0
  2e:	c2 0a       	mov.l	r0,@(40,gbr)
  30:	50 65       	mov.l	@(20,r6),r0
  32:	c2 0b       	mov.l	r0,@(44,gbr)
  34:	50 66       	mov.l	@(24,r6),r0
  36:	c2 0c       	mov.l	r0,@(48,gbr)
  38:	c5 1a       	mov.w	@(52,gbr),r0
  3a:	68 03       	mov	r0,r8
  3c:	48 28       	shll16	r8
  3e:	c5 1b       	mov.w	@(54,gbr),r0
  40:	69 03       	mov	r0,r9
  42:	49 28       	shll16	r9
  44:	c5 1c       	mov.w	@(56,gbr),r0
  46:	6a 03       	mov	r0,r10
  48:	4a 28       	shll16	r10
  4a:	50 63       	mov.l	@(12,r6),r0
  4c:	30 88       	sub	r8,r0
  4e:	c2 11       	mov.l	r0,@(68,gbr)
  50:	50 67       	mov.l	@(28,r6),r0
  52:	30 98       	sub	r9,r0
  54:	c2 12       	mov.l	r0,@(72,gbr)
  56:	57 6b       	mov.l	@(44,r6),r7
  58:	50 68       	mov.l	@(32,r6),r0
  5a:	61 8b       	neg	r8,r1
  5c:	31 0d       	dmuls.l	r0,r1
  5e:	61 9b       	neg	r9,r1
  60:	2f 16       	mov.l	r1,@-r15
  62:	63 63       	mov	r6,r3
  64:	73 24       	add	#36,r3
  66:	03 ff       	mac.l	@r15+,@r3+
  68:	61 ab       	neg	r10,r1
  6a:	2f 16       	mov.l	r1,@-r15
  6c:	73 00       	add	#0,r3
  6e:	03 ff       	mac.l	@r15+,@r3+
  70:	00 0a       	sts	mach,r0
  72:	05 1a       	sts	macl,r5
  74:	25 0d       	xtrct	r0,r5
  76:	50 68       	mov.l	@(32,r6),r0
  78:	68 03       	mov	r0,r8
  7a:	50 69       	mov.l	@(36,r6),r0
  7c:	69 03       	mov	r0,r9
  7e:	c6 18       	mov.l	@(96,gbr),r0
  80:	64 03       	mov	r0,r4
  82:	6b 53       	mov	r5,r11
  84:	67 7b       	neg	r7,r7
  86:	9d 05       	mov.w	94 <IMM_LABEL0>,r13	! 3fff
  88:	c5 32       	mov.w	@(100,gbr),r0
  8a:	c8 40       	tst	#64,r0
  8c:	89 03       	bt	96 <ssms_not_fix>
  8e:	a1 37       	bra	300 <ssms_kset_1bank_use>
  90:	00 09       	nop	
	...

00000094 <IMM_LABEL0>:
  94:	3f ff       	addv	r15,r15

00000096 <ssms_not_fix>:
  96:	c8 02       	tst	#2,r0
  98:	8b 34       	bf	104 <ssms_kset_real1>
  9a:	a0 b8       	bra	20e <ssms_kset_real2>
  9c:	00 09       	nop	
  9e:	e3 82       	mov	#-126,r3
  a0:	63 3c       	extu.b	r3,r3
  a2:	33 ec       	add	r14,r3
  a4:	6a 31       	mov.w	@r3,r10
  a6:	73 2e       	add	#46,r3
  a8:	60 30       	mov.b	@r3,r0
  aa:	c8 10       	tst	#16,r0
  ac:	89 00       	bt	b0 <ssms_hrx_00>
  ae:	4a 01       	shlr	r10

000000b0 <ssms_hrx_00>:
  b0:	e3 ff       	mov	#-1,r3
  b2:	43 18       	shll8	r3

000000b4 <ssms_kloop>:
  b4:	60 b3       	mov	r11,r0
  b6:	61 73       	mov	r7,r1
  b8:	13 00       	mov.l	r0,@(0,r3)
  ba:	62 19       	swap.w	r1,r2
  bc:	62 2f       	exts.w	r2,r2
  be:	13 24       	mov.l	r2,@(16,r3)
  c0:	41 28       	shll16	r1
  c2:	13 15       	mov.l	r1,@(20,r3)
  c4:	50 37       	mov.l	@(28,r3),r0
  c6:	40 09       	shlr2	r0
  c8:	40 09       	shlr2	r0
  ca:	40 09       	shlr2	r0
  cc:	20 d9       	and	r13,r0
  ce:	24 01       	mov.w	r0,@r4
  d0:	3b 9c       	add	r9,r11
  d2:	4a 10       	dt	r10
  d4:	8f ee       	bf.s	b4 <ssms_kloop>
  d6:	74 02       	add	#2,r4
  d8:	e0 01       	mov	#1,r0
  da:	40 28       	shll16	r0
  dc:	c2 16       	mov.l	r0,@(88,gbr)
  de:	e0 00       	mov	#0,r0
  e0:	c2 17       	mov.l	r0,@(92,gbr)
  e2:	d1 06       	mov.l	fc <IMM_LABEL1>,r1	! 60ffe18
  e4:	60 12       	mov.l	@r1,r0
  e6:	40 28       	shll16	r0
  e8:	40 01       	shlr	r0
  ea:	c2 15       	mov.l	r0,@(84,gbr)
  ec:	d1 04       	mov.l	100 <IMM_LABEL2>,r1	! 60ffd74
  ee:	60 11       	mov.w	@r1,r0
  f0:	40 19       	shlr8	r0
  f2:	40 18       	shll8	r0
  f4:	cb 03       	or	#3,r0
  f6:	a1 a9       	bra	44c <ssms_ex>
  f8:	21 01       	mov.w	r0,@r1
	...

000000fc <IMM_LABEL1>:
  fc:	06 0f       	mac.l	@r0+,@r6+
  fe:	fe 18       	fmov	@r1,fr14

00000100 <IMM_LABEL2>:
 100:	06 0f       	mac.l	@r0+,@r6+
 102:	fd 74       	fcmp/eq	fr7,fr13

00000104 <ssms_kset_real1>:
 104:	47 11       	cmp/pz	r7
 106:	89 03       	bt	110 <ssms_kso_negps>
 108:	67 7b       	neg	r7,r7
 10a:	6b bb       	neg	r11,r11
 10c:	68 8b       	neg	r8,r8
 10e:	69 9b       	neg	r9,r9

00000110 <ssms_kso_negps>:
 110:	ea 80       	mov	#-128,r10
 112:	6a ac       	extu.b	r10,r10
 114:	3a ec       	add	r14,r10
 116:	63 a1       	mov.w	@r10,r3
 118:	7a 30       	add	#48,r10
 11a:	60 a0       	mov.b	@r10,r0
 11c:	c8 08       	tst	#8,r0
 11e:	89 00       	bt	122 <ssms_hrx_10>
 120:	43 01       	shlr	r3

00000122 <ssms_hrx_10>:
 122:	73 ff       	add	#-1,r3
 124:	43 28       	shll16	r3
 126:	38 3d       	dmuls.l	r3,r8
 128:	ea 00       	mov	#0,r10
 12a:	e3 00       	mov	#0,r3
 12c:	00 0a       	sts	mach,r0
 12e:	01 1a       	sts	macl,r1
 130:	21 0d       	xtrct	r0,r1
 132:	41 11       	cmp/pz	r1
 134:	89 01       	bt	13a <ssms_kso_gpl>
 136:	a0 01       	bra	13c <ssms_kso_hchk>
 138:	6a 13       	mov	r1,r10

0000013a <ssms_kso_gpl>:
 13a:	63 13       	mov	r1,r3

0000013c <ssms_kso_hchk>:
 13c:	e0 82       	mov	#-126,r0
 13e:	60 0c       	extu.b	r0,r0
 140:	30 ec       	add	r14,r0
 142:	61 01       	mov.w	@r0,r1
 144:	70 2e       	add	#46,r0
 146:	60 00       	mov.b	@r0,r0
 148:	c8 10       	tst	#16,r0
 14a:	89 00       	bt	14e <ssms_hrx_11>
 14c:	41 01       	shlr	r1

0000014e <ssms_hrx_11>:
 14e:	71 ff       	add	#-1,r1
 150:	41 28       	shll16	r1
 152:	39 1d       	dmuls.l	r1,r9
 154:	00 0a       	sts	mach,r0
 156:	01 1a       	sts	macl,r1
 158:	21 0d       	xtrct	r0,r1
 15a:	41 11       	cmp/pz	r1
 15c:	89 01       	bt	162 <ssms_kso_hpl>
 15e:	a0 01       	bra	164 <ssms_kso_hchk_ex>
 160:	3a 1c       	add	r1,r10

00000162 <ssms_kso_hpl>:
 162:	33 1c       	add	r1,r3

00000164 <ssms_kso_hchk_ex>:
 164:	33 a8       	sub	r10,r3
 166:	d0 11       	mov.l	1ac <IMM_LABEL3>,r0	! 1ff0000
 168:	e1 ff       	mov	#-1,r1
 16a:	41 18       	shll8	r1
 16c:	11 00       	mov.l	r0,@(0,r1)
 16e:	62 39       	swap.w	r3,r2
 170:	62 2f       	exts.w	r2,r2
 172:	11 24       	mov.l	r2,@(16,r1)
 174:	43 28       	shll16	r3
 176:	11 35       	mov.l	r3,@(20,r1)
 178:	5c 17       	mov.l	@(28,r1),r12
 17a:	60 c3       	mov	r12,r0
 17c:	61 ab       	neg	r10,r1
 17e:	e3 ff       	mov	#-1,r3
 180:	43 18       	shll8	r3
 182:	13 00       	mov.l	r0,@(0,r3)
 184:	62 19       	swap.w	r1,r2
 186:	62 2f       	exts.w	r2,r2
 188:	13 24       	mov.l	r2,@(16,r3)
 18a:	41 28       	shll16	r1
 18c:	13 15       	mov.l	r1,@(20,r3)
 18e:	52 37       	mov.l	@(28,r3),r2
 190:	c6 18       	mov.l	@(96,gbr),r0
 192:	40 28       	shll16	r0
 194:	40 09       	shlr2	r0
 196:	30 2c       	add	r2,r0
 198:	c2 15       	mov.l	r0,@(84,gbr)
 19a:	3b ac       	add	r10,r11
 19c:	9d 08       	mov.w	1b0 <IMM_LABEL4>,r13	! 3fff
 19e:	9a 08       	mov.w	1b2 <IMM_LABEL5>,r10	! 200

000001a0 <ssms_kloop_o>:
 1a0:	4b 11       	cmp/pz	r11
 1a2:	89 07       	bt	1b4 <ssms_kpl>
 1a4:	e0 80       	mov	#-128,r0
 1a6:	a0 14       	bra	1d2 <ssms_kset>
 1a8:	40 18       	shll8	r0
	...

000001ac <IMM_LABEL3>:
 1ac:	01 ff       	mac.l	@r15+,@r1+
	...

000001b0 <IMM_LABEL4>:
 1b0:	3f ff       	addv	r15,r15

000001b2 <IMM_LABEL5>:
 1b2:	02 00       	.word 0x0200

000001b4 <ssms_kpl>:
 1b4:	60 b3       	mov	r11,r0
 1b6:	61 73       	mov	r7,r1
 1b8:	e3 ff       	mov	#-1,r3
 1ba:	43 18       	shll8	r3
 1bc:	13 00       	mov.l	r0,@(0,r3)
 1be:	62 19       	swap.w	r1,r2
 1c0:	62 2f       	exts.w	r2,r2
 1c2:	13 24       	mov.l	r2,@(16,r3)
 1c4:	41 28       	shll16	r1
 1c6:	13 15       	mov.l	r1,@(20,r3)
 1c8:	50 37       	mov.l	@(28,r3),r0
 1ca:	40 09       	shlr2	r0
 1cc:	40 09       	shlr2	r0
 1ce:	40 09       	shlr2	r0
 1d0:	20 d9       	and	r13,r0

000001d2 <ssms_kset>:
 1d2:	24 01       	mov.w	r0,@r4
 1d4:	3b cc       	add	r12,r11
 1d6:	4a 10       	dt	r10
 1d8:	8f e2       	bf.s	1a0 <ssms_kloop_o>
 1da:	74 02       	add	#2,r4
 1dc:	60 c3       	mov	r12,r0
 1de:	61 83       	mov	r8,r1
 1e0:	e3 ff       	mov	#-1,r3
 1e2:	43 18       	shll8	r3
 1e4:	13 00       	mov.l	r0,@(0,r3)
 1e6:	62 19       	swap.w	r1,r2
 1e8:	62 2f       	exts.w	r2,r2
 1ea:	13 24       	mov.l	r2,@(16,r3)
 1ec:	41 28       	shll16	r1
 1ee:	13 15       	mov.l	r1,@(20,r3)
 1f0:	50 37       	mov.l	@(28,r3),r0
 1f2:	c2 17       	mov.l	r0,@(92,gbr)
 1f4:	60 c3       	mov	r12,r0
 1f6:	61 93       	mov	r9,r1
 1f8:	e3 ff       	mov	#-1,r3
 1fa:	43 18       	shll8	r3
 1fc:	13 00       	mov.l	r0,@(0,r3)
 1fe:	62 19       	swap.w	r1,r2
 200:	62 2f       	exts.w	r2,r2
 202:	13 24       	mov.l	r2,@(16,r3)
 204:	41 28       	shll16	r1
 206:	13 15       	mov.l	r1,@(20,r3)
 208:	50 37       	mov.l	@(28,r3),r0
 20a:	a1 1f       	bra	44c <ssms_ex>
 20c:	c2 16       	mov.l	r0,@(88,gbr)

0000020e <ssms_kset_real2>:
 20e:	47 11       	cmp/pz	r7
 210:	89 03       	bt	21a <ssms_kso2_negps>
 212:	67 7b       	neg	r7,r7
 214:	6b bb       	neg	r11,r11
 216:	68 8b       	neg	r8,r8
 218:	69 9b       	neg	r9,r9

0000021a <ssms_kso2_negps>:
 21a:	ea 80       	mov	#-128,r10
 21c:	6a ac       	extu.b	r10,r10
 21e:	3a ec       	add	r14,r10
 220:	63 a1       	mov.w	@r10,r3
 222:	7a 30       	add	#48,r10
 224:	60 a0       	mov.b	@r10,r0
 226:	c8 08       	tst	#8,r0
 228:	89 00       	bt	22c <ssms_hrx_20>
 22a:	43 01       	shlr	r3

0000022c <ssms_hrx_20>:
 22c:	73 ff       	add	#-1,r3
 22e:	38 3d       	dmuls.l	r3,r8
 230:	ea 00       	mov	#0,r10
 232:	e3 00       	mov	#0,r3
 234:	01 1a       	sts	macl,r1
 236:	41 11       	cmp/pz	r1
 238:	89 01       	bt	23e <ssms_kso2_gpl>
 23a:	a0 01       	bra	240 <ssms_kso2_hchk>
 23c:	6a 13       	mov	r1,r10

0000023e <ssms_kso2_gpl>:
 23e:	63 13       	mov	r1,r3

00000240 <ssms_kso2_hchk>:
 240:	e1 82       	mov	#-126,r1
 242:	61 1c       	extu.b	r1,r1
 244:	31 ec       	add	r14,r1
 246:	61 11       	mov.w	@r1,r1
 248:	c8 08       	tst	#8,r0
 24a:	89 00       	bt	24e <ssms_hrx_21>
 24c:	41 01       	shlr	r1

0000024e <ssms_hrx_21>:
 24e:	71 ff       	add	#-1,r1
 250:	39 1d       	dmuls.l	r1,r9
 252:	01 1a       	sts	macl,r1
 254:	41 11       	cmp/pz	r1
 256:	89 01       	bt	25c <ssms_kso2_hpl>
 258:	a0 01       	bra	25e <ssms_kso2_hchk_ex>
 25a:	3a 1c       	add	r1,r10

0000025c <ssms_kso2_hpl>:
 25c:	33 1c       	add	r1,r3

0000025e <ssms_kso2_hchk_ex>:
 25e:	33 a8       	sub	r10,r3
 260:	d0 11       	mov.l	2a8 <IMM_LABEL6>,r0	! 1ff0000
 262:	e1 ff       	mov	#-1,r1
 264:	41 18       	shll8	r1
 266:	11 00       	mov.l	r0,@(0,r1)
 268:	62 39       	swap.w	r3,r2
 26a:	62 2f       	exts.w	r2,r2
 26c:	11 24       	mov.l	r2,@(16,r1)
 26e:	43 28       	shll16	r3
 270:	11 35       	mov.l	r3,@(20,r1)
 272:	5c 17       	mov.l	@(28,r1),r12
 274:	60 c3       	mov	r12,r0
 276:	61 ab       	neg	r10,r1
 278:	e3 ff       	mov	#-1,r3
 27a:	43 18       	shll8	r3
 27c:	13 00       	mov.l	r0,@(0,r3)
 27e:	62 19       	swap.w	r1,r2
 280:	62 2f       	exts.w	r2,r2
 282:	13 24       	mov.l	r2,@(16,r3)
 284:	41 28       	shll16	r1
 286:	13 15       	mov.l	r1,@(20,r3)
 288:	52 37       	mov.l	@(28,r3),r2
 28a:	c6 18       	mov.l	@(96,gbr),r0
 28c:	40 09       	shlr2	r0
 28e:	40 28       	shll16	r0
 290:	30 2c       	add	r2,r0
 292:	c2 15       	mov.l	r0,@(84,gbr)
 294:	3b ac       	add	r10,r11
 296:	dd 05       	mov.l	2ac <IMM_LABEL7>,r13	! 7fffff
 298:	ea 02       	mov	#2,r10
 29a:	4a 18       	shll8	r10

0000029c <ssms_kloop_o2>:
 29c:	4b 11       	cmp/pz	r11
 29e:	89 07       	bt	2b0 <ssms_kpl2>
 2a0:	e0 01       	mov	#1,r0
 2a2:	a0 11       	bra	2c8 <ssms_kset2>
 2a4:	40 05       	rotr	r0
	...

000002a8 <IMM_LABEL6>:
 2a8:	01 ff       	mac.l	@r15+,@r1+
	...

000002ac <IMM_LABEL7>:
 2ac:	00 7f       	mac.l	@r7+,@r0+
 2ae:	ff ff       	.word 0xffff

000002b0 <ssms_kpl2>:
 2b0:	60 b3       	mov	r11,r0
 2b2:	61 73       	mov	r7,r1
 2b4:	e3 ff       	mov	#-1,r3
 2b6:	43 18       	shll8	r3
 2b8:	13 00       	mov.l	r0,@(0,r3)
 2ba:	62 19       	swap.w	r1,r2
 2bc:	62 2f       	exts.w	r2,r2
 2be:	13 24       	mov.l	r2,@(16,r3)
 2c0:	41 28       	shll16	r1
 2c2:	13 15       	mov.l	r1,@(20,r3)
 2c4:	50 37       	mov.l	@(28,r3),r0
 2c6:	20 d9       	and	r13,r0

000002c8 <ssms_kset2>:
 2c8:	24 02       	mov.l	r0,@r4
 2ca:	3b cc       	add	r12,r11
 2cc:	4a 10       	dt	r10
 2ce:	8f e5       	bf.s	29c <ssms_kloop_o2>
 2d0:	74 04       	add	#4,r4
 2d2:	60 c3       	mov	r12,r0
 2d4:	61 83       	mov	r8,r1
 2d6:	e3 ff       	mov	#-1,r3
 2d8:	43 18       	shll8	r3
 2da:	13 00       	mov.l	r0,@(0,r3)
 2dc:	62 19       	swap.w	r1,r2
 2de:	62 2f       	exts.w	r2,r2
 2e0:	13 24       	mov.l	r2,@(16,r3)
 2e2:	41 28       	shll16	r1
 2e4:	13 15       	mov.l	r1,@(20,r3)
 2e6:	50 37       	mov.l	@(28,r3),r0
 2e8:	c2 17       	mov.l	r0,@(92,gbr)
 2ea:	60 c3       	mov	r12,r0
 2ec:	61 93       	mov	r9,r1
 2ee:	13 00       	mov.l	r0,@(0,r3)
 2f0:	62 19       	swap.w	r1,r2
 2f2:	62 2f       	exts.w	r2,r2
 2f4:	13 24       	mov.l	r2,@(16,r3)
 2f6:	41 28       	shll16	r1
 2f8:	13 15       	mov.l	r1,@(20,r3)
 2fa:	50 37       	mov.l	@(28,r3),r0
 2fc:	a0 a6       	bra	44c <ssms_ex>
 2fe:	c2 16       	mov.l	r0,@(88,gbr)

00000300 <ssms_kset_1bank_use>:
 300:	47 11       	cmp/pz	r7
 302:	89 03       	bt	30c <ssms_k1u_negps>
 304:	67 7b       	neg	r7,r7
 306:	6b bb       	neg	r11,r11
 308:	68 8b       	neg	r8,r8
 30a:	69 9b       	neg	r9,r9

0000030c <ssms_k1u_negps>:
 30c:	60 73       	mov	r7,r0
 30e:	d1 0e       	mov.l	348 <IMM_LABEL8>,r1	! 800000
 310:	e3 ff       	mov	#-1,r3
 312:	43 18       	shll8	r3
 314:	13 00       	mov.l	r0,@(0,r3)
 316:	62 19       	swap.w	r1,r2
 318:	62 2f       	exts.w	r2,r2
 31a:	13 24       	mov.l	r2,@(16,r3)
 31c:	41 28       	shll16	r1
 31e:	13 15       	mov.l	r1,@(20,r3)
 320:	5a 37       	mov.l	@(28,r3),r10
 322:	e2 80       	mov	#-128,r2
 324:	62 2c       	extu.b	r2,r2
 326:	32 ec       	add	r14,r2
 328:	63 21       	mov.w	@r2,r3
 32a:	72 30       	add	#48,r2
 32c:	60 20       	mov.b	@r2,r0
 32e:	c8 08       	tst	#8,r0
 330:	89 00       	bt	334 <ssms_hrx_30>
 332:	43 01       	shlr	r3

00000334 <ssms_hrx_30>:
 334:	73 ff       	add	#-1,r3
 336:	38 3d       	dmuls.l	r3,r8
 338:	e2 00       	mov	#0,r2
 33a:	e3 00       	mov	#0,r3
 33c:	01 1a       	sts	macl,r1
 33e:	41 11       	cmp/pz	r1
 340:	89 04       	bt	34c <ssms_k1u_xpl>
 342:	a0 04       	bra	34e <ssms_k1u_xex>
 344:	62 1b       	neg	r1,r2
	...

00000348 <IMM_LABEL8>:
 348:	00 80       	.word 0x0080
	...

0000034c <ssms_k1u_xpl>:
 34c:	63 13       	mov	r1,r3

0000034e <ssms_k1u_xex>:
 34e:	e1 82       	mov	#-126,r1
 350:	61 1c       	extu.b	r1,r1
 352:	31 ec       	add	r14,r1
 354:	61 11       	mov.w	@r1,r1
 356:	c8 08       	tst	#8,r0
 358:	89 00       	bt	35c <ssms_hrx_31>
 35a:	41 01       	shlr	r1

0000035c <ssms_hrx_31>:
 35c:	71 ff       	add	#-1,r1
 35e:	39 1d       	dmuls.l	r1,r9
 360:	01 1a       	sts	macl,r1
 362:	41 11       	cmp/pz	r1
 364:	89 01       	bt	36a <ssms_k1u_ypl>
 366:	a0 01       	bra	36c <ssms_k1u_yex>
 368:	32 18       	sub	r1,r2

0000036a <ssms_k1u_ypl>:
 36a:	33 1c       	add	r1,r3

0000036c <ssms_k1u_yex>:
 36c:	4b 11       	cmp/pz	r11
 36e:	89 01       	bt	374 <ssms_k1u_fpl>
 370:	a0 01       	bra	376 <ssms_k1u_fex>
 372:	32 b8       	sub	r11,r2

00000374 <ssms_k1u_fpl>:
 374:	33 bc       	add	r11,r3

00000376 <ssms_k1u_fex>:
 376:	33 22       	cmp/hs	r2,r3
 378:	89 00       	bt	37c <ssms_k1u_r3big>
 37a:	63 23       	mov	r2,r3

0000037c <ssms_k1u_r3big>:
 37c:	60 33       	mov	r3,r0
 37e:	e2 11       	mov	#17,r2
 380:	00 18       	sett	

00000382 <ssms_bckz_loop>:
 382:	40 24       	rotcl	r0
 384:	8f fd       	bf.s	382 <ssms_bckz_loop>
 386:	72 ff       	add	#-1,r2
 388:	60 a3       	mov	r10,r0
 38a:	e1 11       	mov	#17,r1
 38c:	00 18       	sett	

0000038e <ssms_bcmz_loop>:
 38e:	40 24       	rotcl	r0
 390:	8f fd       	bf.s	38e <ssms_bcmz_loop>
 392:	71 ff       	add	#-1,r1
 394:	32 1c       	add	r1,r2
 396:	ec 00       	mov	#0,r12
 398:	04 12       	stc	gbr,r4
 39a:	74 1c       	add	#28,r4
 39c:	e1 06       	mov	#6,r1

0000039e <hh_00>:
 39e:	60 46       	mov.l	@r4+,r0
 3a0:	40 11       	cmp/pz	r0
 3a2:	89 00       	bt	3a6 <hh_01>
 3a4:	60 0b       	neg	r0,r0

000003a6 <hh_01>:
 3a6:	2c 0b       	or	r0,r12
 3a8:	41 10       	dt	r1
 3aa:	8b f8       	bf	39e <hh_00>
 3ac:	60 c3       	mov	r12,r0
 3ae:	e1 1b       	mov	#27,r1

000003b0 <hh_03>:
 3b0:	40 24       	rotcl	r0
 3b2:	8f fd       	bf.s	3b0 <hh_03>
 3b4:	71 ff       	add	#-1,r1
 3b6:	32 13       	cmp/ge	r1,r2
 3b8:	89 00       	bt	3bc <hhh>
 3ba:	62 13       	mov	r1,r2

000003bc <hhh>:
 3bc:	72 f3       	add	#-13,r2
 3be:	22 28       	tst	r2,r2
 3c0:	89 2c       	bt	41c <ssms_k1u_mmchk_ex>

000003c2 <ssms_k1u_mmch_01>:
 3c2:	e1 0f       	mov	#15,r1
 3c4:	31 28       	sub	r2,r1
 3c6:	41 08       	shll2	r1
 3c8:	c7 26       	mova	464 <bm_tbl_l>,r0
 3ca:	0c 1e       	mov.l	@(r0,r1),r12
 3cc:	3a cd       	dmuls.l	r12,r10
 3ce:	00 0a       	sts	mach,r0
 3d0:	0a 1a       	sts	macl,r10
 3d2:	2a 0d       	xtrct	r0,r10
 3d4:	50 60       	mov.l	@(0,r6),r0
 3d6:	30 cd       	dmuls.l	r12,r0
 3d8:	01 0a       	sts	mach,r1
 3da:	00 1a       	sts	macl,r0
 3dc:	20 1d       	xtrct	r1,r0
 3de:	c2 07       	mov.l	r0,@(28,gbr)
 3e0:	50 61       	mov.l	@(4,r6),r0
 3e2:	30 cd       	dmuls.l	r12,r0
 3e4:	01 0a       	sts	mach,r1
 3e6:	00 1a       	sts	macl,r0
 3e8:	20 1d       	xtrct	r1,r0
 3ea:	c2 08       	mov.l	r0,@(32,gbr)
 3ec:	50 62       	mov.l	@(8,r6),r0
 3ee:	30 cd       	dmuls.l	r12,r0
 3f0:	01 0a       	sts	mach,r1
 3f2:	00 1a       	sts	macl,r0
 3f4:	20 1d       	xtrct	r1,r0
 3f6:	c2 09       	mov.l	r0,@(36,gbr)
 3f8:	50 64       	mov.l	@(16,r6),r0
 3fa:	30 cd       	dmuls.l	r12,r0
 3fc:	01 0a       	sts	mach,r1
 3fe:	00 1a       	sts	macl,r0
 400:	20 1d       	xtrct	r1,r0
 402:	c2 0a       	mov.l	r0,@(40,gbr)
 404:	50 65       	mov.l	@(20,r6),r0
 406:	30 cd       	dmuls.l	r12,r0
 408:	01 0a       	sts	mach,r1
 40a:	00 1a       	sts	macl,r0
 40c:	20 1d       	xtrct	r1,r0
 40e:	c2 0b       	mov.l	r0,@(44,gbr)
 410:	50 66       	mov.l	@(24,r6),r0
 412:	30 cd       	dmuls.l	r12,r0
 414:	01 0a       	sts	mach,r1
 416:	00 1a       	sts	macl,r0
 418:	20 1d       	xtrct	r1,r0
 41a:	c2 0c       	mov.l	r0,@(48,gbr)

0000041c <ssms_k1u_mmchk_ex>:
 41c:	3b ad       	dmuls.l	r10,r11
 41e:	e1 40       	mov	#64,r1
 420:	41 18       	shll8	r1
 422:	41 28       	shll16	r1
 424:	00 0a       	sts	mach,r0
 426:	02 1a       	sts	macl,r2
 428:	22 0d       	xtrct	r0,r2
 42a:	c6 18       	mov.l	@(96,gbr),r0
 42c:	32 1c       	add	r1,r2
 42e:	40 09       	shlr2	r0
 430:	40 28       	shll16	r0
 432:	30 2c       	add	r2,r0
 434:	c2 15       	mov.l	r0,@(84,gbr)
 436:	38 ad       	dmuls.l	r10,r8
 438:	01 0a       	sts	mach,r1
 43a:	00 1a       	sts	macl,r0
 43c:	20 1d       	xtrct	r1,r0
 43e:	c2 17       	mov.l	r0,@(92,gbr)
 440:	39 ad       	dmuls.l	r10,r9
 442:	01 0a       	sts	mach,r1
 444:	00 1a       	sts	macl,r0
 446:	20 1d       	xtrct	r1,r0
 448:	a0 00       	bra	44c <ssms_ex>
 44a:	c2 16       	mov.l	r0,@(88,gbr)

0000044c <ssms_ex>:
 44c:	4f 17       	ldc.l	@r15+,gbr
 44e:	69 f6       	mov.l	@r15+,r9
 450:	6a f6       	mov.l	@r15+,r10
 452:	6b f6       	mov.l	@r15+,r11
 454:	6c f6       	mov.l	@r15+,r12
 456:	6d f6       	mov.l	@r15+,r13
 458:	6e f6       	mov.l	@r15+,r14
 45a:	4f 26       	lds.l	@r15+,pr
 45c:	e0 01       	mov	#1,r0
 45e:	c0 cc       	mov.b	r0,@(204,gbr)
 460:	00 0b       	rts	
 462:	68 f6       	mov.l	@r15+,r8

00000464 <bm_tbl_l>:
 464:	00 00       	.word 0x0000
 466:	00 01       	.word 0x0001
 468:	00 00       	.word 0x0000
 46a:	00 02       	stc	sr,r0
 46c:	00 00       	.word 0x0000
 46e:	00 04       	mov.b	r0,@(r0,r0)
 470:	00 00       	.word 0x0000
 472:	00 08       	clrt	
 474:	00 00       	.word 0x0000
 476:	00 10       	.word 0x0010
 478:	00 00       	.word 0x0000
 47a:	00 20       	.word 0x0020
 47c:	00 00       	.word 0x0000
 47e:	00 40       	.word 0x0040
 480:	00 00       	.word 0x0000
 482:	00 80       	.word 0x0080
 484:	00 00       	.word 0x0000
 486:	01 00       	.word 0x0100
 488:	00 00       	.word 0x0000
 48a:	02 00       	.word 0x0200
 48c:	00 00       	.word 0x0000
 48e:	04 00       	.word 0x0400
 490:	00 00       	.word 0x0000
 492:	08 00       	.word 0x0800
 494:	00 00       	.word 0x0000
 496:	10 00       	mov.l	r0,@(0,r0)
 498:	00 00       	.word 0x0000
 49a:	20 00       	mov.b	r0,@r0
 49c:	00 00       	.word 0x0000
 49e:	40 00       	shll	r0
 4a0:	00 00       	.word 0x0000
 4a2:	80 00       	mov.b	r0,@(0,r0)
 4a4:	00 01       	.word 0x0001
 4a6:	00 00       	.word 0x0000
 4a8:	00 02       	stc	sr,r0
 4aa:	00 00       	.word 0x0000
 4ac:	00 04       	mov.b	r0,@(r0,r0)
 4ae:	00 00       	.word 0x0000
 4b0:	00 08       	clrt	
 4b2:	00 00       	.word 0x0000
 4b4:	00 10       	.word 0x0010
 4b6:	00 00       	.word 0x0000
 4b8:	00 20       	.word 0x0020
 4ba:	00 00       	.word 0x0000
 4bc:	00 40       	.word 0x0040
 4be:	00 00       	.word 0x0000
 4c0:	00 80       	.word 0x0080
 4c2:	00 00       	.word 0x0000
 4c4:	01 00       	.word 0x0100
 4c6:	00 00       	.word 0x0000
 4c8:	02 00       	.word 0x0200
 4ca:	00 00       	.word 0x0000
 4cc:	04 00       	.word 0x0400
 4ce:	00 00       	.word 0x0000
 4d0:	08 00       	.word 0x0800
 4d2:	00 00       	.word 0x0000
 4d4:	10 00       	mov.l	r0,@(0,r0)
 4d6:	00 00       	.word 0x0000
 4d8:	20 00       	mov.b	r0,@r0
 4da:	00 00       	.word 0x0000
 4dc:	40 00       	shll	r0
 4de:	00 00       	.word 0x0000
 4e0:	80 00       	mov.b	r0,@(0,r0)
	...
