
sglI01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitSynch>:
   0:	d2 89       	mov.l	228 <IMM_SCRL_TVSTAT>,r2	! 25f80004

00000002 <insnc_00>:
   2:	60 21       	mov.w	@r2,r0
   4:	c8 02       	tst	#2,r0
   6:	89 fc       	bt	2 <insnc_00>
   8:	c4 12       	mov.b	@(18,gbr),r0
   a:	70 ff       	add	#-1,r0
   c:	c0 13       	mov.b	r0,@(19,gbr)
   e:	c4 b0       	mov.b	@(176,gbr),r0
  10:	c8 10       	tst	#16,r0
  12:	8b 02       	bf	1a <_slSynch>
  14:	d1 3c       	mov.l	108 <IMM_SpritePort>,r1	! 25d00000
  16:	e0 00       	mov	#0,r0
  18:	81 11       	mov.w	r0,@(2,r1)

0000001a <_slSynch>:
  1a:	4f 22       	sts.l	pr,@-r15
  1c:	e0 00       	mov	#0,r0
  1e:	c0 a8       	mov.b	r0,@(168,gbr)
  20:	c0 a6       	mov.b	r0,@(166,gbr)
  22:	c6 12       	mov.l	@(72,gbr),r0
  24:	e1 04       	mov	#4,r1
  26:	20 12       	mov.l	r1,@r0
  28:	e1 2c       	mov	#44,r1
  2a:	10 11       	mov.l	r1,@(4,r0)
  2c:	d1 37       	mov.l	10c <IMM_FRT_INTR>,r1	! 21000000
  2e:	70 04       	add	#4,r0
  30:	c2 12       	mov.l	r0,@(72,gbr)
  32:	21 01       	mov.w	r0,@r1
  34:	b0 6c       	bsr	110 <_slRandom>
  36:	00 09       	nop	
  38:	b0 79       	bsr	12e <_PCM_EndCheck>
  3a:	00 09       	nop	
  3c:	b0 a3       	bsr	186 <Sound_Trans>
  3e:	00 09       	nop	

