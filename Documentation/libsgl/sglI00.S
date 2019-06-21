
sglI00.o:     file format coff-sh


Disassembly of section SLSTART:

00000000 <SGL_Start>:
   0:	d4 08       	mov.l	24 <IMM_main>,r4	! 0 <SGL_Start>

00000002 <_slStartSGL>:
   2:	df 06       	mov.l	1c <IMM_MasterStack>,r15	! 0 <SGL_Start>
   4:	e0 f0       	mov	#-16,r0
   6:	60 0c       	extu.b	r0,r0
   8:	40 0e       	ldc	r0,sr
   a:	6f f2       	mov.l	@r15,r15
   c:	e1 a4       	mov	#-92,r1
   e:	41 08       	shll2	r1
  10:	e0 11       	mov	#17,r0
  12:	80 12       	mov.b	r0,@(2,r1)
  14:	d0 02       	mov.l	20 <IMM_SystemCtrl>,r0	! 60ffc00
  16:	44 2b       	jmp	@r4
  18:	40 1e       	ldc	r0,gbr
	...

0000001c <IMM_MasterStack>:
  1c:	00 00       	.word 0x0000
	...

00000020 <IMM_SystemCtrl>:
  20:	06 0f       	mac.l	@r0+,@r6+
  22:	fc 00       	fadd	fr0,fr12

00000024 <IMM_main>:
  24:	00 00       	.word 0x0000
	...

Disassembly of section SLPROG:

00000028 <SLPROG>:
  28:	2f 06       	mov.l	r0,@-r15
  2a:	d0 ba       	mov.l	314 <IMM_DMASt_SCU0>,r0	! 60ffcbb
  2c:	4f 13       	stc.l	gbr,@-r15
  2e:	40 1e       	ldc	r0,gbr
  30:	e0 00       	mov	#0,r0
  32:	cf 06       	or.b	#6,@(r0,gbr)
  34:	4f 17       	ldc.l	@r15+,gbr
  36:	00 0b       	rts	
  38:	60 f6       	mov.l	@r15+,r0

0000003a <_IntFuncScu1>:
  3a:	2f 06       	mov.l	r0,@-r15
  3c:	d0 b5       	mov.l	314 <IMM_DMASt_SCU0>,r0	! 60ffcbb
  3e:	4f 13       	stc.l	gbr,@-r15
  40:	40 1e       	ldc	r0,gbr
  42:	e0 01       	mov	#1,r0
  44:	cf 06       	or.b	#6,@(r0,gbr)
  46:	4f 17       	ldc.l	@r15+,gbr
  48:	00 0b       	rts	
  4a:	60 f6       	mov.l	@r15+,r0

0000004c <_IntFuncScu2>:
  4c:	2f 06       	mov.l	r0,@-r15
  4e:	d0 b1       	mov.l	314 <IMM_DMASt_SCU0>,r0	! 60ffcbb
  50:	4f 13       	stc.l	gbr,@-r15
  52:	40 1e       	ldc	r0,gbr
  54:	e0 02       	mov	#2,r0
  56:	cf 06       	or.b	#6,@(r0,gbr)
  58:	4f 17       	ldc.l	@r15+,gbr
  5a:	00 0b       	rts	
  5c:	60 f6       	mov.l	@r15+,r0

0000005e <_BlankIn>:
  5e:	2f 06       	mov.l	r0,@-r15
  60:	2f 76       	mov.l	r7,@-r15
  62:	2f 66       	mov.l	r6,@-r15
  64:	2f 56       	mov.l	r5,@-r15
  66:	2f 46       	mov.l	r4,@-r15
  68:	2f 36       	mov.l	r3,@-r15
  6a:	2f 26       	mov.l	r2,@-r15
  6c:	4f 22       	sts.l	pr,@-r15
  6e:	2f 16       	mov.l	r1,@-r15
  70:	4f 13       	stc.l	gbr,@-r15
  72:	4f 02       	sts.l	mach,@-r15
  74:	4f 12       	sts.l	macl,@-r15
  76:	4f 03       	stc.l	sr,@-r15
  78:	e0 00       	mov	#0,r0
  7a:	40 0e       	ldc	r0,sr
  7c:	d0 93       	mov.l	2cc <IMM_SYSTEM_CTRL>,r0	! 60ffc00
  7e:	e2 84       	mov	#-124,r2
  80:	42 08       	shll2	r2
  82:	40 1e       	ldc	r0,gbr
  84:	72 02       	add	#2,r2
  86:	60 24       	mov.b	@r2+,r0
  88:	62 24       	mov.b	@r2+,r2
  8a:	40 18       	shll8	r0
  8c:	62 2c       	extu.b	r2,r2
  8e:	20 2b       	or	r2,r0
  90:	c1 5b       	mov.w	r0,@(182,gbr)
  92:	c4 13       	mov.b	@(19,gbr),r0
  94:	20 08       	tst	r0,r0
  96:	8b 2d       	bf	f4 <blnkin_05>
  98:	c4 1b       	mov.b	@(27,gbr),r0
  9a:	c8 01       	tst	#1,r0
  9c:	8b 2a       	bf	f4 <blnkin_05>
  9e:	d4 8c       	mov.l	2d0 <IMM_CTRL_SCROLL>,r4	! 60ffcc0
  a0:	d5 8c       	mov.l	2d4 <IMM_ScrollPort>,r5	! 25f80000
  a2:	96 87       	mov.w	1b4 <IMM_sysInterrupt_PRMSIZE>,r6	! 90
  a4:	e3 90       	mov	#-112,r3

000000a6 <wait_DMAC_01295>:
  a6:	50 33       	mov.l	@(12,r3),r0
  a8:	c9 03       	and	#3,r0
  aa:	88 01       	cmp/eq	#1,r0
  ac:	89 fb       	bt	a6 <wait_DMAC_01295>
  ae:	50 38       	mov.l	@(32,r3),r0
  b0:	e0 00       	mov	#0,r0
  b2:	13 03       	mov.l	r0,@(12,r3)
  b4:	e3 9c       	mov	#-100,r3
  b6:	43 08       	shll2	r3
  b8:	80 32       	mov.b	r0,@(2,r3)
  ba:	e3 90       	mov	#-112,r3
  bc:	13 40       	mov.l	r4,@(0,r3)
  be:	13 51       	mov.l	r5,@(4,r3)
  c0:	13 62       	mov.l	r6,@(8,r3)
  c2:	90 e0       	mov.w	286 <IMM_DMA_REQ>,r0	! 5601
  c4:	13 03       	mov.l	r0,@(12,r3)
  c6:	e0 09       	mov	#9,r0
  c8:	13 08       	mov.l	r0,@(32,r3)
  ca:	c5 70       	mov.w	@(224,gbr),r0
  cc:	c8 30       	tst	#48,r0
  ce:	89 0c       	bt	ea <blnkin_01>
  d0:	c4 cc       	mov.b	@(204,gbr),r0
  d2:	c8 01       	tst	#1,r0
  d4:	89 09       	bt	ea <blnkin_01>
  d6:	c6 85       	mov.l	@(532,gbr),r0
  d8:	d4 7f       	mov.l	2d8 <IMM_RotScrParA>,r4	! 60ffe1c
  da:	65 03       	mov	r0,r5
  dc:	b0 55       	bsr	18a <DMA_Trans>
  de:	e6 30       	mov	#48,r6
  e0:	e0 80       	mov	#-128,r0
  e2:	60 0c       	extu.b	r0,r0
  e4:	35 0c       	add	r0,r5
  e6:	b0 50       	bsr	18a <DMA_Trans>
  e8:	74 68       	add	#104,r4

