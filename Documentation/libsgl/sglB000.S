
sglB000.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitScroll>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	c4 b0       	mov.b	@(176,gbr),r0
   4:	e1 1f       	mov	#31,r1
   6:	21 49       	and	r4,r1
   8:	c9 80       	and	#-128,r0
   a:	20 1b       	or	r1,r0
   c:	c0 b0       	mov.b	r0,@(176,gbr)
   e:	2f 16       	mov.l	r1,@-r15
  10:	c7 93       	mova	260 <TVSizeTbl>,r0
  12:	41 08       	shll2	r1
  14:	00 1e       	mov.l	@(r0,r1),r0
  16:	c2 20       	mov.l	r0,@(128,gbr)
  18:	d5 7d       	mov.l	210 <IMM_CTRL_SCROLL>,r5	! 60ffcc0
  1a:	c7 d1       	mova	360 <default_reg_tbl>,r0
  1c:	96 7f       	mov.w	11e <IMM_sysVDP2_PRMSIZE>,r6	! 90
  1e:	b0 e1       	bsr	1e4 <DMA_Trans>
  20:	64 03       	mov	r0,r4
  22:	c7 b7       	mova	300 <default_rot_tbl>,r0
  24:	d5 7d       	mov.l	21c <IMM_RotScrParA>,r5	! 60ffe1c
  26:	e6 30       	mov	#48,r6
  28:	b0 aa       	bsr	180 <set_rotparms>
  2a:	64 03       	mov	r0,r4
  2c:	b0 a8       	bsr	180 <set_rotparms>
  2e:	75 68       	add	#104,r5
  30:	d0 78       	mov.l	214 <IMM_RBG_PARA_ADR>,r0	! 25e3ff00
  32:	c2 85       	mov.l	r0,@(532,gbr)
  34:	d0 79       	mov.l	21c <IMM_RotScrParA>,r0	! 60ffe1c
  36:	c2 78       	mov.l	r0,@(480,gbr)
  38:	61 f6       	mov.l	@r15+,r1
  3a:	c7 a9       	mova	2e0 <TVModeTbl>,r0
  3c:	00 1c       	mov.b	@(r0,r1),r0
  3e:	c0 c1       	mov.b	r0,@(193,gbr)
  40:	e0 08       	mov	#8,r0
  42:	21 08       	tst	r0,r1
  44:	8d 01       	bt.s	4a <insc_01>
  46:	e0 0c       	mov	#12,r0
  48:	c1 d0       	mov.w	r0,@(416,gbr)

0000004a <insc_01>:
  4a:	d4 71       	mov.l	210 <IMM_CTRL_SCROLL>,r4	! 60ffcc0
  4c:	d5 72       	mov.l	218 <IMM_ScrollPort>,r5	! 25f80000
  4e:	96 66       	mov.w	11e <IMM_sysVDP2_PRMSIZE>,r6	! 90
  50:	b0 c8       	bsr	1e4 <DMA_Trans>
  52:	00 09       	nop	
  54:	e1 80       	mov	#-128,r1

00000056 <wait_DMAC_01184>:
  56:	50 13       	mov.l	@(12,r1),r0
  58:	c9 03       	and	#3,r0
  5a:	88 01       	cmp/eq	#1,r0
  5c:	89 fb       	bt	56 <wait_DMAC_01184>
  5e:	c7 7d       	mova	254 <clear_data>,r0
  60:	64 03       	mov	r0,r4
  62:	d5 6f       	mov.l	220 <IMM_VDP2_VRAM>,r5	! 25e00000
  64:	d6 6f       	mov.l	224 <IMM_VDP2_VRAM_SIZE>,r6	! 40000
  66:	e3 80       	mov	#-128,r3

00000068 <wait_DMAC_01186>:
  68:	50 33       	mov.l	@(12,r3),r0
  6a:	c9 03       	and	#3,r0
  6c:	88 01       	cmp/eq	#1,r0
  6e:	89 fb       	bt	68 <wait_DMAC_01186>
  70:	50 3c       	mov.l	@(48,r3),r0
  72:	e0 00       	mov	#0,r0
  74:	13 03       	mov.l	r0,@(12,r3)
  76:	e3 9c       	mov	#-100,r3
  78:	43 08       	shll2	r3
  7a:	80 31       	mov.b	r0,@(1,r3)
  7c:	e3 80       	mov	#-128,r3
  7e:	13 40       	mov.l	r4,@(0,r3)
  80:	13 51       	mov.l	r5,@(4,r3)
  82:	13 62       	mov.l	r6,@(8,r3)
  84:	90 e9       	mov.w	25a <IMM_DMA_REQ_WORD_FILL>,r0	! 4601
  86:	13 03       	mov.l	r0,@(12,r3)
  88:	e0 09       	mov	#9,r0
  8a:	13 0c       	mov.l	r0,@(48,r3)
  8c:	e1 80       	mov	#-128,r1

0000008e <wait_DMAC_01188>:
  8e:	50 13       	mov.l	@(12,r1),r0
  90:	c9 03       	and	#3,r0
  92:	88 01       	cmp/eq	#1,r0
  94:	89 fb       	bt	8e <wait_DMAC_01188>
  96:	d4 64       	mov.l	228 <IMM_ASCII_CG>,r4	! 4b8 <_SGL_ASCII_CG>
  98:	e5 80       	mov	#-128,r5
  9a:	65 5c       	extu.b	r5,r5
  9c:	d0 63       	mov.l	22c <IMM_CGN01_RAM>,r0	! 25e60000
  9e:	c2 79       	mov.l	r0,@(484,gbr)
  a0:	c2 7a       	mov.l	r0,@(488,gbr)
  a2:	66 03       	mov	r0,r6
  a4:	b0 3c       	bsr	120 <_setASC_1to8>
  a6:	e7 00       	mov	#0,r7
  a8:	d4 61       	mov.l	230 <IMM_SEGA_Logo_CG>,r4	! 8d0 <SEGA_Logo_CG>
  aa:	e5 18       	mov	#24,r5
  ac:	b0 50       	bsr	150 <_setASC_4to8>
  ae:	e7 00       	mov	#0,r7
  b0:	d4 60       	mov.l	234 <IMM_s____>,r4	! 8b8 <_s____>
  b2:	e5 03       	mov	#3,r5
  b4:	d6 60       	mov.l	238 <IMM_s_CG>,r6	! 25e63f40
  b6:	b0 33       	bsr	120 <_setASC_1to8>
  b8:	e7 00       	mov	#0,r7
  ba:	d4 5c       	mov.l	22c <IMM_CGN01_RAM>,r4	! 25e60000
  bc:	d5 5f       	mov.l	23c <IMM_CGR0_RAM>,r5	! 25e00000
  be:	96 ca       	mov.w	256 <IMM_CopyCGSize>,r6	! 980
  c0:	60 53       	mov	r5,r0
  c2:	c2 7d       	mov.l	r0,@(500,gbr)
  c4:	c2 7e       	mov.l	r0,@(504,gbr)
  c6:	e3 80       	mov	#-128,r3

000000c8 <wait_DMAC_01190>:
  c8:	50 33       	mov.l	@(12,r3),r0
  ca:	c9 03       	and	#3,r0
  cc:	88 01       	cmp/eq	#1,r0
  ce:	89 fb       	bt	c8 <wait_DMAC_01190>
  d0:	50 3c       	mov.l	@(48,r3),r0
  d2:	e0 00       	mov	#0,r0
  d4:	13 03       	mov.l	r0,@(12,r3)
  d6:	e3 9c       	mov	#-100,r3
  d8:	43 08       	shll2	r3
  da:	80 31       	mov.b	r0,@(1,r3)
  dc:	e3 80       	mov	#-128,r3
  de:	13 40       	mov.l	r4,@(0,r3)
  e0:	13 51       	mov.l	r5,@(4,r3)
  e2:	13 62       	mov.l	r6,@(8,r3)
  e4:	90 ba       	mov.w	25c <IMM_DMA_REQ_LONG>,r0	! 5a01
  e6:	13 03       	mov.l	r0,@(12,r3)
  e8:	e0 09       	mov	#9,r0
  ea:	13 0c       	mov.l	r0,@(48,r3)
  ec:	d0 54       	mov.l	240 <IMM_NBG0_MAP>,r0	! 25e76000
  ee:	c2 7f       	mov.l	r0,@(508,gbr)
  f0:	d0 54       	mov.l	244 <IMM_NBG1_MAP>,r0	! 25e78000
  f2:	c2 80       	mov.l	r0,@(512,gbr)
  f4:	d0 54       	mov.l	248 <IMM_RBG0_MAP>,r0	! 25e40000
  f6:	c2 83       	mov.l	r0,@(524,gbr)
  f8:	d0 54       	mov.l	24c <IMM_RBG0_MAP_RB>,r0	! 25e60000
  fa:	c2 84       	mov.l	r0,@(528,gbr)
  fc:	e0 00       	mov	#0,r0
  fe:	c2 bb       	mov.l	r0,@(748,gbr)
 100:	c2 bc       	mov.l	r0,@(752,gbr)
 102:	c2 bd       	mov.l	r0,@(756,gbr)
 104:	c2 be       	mov.l	r0,@(760,gbr)
 106:	d1 52       	mov.l	250 <IMM_BACK_CRAM>,r1	! 25e3fffe
 108:	e0 00       	mov	#0,r0
 10a:	c0 21       	mov.b	r0,@(33,gbr)
 10c:	b1 b8       	bsr	480 <SetColor>
 10e:	21 01       	mov.w	r0,@r1
 110:	c5 60       	mov.w	@(192,gbr),r0
 112:	91 03       	mov.w	11c <IMM_VDP2_DISP>,r1	! 8000
 114:	4f 26       	lds.l	@r15+,pr
 116:	20 1b       	or	r1,r0
 118:	00 0b       	rts	
 11a:	c1 60       	mov.w	r0,@(192,gbr)