00000040 <synch_wait>:
  40:	c6 f3       	mov.l	@(972,gbr),r0
  42:	40 0b       	jsr	@r0
  44:	00 09       	nop	
  46:	c4 13       	mov.b	@(19,gbr),r0
  48:	40 11       	cmp/pz	r0
  4a:	89 f9       	bt	40 <synch_wait>
  4c:	d2 7d       	mov.l	244 <IMM_SpriteBufSize>,r2	! 0 <_slInitSynch>
  4e:	d1 7e       	mov.l	248 <IMM_SpriteBuf>,r1	! 0 <_slInitSynch>
  50:	c6 10       	mov.l	@(64,gbr),r0
  52:	62 22       	mov.l	@r2,r2
  54:	61 12       	mov.l	@r1,r1
  56:	42 01       	shlr	r2
  58:	20 2a       	xor	r2,r0
  5a:	c2 10       	mov.l	r0,@(64,gbr)
  5c:	31 2c       	add	r2,r1
  5e:	30 1c       	add	r1,r0
  60:	70 dc       	add	#-36,r0
  62:	c2 0c       	mov.l	r0,@(48,gbr)
  64:	d0 71       	mov.l	22c <IMM_Pbuffer>,r0	! 0 <_slInitSynch>
  66:	60 02       	mov.l	@r0,r0
  68:	70 10       	add	#16,r0
  6a:	c2 09       	mov.l	r0,@(36,gbr)
  6c:	d0 73       	mov.l	23c <IMM_CommandBuf>,r0	! 0 <_slInitSynch>
  6e:	d1 74       	mov.l	240 <IMM_CasheThrough>,r1	! 20000000
  70:	60 02       	mov.l	@r0,r0
  72:	20 1b       	or	r1,r0
  74:	d1 25       	mov.l	10c <IMM_FRT_INTR>,r1	! 21000000
  76:	c2 12       	mov.l	r0,@(72,gbr)
  78:	21 01       	mov.w	r0,@r1
  7a:	e0 00       	mov	#0,r0
  7c:	c2 1d       	mov.l	r0,@(116,gbr)
  7e:	c1 55       	mov.w	r0,@(170,gbr)
  80:	d0 6a       	mov.l	22c <IMM_Pbuffer>,r0	! 0 <_slInitSynch>
  82:	d2 6b       	mov.l	230 <IMM_CTRL_POLYGON_WINDOW>,r2	! 260ffefc
  84:	60 02       	mov.l	@r0,r0
  86:	70 10       	add	#16,r0
  88:	c2 09       	mov.l	r0,@(36,gbr)
  8a:	85 2f       	mov.w	@(30,r2),r0
  8c:	54 23       	mov.l	@(12,r2),r4
  8e:	c0 ac       	mov.b	r0,@(172,gbr)
  90:	85 2e       	mov.w	@(28,r2),r0
  92:	55 25       	mov.l	@(20,r2),r5
  94:	c1 38       	mov.w	r0,@(112,gbr)
  96:	50 29       	mov.l	@(36,r2),r0
  98:	52 2e       	mov.l	@(56,r2),r2
  9a:	c2 1a       	mov.l	r0,@(104,gbr)
  9c:	c6 c1       	mov.l	@(772,gbr),r0
  9e:	61 23       	mov	r2,r1
  a0:	66 03       	mov	r0,r6
  a2:	31 48       	sub	r4,r1
  a4:	41 28       	shll16	r1
  a6:	63 29       	swap.w	r2,r3
  a8:	60 49       	swap.w	r4,r0
  aa:	33 08       	sub	r0,r3
  ac:	60 13       	mov	r1,r0
  ae:	20 3d       	xtrct	r3,r0
  b0:	c2 24       	mov.l	r0,@(144,gbr)
  b2:	60 63       	mov	r6,r0
  b4:	30 1c       	add	r1,r0
  b6:	33 6c       	add	r6,r3
  b8:	20 3d       	xtrct	r3,r0
  ba:	c2 26       	mov.l	r0,@(152,gbr)
  bc:	e0 01       	mov	#1,r0
  be:	40 28       	shll16	r0
  c0:	cb 01       	or	#1,r0
  c2:	30 5c       	add	r5,r0
  c4:	30 48       	sub	r4,r0
  c6:	c2 21       	mov.l	r0,@(132,gbr)
  c8:	66 69       	swap.w	r6,r6
  ca:	36 6c       	add	r6,r6
  cc:	30 6c       	add	r6,r0
  ce:	c2 23       	mov.l	r0,@(140,gbr)
  d0:	61 59       	swap.w	r5,r1
  d2:	60 29       	swap.w	r2,r0
  d4:	31 08       	sub	r0,r1
  d6:	35 28       	sub	r2,r5
  d8:	60 59       	swap.w	r5,r0
  da:	20 1d       	xtrct	r1,r0
  dc:	c2 1f       	mov.l	r0,@(124,gbr)
  de:	61 49       	swap.w	r4,r1
  e0:	60 29       	swap.w	r2,r0
  e2:	31 08       	sub	r0,r1
  e4:	34 28       	sub	r2,r4
  e6:	60 49       	swap.w	r4,r0
  e8:	20 1d       	xtrct	r1,r0
  ea:	c2 1e       	mov.l	r0,@(120,gbr)
  ec:	e0 00       	mov	#0,r0
  ee:	c1 39       	mov.w	r0,@(114,gbr)
  f0:	c1 51       	mov.w	r0,@(162,gbr)
  f2:	b0 1c       	bsr	12e <_PCM_EndCheck>
  f4:	00 09       	nop	
  f6:	4f 26       	lds.l	@r15+,pr
  f8:	c4 12       	mov.b	@(18,gbr),r0
  fa:	61 03       	mov	r0,r1
  fc:	c4 13       	mov.b	@(19,gbr),r0
  fe:	30 1c       	add	r1,r0
 100:	00 0b       	rts	
 102:	c0 13       	mov.b	r0,@(19,gbr)