000000ea <blnkin_01>:
  ea:	e1 90       	mov	#-112,r1

000000ec <wait_DMAC_01299>:
  ec:	50 13       	mov.l	@(12,r1),r0
  ee:	c9 03       	and	#3,r0
  f0:	88 01       	cmp/eq	#1,r0
  f2:	89 fb       	bt	ec <wait_DMAC_01299>

000000f4 <blnkin_05>:
  f4:	c4 1a       	mov.b	@(26,gbr),r0
  f6:	20 08       	tst	r0,r0
  f8:	89 17       	bt	12a <blnkin_09>
  fa:	c4 bd       	mov.b	@(189,gbr),r0

000000fc <blnkin_06>:
  fc:	c8 04       	tst	#4,r0
  fe:	8b 04       	bf	10a <blnkin_08>
 100:	e0 30       	mov	#48,r0

00000102 <blnkin_07>:
 102:	40 10       	dt	r0
 104:	8b fd       	bf	102 <blnkin_07>
 106:	af f9       	bra	fc <blnkin_06>
 108:	c4 bd       	mov.b	@(189,gbr),r0

0000010a <blnkin_08>:
 10a:	d3 75       	mov.l	2e0 <IMM_DMA_SET_REG_2>,r3	! 25fe0040
 10c:	d0 76       	mov.l	2e8 <IMM_TransList>,r0	! 0 <.text>
 10e:	e2 00       	mov	#0,r2
 110:	13 24       	mov.l	r2,@(16,r3)
 112:	60 02       	mov.l	@r0,r0
 114:	91 b8       	mov.w	288 <IMM_00000101>,r1	! 101
 116:	13 01       	mov.l	r0,@(4,r3)
 118:	d0 74       	mov.l	2ec <IMM_01000007>,r0	! 1000007
 11a:	13 13       	mov.l	r1,@(12,r3)
 11c:	13 05       	mov.l	r0,@(20,r3)
 11e:	e0 08       	mov	#8,r0
 120:	c0 bd       	mov.b	r0,@(189,gbr)
 122:	13 14       	mov.l	r1,@(16,r3)
 124:	e0 00       	mov	#0,r0
 126:	c1 0c       	mov.w	r0,@(24,gbr)
 128:	c0 1a       	mov.b	r0,@(26,gbr)

0000012a <blnkin_09>:
 12a:	c6 05       	mov.l	@(20,gbr),r0
 12c:	40 0b       	jsr	@r0
 12e:	00 09       	nop	
 130:	d0 6f       	mov.l	2f0 <IMM_slSmpcDirectAccess>,r0	! 0 <.text>
 132:	40 0b       	jsr	@r0
 134:	00 09       	nop	

00000136 <blnkin_10>:
 136:	b1 53       	bsr	3e0 <PCM_control>
 138:	00 09       	nop	
 13a:	c4 13       	mov.b	@(19,gbr),r0
 13c:	20 08       	tst	r0,r0
 13e:	8b 13       	bf	168 <blnkin_19>

00000140 <blnkin_13>:
 140:	e2 84       	mov	#-124,r2
 142:	42 08       	shll2	r2
 144:	72 02       	add	#2,r2
 146:	61 24       	mov.b	@r2+,r1
 148:	62 24       	mov.b	@r2+,r2
 14a:	41 18       	shll8	r1
 14c:	62 2c       	extu.b	r2,r2
 14e:	c5 5b       	mov.w	@(182,gbr),r0
 150:	21 2b       	or	r2,r1
 152:	e2 44       	mov	#68,r2
 154:	31 08       	sub	r0,r1
 156:	31 22       	cmp/hs	r2,r1
 158:	89 03       	bt	162 <blnkin_15>

0000015a <blnkin_14>:
 15a:	42 10       	dt	r2
 15c:	8b fd       	bf	15a <blnkin_14>
 15e:	af ef       	bra	140 <blnkin_13>
 160:	00 09       	nop	

00000162 <blnkin_15>:
 162:	d0 64       	mov.l	2f4 <IMM_slSmpcCashSend>,r0	! 0 <.text>
 164:	40 0b       	jsr	@r0
 166:	00 09       	nop	

00000168 <blnkin_19>:
 168:	c6 d0       	mov.l	@(832,gbr),r0
 16a:	40 0b       	jsr	@r0
 16c:	00 09       	nop	
 16e:	4f 07       	ldc.l	@r15+,sr
 170:	4f 16       	lds.l	@r15+,macl
 172:	4f 06       	lds.l	@r15+,mach
 174:	4f 17       	ldc.l	@r15+,gbr
 176:	61 f6       	mov.l	@r15+,r1
 178:	4f 26       	lds.l	@r15+,pr
 17a:	62 f6       	mov.l	@r15+,r2
 17c:	63 f6       	mov.l	@r15+,r3
 17e:	64 f6       	mov.l	@r15+,r4
 180:	65 f6       	mov.l	@r15+,r5
 182:	66 f6       	mov.l	@r15+,r6
 184:	67 f6       	mov.l	@r15+,r7
 186:	00 0b       	rts	
 188:	60 f6       	mov.l	@r15+,r0

0000018a <DMA_Trans>:
 18a:	e3 90       	mov	#-112,r3

0000018c <wait_DMAC_01321>:
 18c:	50 33       	mov.l	@(12,r3),r0
 18e:	c9 03       	and	#3,r0
 190:	88 01       	cmp/eq	#1,r0
 192:	89 fb       	bt	18c <wait_DMAC_01321>
 194:	50 38       	mov.l	@(32,r3),r0
 196:	e0 00       	mov	#0,r0
 198:	13 03       	mov.l	r0,@(12,r3)
 19a:	e3 9c       	mov	#-100,r3
 19c:	43 08       	shll2	r3
 19e:	80 32       	mov.b	r0,@(2,r3)
 1a0:	e3 90       	mov	#-112,r3
 1a2:	13 40       	mov.l	r4,@(0,r3)
 1a4:	13 51       	mov.l	r5,@(4,r3)
 1a6:	13 62       	mov.l	r6,@(8,r3)
 1a8:	90 6d       	mov.w	286 <IMM_DMA_REQ>,r0	! 5601
 1aa:	13 03       	mov.l	r0,@(12,r3)
 1ac:	e0 09       	mov	#9,r0
 1ae:	13 08       	mov.l	r0,@(32,r3)
 1b0:	00 0b       	rts	
 1b2:	00 09       	nop	

000001b4 <IMM_sysInterrupt_PRMSIZE>:
 1b4:	00 90       	.word 0x0090