0000011c <IMM_VDP2_DISP>:
 11c:	80 00       	mov.b	r0,@(0,r0)

0000011e <IMM_sysVDP2_PRMSIZE>:
 11e:	00 90       	.word 0x0090

00000120 <_setASC_1to8>:
 120:	67 7c       	extu.b	r7,r7

00000122 <asc1to8_0>:
 122:	e3 08       	mov	#8,r3

00000124 <asc1to8_1>:
 124:	60 44       	mov.b	@r4+,r0
 126:	e1 04       	mov	#4,r1
 128:	40 18       	shll8	r0
 12a:	40 28       	shll16	r0

0000012c <asc1to8_2>:
 12c:	40 00       	shll	r0
 12e:	02 29       	movt	r2
 130:	32 7c       	add	r7,r2
 132:	42 18       	shll8	r2
 134:	42 01       	shlr	r2
 136:	40 00       	shll	r0
 138:	32 2e       	addc	r2,r2
 13a:	32 7c       	add	r7,r2
 13c:	26 21       	mov.w	r2,@r6
 13e:	41 10       	dt	r1
 140:	8f f4       	bf.s	12c <asc1to8_2>
 142:	76 02       	add	#2,r6
 144:	43 10       	dt	r3
 146:	8b ed       	bf	124 <asc1to8_1>
 148:	45 10       	dt	r5
 14a:	8b ea       	bf	122 <asc1to8_0>
 14c:	00 0b       	rts	
 14e:	00 09       	nop	

00000150 <_setASC_4to8>:
 150:	67 7c       	extu.b	r7,r7
 152:	60 73       	mov	r7,r0
 154:	47 18       	shll8	r7
 156:	27 0b       	or	r0,r7

00000158 <asc4to8_0>:
 158:	e3 08       	mov	#8,r3

0000015a <asc4to8_1>:
 15a:	e1 04       	mov	#4,r1

0000015c <asc4to8_2>:
 15c:	60 44       	mov.b	@r4+,r0
 15e:	62 0c       	extu.b	r0,r2
 160:	42 09       	shlr2	r2
 162:	42 09       	shlr2	r2
 164:	42 18       	shll8	r2
 166:	c9 0f       	and	#15,r0
 168:	20 2b       	or	r2,r0
 16a:	30 7c       	add	r7,r0
 16c:	26 01       	mov.w	r0,@r6
 16e:	41 10       	dt	r1
 170:	8f f4       	bf.s	15c <asc4to8_2>
 172:	76 02       	add	#2,r6
 174:	43 10       	dt	r3
 176:	8b f0       	bf	15a <asc4to8_1>
 178:	45 10       	dt	r5
 17a:	8b ed       	bf	158 <asc4to8_0>
 17c:	00 0b       	rts	
 17e:	00 09       	nop	

00000180 <set_rotparms>:
 180:	e3 80       	mov	#-128,r3

00000182 <wait_DMAC_01200>:
 182:	50 33       	mov.l	@(12,r3),r0
 184:	c9 03       	and	#3,r0
 186:	88 01       	cmp/eq	#1,r0
 188:	89 fb       	bt	182 <wait_DMAC_01200>
 18a:	50 3c       	mov.l	@(48,r3),r0
 18c:	e0 00       	mov	#0,r0
 18e:	13 03       	mov.l	r0,@(12,r3)
 190:	e3 9c       	mov	#-100,r3
 192:	43 08       	shll2	r3
 194:	80 31       	mov.b	r0,@(1,r3)
 196:	e3 80       	mov	#-128,r3
 198:	13 40       	mov.l	r4,@(0,r3)
 19a:	13 51       	mov.l	r5,@(4,r3)
 19c:	13 62       	mov.l	r6,@(8,r3)
 19e:	90 5b       	mov.w	258 <IMM_DMA_REQ>,r0	! 5601
 1a0:	13 03       	mov.l	r0,@(12,r3)
 1a2:	e0 09       	mov	#9,r0
 1a4:	13 0c       	mov.l	r0,@(48,r3)
 1a6:	e1 80       	mov	#-128,r1

000001a8 <wait_DMAC_01202>:
 1a8:	50 13       	mov.l	@(12,r1),r0
 1aa:	c9 03       	and	#3,r0
 1ac:	88 01       	cmp/eq	#1,r0
 1ae:	89 fb       	bt	1a8 <wait_DMAC_01202>
 1b0:	c6 20       	mov.l	@(128,gbr),r0
 1b2:	e2 01       	mov	#1,r2
 1b4:	40 01       	shlr	r0
 1b6:	61 03       	mov	r0,r1
 1b8:	42 18       	shll8	r2
 1ba:	63 29       	swap.w	r2,r3
 1bc:	23 2b       	or	r2,r3
 1be:	15 3d       	mov.l	r3,@(52,r5)
 1c0:	15 3f       	mov.l	r3,@(60,r5)
 1c2:	e0 38       	mov	#56,r0
 1c4:	05 25       	mov.w	r2,@(r0,r5)
 1c6:	e0 40       	mov	#64,r0
 1c8:	05 25       	mov.w	r2,@(r0,r5)
 1ca:	60 19       	swap.w	r1,r0
 1cc:	63 23       	mov	r2,r3
 1ce:	33 08       	sub	r0,r3
 1d0:	32 18       	sub	r1,r2
 1d2:	42 28       	shll16	r2
 1d4:	22 3d       	xtrct	r3,r2
 1d6:	60 23       	mov	r2,r0
 1d8:	40 28       	shll16	r0
 1da:	15 01       	mov.l	r0,@(4,r5)
 1dc:	42 29       	shlr16	r2
 1de:	42 28       	shll16	r2
 1e0:	00 0b       	rts	
 1e2:	15 20       	mov.l	r2,@(0,r5)

000001e4 <DMA_Trans>:
 1e4:	e3 80       	mov	#-128,r3

000001e6 <wait_DMAC_01204>:
 1e6:	50 33       	mov.l	@(12,r3),r0
 1e8:	c9 03       	and	#3,r0
 1ea:	88 01       	cmp/eq	#1,r0
 1ec:	89 fb       	bt	1e6 <wait_DMAC_01204>
 1ee:	50 3c       	mov.l	@(48,r3),r0
 1f0:	e0 00       	mov	#0,r0
 1f2:	13 03       	mov.l	r0,@(12,r3)
 1f4:	e3 9c       	mov	#-100,r3
 1f6:	43 08       	shll2	r3
 1f8:	80 31       	mov.b	r0,@(1,r3)
 1fa:	e3 80       	mov	#-128,r3
 1fc:	13 40       	mov.l	r4,@(0,r3)
 1fe:	13 51       	mov.l	r5,@(4,r3)
 200:	13 62       	mov.l	r6,@(8,r3)
 202:	90 29       	mov.w	258 <IMM_DMA_REQ>,r0	! 5601
 204:	13 03       	mov.l	r0,@(12,r3)
 206:	e0 09       	mov	#9,r0
 208:	13 0c       	mov.l	r0,@(48,r3)
 20a:	00 0b       	rts	
 20c:	00 09       	nop	
	...

00000210 <IMM_CTRL_SCROLL>:
 210:	06 0f       	mac.l	@r0+,@r6+
 212:	fc c0       	fadd	fr12,fr12

00000214 <IMM_RBG_PARA_ADR>:
 214:	25 e3       	.word 0x25e3
 216:	ff 00       	fadd	fr0,fr15

00000218 <IMM_ScrollPort>:
 218:	25 f8       	tst	r15,r5
	...

0000021c <IMM_RotScrParA>:
 21c:	06 0f       	mac.l	@r0+,@r6+
 21e:	fe 1c       	fmov	fr1,fr14

00000220 <IMM_VDP2_VRAM>:
 220:	25 e0       	mov.b	r14,@r5
	...

00000224 <IMM_VDP2_VRAM_SIZE>:
 224:	00 04       	mov.b	r0,@(r0,r0)
	...

00000228 <IMM_ASCII_CG>:
 228:	00 00       	.word 0x0000
 22a:	04 b8       	.word 0x04b8

0000022c <IMM_CGN01_RAM>:
 22c:	25 e6       	mov.l	r14,@-r5
	...

00000230 <IMM_SEGA_Logo_CG>:
 230:	00 00       	.word 0x0000
 232:	08 d0       	.word 0x08d0

00000234 <IMM_s____>:
 234:	00 00       	.word 0x0000
 236:	08 b8       	.word 0x08b8

00000238 <IMM_s_CG>:
 238:	25 e6       	mov.l	r14,@-r5
 23a:	3f 40       	cmp/eq	r4,r15

0000023c <IMM_CGR0_RAM>:
 23c:	25 e0       	mov.b	r14,@r5
	...