00000104 <IMM_FrameXsize2>:
 104:	01 40       	.word 0x0140

00000106 <IMM_FrameYsize2>:
 106:	02 00       	.word 0x0200

00000108 <IMM_SpritePort>:
 108:	25 d0       	mov.b	r13,@r5
	...

0000010c <IMM_FRT_INTR>:
 10c:	21 00       	mov.b	r0,@r1
	...

00000110 <_slRandom>:
 110:	d1 54       	mov.l	264 <rand_src>,r1	! 41c64e6d
 112:	c6 cf       	mov.l	@(828,gbr),r0
 114:	03 1a       	sts	macl,r3
 116:	00 17       	mul.l	r1,r0
 118:	d1 51       	mov.l	260 <IMM_12345>,r1	! 3039
 11a:	00 1a       	sts	macl,r0
 11c:	30 1c       	add	r1,r0
 11e:	c2 cf       	mov.l	r0,@(828,gbr)
 120:	61 09       	swap.w	r0,r1
 122:	40 29       	shlr16	r0
 124:	43 1a       	lds	r3,macl
 126:	41 00       	shll	r1
 128:	e1 00       	mov	#0,r1
 12a:	00 0b       	rts	
 12c:	30 1e       	addc	r1,r0

0000012e <_PCM_EndCheck>:
 12e:	c7 55       	mova	284 <_PCM_Buf>,r0
 130:	66 03       	mov	r0,r6
 132:	c6 dc       	mov.l	@(880,gbr),r0
 134:	e1 08       	mov	#8,r1
 136:	62 03       	mov	r0,r2
 138:	c6 dd       	mov.l	@(884,gbr),r0
 13a:	4f 22       	sts.l	pr,@-r15
 13c:	67 03       	mov	r0,r7
 13e:	e0 00       	mov	#0,r0
 140:	2f 06       	mov.l	r0,@-r15

00000142 <pcend_01>:
 142:	84 60       	mov.b	@(0,r6),r0
 144:	88 70       	cmp/eq	#112,r0
 146:	8b 15       	bf	174 <pcend_08>
 148:	84 61       	mov.b	@(1,r6),r0
 14a:	2f 16       	mov.l	r1,@-r15
 14c:	2f 26       	mov.l	r2,@-r15
 14e:	2f 06       	mov.l	r0,@-r15
 150:	55 62       	mov.l	@(8,r6),r5
 152:	b0 4a       	bsr	1ea <RetPCMBuf>
 154:	64 03       	mov	r0,r4
 156:	60 f6       	mov.l	@r15+,r0
 158:	62 f6       	mov.l	@r15+,r2
 15a:	40 09       	shlr2	r0
 15c:	40 09       	shlr2	r0
 15e:	c9 07       	and	#7,r0
 160:	80 22       	mov.b	r0,@(2,r2)
 162:	e0 00       	mov	#0,r0
 164:	81 60       	mov.w	r0,@(0,r6)
 166:	e0 86       	mov	#-122,r0
 168:	47 0b       	jsr	@r7
 16a:	80 20       	mov.b	r0,@(0,r2)
 16c:	50 f1       	mov.l	@(4,r15),r0
 16e:	61 f6       	mov.l	@r15+,r1
 170:	70 01       	add	#1,r0
 172:	2f 02       	mov.l	r0,@r15

00000174 <pcend_08>:
 174:	41 10       	dt	r1
 176:	8f e4       	bf.s	142 <pcend_01>
 178:	76 14       	add	#20,r6
 17a:	60 f6       	mov.l	@r15+,r0
 17c:	20 08       	tst	r0,r0
 17e:	8f 02       	bf.s	186 <Sound_Trans>
 180:	4f 26       	lds.l	@r15+,pr
 182:	00 0b       	rts	
 184:	00 09       	nop	