000001b6 <_BlankOut>:
 1b6:	2f 06       	mov.l	r0,@-r15
 1b8:	2f 16       	mov.l	r1,@-r15
 1ba:	4f 13       	stc.l	gbr,@-r15
 1bc:	4f 22       	sts.l	pr,@-r15
 1be:	2f 76       	mov.l	r7,@-r15
 1c0:	2f 66       	mov.l	r6,@-r15
 1c2:	2f 56       	mov.l	r5,@-r15
 1c4:	2f 46       	mov.l	r4,@-r15
 1c6:	2f 36       	mov.l	r3,@-r15
 1c8:	2f 26       	mov.l	r2,@-r15
 1ca:	d3 40       	mov.l	2cc <IMM_SYSTEM_CTRL>,r3	! 60ffc00
 1cc:	4f 02       	sts.l	mach,@-r15
 1ce:	4f 12       	sts.l	macl,@-r15
 1d0:	4f 03       	stc.l	sr,@-r15
 1d2:	e0 00       	mov	#0,r0
 1d4:	40 0e       	ldc	r0,sr
 1d6:	43 1e       	ldc	r3,gbr
 1d8:	c4 b0       	mov.b	@(176,gbr),r0
 1da:	d2 48       	mov.l	2fc <IMM_SPR_FBCR>,r2	! 25d00002
 1dc:	c8 10       	tst	#16,r0
 1de:	8f 2a       	bf.s	236 <blnkout_03>
 1e0:	c8 80       	tst	#-128,r0
 1e2:	8f 15       	bf.s	210 <blnkout_01>
 1e4:	c4 1b       	mov.b	@(27,gbr),r0
 1e6:	73 12       	add	#18,r3
 1e8:	c8 02       	tst	#2,r0
 1ea:	8f 54       	bf.s	296 <blnkout_20>
 1ec:	60 34       	mov.b	@r3+,r0
 1ee:	63 30       	mov.b	@r3,r3
 1f0:	88 01       	cmp/eq	#1,r0
 1f2:	8d 29       	bt.s	248 <blnkout_04>
 1f4:	e1 00       	mov	#0,r1
 1f6:	60 33       	mov	r3,r0
 1f8:	d3 42       	mov.l	304 <IMM_DMASetFlag>,r3	! 260ffca8
 1fa:	88 01       	cmp/eq	#1,r0
 1fc:	8d 06       	bt.s	20c <blnkout_00>
 1fe:	e1 02       	mov	#2,r1
 200:	40 15       	cmp/pl	r0
 202:	8d 48       	bt.s	296 <blnkout_20>
 204:	60 30       	mov.b	@r3,r0
 206:	e1 03       	mov	#3,r1
 208:	a0 26       	bra	258 <blnkout_05>
 20a:	22 11       	mov.w	r1,@r2

0000020c <blnkout_00>:
 20c:	a0 43       	bra	296 <blnkout_20>
 20e:	22 11       	mov.w	r1,@r2

00000210 <blnkout_01>:
 210:	c4 13       	mov.b	@(19,gbr),r0
 212:	72 0e       	add	#14,r2
 214:	20 08       	tst	r0,r0
 216:	8f 3e       	bf.s	296 <blnkout_20>
 218:	c4 1b       	mov.b	@(27,gbr),r0
 21a:	63 21       	mov.w	@r2,r3
 21c:	c8 02       	tst	#2,r0
 21e:	8f 3a       	bf.s	296 <blnkout_20>
 220:	60 33       	mov	r3,r0
 222:	d1 38       	mov.l	304 <IMM_DMASetFlag>,r1	! 260ffca8
 224:	c8 02       	tst	#2,r0
 226:	8d 30       	bt.s	28a <blnkout_09>
 228:	61 10       	mov.b	@r1,r1
 22a:	72 f2       	add	#-14,r2
 22c:	21 18       	tst	r1,r1
 22e:	8d 2c       	bt.s	28a <blnkout_09>
 230:	e1 03       	mov	#3,r1
 232:	a0 11       	bra	258 <blnkout_05>
 234:	22 11       	mov.w	r1,@r2

00000236 <blnkout_03>:
 236:	d1 32       	mov.l	300 <IMM_SCRL_TVSTAT>,r1	! 25f80004
 238:	c4 1b       	mov.b	@(27,gbr),r0
 23a:	61 11       	mov.w	@r1,r1
 23c:	e3 02       	mov	#2,r3
 23e:	21 39       	and	r3,r1
 240:	71 04       	add	#4,r1
 242:	41 00       	shll	r1
 244:	c8 02       	tst	#2,r0
 246:	8f 26       	bf.s	296 <blnkout_20>

00000248 <blnkout_04>:
 248:	22 11       	mov.w	r1,@r2
 24a:	d2 2e       	mov.l	304 <IMM_DMASetFlag>,r2	! 260ffca8
 24c:	c4 13       	mov.b	@(19,gbr),r0
 24e:	61 20       	mov.b	@r2,r1
 250:	20 08       	tst	r0,r0
 252:	8f 20       	bf.s	296 <blnkout_20>
 254:	21 18       	tst	r1,r1
 256:	8d 18       	bt.s	28a <blnkout_09>

00000258 <blnkout_05>:
 258:	c4 bc       	mov.b	@(188,gbr),r0
 25a:	d3 2b       	mov.l	308 <IMM_DMA_SET_REG_1>,r3	! 25fe0020

0000025c <blnkout_06>:
 25c:	c8 04       	tst	#4,r0
 25e:	8f 04       	bf.s	26a <blnkout_08>
 260:	e1 30       	mov	#48,r1

00000262 <blnkout_07>:
 262:	41 10       	dt	r1
 264:	8b fd       	bf	262 <blnkout_07>
 266:	af f9       	bra	25c <blnkout_06>
 268:	c4 bc       	mov.b	@(188,gbr),r0

0000026a <blnkout_08>:
 26a:	e0 00       	mov	#0,r0
 26c:	13 04       	mov.l	r0,@(16,r3)
 26e:	c0 a8       	mov.b	r0,@(168,gbr)
 270:	d0 27       	mov.l	310 <IMM_SortList>,r0	! 0 <.text>
 272:	91 09       	mov.w	288 <IMM_00000101>,r1	! 101
 274:	60 02       	mov.l	@r0,r0
 276:	d2 1d       	mov.l	2ec <IMM_01000007>,r2	! 1000007
 278:	13 01       	mov.l	r0,@(4,r3)
 27a:	13 13       	mov.l	r1,@(12,r3)
 27c:	13 25       	mov.l	r2,@(20,r3)
 27e:	e0 08       	mov	#8,r0
 280:	c0 bc       	mov.b	r0,@(188,gbr)
 282:	a0 08       	bra	296 <blnkout_20>
 284:	13 14       	mov.l	r1,@(16,r3)

00000286 <IMM_DMA_REQ>:
 286:	56 01       	mov.l	@(4,r0),r6

00000288 <IMM_00000101>:
 288:	01 01       	.word 0x0101

0000028a <blnkout_09>:
 28a:	c4 b0       	mov.b	@(176,gbr),r0
 28c:	c9 10       	and	#16,r0
 28e:	40 09       	shlr2	r0
 290:	40 09       	shlr2	r0
 292:	70 01       	add	#1,r0
 294:	c0 13       	mov.b	r0,@(19,gbr)

00000296 <blnkout_20>:
 296:	d0 18       	mov.l	2f8 <IMM_slSmpcCashBlow>,r0	! 0 <.text>
 298:	40 0b       	jsr	@r0
 29a:	00 09       	nop	
 29c:	d2 18       	mov.l	300 <IMM_SCRL_TVSTAT>,r2	! 25f80004
 29e:	c4 13       	mov.b	@(19,gbr),r0
 2a0:	4f 07       	ldc.l	@r15+,sr
 2a2:	70 ff       	add	#-1,r0
 2a4:	c0 13       	mov.b	r0,@(19,gbr)
 2a6:	85 22       	mov.w	@(4,r2),r0
 2a8:	c1 62       	mov.w	r0,@(196,gbr)
 2aa:	c5 11       	mov.w	@(34,gbr),r0
 2ac:	4f 16       	lds.l	@r15+,macl
 2ae:	70 01       	add	#1,r0
 2b0:	c1 11       	mov.w	r0,@(34,gbr)
 2b2:	4f 06       	lds.l	@r15+,mach
 2b4:	62 f6       	mov.l	@r15+,r2
 2b6:	63 f6       	mov.l	@r15+,r3
 2b8:	64 f6       	mov.l	@r15+,r4
 2ba:	65 f6       	mov.l	@r15+,r5
 2bc:	66 f6       	mov.l	@r15+,r6
 2be:	67 f6       	mov.l	@r15+,r7
 2c0:	4f 26       	lds.l	@r15+,pr
 2c2:	4f 17       	ldc.l	@r15+,gbr
 2c4:	61 f6       	mov.l	@r15+,r1
 2c6:	00 0b       	rts	
 2c8:	60 f6       	mov.l	@r15+,r0
	...