00000240 <IMM_NBG0_MAP>:
 240:	25 e7       	div0s	r14,r5
 242:	60 00       	mov.b	@r0,r0

00000244 <IMM_NBG1_MAP>:
 244:	25 e7       	div0s	r14,r5
 246:	80 00       	mov.b	r0,@(0,r0)

00000248 <IMM_RBG0_MAP>:
 248:	25 e4       	mov.b	r14,@-r5
	...

0000024c <IMM_RBG0_MAP_RB>:
 24c:	25 e6       	mov.l	r14,@-r5
	...

00000250 <IMM_BACK_CRAM>:
 250:	25 e3       	.word 0x25e3
 252:	ff fe       	fmac	fr0,fr15,fr15

00000254 <clear_data>:
	...

00000256 <IMM_CopyCGSize>:
 256:	09 80       	.word 0x0980

00000258 <IMM_DMA_REQ>:
 258:	56 01       	mov.l	@(4,r0),r6

0000025a <IMM_DMA_REQ_WORD_FILL>:
 25a:	46 01       	shlr	r6

0000025c <IMM_DMA_REQ_LONG>:
 25c:	5a 01       	mov.l	@(4,r0),r10
	...

00000260 <TVSizeTbl>:
 260:	00 a0       	.word 0x00a0
 262:	00 70       	.word 0x0070
 264:	00 a0       	.word 0x00a0
 266:	00 78       	.word 0x0078
 268:	00 a0       	.word 0x00a0
 26a:	00 80       	.word 0x0080
 26c:	00 a0       	.word 0x00a0
 26e:	00 80       	.word 0x0080
 270:	00 b0       	.word 0x00b0
 272:	00 70       	.word 0x0070
 274:	00 b0       	.word 0x00b0
 276:	00 78       	.word 0x0078
 278:	00 b0       	.word 0x00b0
 27a:	00 80       	.word 0x0080
 27c:	00 b0       	.word 0x00b0
 27e:	00 80       	.word 0x0080
 280:	01 40       	.word 0x0140
 282:	00 70       	.word 0x0070
 284:	01 40       	.word 0x0140
 286:	00 78       	.word 0x0078
 288:	01 40       	.word 0x0140
 28a:	00 80       	.word 0x0080
 28c:	01 40       	.word 0x0140
 28e:	00 80       	.word 0x0080
 290:	01 60       	.word 0x0160
 292:	00 70       	.word 0x0070
 294:	01 60       	.word 0x0160
 296:	00 78       	.word 0x0078
 298:	01 60       	.word 0x0160
 29a:	00 80       	.word 0x0080
 29c:	01 60       	.word 0x0160
 29e:	00 80       	.word 0x0080
 2a0:	00 a0       	.word 0x00a0
 2a2:	00 e0       	.word 0x00e0
 2a4:	00 a0       	.word 0x00a0
 2a6:	00 f0       	.word 0x00f0
 2a8:	00 a0       	.word 0x00a0
 2aa:	01 00       	.word 0x0100
 2ac:	00 a0       	.word 0x00a0
 2ae:	01 00       	.word 0x0100
 2b0:	00 b0       	.word 0x00b0
 2b2:	00 e0       	.word 0x00e0
 2b4:	00 b0       	.word 0x00b0
 2b6:	00 f0       	.word 0x00f0
 2b8:	00 b0       	.word 0x00b0
 2ba:	01 00       	.word 0x0100
 2bc:	00 b0       	.word 0x00b0
 2be:	01 00       	.word 0x0100
 2c0:	01 40       	.word 0x0140
 2c2:	00 e0       	.word 0x00e0
 2c4:	01 40       	.word 0x0140
 2c6:	00 f0       	.word 0x00f0
 2c8:	01 40       	.word 0x0140
 2ca:	01 00       	.word 0x0100
 2cc:	01 40       	.word 0x0140
 2ce:	01 00       	.word 0x0100
 2d0:	01 60       	.word 0x0160
 2d2:	00 e0       	.word 0x00e0
 2d4:	01 60       	.word 0x0160
 2d6:	00 f0       	.word 0x00f0
 2d8:	01 60       	.word 0x0160
 2da:	01 00       	.word 0x0100
 2dc:	01 60       	.word 0x0160
 2de:	01 00       	.word 0x0100

000002e0 <TVModeTbl>:
 2e0:	00 10       	.word 0x0010
 2e2:	20 20       	mov.b	r2,@r0
 2e4:	01 11       	.word 0x0111
 2e6:	21 21       	mov.w	r2,@r1
 2e8:	02 12       	stc	gbr,r2
 2ea:	22 22       	mov.l	r2,@r2
 2ec:	03 13       	.word 0x0313
 2ee:	23 23       	.word 0x2323
 2f0:	c0 d0       	mov.b	r0,@(208,gbr)
 2f2:	e0 e0       	mov	#-32,r0
 2f4:	c1 d1       	mov.w	r0,@(418,gbr)
 2f6:	e1 e1       	mov	#-31,r1
 2f8:	c2 d2       	mov.l	r0,@(840,gbr)
 2fa:	e2 e2       	mov	#-30,r2
 2fc:	c3 d3       	trapa	#-45
 2fe:	e3 e3       	mov	#-29,r3

00000300 <default_rot_tbl>:
	...
 310:	00 01       	.word 0x0001
 312:	00 00       	.word 0x0000
 314:	00 01       	.word 0x0001
 316:	00 00       	.word 0x0000
 318:	00 00       	.word 0x0000
 31a:	00 00       	.word 0x0000
 31c:	00 01       	.word 0x0001
	...
 32a:	00 00       	.word 0x0000
 32c:	00 01       	.word 0x0001
	...
 34a:	00 00       	.word 0x0000
 34c:	00 01       	.word 0x0001
 34e:	00 00       	.word 0x0000
 350:	00 01       	.word 0x0001
 352:	00 00       	.word 0x0000
 354:	c0 80       	mov.b	r0,@(128,gbr)
	...

00000360 <default_reg_tbl>:
 360:	01 00       	.word 0x0100
	...
 36a:	00 00       	.word 0x0000
 36c:	01 00       	.word 0x0100
 36e:	13 27       	mov.l	r2,@(28,r3)
 370:	fe ee       	fmac	fr0,fr14,fr14
 372:	ee ee       	mov	#-18,r14
 374:	fe ee       	fmac	fr0,fr14,fr14
 376:	ee ee       	mov	#-18,r14
 378:	fe ee       	fmac	fr0,fr14,fr14
 37a:	ee ee       	mov	#-18,r14
 37c:	04 41       	.word 0x0441
 37e:	55 fe       	mov.l	@(56,r15),r5
 380:	00 13       	.word 0x0013
 382:	00 00       	.word 0x0000
 384:	00 00       	.word 0x0000
 386:	00 00       	.word 0x0000
 388:	10 10       	mov.l	r1,@(0,r0)
 38a:	10 00       	mov.l	r0,@(0,r0)
 38c:	00 00       	.word 0x0000
 38e:	00 00       	.word 0x0000
 390:	80 0c       	mov.b	r0,@(12,r0)
 392:	c0 0c       	mov.b	r0,@(12,gbr)
 394:	c0 00       	mov.b	r0,@(0,gbr)
 396:	c0 00       	mov.b	r0,@(0,gbr)
 398:	c0 00       	mov.b	r0,@(0,gbr)
 39a:	00 00       	.word 0x0000
 39c:	00 00       	.word 0x0000
 39e:	00 00       	.word 0x0000
 3a0:	3b 3b       	subv	r3,r11
 3a2:	3b 3b       	subv	r3,r11
 3a4:	3d 3c       	add	r3,r13
 3a6:	3f 3e       	addc	r3,r15
	...
 3b0:	20 20       	mov.b	r2,@r0
 3b2:	20 20       	mov.b	r2,@r0
 3b4:	20 20       	mov.b	r2,@r0
 3b6:	20 20       	mov.b	r2,@r0
 3b8:	20 20       	mov.b	r2,@r0
 3ba:	20 20       	mov.b	r2,@r0
 3bc:	20 20       	mov.b	r2,@r0
 3be:	20 20       	mov.b	r2,@r0
 3c0:	28 28       	tst	r2,r8
 3c2:	28 28       	tst	r2,r8
 3c4:	28 28       	tst	r2,r8
 3c6:	28 38       	tst	r3,r8
 3c8:	28 28       	tst	r2,r8
 3ca:	28 28       	tst	r2,r8
 3cc:	28 28       	tst	r2,r8
 3ce:	28 28       	tst	r2,r8
	...
 3d8:	00 01       	.word 0x0001
 3da:	00 00       	.word 0x0000
 3dc:	00 01       	.word 0x0001
	...
 3e6:	00 00       	.word 0x0000
 3e8:	00 01       	.word 0x0001
 3ea:	00 00       	.word 0x0000
 3ec:	00 01       	.word 0x0001
	...
 40a:	00 00       	.word 0x0000
 40c:	00 01       	.word 0x0001
 40e:	ff ff       	.word 0xffff
	...
 41c:	00 01       	.word 0x0001
 41e:	ff 80       	fadd	fr8,fr15
 420:	00 00       	.word 0x0000
 422:	00 00       	.word 0x0000
 424:	02 7e       	mov.l	@(r0,r7),r2
 426:	01 be       	mov.l	@(r0,r11),r1
 428:	00 00       	.word 0x0000
 42a:	00 00       	.word 0x0000
 42c:	02 7e       	mov.l	@(r0,r7),r2
 42e:	01 be       	mov.l	@(r0,r11),r1
	...
 440:	00 23       	braf	r0
	...
 44e:	00 00       	.word 0x0000
 450:	05 06       	mov.l	r0,@(r0,r5)
 452:	05 05       	mov.w	r0,@(r0,r5)
 454:	05 05       	mov.w	r0,@(r0,r5)
 456:	05 05       	mov.w	r0,@(r0,r5)
 458:	03 07       	mul.l	r0,r3
 45a:	01 02       	stc	sr,r1
 45c:	00 04       	mov.b	r0,@(r0,r0)
	...