00000186 <Sound_Trans>:
 186:	c4 b5       	mov.b	@(181,gbr),r0
 188:	66 0e       	exts.b	r0,r6
 18a:	46 15       	cmp/pl	r6
 18c:	8f 2a       	bf.s	1e4 <sdtr_09>
 18e:	46 08       	shll2	r6
 190:	46 00       	shll	r6
 192:	d2 2e       	mov.l	24c <IMM_SoundReqFlag>,r2	! 25a004e0
 194:	84 20       	mov.b	@(0,r2),r0

00000196 <hndshk_001285>:
 196:	40 11       	cmp/pz	r0
 198:	8d 04       	bt.s	1a4 <hndshk_201285>
 19a:	e0 30       	mov	#48,r0

0000019c <hndshk_101285>:
 19c:	40 10       	dt	r0
 19e:	8b fd       	bf	19c <hndshk_101285>
 1a0:	af f9       	bra	196 <hndshk_001285>
 1a2:	84 20       	mov.b	@(0,r2),r0

000001a4 <hndshk_201285>:
 1a4:	d5 2a       	mov.l	250 <IMM_SoundComm>,r5	! 25a00700
 1a6:	c7 5f       	mova	324 <_Sound_Buf>,r0
 1a8:	c2 dc       	mov.l	r0,@(880,gbr)
 1aa:	64 03       	mov	r0,r4
 1ac:	e1 80       	mov	#-128,r1

000001ae <wait_DMAC_01288>:
 1ae:	50 13       	mov.l	@(12,r1),r0
 1b0:	c9 03       	and	#3,r0
 1b2:	88 01       	cmp/eq	#1,r0
 1b4:	89 fb       	bt	1ae <wait_DMAC_01288>
 1b6:	e3 80       	mov	#-128,r3

000001b8 <wait_DMAC_01290>:
 1b8:	50 33       	mov.l	@(12,r3),r0
 1ba:	c9 03       	and	#3,r0
 1bc:	88 01       	cmp/eq	#1,r0
 1be:	89 fb       	bt	1b8 <wait_DMAC_01290>
 1c0:	50 3c       	mov.l	@(48,r3),r0
 1c2:	e0 00       	mov	#0,r0
 1c4:	13 03       	mov.l	r0,@(12,r3)
 1c6:	e3 9c       	mov	#-100,r3
 1c8:	43 08       	shll2	r3
 1ca:	80 31       	mov.b	r0,@(1,r3)
 1cc:	e3 80       	mov	#-128,r3
 1ce:	13 40       	mov.l	r4,@(0,r3)
 1d0:	13 51       	mov.l	r5,@(4,r3)
 1d2:	13 62       	mov.l	r6,@(8,r3)
 1d4:	90 08       	mov.w	1e8 <IMM_DMA_REQ>,r0	! 5601
 1d6:	13 03       	mov.l	r0,@(12,r3)
 1d8:	e0 09       	mov	#9,r0
 1da:	13 0c       	mov.l	r0,@(48,r3)
 1dc:	e0 80       	mov	#-128,r0
 1de:	80 20       	mov.b	r0,@(0,r2)
 1e0:	e0 00       	mov	#0,r0
 1e2:	c0 b5       	mov.b	r0,@(181,gbr)

000001e4 <sdtr_09>:
 1e4:	00 0b       	rts	
 1e6:	00 09       	nop	

000001e8 <IMM_DMA_REQ>:
 1e8:	56 01       	mov.l	@(4,r0),r6

000001ea <RetPCMBuf>:
 1ea:	60 4e       	exts.b	r4,r0
 1ec:	40 04       	rotl	r0
 1ee:	c9 07       	and	#7,r0
 1f0:	61 03       	mov	r0,r1
 1f2:	c7 1d       	mova	268 <BitFieldTbl>,r0
 1f4:	d3 19       	mov.l	25c <IMM_PCM_Work>,r3	! 0 <_slInitSynch>
 1f6:	02 1c       	mov.b	@(r0,r1),r2
 1f8:	63 32       	mov.l	@r3,r3
 1fa:	41 00       	shll	r1
 1fc:	c7 1c       	mova	270 <FieldTbl>,r0
 1fe:	01 1d       	mov.w	@(r0,r1),r1
 200:	35 38       	sub	r3,r5
 202:	35 1c       	add	r1,r5
 204:	c4 b1       	mov.b	@(177,gbr),r0
 206:	45 08       	shll2	r5
 208:	45 00       	shll	r5
 20a:	45 29       	shlr16	r5
 20c:	e3 0f       	mov	#15,r3
 20e:	25 39       	and	r3,r5
 210:	70 ff       	add	#-1,r0
 212:	30 58       	sub	r5,r0
 214:	20 08       	tst	r0,r0
 216:	8d 02       	bt.s	21e <rtpcbf_01>