000002cc <IMM_SYSTEM_CTRL>:
 2cc:	06 0f       	mac.l	@r0+,@r6+
 2ce:	fc 00       	fadd	fr0,fr12

000002d0 <IMM_CTRL_SCROLL>:
 2d0:	06 0f       	mac.l	@r0+,@r6+
 2d2:	fc c0       	fadd	fr12,fr12

000002d4 <IMM_ScrollPort>:
 2d4:	25 f8       	tst	r15,r5
	...

000002d8 <IMM_RotScrParA>:
 2d8:	06 0f       	mac.l	@r0+,@r6+
 2da:	fe 1c       	fmov	fr1,fr14

000002dc <IMM_RotScrParB>:
 2dc:	06 0f       	mac.l	@r0+,@r6+
 2de:	fe 84       	fcmp/eq	fr8,fr14

000002e0 <IMM_DMA_SET_REG_2>:
 2e0:	25 fe       	mulu.w	r15,r5
 2e2:	00 40       	.word 0x0040

000002e4 <IMM_Chk_CH2>:
 2e4:	00 00       	.word 0x0000
 2e6:	30 00       	cmp/eq	r0,r0

000002e8 <IMM_TransList>:
 2e8:	00 00       	.word 0x0000
	...

000002ec <IMM_01000007>:
 2ec:	01 00       	.word 0x0100
 2ee:	00 07       	mul.l	r0,r0

000002f0 <IMM_slSmpcDirectAccess>:
 2f0:	00 00       	.word 0x0000
	...

000002f4 <IMM_slSmpcCashSend>:
 2f4:	00 00       	.word 0x0000
	...

000002f8 <IMM_slSmpcCashBlow>:
 2f8:	00 00       	.word 0x0000
	...

000002fc <IMM_SPR_FBCR>:
 2fc:	25 d0       	mov.b	r13,@r5
 2fe:	00 02       	stc	sr,r0

00000300 <IMM_SCRL_TVSTAT>:
 300:	25 f8       	tst	r15,r5
 302:	00 04       	mov.b	r0,@(r0,r0)

00000304 <IMM_DMASetFlag>:
 304:	26 0f       	muls.w	r0,r6
 306:	fc a8       	fmov	@r10,fr12

00000308 <IMM_DMA_SET_REG_1>:
 308:	25 fe       	mulu.w	r15,r5
 30a:	00 20       	.word 0x0020

0000030c <IMM_Chk_CH1>:
 30c:	00 02       	stc	sr,r0
 30e:	03 00       	.word 0x0300

00000310 <IMM_SortList>:
 310:	00 00       	.word 0x0000
	...

00000314 <IMM_DMASt_SCU0>:
 314:	06 0f       	mac.l	@r0+,@r6+
 316:	fc bb       	fmov	fr11,@-r12

00000318 <_slInitInterrupt>:
 318:	c4 b0       	mov.b	@(176,gbr),r0
 31a:	4f 22       	sts.l	pr,@-r15
 31c:	c9 1f       	and	#31,r0
 31e:	45 11       	cmp/pz	r5
 320:	8d 02       	bt.s	328 <inint_00>
 322:	e1 78       	mov	#120,r1
 324:	cb 80       	or	#-128,r0
 326:	65 5b       	neg	r5,r5

00000328 <inint_00>:
 328:	35 16       	cmp/hi	r1,r5
 32a:	8f 00       	bf.s	32e <inint_01>
 32c:	c0 b0       	mov.b	r0,@(176,gbr)

0000032e <inint_01>:
 32e:	25 58       	tst	r5,r5
 330:	8f 01       	bf.s	336 <inint_02>
 332:	e0 10       	mov	#16,r0
 334:	e5 01       	mov	#1,r5

00000336 <inint_02>:
 336:	34 03       	cmp/ge	r0,r4
 338:	8b 02       	bf	340 <inint_03>
 33a:	75 01       	add	#1,r5
 33c:	e0 fe       	mov	#-2,r0
 33e:	25 09       	and	r0,r5

00000340 <inint_03>:
 340:	60 5c       	extu.b	r5,r0
 342:	75 ff       	add	#-1,r5
 344:	40 18       	shll8	r0
 346:	20 5b       	or	r5,r0
 348:	c1 09       	mov.w	r0,@(18,gbr)
 34a:	d0 1d       	mov.l	3c0 <IMM_SYS_SETUINT>,r0	! 6000300
 34c:	2f 86       	mov.l	r8,@-r15
 34e:	68 02       	mov.l	@r0,r8
 350:	d5 1c       	mov.l	3c4 <IMM_BlankIn>,r5	! 5e <_BlankIn>
 352:	48 0b       	jsr	@r8
 354:	e4 40       	mov	#64,r4
 356:	d5 1c       	mov.l	3c8 <IMM_BlankOut>,r5	! 1b6 <_BlankOut>
 358:	48 0b       	jsr	@r8
 35a:	e4 41       	mov	#65,r4
 35c:	d5 1b       	mov.l	3cc <IMM_IntFuncScu0>,r5	! 28 <SLPROG>
 35e:	48 0b       	jsr	@r8
 360:	e4 4b       	mov	#75,r4
 362:	d5 1b       	mov.l	3d0 <IMM_IntFuncScu1>,r5	! 3a <_IntFuncScu1>
 364:	48 0b       	jsr	@r8
 366:	e4 4a       	mov	#74,r4
 368:	d5 1a       	mov.l	3d4 <IMM_IntFuncScu2>,r5	! 4c <_IntFuncScu2>
 36a:	48 0b       	jsr	@r8
 36c:	e4 49       	mov	#73,r4
 36e:	e0 04       	mov	#4,r0
 370:	c0 b9       	mov.b	r0,@(185,gbr)
 372:	c0 ba       	mov.b	r0,@(186,gbr)
 374:	c0 bb       	mov.b	r0,@(187,gbr)
 376:	c0 bc       	mov.b	r0,@(188,gbr)
 378:	c0 bd       	mov.b	r0,@(189,gbr)
 37a:	e0 00       	mov	#0,r0
 37c:	c2 d5       	mov.l	r0,@(852,gbr)
 37e:	c2 da       	mov.l	r0,@(872,gbr)
 380:	d5 15       	mov.l	3d8 <IMM_slSmpcIntBack>,r5	! 0 <.text>
 382:	48 0b       	jsr	@r8
 384:	e4 47       	mov	#71,r4
 386:	68 f6       	mov.l	@r15+,r8
 388:	4f 26       	lds.l	@r15+,pr
 38a:	e0 00       	mov	#0,r0
 38c:	c0 1a       	mov.b	r0,@(26,gbr)
 38e:	c1 0c       	mov.w	r0,@(24,gbr)
 390:	e0 00       	mov	#0,r0
 392:	c1 11       	mov.w	r0,@(34,gbr)
 394:	c0 1b       	mov.b	r0,@(27,gbr)
 396:	e2 84       	mov	#-124,r2
 398:	42 08       	shll2	r2
 39a:	e0 00       	mov	#0,r0
 39c:	80 21       	mov.b	r0,@(1,r2)
 39e:	e0 02       	mov	#2,r0
 3a0:	80 26       	mov.b	r0,@(6,r2)
 3a2:	d2 c7       	mov.l	6c0 <IMM_PCM_Buf>,r2	! 0 <.text>
 3a4:	e1 08       	mov	#8,r1
 3a6:	e0 00       	mov	#0,r0