00000480 <SetColor>:
 480:	c7 05       	mova	498 <ColorTbl>,r0
 482:	d3 04       	mov.l	494 <IMM_ColorRAM>,r3	! 25effffc
 484:	e1 08       	mov	#8,r1

00000486 <incl_lp>:
 486:	62 06       	mov.l	@r0+,r2
 488:	73 04       	add	#4,r3
 48a:	41 10       	dt	r1
 48c:	8f fb       	bf.s	486 <incl_lp>
 48e:	23 22       	mov.l	r2,@r3
 490:	00 0b       	rts	
 492:	00 09       	nop	

00000494 <IMM_ColorRAM>:
 494:	25 ef       	muls.w	r14,r5
 496:	ff fc       	fmov	fr15,fr15

00000498 <ColorTbl>:
 498:	80 00       	mov.b	r0,@(0,r0)
 49a:	ff ff       	.word 0xffff
 49c:	b5 ad       	bsr	ffa <SEGA_Logo_CG+0x72a>
 49e:	a4 00       	bra	ca2 <SEGA_Logo_CG+0x3d2>
 4a0:	ac 00       	bra	fffffca4 <SEGA_Logo_CG+0xfffff3d4>
 4a2:	b4 00       	bsr	ca6 <SEGA_Logo_CG+0x3d6>
 4a4:	bc 00       	bsr	fffffca8 <SEGA_Logo_CG+0xfffff3d8>
 4a6:	c4 00       	mov.b	@(0,gbr),r0
 4a8:	cc 00       	tst.b	#0,@(r0,gbr)
 4aa:	d4 00       	mov.l	4ac <ColorTbl+0x14>,r4	! dc00e400
 4ac:	dc 00       	mov.l	4b0 <ColorTbl+0x18>,r12	! ec00f400
 4ae:	e4 00       	mov	#0,r4
 4b0:	ec 00       	mov	#0,r12
 4b2:	f4 00       	fadd	fr0,fr4
 4b4:	fc 00       	fadd	fr0,fr12
 4b6:	ff ff       	.word 0xffff