00000218 <rtpcbf_00>:
 218:	40 10       	dt	r0
 21a:	8f fd       	bf.s	218 <rtpcbf_00>
 21c:	42 00       	shll	r2

0000021e <rtpcbf_01>:
 21e:	c5 59       	mov.w	@(178,gbr),r0
 220:	62 27       	not	r2,r2
 222:	20 29       	and	r2,r0
 224:	00 0b       	rts	
 226:	c1 59       	mov.w	r0,@(178,gbr)

00000228 <IMM_SCRL_TVSTAT>:
 228:	25 f8       	tst	r15,r5
 22a:	00 04       	mov.b	r0,@(r0,r0)

0000022c <IMM_Pbuffer>:
 22c:	00 00       	.word 0x0000
	...

00000230 <IMM_CTRL_POLYGON_WINDOW>:
 230:	26 0f       	muls.w	r0,r6
 232:	fe fc       	fmov	fr15,fr14

00000234 <IMM_ComRdPtr>:
 234:	26 0f       	muls.w	r0,r6
 236:	fc 44       	fcmp/eq	fr4,fr12

00000238 <IMM_DMAEndFlag>:
 238:	26 0f       	muls.w	r0,r6
 23a:	fc a6       	fmov	@(r0,r10),fr12

0000023c <IMM_CommandBuf>:
 23c:	00 00       	.word 0x0000
	...

00000240 <IMM_CasheThrough>:
 240:	20 00       	mov.b	r0,@r0
	...

00000244 <IMM_SpriteBufSize>:
 244:	00 00       	.word 0x0000
	...

00000248 <IMM_SpriteBuf>:
 248:	00 00       	.word 0x0000
	...

0000024c <IMM_SoundReqFlag>:
 24c:	25 a0       	mov.b	r10,@r5
 24e:	04 e0       	.word 0x04e0

00000250 <IMM_SoundComm>:
 250:	25 a0       	mov.b	r10,@r5
 252:	07 00       	.word 0x0700

00000254 <IMM_CD_Status>:
 254:	25 89       	and	r8,r5
 256:	00 08       	clrt	

00000258 <IMM_CDMP_Exec>:
 258:	06 00       	.word 0x0600
 25a:	02 6c       	mov.b	@(r0,r6),r2

0000025c <IMM_PCM_Work>:
 25c:	00 00       	.word 0x0000
	...

00000260 <IMM_12345>:
 260:	00 00       	.word 0x0000
 262:	30 39       	.word 0x3039

00000264 <rand_src>:
 264:	41 c6       	.word 0x41c6
 266:	4e 6d       	shld	r6,r14

00000268 <BitFieldTbl>:
 268:	01 01       	.word 0x0101
 26a:	01 03       	bsrf	r1
 26c:	03 0f       	mac.l	@r0+,@r3+
 26e:	01 01       	.word 0x0101

00000270 <FieldTbl>:
 270:	00 00       	.word 0x0000
 272:	00 00       	.word 0x0000
 274:	00 00       	.word 0x0000
 276:	20 00       	mov.b	r0,@r0
 278:	20 00       	mov.b	r0,@r0
 27a:	60 00       	mov.b	@r0,r0
 27c:	00 00       	.word 0x0000
	...

00000280 <IMM_FRT_INTR_2>:
 280:	21 00       	mov.b	r0,@r1
	...

00000284 <_PCM_Buf>:
	...

00000324 <_Sound_Buf>:
	...