000003a8 <inint_05>:
 3a8:	81 20       	mov.w	r0,@(0,r2)
 3aa:	41 10       	dt	r1
 3ac:	8f fc       	bf.s	3a8 <inint_05>
 3ae:	72 14       	add	#20,r2
 3b0:	c1 59       	mov.w	r0,@(178,gbr)
 3b2:	c0 b5       	mov.b	r0,@(181,gbr)
 3b4:	c7 09       	mova	3dc <NoOperation>,r0
 3b6:	c2 d0       	mov.l	r0,@(832,gbr)
 3b8:	c2 05       	mov.l	r0,@(20,gbr)
 3ba:	00 0b       	rts	
 3bc:	c2 f3       	mov.l	r0,@(972,gbr)
	...

000003c0 <IMM_SYS_SETUINT>:
 3c0:	06 00       	.word 0x0600
 3c2:	03 00       	.word 0x0300

000003c4 <IMM_BlankIn>:
 3c4:	00 00       	.word 0x0000
 3c6:	00 5e       	mov.l	@(r0,r5),r0

000003c8 <IMM_BlankOut>:
 3c8:	00 00       	.word 0x0000
 3ca:	01 b6       	mov.l	r11,@(r0,r1)

000003cc <IMM_IntFuncScu0>:
 3cc:	00 00       	.word 0x0000
 3ce:	00 28       	clrmac	

000003d0 <IMM_IntFuncScu1>:
 3d0:	00 00       	.word 0x0000
 3d2:	00 3a       	stc	sgr,r0

000003d4 <IMM_IntFuncScu2>:
 3d4:	00 00       	.word 0x0000
 3d6:	00 4c       	mov.b	@(r0,r4),r0

000003d8 <IMM_slSmpcIntBack>:
 3d8:	00 00       	.word 0x0000
	...

000003dc <NoOperation>:
 3dc:	00 0b       	rts	
 3de:	00 09       	nop	

000003e0 <PCM_control>:
 3e0:	2f 86       	mov.l	r8,@-r15
 3e2:	4f 22       	sts.l	pr,@-r15
 3e4:	2f 96       	mov.l	r9,@-r15
 3e6:	d8 b6       	mov.l	6c0 <IMM_PCM_Buf>,r8	! 0 <.text>
 3e8:	e9 08       	mov	#8,r9

000003ea <pcmc_00>:
 3ea:	84 80       	mov.b	@(0,r8),r0
 3ec:	e1 7c       	mov	#124,r1
 3ee:	21 09       	and	r0,r1
 3f0:	c7 b4       	mova	6c4 <PCTRMode>,r0
 3f2:	02 1e       	mov.l	@(r0,r1),r2
 3f4:	e0 3c       	mov	#60,r0
 3f6:	42 2b       	jmp	@r2
 3f8:	21 09       	and	r0,r1

000003fa <trans_bank06>:
 3fa:	84 81       	mov.b	@(1,r8),r0
 3fc:	d2 dd       	mov.l	774 <IMM_PCM_Status>,r2	! 25a007a0
 3fe:	63 03       	mov	r0,r3
 400:	40 09       	shlr2	r0
 402:	40 01       	shlr	r0
 404:	c9 0e       	and	#14,r0
 406:	02 2c       	mov.b	@(r0,r2),r2
 408:	c7 ce       	mova	744 <trnsofsttbl>,r0
 40a:	22 28       	tst	r2,r2
 40c:	8f 55       	bf.s	4ba <next_channel>
 40e:	e7 01       	mov	#1,r7
 410:	01 1d       	mov.w	@(r0,r1),r1
 412:	55 82       	mov.l	@(8,r8),r5
 414:	54 84       	mov.l	@(16,r8),r4
 416:	56 83       	mov.l	@(12,r8),r6
 418:	60 33       	mov	r3,r0
 41a:	63 63       	mov	r6,r3
 41c:	c8 80       	tst	#-128,r0
 41e:	8d 03       	bt.s	428 <trbk_60>
 420:	e2 20       	mov	#32,r2
 422:	47 00       	shll	r7
 424:	42 00       	shll	r2
 426:	41 00       	shll	r1

00000428 <trbk_60>:
 428:	47 18       	shll8	r7
 42a:	36 48       	sub	r4,r6
 42c:	36 72       	cmp/hs	r7,r6
 42e:	8d 13       	bt.s	458 <trbk_65>
 430:	54 81       	mov.l	@(4,r8),r4
 432:	c8 02       	tst	#2,r0
 434:	8d 0a       	bt.s	44c <trbk_61>
 436:	35 1c       	add	r1,r5
 438:	2f 76       	mov.l	r7,@-r15
 43a:	2f 56       	mov.l	r5,@-r15
 43c:	2f 46       	mov.l	r4,@-r15
 43e:	42 18       	shll8	r2
 440:	34 3c       	add	r3,r4
 442:	b0 e3       	bsr	60c <PCM_Trans>
 444:	35 2c       	add	r2,r5
 446:	64 f6       	mov.l	@r15+,r4
 448:	65 f6       	mov.l	@r15+,r5
 44a:	67 f6       	mov.l	@r15+,r7

0000044c <trbk_61>:
 44c:	b0 de       	bsr	60c <PCM_Trans>
 44e:	00 09       	nop	
 450:	52 84       	mov.l	@(16,r8),r2
 452:	e0 5c       	mov	#92,r0
 454:	a0 2f       	bra	4b6 <trbk_05>
 456:	32 7c       	add	r7,r2

00000458 <trbk_65>:
 458:	2f 16       	mov.l	r1,@-r15
 45a:	61 73       	mov	r7,r1
 45c:	37 1c       	add	r1,r7
 45e:	37 1c       	add	r1,r7
 460:	a0 11       	bra	486 <trbk_00>
 462:	61 f6       	mov.l	@r15+,r1

00000464 <trans_bank01>:
 464:	c7 b7       	mova	744 <trnsofsttbl>,r0
 466:	01 1d       	mov.w	@(r0,r1),r1
 468:	84 81       	mov.b	@(1,r8),r0
 46a:	55 82       	mov.l	@(8,r8),r5
 46c:	54 84       	mov.l	@(16,r8),r4
 46e:	56 83       	mov.l	@(12,r8),r6
 470:	e7 03       	mov	#3,r7
 472:	63 63       	mov	r6,r3
 474:	36 48       	sub	r4,r6
 476:	54 81       	mov.l	@(4,r8),r4
 478:	47 18       	shll8	r7
 47a:	c8 80       	tst	#-128,r0
 47c:	8d 03       	bt.s	486 <trbk_00>
 47e:	e2 20       	mov	#32,r2
 480:	47 00       	shll	r7
 482:	42 00       	shll	r2
 484:	41 00       	shll	r1