000004b8 <_SGL_ASCII_CG>:
	...
 4c0:	7e 7e       	add	#126,r14
 4c2:	7e ff       	add	#-1,r14
 4c4:	7e 7e       	add	#126,r14
 4c6:	7e ff       	add	#-1,r14
 4c8:	00 00       	.word 0x0000
 4ca:	00 00       	.word 0x0000
 4cc:	00 00       	.word 0x0000
 4ce:	00 ff       	mac.l	@r15+,@r0+
 4d0:	00 00       	.word 0x0000
 4d2:	00 00       	.word 0x0000
 4d4:	00 00       	.word 0x0000
 4d6:	ff ff       	.word 0xffff
 4d8:	00 00       	.word 0x0000
 4da:	00 00       	.word 0x0000
 4dc:	00 ff       	mac.l	@r15+,@r0+
 4de:	ff ff       	.word 0xffff
 4e0:	00 00       	.word 0x0000
 4e2:	00 00       	.word 0x0000
 4e4:	ff ff       	.word 0xffff
 4e6:	ff ff       	.word 0xffff
 4e8:	00 00       	.word 0x0000
 4ea:	00 ff       	mac.l	@r15+,@r0+
 4ec:	ff ff       	.word 0xffff
 4ee:	ff ff       	.word 0xffff
 4f0:	00 00       	.word 0x0000
 4f2:	ff ff       	.word 0xffff
 4f4:	ff ff       	.word 0xffff
 4f6:	ff ff       	.word 0xffff
 4f8:	00 ff       	mac.l	@r15+,@r0+
 4fa:	ff ff       	.word 0xffff
 4fc:	ff ff       	.word 0xffff
 4fe:	ff ff       	.word 0xffff
 500:	ff ff       	.word 0xffff
 502:	ff ff       	.word 0xffff
 504:	ff ff       	.word 0xffff
 506:	ff ff       	.word 0xffff
 508:	80 80       	mov.b	r0,@(0,r8)
 50a:	80 80       	mov.b	r0,@(0,r8)
 50c:	80 80       	mov.b	r0,@(0,r8)
 50e:	80 80       	mov.b	r0,@(0,r8)
 510:	c0 c0       	mov.b	r0,@(192,gbr)
 512:	c0 c0       	mov.b	r0,@(192,gbr)
 514:	c0 c0       	mov.b	r0,@(192,gbr)
 516:	c0 c0       	mov.b	r0,@(192,gbr)
 518:	e0 e0       	mov	#-32,r0
 51a:	e0 e0       	mov	#-32,r0
 51c:	e0 e0       	mov	#-32,r0
 51e:	e0 e0       	mov	#-32,r0
 520:	f0 f0       	fadd	fr15,fr0
 522:	f0 f0       	fadd	fr15,fr0
 524:	f0 f0       	fadd	fr15,fr0
 526:	f0 f0       	fadd	fr15,fr0
 528:	f8 f8       	fmov	@r15,fr8
 52a:	f8 f8       	fmov	@r15,fr8
 52c:	f8 f8       	fmov	@r15,fr8
 52e:	f8 f8       	fmov	@r15,fr8
 530:	fc fc       	fmov	fr15,fr12
 532:	fc fc       	fmov	fr15,fr12
 534:	fc fc       	fmov	fr15,fr12
 536:	fc fc       	fmov	fr15,fr12
 538:	fe fe       	fmac	fr0,fr15,fr14
 53a:	fe fe       	fmac	fr0,fr15,fr14
 53c:	fe fe       	fmac	fr0,fr15,fr14
 53e:	fe fe       	fmac	fr0,fr15,fr14
 540:	ff ff       	.word 0xffff
 542:	ff ff       	.word 0xffff
 544:	ff ff       	.word 0xffff
 546:	ff ff       	.word 0xffff
	...
 560:	00 00       	.word 0x0000
 562:	00 ff       	mac.l	@r15+,@r0+
 564:	00 00       	.word 0x0000
 566:	00 00       	.word 0x0000
 568:	10 10       	mov.l	r1,@(0,r0)
 56a:	10 10       	mov.l	r1,@(0,r0)
 56c:	10 10       	mov.l	r1,@(0,r0)
 56e:	10 10       	mov.l	r1,@(0,r0)
 570:	00 00       	.word 0x0000
 572:	00 1f       	mac.l	@r1+,@r0+
 574:	10 10       	mov.l	r1,@(0,r0)
 576:	10 10       	mov.l	r1,@(0,r0)
 578:	00 00       	.word 0x0000
 57a:	00 f0       	.word 0x00f0
 57c:	10 10       	mov.l	r1,@(0,r0)
 57e:	10 10       	mov.l	r1,@(0,r0)
 580:	10 10       	mov.l	r1,@(0,r0)
 582:	10 1f       	mov.l	r1,@(60,r0)
 584:	00 00       	.word 0x0000
 586:	00 00       	.word 0x0000
 588:	10 10       	mov.l	r1,@(0,r0)
 58a:	10 f0       	mov.l	r15,@(0,r0)
 58c:	00 00       	.word 0x0000
 58e:	00 00       	.word 0x0000
 590:	10 10       	mov.l	r1,@(0,r0)
 592:	10 1f       	mov.l	r1,@(60,r0)
 594:	10 10       	mov.l	r1,@(0,r0)
 596:	10 10       	mov.l	r1,@(0,r0)
 598:	10 10       	mov.l	r1,@(0,r0)
 59a:	10 f0       	mov.l	r15,@(0,r0)
 59c:	10 10       	mov.l	r1,@(0,r0)
 59e:	10 10       	mov.l	r1,@(0,r0)
 5a0:	00 00       	.word 0x0000
 5a2:	00 ff       	mac.l	@r15+,@r0+
 5a4:	10 10       	mov.l	r1,@(0,r0)
 5a6:	10 10       	mov.l	r1,@(0,r0)
 5a8:	10 10       	mov.l	r1,@(0,r0)
 5aa:	10 ff       	mov.l	r15,@(60,r0)
 5ac:	00 00       	.word 0x0000
 5ae:	00 00       	.word 0x0000
 5b0:	10 10       	mov.l	r1,@(0,r0)
 5b2:	10 ff       	mov.l	r15,@(60,r0)
 5b4:	10 10       	mov.l	r1,@(0,r0)
 5b6:	10 10       	mov.l	r1,@(0,r0)
	...
 5c0:	08 08       	.word 0x0808
 5c2:	08 08       	.word 0x0808
 5c4:	00 00       	.word 0x0000
 5c6:	08 00       	.word 0x0800
 5c8:	24 24       	mov.b	r2,@-r4
 5ca:	24 00       	mov.b	r0,@r4
 5cc:	00 00       	.word 0x0000
 5ce:	00 00       	.word 0x0000
 5d0:	24 24       	mov.b	r2,@-r4
 5d2:	7e 24       	add	#36,r14
 5d4:	7e 24       	add	#36,r14
 5d6:	24 00       	mov.b	r0,@r4
 5d8:	08 1e       	mov.l	@(r0,r1),r8
 5da:	28 1c       	cmp/str	r1,r8
 5dc:	0a 3c       	mov.b	@(r0,r3),r10
 5de:	08 00       	.word 0x0800
 5e0:	00 62       	stc	r6_bank,r0
 5e2:	64 08       	swap.b	r0,r4
 5e4:	10 26       	mov.l	r2,@(24,r0)
 5e6:	46 00       	shll	r6
 5e8:	30 48       	sub	r4,r0
 5ea:	48 30       	.word 0x4830
 5ec:	4a 44       	.word 0x4a44
 5ee:	3a 00       	cmp/eq	r0,r10
 5f0:	04 08       	.word 0x0408
 5f2:	10 00       	mov.l	r0,@(0,r0)
 5f4:	00 00       	.word 0x0000
 5f6:	00 00       	.word 0x0000
 5f8:	04 08       	.word 0x0408
 5fa:	10 10       	mov.l	r1,@(0,r0)
 5fc:	10 08       	mov.l	r0,@(32,r0)
 5fe:	04 00       	.word 0x0400
 600:	20 10       	mov.b	r1,@r0
 602:	08 08       	.word 0x0808
 604:	08 10       	.word 0x0810
 606:	20 00       	mov.b	r0,@r0
 608:	08 2a       	sts	pr,r8
 60a:	1c 3e       	mov.l	r3,@(56,r12)
 60c:	1c 2a       	mov.l	r2,@(40,r12)
 60e:	08 00       	.word 0x0800
 610:	00 08       	clrt	
 612:	08 3e       	mov.l	@(r0,r3),r8
 614:	08 08       	.word 0x0808
 616:	00 00       	.word 0x0000
 618:	00 00       	.word 0x0000
 61a:	00 00       	.word 0x0000
 61c:	00 08       	clrt	
 61e:	08 10       	.word 0x0810
 620:	00 00       	.word 0x0000
 622:	00 7e       	mov.l	@(r0,r7),r0
	...
 62c:	00 18       	sett	
 62e:	18 00       	mov.l	r0,@(0,r8)
 630:	00 02       	stc	sr,r0
 632:	04 08       	.word 0x0408
 634:	10 20       	mov.l	r2,@(0,r0)
 636:	40 00       	shll	r0
 638:	3c 42       	cmp/hs	r4,r12
 63a:	42 42       	.word 0x4242
 63c:	42 42       	.word 0x4242
 63e:	3c 00       	cmp/eq	r0,r12
 640:	08 18       	.word 0x0818
 642:	28 08       	tst	r0,r8
 644:	08 08       	.word 0x0808
 646:	3e 00       	cmp/eq	r0,r14
 648:	3c 42       	cmp/hs	r4,r12
 64a:	02 0c       	mov.b	@(r0,r0),r2
 64c:	30 40       	cmp/eq	r4,r0
 64e:	7e 00       	add	#0,r14
 650:	3c 42       	cmp/hs	r4,r12
 652:	02 1c       	mov.b	@(r0,r1),r2
 654:	02 42       	stc	spc,r2
 656:	3c 00       	cmp/eq	r0,r12
 658:	04 0c       	mov.b	@(r0,r0),r4
 65a:	14 24       	mov.l	r2,@(16,r4)
 65c:	7e 04       	add	#4,r14
 65e:	04 00       	.word 0x0400
 660:	7e 40       	add	#64,r14
 662:	78 04       	add	#4,r8
 664:	02 44       	mov.b	r4,@(r0,r2)
 666:	38 00       	cmp/eq	r0,r8
 668:	1c 20       	mov.l	r2,@(0,r12)
 66a:	40 7c       	shad	r7,r0
 66c:	42 42       	.word 0x4242
 66e:	3c 00       	cmp/eq	r0,r12
 670:	7e 42       	add	#66,r14
 672:	04 08       	.word 0x0408
 674:	10 10       	mov.l	r1,@(0,r0)
 676:	10 00       	mov.l	r0,@(0,r0)
 678:	3c 42       	cmp/hs	r4,r12
 67a:	42 3c       	shad	r3,r2
 67c:	42 42       	.word 0x4242
 67e:	3c 00       	cmp/eq	r0,r12
 680:	3c 42       	cmp/hs	r4,r12
 682:	42 3e       	ldc	r2,ssr
 684:	02 04       	mov.b	r0,@(r0,r2)
 686:	38 00       	cmp/eq	r0,r8
 688:	00 00       	.word 0x0000
 68a:	08 00       	.word 0x0800
 68c:	00 08       	clrt	
 68e:	00 00       	.word 0x0000
 690:	00 00       	.word 0x0000
 692:	08 00       	.word 0x0800
 694:	00 08       	clrt	
 696:	08 10       	.word 0x0810
 698:	0e 18       	.word 0x0e18
 69a:	30 60       	cmp/eq	r6,r0
 69c:	30 18       	sub	r1,r0
 69e:	0e 00       	.word 0x0e00
 6a0:	00 00       	.word 0x0000
 6a2:	7e 00       	add	#0,r14
 6a4:	7e 00       	add	#0,r14
 6a6:	00 00       	.word 0x0000
 6a8:	70 18       	add	#24,r0
 6aa:	0c 06       	mov.l	r0,@(r0,r12)
 6ac:	0c 18       	.word 0x0c18
 6ae:	70 00       	add	#0,r0
 6b0:	3c 42       	cmp/hs	r4,r12
 6b2:	02 0c       	mov.b	@(r0,r0),r2
 6b4:	10 00       	mov.l	r0,@(0,r0)
 6b6:	10 00       	mov.l	r0,@(0,r0)
 6b8:	7c 82       	add	#-126,r12
 6ba:	9a a2       	mov.w	802 <_SGL_ASCII_CG+0x34a>,r10	! 1808
 6bc:	9a 82       	mov.w	7c4 <_SGL_ASCII_CG+0x30c>,r10	! 3c44
 6be:	7c 00       	add	#0,r12
 6c0:	18 24       	mov.l	r2,@(16,r8)
 6c2:	42 7e       	ldc	r2,r7_bank
 6c4:	42 42       	.word 0x4242
 6c6:	42 00       	shll	r2
 6c8:	7c 22       	add	#34,r12
 6ca:	22 3c       	cmp/str	r3,r2
 6cc:	22 22       	mov.l	r2,@r2
 6ce:	7c 00       	add	#0,r12
 6d0:	1c 22       	mov.l	r2,@(8,r12)
 6d2:	40 40       	.word 0x4040
 6d4:	40 22       	sts.l	pr,@-r0
 6d6:	1c 00       	mov.l	r0,@(0,r12)
 6d8:	78 24       	add	#36,r8
 6da:	22 22       	mov.l	r2,@r2
 6dc:	22 24       	mov.b	r2,@-r2
 6de:	78 00       	add	#0,r8
 6e0:	7e 40       	add	#64,r14
 6e2:	40 78       	.word 0x4078
 6e4:	40 40       	.word 0x4040
 6e6:	7e 00       	add	#0,r14
 6e8:	7e 40       	add	#64,r14
 6ea:	40 78       	.word 0x4078
 6ec:	40 40       	.word 0x4040
 6ee:	40 00       	shll	r0
 6f0:	1c 22       	mov.l	r2,@(8,r12)
 6f2:	40 4e       	ldc	r0,spc
 6f4:	42 22       	sts.l	pr,@-r2
 6f6:	1c 00       	mov.l	r0,@(0,r12)
 6f8:	42 42       	.word 0x4242
 6fa:	42 7e       	ldc	r2,r7_bank
 6fc:	42 42       	.word 0x4242
 6fe:	42 00       	shll	r2
 700:	1c 08       	mov.l	r0,@(32,r12)
 702:	08 08       	.word 0x0808
 704:	08 08       	.word 0x0808
 706:	1c 00       	mov.l	r0,@(0,r12)
 708:	0e 04       	mov.b	r0,@(r0,r14)
 70a:	04 04       	mov.b	r0,@(r0,r4)
 70c:	04 44       	mov.b	r4,@(r0,r4)
 70e:	38 00       	cmp/eq	r0,r8
 710:	42 44       	.word 0x4244
 712:	48 70       	.word 0x4870
 714:	48 44       	.word 0x4844
 716:	42 00       	shll	r2
 718:	40 40       	.word 0x4040
 71a:	40 40       	.word 0x4040
 71c:	40 40       	.word 0x4040
 71e:	7e 00       	add	#0,r14
 720:	42 66       	lds.l	@r2+,fpscr
 722:	5a 5a       	mov.l	@(40,r5),r10
 724:	42 42       	.word 0x4242
 726:	42 00       	shll	r2
 728:	42 62       	sts.l	fpscr,@-r2
 72a:	52 4a       	mov.l	@(40,r4),r2
 72c:	46 42       	.word 0x4642
 72e:	42 00       	shll	r2
 730:	18 24       	mov.l	r2,@(16,r8)
 732:	42 42       	.word 0x4242
 734:	42 24       	rotcl	r2
 736:	18 00       	mov.l	r0,@(0,r8)
 738:	7c 42       	add	#66,r12
 73a:	42 7c       	shad	r7,r2
 73c:	40 40       	.word 0x4040
 73e:	40 00       	shll	r0
 740:	18 24       	mov.l	r2,@(16,r8)
 742:	42 42       	.word 0x4242
 744:	4a 24       	rotcl	r10
 746:	1a 00       	mov.l	r0,@(0,r10)
 748:	7c 42       	add	#66,r12
 74a:	42 7c       	shad	r7,r2
 74c:	48 44       	.word 0x4844
 74e:	42 00       	shll	r2
 750:	3c 42       	cmp/hs	r4,r12
 752:	40 3c       	shad	r3,r0
 754:	02 42       	stc	spc,r2
 756:	3c 00       	cmp/eq	r0,r12
 758:	3e 08       	sub	r0,r14
 75a:	08 08       	.word 0x0808
 75c:	08 08       	.word 0x0808
 75e:	08 00       	.word 0x0800
 760:	42 42       	.word 0x4242
 762:	42 42       	.word 0x4242
 764:	42 42       	.word 0x4242
 766:	3c 00       	cmp/eq	r0,r12
 768:	42 42       	.word 0x4242
 76a:	42 24       	rotcl	r2
 76c:	24 18       	tst	r1,r4
 76e:	18 00       	mov.l	r0,@(0,r8)
 770:	42 42       	.word 0x4242
 772:	42 5a       	lds	r2,fpul
 774:	5a 66       	mov.l	@(24,r6),r10
 776:	42 00       	shll	r2
 778:	42 42       	.word 0x4242
 77a:	24 18       	tst	r1,r4
 77c:	24 42       	mov.l	r4,@r4
 77e:	42 00       	shll	r2
 780:	22 22       	mov.l	r2,@r2
 782:	22 1c       	cmp/str	r1,r2
 784:	08 08       	.word 0x0808
 786:	08 00       	.word 0x0800
 788:	7e 02       	add	#2,r14
 78a:	04 18       	.word 0x0418
 78c:	20 40       	mov.b	r4,@r0
 78e:	7e 00       	add	#0,r14
 790:	3c 20       	cmp/eq	r2,r12
 792:	20 20       	mov.b	r2,@r0
 794:	20 20       	mov.b	r2,@r0
 796:	3c 00       	cmp/eq	r0,r12
 798:	22 22       	mov.l	r2,@r2
 79a:	14 3e       	mov.l	r3,@(56,r4)
 79c:	08 3e       	mov.l	@(r0,r3),r8
 79e:	08 00       	.word 0x0800
 7a0:	3c 04       	div1	r0,r12
 7a2:	04 04       	mov.b	r0,@(r0,r4)
 7a4:	04 04       	mov.b	r0,@(r0,r4)
 7a6:	3c 00       	cmp/eq	r0,r12
 7a8:	08 14       	mov.b	r1,@(r0,r8)
 7aa:	22 00       	mov.b	r0,@r2
	...
 7b4:	00 00       	.word 0x0000
 7b6:	7e 00       	add	#0,r14
 7b8:	04 02       	stc	sr,r4
 7ba:	01 00       	.word 0x0100
 7bc:	00 00       	.word 0x0000
 7be:	00 00       	.word 0x0000
 7c0:	00 00       	.word 0x0000
 7c2:	3c 04       	div1	r0,r12
 7c4:	3c 44       	div1	r4,r12
 7c6:	3a 00       	cmp/eq	r0,r10
 7c8:	40 40       	.word 0x4040
 7ca:	5c 62       	mov.l	@(8,r6),r12
 7cc:	42 62       	sts.l	fpscr,@-r2
 7ce:	5c 00       	mov.l	@(0,r0),r12
 7d0:	00 00       	.word 0x0000
 7d2:	3c 42       	cmp/hs	r4,r12
 7d4:	40 42       	.word 0x4042
 7d6:	3c 00       	cmp/eq	r0,r12
 7d8:	02 02       	stc	sr,r2
 7da:	3a 46       	cmp/hi	r4,r10
 7dc:	42 46       	.word 0x4246
 7de:	3a 00       	cmp/eq	r0,r10
 7e0:	00 00       	.word 0x0000
 7e2:	3c 42       	cmp/hs	r4,r12
 7e4:	7e 40       	add	#64,r14
 7e6:	3c 00       	cmp/eq	r0,r12
 7e8:	0c 12       	stc	gbr,r12
 7ea:	10 7c       	mov.l	r7,@(48,r0)
 7ec:	10 10       	mov.l	r1,@(0,r0)
 7ee:	10 00       	mov.l	r0,@(0,r0)
 7f0:	00 00       	.word 0x0000
 7f2:	3a 46       	cmp/hi	r4,r10
 7f4:	46 3a       	ldc	r6,sgr
 7f6:	02 3c       	mov.b	@(r0,r3),r2
 7f8:	40 40       	.word 0x4040
 7fa:	5c 62       	mov.l	@(8,r6),r12
 7fc:	42 42       	.word 0x4242
 7fe:	42 00       	shll	r2
 800:	08 00       	.word 0x0800
 802:	18 08       	mov.l	r0,@(32,r8)
 804:	08 08       	.word 0x0808
 806:	1c 00       	mov.l	r0,@(0,r12)
 808:	04 00       	.word 0x0400
 80a:	0c 04       	mov.b	r0,@(r0,r12)
 80c:	04 04       	mov.b	r0,@(r0,r4)
 80e:	44 38       	.word 0x4438
 810:	40 40       	.word 0x4040
 812:	44 48       	.word 0x4448
 814:	50 68       	mov.l	@(32,r6),r0
 816:	44 00       	shll	r4
 818:	18 08       	mov.l	r0,@(32,r8)
 81a:	08 08       	.word 0x0808
 81c:	08 08       	.word 0x0808
 81e:	1c 00       	mov.l	r0,@(0,r12)
 820:	00 00       	.word 0x0000
 822:	76 49       	add	#73,r6
 824:	49 49       	.word 0x4949
 826:	49 00       	shll	r9
 828:	00 00       	.word 0x0000
 82a:	5c 62       	mov.l	@(8,r6),r12
 82c:	42 42       	.word 0x4242
 82e:	42 00       	shll	r2
 830:	00 00       	.word 0x0000
 832:	3c 42       	cmp/hs	r4,r12
 834:	42 42       	.word 0x4242
 836:	3c 00       	cmp/eq	r0,r12
 838:	00 00       	.word 0x0000
 83a:	5c 62       	mov.l	@(8,r6),r12
 83c:	62 5c       	extu.b	r5,r2
 83e:	40 40       	.word 0x4040
 840:	00 00       	.word 0x0000
 842:	3a 46       	cmp/hi	r4,r10
 844:	46 3a       	ldc	r6,sgr
 846:	02 02       	stc	sr,r2
 848:	00 00       	.word 0x0000
 84a:	5c 62       	mov.l	@(8,r6),r12
 84c:	40 40       	.word 0x4040
 84e:	40 00       	shll	r0
 850:	00 00       	.word 0x0000
 852:	3e 40       	cmp/eq	r4,r14
 854:	3c 02       	cmp/hs	r0,r12
 856:	7c 00       	add	#0,r12
 858:	10 10       	mov.l	r1,@(0,r0)
 85a:	7c 10       	add	#16,r12
 85c:	10 12       	mov.l	r1,@(8,r0)
 85e:	0c 00       	.word 0x0c00
 860:	00 00       	.word 0x0000
 862:	42 42       	.word 0x4242
 864:	42 46       	.word 0x4246
 866:	3a 00       	cmp/eq	r0,r10
 868:	00 00       	.word 0x0000
 86a:	42 42       	.word 0x4242
 86c:	42 24       	rotcl	r2
 86e:	18 00       	mov.l	r0,@(0,r8)
 870:	00 00       	.word 0x0000
 872:	41 49       	.word 0x4149
 874:	49 49       	.word 0x4949
 876:	36 00       	cmp/eq	r0,r6
 878:	00 00       	.word 0x0000
 87a:	42 24       	rotcl	r2
 87c:	18 24       	mov.l	r2,@(16,r8)
 87e:	42 00       	shll	r2
 880:	00 00       	.word 0x0000
 882:	42 42       	.word 0x4242
 884:	46 3a       	ldc	r6,sgr
 886:	02 3c       	mov.b	@(r0,r3),r2
 888:	00 00       	.word 0x0000
 88a:	7e 04       	add	#4,r14
 88c:	18 20       	mov.l	r2,@(0,r8)
 88e:	7e 00       	add	#0,r14
 890:	0e 10       	.word 0x0e10
 892:	10 20       	mov.l	r2,@(0,r0)
 894:	10 10       	mov.l	r1,@(0,r0)
 896:	0e 00       	.word 0x0e00
 898:	08 08       	.word 0x0808
 89a:	00 00       	.word 0x0000
 89c:	00 08       	clrt	
 89e:	08 00       	.word 0x0800
 8a0:	70 08       	add	#8,r0
 8a2:	08 04       	mov.b	r0,@(r0,r8)
 8a4:	08 08       	.word 0x0808
 8a6:	70 00       	add	#0,r0
 8a8:	30 49       	.word 0x3049
 8aa:	06 00       	.word 0x0600
 8ac:	00 00       	.word 0x0000
 8ae:	00 00       	.word 0x0000
 8b0:	aa 55       	bra	fffffd5e <SEGA_Logo_CG+0xfffff48e>
 8b2:	aa 55       	bra	fffffd60 <SEGA_Logo_CG+0xfffff490>
 8b4:	aa 55       	bra	fffffd62 <SEGA_Logo_CG+0xfffff492>
 8b6:	aa 55       	bra	fffffd64 <SEGA_Logo_CG+0xfffff494>

000008b8 <_s____>:
 8b8:	00 00       	.word 0x0000
 8ba:	13 24       	mov.l	r2,@(16,r3)
 8bc:	23 20       	mov.b	r2,@r3
 8be:	17 00       	mov.l	r0,@(0,r7)
 8c0:	00 00       	.word 0x0000
 8c2:	d0 08       	mov.l	8e4 <SEGA_Logo_CG+0x14>,r0	! 63
 8c4:	88 48       	cmp/eq	#72,r0
 8c6:	90 00       	mov.w	8ca <_s____+0x12>,r0	! 0 <_slInitScroll>
	...

000008d0 <SEGA_Logo_CG>:
	...
 8e4:	00 00       	.word 0x0000
 8e6:	00 63       	.word 0x0063
 8e8:	00 00       	.word 0x0000
 8ea:	05 f5       	mov.w	r15,@(r0,r5)
 8ec:	00 00       	.word 0x0000
 8ee:	6f ee       	exts.b	r14,r15
	...
 904:	ff ff       	.word 0xffff
 906:	ff ff       	.word 0xffff
 908:	ee ee       	mov	#-18,r14
 90a:	ee ee       	mov	#-18,r14
 90c:	ee ee       	mov	#-18,r14
 90e:	ee ee       	mov	#-18,r14
	...
 924:	ff 06       	fmov	@(r0,r0),fr15
 926:	3f ff       	addv	r15,r15
 928:	ef 5f       	mov	#95,r15
 92a:	5e ee       	mov.l	@(56,r14),r14
 92c:	ef fe       	mov	#-2,r15
 92e:	ee ee       	mov	#-18,r14
	...
 944:	ff ff       	.word 0xffff
 946:	ff f0       	fadd	fr15,fr15
 948:	ee ee       	mov	#-18,r14
 94a:	ee f5       	mov	#-11,r14
 94c:	ee ee       	mov	#-18,r14
 94e:	ee ff       	mov	#-1,r14
	...
 964:	63 ff       	exts.w	r15,r3
 966:	ff ff       	.word 0xffff
 968:	f5 ee       	fmac	fr0,fr14,fr5
 96a:	ee ee       	mov	#-18,r14
 96c:	ee ee       	mov	#-18,r14
 96e:	ee ee       	mov	#-18,r14
	...
 984:	ff ff       	.word 0xffff
 986:	00 00       	.word 0x0000
 988:	ee ef       	mov	#-17,r14
 98a:	00 06       	mov.l	r0,@(r0,r0)
 98c:	ee ef       	mov	#-17,r14
 98e:	00 03       	bsrf	r0
	...
 9a4:	5f ff       	mov.l	@(60,r15),r15
 9a6:	ff 50       	fadd	fr5,fr15
 9a8:	fe ee       	fmac	fr0,fr14,fr14
 9aa:	ee f6       	mov	#-10,r14
 9ac:	ee ee       	mov	#-18,r14
 9ae:	ee e3       	mov	#-29,r14
	...
 9d0:	00 00       	.word 0x0000
 9d2:	35 ee       	addc	r14,r5
 9d4:	00 00       	.word 0x0000
 9d6:	fe e5       	fcmp/gt	fr14,fr14
 9d8:	00 00       	.word 0x0000
 9da:	fe e3       	fdiv	fr14,fr14
 9dc:	00 00       	.word 0x0000
 9de:	fe ef       	.word 0xfeef
 9e0:	00 00       	.word 0x0000
 9e2:	fe ef       	.word 0xfeef
 9e4:	00 00       	.word 0x0000
 9e6:	fe ee       	fmac	fr0,fr14,fr14
 9e8:	00 00       	.word 0x0000
 9ea:	35 ee       	addc	r14,r5
 9ec:	00 00       	.word 0x0000
 9ee:	6f ee       	exts.b	r14,r15
 9f0:	53 ff       	mov.l	@(60,r15),r3
 9f2:	ff ff       	.word 0xffff
 9f4:	f6 ee       	fmac	fr0,fr14,fr6
 9f6:	ee ee       	mov	#-18,r14
 9f8:	6e ee       	exts.b	r14,r14
 9fa:	ee ee       	mov	#-18,r14
 9fc:	ee ff       	mov	#-1,r14
 9fe:	ff ff       	.word 0xffff
 a00:	ee ee       	mov	#-18,r14
 a02:	ee 5f       	mov	#95,r14
 a04:	fe ee       	fmac	fr0,fr14,fr14
 a06:	ee ee       	mov	#-18,r14
 a08:	ef ff       	mov	#-1,r15
 a0a:	35 ee       	addc	r14,r5
 a0c:	ee ee       	mov	#-18,r14
 a0e:	6f 5e       	exts.b	r5,r15
 a10:	ff 5e       	fmac	fr0,fr5,fr15
 a12:	e5 3f       	mov	#63,r5
 a14:	ef ee       	mov	#-18,r15
 a16:	5f 6e       	mov.l	@(56,r6),r15
 a18:	ef ee       	mov	#-18,r15
 a1a:	36 ee       	addc	r14,r6
 a1c:	ff ee       	fmac	fr0,fr14,fr15
 a1e:	fe ef       	.word 0xfeef
 a20:	5f ee       	mov.l	@(56,r14),r15
 a22:	fe ee       	fmac	fr0,fr14,fr14
 a24:	ff ee       	fmac	fr0,fr14,fr15
 a26:	fe ee       	fmac	fr0,fr14,fr14
 a28:	5f ee       	mov.l	@(56,r14),r15
 a2a:	ff ff       	.word 0xffff
 a2c:	ef ee       	mov	#-18,r15
 a2e:	fe ee       	fmac	fr0,fr14,fr14
 a30:	ff ff       	.word 0xffff
 a32:	ff f5       	fcmp/gt	fr15,fr15
 a34:	ee ee       	mov	#-18,r14
 a36:	ee fe       	mov	#-2,r14
 a38:	ee ee       	mov	#-18,r14
 a3a:	ee fe       	mov	#-2,r14
 a3c:	ff ff       	.word 0xffff
 a3e:	ff fe       	fmac	fr0,fr15,fr15
 a40:	ee ee       	mov	#-18,r14
 a42:	ef fe       	mov	#-2,r15
 a44:	ee ee       	mov	#-18,r14
 a46:	ef fe       	mov	#-2,r15
 a48:	ff ff       	.word 0xffff
 a4a:	ff fe       	fmac	fr0,fr15,fr15
 a4c:	ee ee       	mov	#-18,r14
 a4e:	ef fe       	mov	#-2,r15
 a50:	ee 53       	mov	#83,r14
 a52:	ff ff       	.word 0xffff
 a54:	e5 f6       	mov	#-10,r5
 a56:	ee ee       	mov	#-18,r14
 a58:	e3 6e       	mov	#110,r3
 a5a:	ee ee       	mov	#-18,r14
 a5c:	ef ee       	mov	#-18,r15
 a5e:	ff ff       	.word 0xffff
 a60:	ef ee       	mov	#-18,r15
 a62:	fe ee       	fmac	fr0,fr14,fr14
 a64:	ef ee       	mov	#-18,r15
 a66:	fe ee       	fmac	fr0,fr14,fr14
 a68:	ef ee       	mov	#-18,r15
 a6a:	ff ff       	.word 0xffff
 a6c:	ef ee       	mov	#-18,r15
 a6e:	fe ee       	fmac	fr0,fr14,fr14
 a70:	ff ff       	.word 0xffff
 a72:	00 6f       	mac.l	@r6+,@r0+
 a74:	ee ef       	mov	#-17,r14
 a76:	00 3e       	mov.l	@(r0,r3),r0
 a78:	ee ef       	mov	#-17,r14
 a7a:	00 fe       	mov.l	@(r0,r15),r0
 a7c:	ff ff       	.word 0xffff
 a7e:	06 4e       	mov.l	@(r0,r4),r6
 a80:	ee ef       	mov	#-17,r14
 a82:	03 ee       	mov.l	@(r0,r14),r3
 a84:	ee ef       	mov	#-17,r14
 a86:	0f ee       	mov.l	@(r0,r14),r15
 a88:	fe ef       	.word 0xfeef
 a8a:	64 ee       	exts.b	r14,r4
 a8c:	fe ef       	.word 0xfeef
 a8e:	3e e3       	cmp/ge	r14,r14
 a90:	ee 3f       	mov	#63,r14
 a92:	3e ef       	addv	r14,r14
 a94:	e3 5e       	mov	#94,r3
 a96:	53 ee       	mov.l	@(56,r14),r3
 a98:	ef ee       	mov	#-18,r15
 a9a:	ef ee       	mov	#-18,r15
 a9c:	e4 ee       	mov	#-18,r4
 a9e:	e4 ee       	mov	#-18,r4
 aa0:	36 e5       	dmulu.l	r14,r6
 aa2:	e6 3e       	mov	#62,r6
 aa4:	fe e4       	fcmp/eq	fr14,fr14
 aa6:	ee fe       	mov	#-2,r14
 aa8:	4e 6f       	mac.w	@r6+,@r14+
 aaa:	6e 4e       	exts.b	r4,r14
 aac:	6e 4f       	exts.w	r4,r14
 aae:	4e 63       	stc.l	r6_bank,@-r14
 ab0:	60 00       	mov.b	@r0,r0
 ab2:	00 00       	.word 0x0000
 ab4:	30 00       	cmp/eq	r0,r0
 ab6:	00 00       	.word 0x0000
 ab8:	f0 00       	fadd	fr0,fr0
 aba:	00 00       	.word 0x0000
 abc:	46 00       	shll	r6
 abe:	00 00       	.word 0x0000
 ac0:	e3 00       	mov	#0,r3
 ac2:	00 00       	.word 0x0000
 ac4:	ef 00       	mov	#0,r15
 ac6:	00 00       	.word 0x0000
 ac8:	e4 60       	mov	#96,r4
 aca:	00 00       	.word 0x0000
 acc:	ee 30       	mov	#48,r14
 ace:	00 00       	.word 0x0000
 ad0:	00 00       	.word 0x0000
 ad2:	05 f5       	mov.w	r15,@(r0,r5)
 ad4:	00 00       	.word 0x0000
 ad6:	ff ff       	.word 0xffff
 ad8:	00 00       	.word 0x0000
 ada:	fb bb       	fmov	fr11,@-r11
 adc:	00 00       	.word 0x0000
 ade:	fa aa       	fmov	fr10,@r10
 ae0:	00 00       	.word 0x0000
 ae2:	ff ff       	.word 0xffff
 ae4:	00 00       	.word 0x0000
 ae6:	f8 88       	fmov	@r8,fr8
 ae8:	00 00       	.word 0x0000
 aea:	f7 77       	fmov	fr7,@(r0,r7)
 aec:	00 00       	.word 0x0000
 aee:	ff ff       	.word 0xffff
 af0:	dd dd       	mov.l	e68 <SEGA_Logo_CG+0x598>,r13
 af2:	d6 3d       	mov.l	be8 <SEGA_Logo_CG+0x318>,r6
 af4:	ff ff       	.word 0xffff
 af6:	cc fc       	tst.b	#-4,@(r0,gbr)
 af8:	bb bb       	bsr	272 <TVSizeTbl+0x12>
 afa:	b6 3b       	bsr	1774 <SEGA_Logo_CG+0xea4>
 afc:	aa aa       	bra	54 <insc_01+0xa>
 afe:	6f 5a       	negc	r5,r15
 b00:	ff ff       	.word 0xffff
 b02:	35 99       	.word 0x3599
 b04:	88 88       	cmp/eq	#-120,r0
 b06:	88 88       	cmp/eq	#-120,r0
 b08:	77 77       	add	#119,r7
 b0a:	77 ff       	add	#-1,r7
 b0c:	ff ff       	.word 0xffff
 b0e:	ff 00       	fadd	fr0,fr15
 b10:	df dd       	mov.l	e88 <SEGA_Logo_CG+0x5b8>,r15
 b12:	fd dd       	.word 0xfddd
 b14:	cf cc       	or.b	#-52,@(r0,gbr)
 b16:	fc cf       	.word 0xfccf
 b18:	bf bb       	bsr	a92 <SEGA_Logo_CG+0x1c2>
 b1a:	36 bb       	subv	r11,r6
 b1c:	af aa       	bra	a74 <SEGA_Logo_CG+0x1a4>
 b1e:	5f 6a       	mov.l	@(40,r6),r15
 b20:	f3 59       	fmov	@r5+,fr3
 b22:	95 3f       	mov.w	ba4 <SEGA_Logo_CG+0x2d4>,r5	! 3f88
 b24:	f6 f8       	fmov	@r15,fr6
 b26:	88 88       	cmp/eq	#-120,r0
 b28:	00 5f       	mac.l	@r5+,@r0+
 b2a:	57 77       	mov.l	@(28,r7),r7
 b2c:	00 06       	mov.l	r0,@(r0,r0)
 b2e:	3f ff       	addv	r15,r15
 b30:	dd dd       	mov.l	ea8 <SEGA_Logo_CG+0x5d8>,r13
 b32:	df fd       	mov.l	f28 <SEGA_Logo_CG+0x658>,r15
 b34:	ff ff       	.word 0xffff
 b36:	ff fc       	fmov	fr15,fr15
 b38:	bb bb       	bsr	2b2 <TVSizeTbl+0x52>
 b3a:	bb fb       	bsr	334 <default_rot_tbl+0x34>
 b3c:	aa aa       	bra	94 <wait_DMAC_01188+0x6>
 b3e:	aa fa       	bra	136 <asc1to8_2+0xa>
 b40:	ff ff       	.word 0xffff
 b42:	ff f5       	fcmp/gt	fr15,fr15
 b44:	88 88       	cmp/eq	#-120,r0
 b46:	88 ff       	cmp/eq	#-1,r0
 b48:	77 77       	add	#119,r7
 b4a:	77 f5       	add	#-11,r7
 b4c:	ff ff       	.word 0xffff
 b4e:	ff f0       	fadd	fr15,fr15
 b50:	df dd       	mov.l	ec8 <SEGA_Logo_CG+0x5f8>,r15
 b52:	fd dd       	.word 0xfddd
 b54:	cf cc       	or.b	#-52,@(r0,gbr)
 b56:	ff cc       	fmov	fr12,fr15
 b58:	b3 6b       	bsr	1232 <SEGA_Logo_CG+0x962>
 b5a:	bb bb       	bsr	2d4 <TVSizeTbl+0x74>
 b5c:	a5 f6       	bra	174c <SEGA_Logo_CG+0xe7c>
 b5e:	aa aa       	bra	b6 <wait_DMAC_01188+0x28>
 b60:	99 53       	mov.w	c0a <SEGA_Logo_CG+0x33a>,r9
 b62:	ff ff       	.word 0xffff
 b64:	88 88       	cmp/eq	#-120,r0
 b66:	88 88       	cmp/eq	#-120,r0
 b68:	f5 77       	fmov	fr7,@(r0,r5)
 b6a:	77 77       	add	#119,r7
 b6c:	63 ff       	exts.w	r15,r3
 b6e:	ff ff       	.word 0xffff
 b70:	fd df       	.word 0xfddf
 b72:	fd df       	.word 0xfddf
 b74:	fc cf       	.word 0xfccf
 b76:	4c c4       	.word 0x4cc4
 b78:	fb bf       	.word 0xfbbf
 b7a:	bb 36       	bsr	1ea <wait_DMAC_01204+0x4>
 b7c:	fa af       	.word 0xfaaf
 b7e:	aa fa       	bra	176 <asc4to8_2+0x1a>
 b80:	f9 99       	fmov	@r9+,fr9
 b82:	99 49       	mov.w	c18 <SEGA_Logo_CG+0x348>,r9
 b84:	88 88       	cmp/eq	#-120,r0
 b86:	83 88       	.word 0x8388
 b88:	77 77       	add	#119,r7
 b8a:	7f 77       	add	#119,r15
 b8c:	ff ff       	.word 0xffff
 b8e:	ff ff       	.word 0xffff
 b90:	dd ff       	mov.l	f90 <SEGA_Logo_CG+0x6c0>,r13
 b92:	fd df       	.word 0xfddf
 b94:	c6 ff       	mov.l	@(1020,gbr),r0
 b96:	fc c4       	fcmp/eq	fr12,fr12
 b98:	b3 bb       	bsr	1312 <SEGA_Logo_CG+0xa42>
 b9a:	bb b6       	bsr	30a <default_rot_tbl+0xa>
 b9c:	af aa       	bra	af4 <SEGA_Logo_CG+0x224>
 b9e:	aa aa       	bra	f6 <wait_DMAC_01190+0x2e>
 ba0:	6f ff       	exts.w	r15,r15
 ba2:	ff ff       	.word 0xffff
 ba4:	3f 88       	sub	r8,r15
 ba6:	88 88       	cmp/eq	#-120,r0
 ba8:	ff 77       	fmov	fr7,@(r0,r15)
 baa:	77 77       	add	#119,r7
 bac:	ff ff       	.word 0xffff
 bae:	ff ff       	.word 0xffff
 bb0:	dd f0       	mov.l	f74 <SEGA_Logo_CG+0x6a4>,r13
 bb2:	00 00       	.word 0x0000
 bb4:	cc 46       	tst.b	#70,@(r0,gbr)
 bb6:	00 00       	.word 0x0000
 bb8:	3b b3       	cmp/ge	r11,r11
 bba:	00 00       	.word 0x0000
 bbc:	fa af       	.word 0xfaaf
 bbe:	00 00       	.word 0x0000
 bc0:	f9 94       	fcmp/eq	fr9,fr9
 bc2:	60 00       	mov.b	@r0,r0
 bc4:	88 88       	cmp/eq	#-120,r0
 bc6:	30 00       	cmp/eq	r0,r0
 bc8:	77 77       	add	#119,r7
 bca:	f0 00       	fadd	fr0,fr0
 bcc:	ff ff       	.word 0xffff
 bce:	f0 00       	fadd	fr0,fr0