00000486 <trbk_00>:
 486:	c8 02       	tst	#2,r0
 488:	8d 0a       	bt.s	4a0 <trbk_02>
 48a:	35 1c       	add	r1,r5
 48c:	2f 76       	mov.l	r7,@-r15
 48e:	2f 56       	mov.l	r5,@-r15
 490:	2f 46       	mov.l	r4,@-r15
 492:	42 18       	shll8	r2
 494:	34 3c       	add	r3,r4
 496:	b0 b9       	bsr	60c <PCM_Trans>
 498:	35 2c       	add	r2,r5
 49a:	64 f6       	mov.l	@r15+,r4
 49c:	65 f6       	mov.l	@r15+,r5
 49e:	67 f6       	mov.l	@r15+,r7

000004a0 <trbk_02>:
 4a0:	b0 b4       	bsr	60c <PCM_Trans>
 4a2:	00 09       	nop	
 4a4:	18 41       	mov.l	r4,@(4,r8)
 4a6:	52 84       	mov.l	@(16,r8),r2
 4a8:	53 83       	mov.l	@(12,r8),r3
 4aa:	84 80       	mov.b	@(0,r8),r0
 4ac:	32 7c       	add	r7,r2
 4ae:	33 20       	cmp/eq	r2,r3
 4b0:	8f 01       	bf.s	4b6 <trbk_05>
 4b2:	70 04       	add	#4,r0
 4b4:	70 40       	add	#64,r0

000004b6 <trbk_05>:
 4b6:	18 24       	mov.l	r2,@(16,r8)

000004b8 <trbk_06>:
 4b8:	80 80       	mov.b	r0,@(0,r8)

000004ba <next_channel>:
 4ba:	49 10       	dt	r9
 4bc:	8f 95       	bf.s	3ea <pcmc_00>
 4be:	78 14       	add	#20,r8
 4c0:	69 f6       	mov.l	@r15+,r9
 4c2:	4f 26       	lds.l	@r15+,pr
 4c4:	00 0b       	rts	
 4c6:	68 f6       	mov.l	@r15+,r8

000004c8 <trans_bank11>:
 4c8:	84 81       	mov.b	@(1,r8),r0
 4ca:	d2 aa       	mov.l	774 <IMM_PCM_Status>,r2	! 25a007a0
 4cc:	63 03       	mov	r0,r3
 4ce:	40 09       	shlr2	r0
 4d0:	40 01       	shlr	r0
 4d2:	c9 0e       	and	#14,r0
 4d4:	02 2c       	mov.b	@(r0,r2),r2
 4d6:	c7 9b       	mova	744 <trnsofsttbl>,r0
 4d8:	22 28       	tst	r2,r2
 4da:	8d ee       	bt.s	4ba <next_channel>
 4dc:	e7 02       	mov	#2,r7
 4de:	01 1d       	mov.w	@(r0,r1),r1
 4e0:	55 82       	mov.l	@(8,r8),r5
 4e2:	54 84       	mov.l	@(16,r8),r4
 4e4:	56 83       	mov.l	@(12,r8),r6
 4e6:	60 33       	mov	r3,r0
 4e8:	63 63       	mov	r6,r3
 4ea:	c8 80       	tst	#-128,r0
 4ec:	8d 03       	bt.s	4f6 <trbk_10>
 4ee:	e2 20       	mov	#32,r2
 4f0:	47 00       	shll	r7
 4f2:	42 00       	shll	r2
 4f4:	41 00       	shll	r1

000004f6 <trbk_10>:
 4f6:	47 18       	shll8	r7
 4f8:	36 48       	sub	r4,r6
 4fa:	36 72       	cmp/hs	r7,r6
 4fc:	8d 13       	bt.s	526 <trbk_15>
 4fe:	54 81       	mov.l	@(4,r8),r4
 500:	c8 02       	tst	#2,r0
 502:	8d 0a       	bt.s	51a <trbk_11>
 504:	35 1c       	add	r1,r5
 506:	2f 76       	mov.l	r7,@-r15
 508:	2f 56       	mov.l	r5,@-r15
 50a:	2f 46       	mov.l	r4,@-r15
 50c:	42 18       	shll8	r2
 50e:	34 3c       	add	r3,r4
 510:	b0 7c       	bsr	60c <PCM_Trans>
 512:	35 2c       	add	r2,r5
 514:	64 f6       	mov.l	@r15+,r4
 516:	65 f6       	mov.l	@r15+,r5
 518:	67 f6       	mov.l	@r15+,r7

0000051a <trbk_11>:
 51a:	b0 77       	bsr	60c <PCM_Trans>
 51c:	00 09       	nop	
 51e:	52 84       	mov.l	@(16,r8),r2
 520:	e0 44       	mov	#68,r0
 522:	af c8       	bra	4b6 <trbk_05>
 524:	32 7c       	add	r7,r2

00000526 <trbk_15>:
 526:	c8 02       	tst	#2,r0
 528:	8d 0a       	bt.s	540 <trbk_16>
 52a:	35 1c       	add	r1,r5
 52c:	2f 76       	mov.l	r7,@-r15
 52e:	2f 56       	mov.l	r5,@-r15
 530:	2f 46       	mov.l	r4,@-r15
 532:	42 18       	shll8	r2
 534:	34 3c       	add	r3,r4
 536:	b0 69       	bsr	60c <PCM_Trans>
 538:	35 2c       	add	r2,r5
 53a:	64 f6       	mov.l	@r15+,r4
 53c:	65 f6       	mov.l	@r15+,r5
 53e:	67 f6       	mov.l	@r15+,r7

00000540 <trbk_16>:
 540:	b0 64       	bsr	60c <PCM_Trans>
 542:	00 09       	nop	
 544:	52 84       	mov.l	@(16,r8),r2
 546:	53 83       	mov.l	@(12,r8),r3
 548:	32 7c       	add	r7,r2
 54a:	33 20       	cmp/eq	r2,r3
 54c:	8d b3       	bt.s	4b6 <trbk_05>
 54e:	e0 44       	mov	#68,r0
 550:	85 80       	mov.w	@(0,r8),r0
 552:	e7 01       	mov	#1,r7
 554:	61 08       	swap.b	r0,r1
 556:	27 19       	and	r1,r7
 558:	c8 80       	tst	#-128,r0
 55a:	8f 02       	bf.s	562 <trbk_17>
 55c:	e1 02       	mov	#2,r1
 55e:	e1 01       	mov	#1,r1
 560:	31 78       	sub	r7,r1

00000562 <trbk_17>:
 562:	34 18       	sub	r1,r4
 564:	32 18       	sub	r1,r2
 566:	18 41       	mov.l	r4,@(4,r8)
 568:	77 04       	add	#4,r7
 56a:	af a4       	bra	4b6 <trbk_05>
 56c:	60 73       	mov	r7,r0

0000056e <clear_bank11>:
 56e:	84 81       	mov.b	@(1,r8),r0
 570:	d2 80       	mov.l	774 <IMM_PCM_Status>,r2	! 25a007a0
 572:	63 03       	mov	r0,r3
 574:	40 09       	shlr2	r0
 576:	40 01       	shlr	r0
 578:	c9 0e       	and	#14,r0
 57a:	02 2c       	mov.b	@(r0,r2),r2
 57c:	c7 71       	mova	744 <trnsofsttbl>,r0
 57e:	22 28       	tst	r2,r2
 580:	8d 9b       	bt.s	4ba <next_channel>
 582:	70 02       	add	#2,r0
 584:	02 1d       	mov.w	@(r0,r1),r2
 586:	85 81       	mov.w	@(2,r8),r0
 588:	e6 02       	mov	#2,r6
 58a:	20 29       	and	r2,r0
 58c:	20 08       	tst	r0,r0
 58e:	8f 16       	bf.s	5be <clbnk_00>
 590:	e2 44       	mov	#68,r2
 592:	a0 14       	bra	5be <clbnk_00>
 594:	e2 70       	mov	#112,r2

00000596 <clear_bank06>:
 596:	84 81       	mov.b	@(1,r8),r0
 598:	d2 76       	mov.l	774 <IMM_PCM_Status>,r2	! 25a007a0
 59a:	63 03       	mov	r0,r3
 59c:	40 09       	shlr2	r0
 59e:	40 01       	shlr	r0
 5a0:	c9 0e       	and	#14,r0
 5a2:	02 2c       	mov.b	@(r0,r2),r2
 5a4:	22 28       	tst	r2,r2
 5a6:	8b 88       	bf	4ba <next_channel>

000005a8 <clear_bank01>:
 5a8:	c7 66       	mova	744 <trnsofsttbl>,r0
 5aa:	70 02       	add	#2,r0
 5ac:	02 1d       	mov.w	@(r0,r1),r2
 5ae:	85 81       	mov.w	@(2,r8),r0
 5b0:	e6 03       	mov	#3,r6
 5b2:	20 29       	and	r2,r0
 5b4:	62 13       	mov	r1,r2
 5b6:	20 08       	tst	r0,r0
 5b8:	8f 01       	bf.s	5be <clbnk_00>
 5ba:	72 44       	add	#68,r2
 5bc:	e2 70       	mov	#112,r2

000005be <clbnk_00>:
 5be:	28 20       	mov.b	r2,@r8
 5c0:	81 81       	mov.w	r0,@(2,r8)
 5c2:	c7 60       	mova	744 <trnsofsttbl>,r0
 5c4:	07 1d       	mov.w	@(r0,r1),r7
 5c6:	55 82       	mov.l	@(8,r8),r5
 5c8:	c7 6b       	mova	778 <IMM_Zero>,r0
 5ca:	b0 4a       	bsr	662 <scuDMAWait>
 5cc:	64 03       	mov	r0,r4
 5ce:	84 81       	mov.b	@(1,r8),r0
 5d0:	13 40       	mov.l	r4,@(0,r3)
 5d2:	c8 80       	tst	#-128,r0
 5d4:	8d 03       	bt.s	5de <clbnk_01>
 5d6:	e1 20       	mov	#32,r1
 5d8:	46 00       	shll	r6
 5da:	47 00       	shll	r7
 5dc:	41 00       	shll	r1

000005de <clbnk_01>:
 5de:	46 18       	shll8	r6
 5e0:	13 62       	mov.l	r6,@(8,r3)
 5e2:	e4 01       	mov	#1,r4
 5e4:	13 43       	mov.l	r4,@(12,r3)
 5e6:	e4 07       	mov	#7,r4
 5e8:	13 45       	mov.l	r4,@(20,r3)
 5ea:	c8 02       	tst	#2,r0
 5ec:	8d 08       	bt.s	600 <clbnk_05>
 5ee:	35 7c       	add	r7,r5
 5f0:	41 18       	shll8	r1
 5f2:	31 5c       	add	r5,r1
 5f4:	e0 08       	mov	#8,r0
 5f6:	c0 bd       	mov.b	r0,@(189,gbr)
 5f8:	90 60       	mov.w	6bc <IMM_0101>,r0	! 101
 5fa:	13 11       	mov.l	r1,@(4,r3)
 5fc:	b0 31       	bsr	662 <scuDMAWait>
 5fe:	13 04       	mov.l	r0,@(16,r3)

00000600 <clbnk_05>:
 600:	e0 08       	mov	#8,r0
 602:	c0 bd       	mov.b	r0,@(189,gbr)
 604:	90 5a       	mov.w	6bc <IMM_0101>,r0	! 101
 606:	13 51       	mov.l	r5,@(4,r3)
 608:	af 57       	bra	4ba <next_channel>
 60a:	13 04       	mov.l	r0,@(16,r3)

0000060c <PCM_Trans>:
 60c:	4f 22       	sts.l	pr,@-r15
 60e:	b0 28       	bsr	662 <scuDMAWait>
 610:	00 09       	nop	
 612:	e0 00       	mov	#0,r0
 614:	13 04       	mov.l	r0,@(16,r3)
 616:	36 72       	cmp/hs	r7,r6
 618:	8d 12       	bt.s	640 <pctr_01>
 61a:	e1 07       	mov	#7,r1
 61c:	62 53       	mov	r5,r2
 61e:	c7 56       	mova	778 <IMM_Zero>,r0
 620:	32 6c       	add	r6,r2
 622:	37 68       	sub	r6,r7
 624:	13 00       	mov.l	r0,@(0,r3)
 626:	13 21       	mov.l	r2,@(4,r3)
 628:	13 72       	mov.l	r7,@(8,r3)
 62a:	e0 01       	mov	#1,r0
 62c:	13 03       	mov.l	r0,@(12,r3)
 62e:	e0 08       	mov	#8,r0
 630:	c0 bd       	mov.b	r0,@(189,gbr)
 632:	90 43       	mov.w	6bc <IMM_0101>,r0	! 101
 634:	13 15       	mov.l	r1,@(20,r3)
 636:	b0 14       	bsr	662 <scuDMAWait>
 638:	13 04       	mov.l	r0,@(16,r3)
 63a:	67 63       	mov	r6,r7
 63c:	e0 00       	mov	#0,r0
 63e:	13 04       	mov.l	r0,@(16,r3)

00000640 <pctr_01>:
 640:	84 80       	mov.b	@(0,r8),r0
 642:	27 78       	tst	r7,r7
 644:	8d 0b       	bt.s	65e <pctr_02>
 646:	4f 26       	lds.l	@r15+,pr
 648:	c8 01       	tst	#1,r0
 64a:	8b 15       	bf	678 <PCM_CpuTrans>
 64c:	92 36       	mov.w	6bc <IMM_0101>,r2	! 101
 64e:	13 40       	mov.l	r4,@(0,r3)
 650:	13 51       	mov.l	r5,@(4,r3)
 652:	13 72       	mov.l	r7,@(8,r3)
 654:	13 23       	mov.l	r2,@(12,r3)
 656:	13 15       	mov.l	r1,@(20,r3)
 658:	13 24       	mov.l	r2,@(16,r3)
 65a:	e0 08       	mov	#8,r0
 65c:	c0 bd       	mov.b	r0,@(189,gbr)

0000065e <pctr_02>:
 65e:	00 0b       	rts	
 660:	34 7c       	add	r7,r4

00000662 <scuDMAWait>:
 662:	d3 46       	mov.l	77c <IMM_ScuDMA_CH2>,r3	! 25fe0040
 664:	c4 bd       	mov.b	@(189,gbr),r0

00000666 <scdw_01>:
 666:	c8 04       	tst	#4,r0
 668:	8f 04       	bf.s	674 <scdw_05>
 66a:	e0 30       	mov	#48,r0

0000066c <scdw_02>:
 66c:	40 10       	dt	r0
 66e:	8b fd       	bf	66c <scdw_02>
 670:	af f9       	bra	666 <scdw_01>
 672:	c4 bd       	mov.b	@(189,gbr),r0

00000674 <scdw_05>:
 674:	00 0b       	rts	
 676:	00 09       	nop	

00000678 <PCM_CpuTrans>:
 678:	e3 90       	mov	#-112,r3

0000067a <pctr_11>:
 67a:	50 33       	mov.l	@(12,r3),r0
 67c:	c9 03       	and	#3,r0
 67e:	88 01       	cmp/eq	#1,r0
 680:	8d fb       	bt.s	67a <pctr_11>
 682:	60 73       	mov	r7,r0
 684:	20 4b       	or	r4,r0
 686:	62 73       	mov	r7,r2
 688:	42 01       	shlr	r2
 68a:	c8 02       	tst	#2,r0
 68c:	8f 02       	bf.s	694 <pctr_12>
 68e:	e1 04       	mov	#4,r1
 690:	42 01       	shlr	r2
 692:	e1 08       	mov	#8,r1

00000694 <pctr_12>:
 694:	50 38       	mov.l	@(32,r3),r0
 696:	e0 00       	mov	#0,r0
 698:	13 03       	mov.l	r0,@(12,r3)
 69a:	e3 9c       	mov	#-100,r3
 69c:	43 08       	shll2	r3
 69e:	80 32       	mov.b	r0,@(2,r3)
 6a0:	e3 90       	mov	#-112,r3
 6a2:	13 40       	mov.l	r4,@(0,r3)
 6a4:	13 51       	mov.l	r5,@(4,r3)
 6a6:	13 22       	mov.l	r2,@(8,r3)
 6a8:	90 09       	mov.w	6be <IMM_DMA_REQ_PCM>,r0	! 5201
 6aa:	41 18       	shll8	r1
 6ac:	20 1b       	or	r1,r0
 6ae:	13 03       	mov.l	r0,@(12,r3)
 6b0:	e0 08       	mov	#8,r0
 6b2:	c0 ba       	mov.b	r0,@(186,gbr)
 6b4:	e0 09       	mov	#9,r0
 6b6:	13 08       	mov.l	r0,@(32,r3)

000006b8 <pctr_19>:
 6b8:	00 0b       	rts	
 6ba:	34 7c       	add	r7,r4

000006bc <IMM_0101>:
 6bc:	01 01       	.word 0x0101

000006be <IMM_DMA_REQ_PCM>:
 6be:	52 01       	mov.l	@(4,r0),r2

000006c0 <IMM_PCM_Buf>:
 6c0:	00 00       	.word 0x0000
	...

000006c4 <PCTRMode>:
 6c4:	00 00       	.word 0x0000
 6c6:	04 ba       	.word 0x04ba
 6c8:	00 00       	.word 0x0000
 6ca:	04 64       	mov.b	r6,@(r0,r4)
 6cc:	00 00       	.word 0x0000
 6ce:	04 64       	mov.b	r6,@(r0,r4)
 6d0:	00 00       	.word 0x0000
 6d2:	04 64       	mov.b	r6,@(r0,r4)
 6d4:	00 00       	.word 0x0000
 6d6:	04 64       	mov.b	r6,@(r0,r4)
 6d8:	00 00       	.word 0x0000
 6da:	04 64       	mov.b	r6,@(r0,r4)
 6dc:	00 00       	.word 0x0000
 6de:	03 fa       	stc	dbr,r3
 6e0:	00 00       	.word 0x0000
 6e2:	04 64       	mov.b	r6,@(r0,r4)
 6e4:	00 00       	.word 0x0000
 6e6:	04 64       	mov.b	r6,@(r0,r4)
 6e8:	00 00       	.word 0x0000
 6ea:	04 64       	mov.b	r6,@(r0,r4)
 6ec:	00 00       	.word 0x0000
 6ee:	04 64       	mov.b	r6,@(r0,r4)
 6f0:	00 00       	.word 0x0000
 6f2:	04 c8       	.word 0x04c8
 6f4:	00 00       	.word 0x0000
 6f6:	04 ba       	.word 0x04ba
 6f8:	00 00       	.word 0x0000
 6fa:	04 ba       	.word 0x04ba
 6fc:	00 00       	.word 0x0000
 6fe:	04 ba       	.word 0x04ba
 700:	00 00       	.word 0x0000
 702:	04 ba       	.word 0x04ba
 704:	00 00       	.word 0x0000
 706:	04 ba       	.word 0x04ba
 708:	00 00       	.word 0x0000
 70a:	05 a8       	.word 0x05a8
 70c:	00 00       	.word 0x0000
 70e:	05 a8       	.word 0x05a8
 710:	00 00       	.word 0x0000
 712:	05 a8       	.word 0x05a8
 714:	00 00       	.word 0x0000
 716:	05 a8       	.word 0x05a8
 718:	00 00       	.word 0x0000
 71a:	05 a8       	.word 0x05a8
 71c:	00 00       	.word 0x0000
 71e:	05 96       	mov.l	r9,@(r0,r5)
 720:	00 00       	.word 0x0000
 722:	05 a8       	.word 0x05a8
 724:	00 00       	.word 0x0000
 726:	05 a8       	.word 0x05a8
 728:	00 00       	.word 0x0000
 72a:	05 a8       	.word 0x05a8
 72c:	00 00       	.word 0x0000
 72e:	05 a8       	.word 0x05a8
 730:	00 00       	.word 0x0000
 732:	05 6e       	mov.l	@(r0,r6),r5
 734:	00 00       	.word 0x0000
 736:	04 ba       	.word 0x04ba
 738:	00 00       	.word 0x0000
 73a:	04 ba       	.word 0x04ba
 73c:	00 00       	.word 0x0000
 73e:	04 ba       	.word 0x04ba
 740:	00 00       	.word 0x0000
 742:	04 ba       	.word 0x04ba

00000744 <trnsofsttbl>:
 744:	00 00       	.word 0x0000
 746:	00 00       	.word 0x0000
 748:	00 00       	.word 0x0000
 74a:	07 fe       	mov.l	@(r0,r15),r7
 74c:	03 00       	.word 0x0300
 74e:	07 fd       	mov.w	@(r0,r15),r7
 750:	06 00       	.word 0x0600
 752:	07 fb       	.word 0x07fb
 754:	09 00       	.word 0x0900
 756:	07 f7       	mul.l	r15,r7
 758:	0c 00       	.word 0x0c00
 75a:	07 ef       	mac.l	@r14+,@r7+
 75c:	0f 00       	.word 0x0f00
 75e:	07 df       	mac.l	@r13+,@r7+
 760:	12 00       	mov.l	r0,@(0,r2)
 762:	07 bf       	mac.l	@r11+,@r7+
 764:	15 00       	mov.l	r0,@(0,r5)
 766:	07 7f       	mac.l	@r7+,@r7+
 768:	18 00       	mov.l	r0,@(0,r8)
 76a:	06 ff       	mac.l	@r15+,@r6+
 76c:	1b 00       	mov.l	r0,@(0,r11)
 76e:	05 ff       	mac.l	@r15+,@r5+
 770:	1e 00       	mov.l	r0,@(0,r14)
 772:	03 ff       	mac.l	@r15+,@r3+

00000774 <IMM_PCM_Status>:
 774:	25 a0       	mov.b	r10,@r5
 776:	07 a0       	.word 0x07a0

00000778 <IMM_Zero>:
 778:	00 00       	.word 0x0000
	...

0000077c <IMM_ScuDMA_CH2>:
 77c:	25 fe       	mulu.w	r15,r5
 77e:	00 40       	.word 0x0040

00000780 <IMM_Chk_CH2_2>:
 780:	00 00       	.word 0x0000
 782:	30 00       	cmp/eq	r0,r0
