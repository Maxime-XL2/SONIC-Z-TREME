
sglC21.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <NormalSprite>:
   0:	66 41       	mov.w	@r4,r6
   2:	c5 4c       	mov.w	@(152,gbr),r0
   4:	61 63       	mov	r6,r1
   6:	31 0c       	add	r0,r1
   8:	c5 46       	mov.w	@(140,gbr),r0
   a:	54 41       	mov.l	@(4,r4),r4
   c:	31 06       	cmp/hi	r0,r1
   e:	8d 39       	bt.s	84 <nmspr_09>
  10:	c5 4d       	mov.w	@(154,gbr),r0
  12:	61 43       	mov	r4,r1
  14:	40 28       	shll16	r0
  16:	31 0c       	add	r0,r1
  18:	c5 47       	mov.w	@(142,gbr),r0
  1a:	40 28       	shll16	r0
  1c:	31 06       	cmp/hi	r0,r1
  1e:	8d 31       	bt.s	84 <nmspr_09>
  20:	e0 03       	mov	#3,r0
  22:	25 0a       	xor	r0,r5
  24:	42 11       	cmp/pz	r2
  26:	8d 03       	bt.s	30 <dshv_02>
  28:	e1 01       	mov	#1,r1
  2a:	62 2b       	neg	r2,r2
  2c:	e0 10       	mov	#16,r0
  2e:	25 0a       	xor	r0,r5

00000030 <dshv_02>:
  30:	43 11       	cmp/pz	r3
  32:	8d 03       	bt.s	3c <dshv_03>
  34:	41 28       	shll16	r1
  36:	63 3b       	neg	r3,r3
  38:	e0 20       	mov	#32,r0
  3a:	25 0a       	xor	r0,r5

0000003c <dshv_03>:
  3c:	32 13       	cmp/ge	r1,r2
  3e:	8d 01       	bt.s	44 <dshv_04>
  40:	32 18       	sub	r1,r2
  42:	e2 00       	mov	#0,r2

00000044 <dshv_04>:
  44:	33 13       	cmp/ge	r1,r3
  46:	8d 01       	bt.s	4c <dshv_05>
  48:	33 18       	sub	r1,r3
  4a:	e3 00       	mov	#0,r3

0000004c <dshv_05>:
  4c:	62 29       	swap.w	r2,r2
  4e:	23 2d       	xtrct	r2,r3
  50:	17 34       	mov.l	r3,@(16,r7)
  52:	60 58       	swap.b	r5,r0
  54:	c8 0f       	tst	#15,r0
  56:	8b 00       	bf	5a <dshv_08>
  58:	cb 0a       	or	#10,r0

0000005a <dshv_08>:
  5a:	60 08       	swap.b	r0,r0
  5c:	81 70       	mov.w	r0,@(0,r7)
  5e:	24 6d       	xtrct	r6,r4
  60:	17 43       	mov.l	r4,@(12,r7)
  62:	c6 12       	mov.l	@(72,gbr),r0
  64:	e1 28       	mov	#40,r1
  66:	10 10       	mov.l	r1,@(0,r0)
  68:	10 71       	mov.l	r7,@(4,r0)
  6a:	e1 01       	mov	#1,r1
  6c:	10 12       	mov.l	r1,@(8,r0)
  6e:	e1 00       	mov	#0,r1
  70:	10 13       	mov.l	r1,@(12,r0)
  72:	70 10       	add	#16,r0
  74:	d1 7b       	mov.l	264 <IMM_FRT_INTR>,r1	! 21000000
  76:	c2 12       	mov.l	r0,@(72,gbr)
  78:	21 01       	mov.w	r0,@r1
  7a:	77 dc       	add	#-36,r7
  7c:	60 73       	mov	r7,r0
  7e:	c2 0c       	mov.l	r0,@(48,gbr)
  80:	00 0b       	rts	
  82:	e0 01       	mov	#1,r0

00000084 <nmspr_09>:
  84:	00 0b       	rts	
  86:	e0 00       	mov	#0,r0

00000088 <RotSprite>:
  88:	26 68       	tst	r6,r6
  8a:	8d b9       	bt.s	0 <NormalSprite>
  8c:	60 68       	swap.b	r6,r0
  8e:	2f e6       	mov.l	r14,@-r15
  90:	2f d6       	mov.l	r13,@-r15
  92:	2f c6       	mov.l	r12,@-r15
  94:	2f b6       	mov.l	r11,@-r15
  96:	2f a6       	mov.l	r10,@-r15
  98:	2f 96       	mov.l	r9,@-r15
  9a:	2f 86       	mov.l	r8,@-r15
  9c:	40 09       	shlr2	r0
  9e:	40 09       	shlr2	r0
  a0:	e8 0c       	mov	#12,r8
  a2:	28 09       	and	r0,r8
  a4:	c7 6b       	mova	254 <scidx_tbl>,r0
  a6:	38 0c       	add	r0,r8
  a8:	61 84       	mov.b	@r8+,r1
  aa:	60 84       	mov.b	@r8+,r0
  ac:	6d 63       	mov	r6,r13
  ae:	26 1a       	xor	r1,r6
  b0:	91 cc       	mov.w	24c <IMM_3ffe>,r1	! 3ffe
  b2:	2d 0a       	xor	r0,r13
  b4:	d0 66       	mov.l	250 <IMM_sin_tbl>,r0	! 0 <NormalSprite>
  b6:	26 19       	and	r1,r6
  b8:	2d 19       	and	r1,r13
  ba:	61 84       	mov.b	@r8+,r1
  bc:	06 6d       	mov.w	@(r0,r6),r6
  be:	0d dd       	mov.w	@(r0,r13),r13
  c0:	60 80       	mov.b	@r8,r0
  c2:	66 6d       	extu.w	r6,r6
  c4:	76 02       	add	#2,r6
  c6:	26 1a       	xor	r1,r6
  c8:	36 2d       	dmuls.l	r2,r6
  ca:	6d dd       	extu.w	r13,r13
  cc:	7d 02       	add	#2,r13
  ce:	2d 0a       	xor	r0,r13
  d0:	01 0a       	sts	mach,r1
  d2:	08 1a       	sts	macl,r8
  d4:	36 3d       	dmuls.l	r3,r6
  d6:	c6 26       	mov.l	@(152,gbr),r0
  d8:	28 1d       	xtrct	r1,r8
  da:	6b 03       	mov	r0,r11
  dc:	4b 28       	shll16	r11
  de:	01 0a       	sts	mach,r1
  e0:	09 1a       	sts	macl,r9
  e2:	3d 2d       	dmuls.l	r2,r13
  e4:	29 1d       	xtrct	r1,r9
  e6:	6a 09       	swap.w	r0,r10
  e8:	4a 28       	shll16	r10
  ea:	01 0a       	sts	mach,r1
  ec:	02 1a       	sts	macl,r2
  ee:	3d 3d       	dmuls.l	r3,r13
  f0:	c6 23       	mov.l	@(140,gbr),r0
  f2:	22 1d       	xtrct	r1,r2
  f4:	6d 03       	mov	r0,r13
  f6:	4d 28       	shll16	r13
  f8:	01 0a       	sts	mach,r1
  fa:	03 1a       	sts	macl,r3
  fc:	6c 09       	swap.w	r0,r12
  fe:	4c 28       	shll16	r12
 100:	60 58       	swap.b	r5,r0
 102:	23 1d       	xtrct	r1,r3
 104:	c9 0f       	and	#15,r0
 106:	40 08       	shll2	r0
 108:	61 03       	mov	r0,r1
 10a:	c7 57       	mova	268 <RotModeTbl>,r0
 10c:	01 1e       	mov.l	@(r0,r1),r1
 10e:	56 41       	mov.l	@(4,r4),r6
 110:	41 2b       	jmp	@r1
 112:	54 40       	mov.l	@(0,r4),r4

00000114 <rtsp_01>:
 114:	29 3d       	xtrct	r3,r9

00000116 <SetSprPosition>:
 116:	c6 24       	mov.l	@(144,gbr),r0
 118:	63 0f       	exts.w	r0,r3
 11a:	62 09       	swap.w	r0,r2
 11c:	c6 21       	mov.l	@(132,gbr),r0
 11e:	62 2f       	exts.w	r2,r2
 120:	6d 0d       	extu.w	r0,r13
 122:	6c 09       	swap.w	r0,r12
 124:	60 5f       	exts.w	r5,r0
 126:	30 3c       	add	r3,r0
 128:	30 d2       	cmp/hs	r13,r0
 12a:	8d 05       	bt.s	138 <stspr_01>
 12c:	6c cd       	extu.w	r12,r12
 12e:	60 59       	swap.w	r5,r0
 130:	60 0f       	exts.w	r0,r0
 132:	30 2c       	add	r2,r0
 134:	3c 06       	cmp/hi	r0,r12
 136:	8d 6d       	bt.s	214 <stspr_20>

00000138 <stspr_01>:
 138:	60 1f       	exts.w	r1,r0
 13a:	30 3c       	add	r3,r0
 13c:	30 d2       	cmp/hs	r13,r0
 13e:	8d 04       	bt.s	14a <stspr_02>
 140:	60 19       	swap.w	r1,r0
 142:	60 0f       	exts.w	r0,r0
 144:	30 2c       	add	r2,r0
 146:	3c 06       	cmp/hi	r0,r12
 148:	8d 4c       	bt.s	1e4 <stspr_21>

0000014a <stspr_02>:
 14a:	60 9f       	exts.w	r9,r0
 14c:	30 3c       	add	r3,r0
 14e:	30 d2       	cmp/hs	r13,r0
 150:	8d 04       	bt.s	15c <stspr_03>
 152:	60 99       	swap.w	r9,r0
 154:	60 0f       	exts.w	r0,r0
 156:	30 2c       	add	r2,r0
 158:	3c 06       	cmp/hi	r0,r12
 15a:	8d 4b       	bt.s	1f4 <stspr_22>

0000015c <stspr_03>:
 15c:	60 6f       	exts.w	r6,r0
 15e:	30 3c       	add	r3,r0
 160:	30 d2       	cmp/hs	r13,r0
 162:	8d 04       	bt.s	16e <stspr_04>
 164:	60 69       	swap.w	r6,r0
 166:	60 0f       	exts.w	r0,r0
 168:	30 2c       	add	r2,r0
 16a:	3c 06       	cmp/hi	r0,r12
 16c:	8d 4a       	bt.s	204 <stspr_23>

0000016e <stspr_04>:
 16e:	e8 01       	mov	#1,r8
 170:	48 28       	shll16	r8
 172:	48 01       	shlr	r8
 174:	62 69       	swap.w	r6,r2
 176:	22 88       	tst	r8,r2
 178:	3d da       	subc	r13,r13
 17a:	6d d7       	not	r13,r13
 17c:	2d 2a       	xor	r2,r13
 17e:	26 88       	tst	r8,r6
 180:	32 2a       	subc	r2,r2
 182:	62 27       	not	r2,r2
 184:	22 6a       	xor	r6,r2
 186:	3d 2c       	add	r2,r13
 188:	6d dd       	extu.w	r13,r13
 18a:	c7 1e       	mova	204 <stspr_23>,r0
 18c:	62 99       	swap.w	r9,r2
 18e:	22 88       	tst	r8,r2
 190:	3c ca       	subc	r12,r12
 192:	6c c7       	not	r12,r12
 194:	2c 2a       	xor	r2,r12
 196:	29 88       	tst	r8,r9
 198:	32 2a       	subc	r2,r2
 19a:	62 27       	not	r2,r2
 19c:	22 9a       	xor	r9,r2
 19e:	3c 2c       	add	r2,r12
 1a0:	6c cd       	extu.w	r12,r12
 1a2:	3c d7       	cmp/gt	r13,r12
 1a4:	8d 02       	bt.s	1ac <stspr_10>
 1a6:	62 19       	swap.w	r1,r2
 1a8:	6d c3       	mov	r12,r13
 1aa:	c7 12       	mova	1f4 <stspr_22>,r0

000001ac <stspr_10>:
 1ac:	22 88       	tst	r8,r2
 1ae:	3c ca       	subc	r12,r12
 1b0:	6c c7       	not	r12,r12
 1b2:	2c 2a       	xor	r2,r12
 1b4:	21 88       	tst	r8,r1
 1b6:	32 2a       	subc	r2,r2
 1b8:	62 27       	not	r2,r2
 1ba:	22 1a       	xor	r1,r2
 1bc:	3c 2c       	add	r2,r12
 1be:	6c cd       	extu.w	r12,r12
 1c0:	3c d7       	cmp/gt	r13,r12
 1c2:	8d 02       	bt.s	1ca <stspr_11>
 1c4:	62 59       	swap.w	r5,r2
 1c6:	6d c3       	mov	r12,r13
 1c8:	c7 06       	mova	1e4 <stspr_21>,r0

000001ca <stspr_11>:
 1ca:	22 88       	tst	r8,r2
 1cc:	3c ca       	subc	r12,r12
 1ce:	6c c7       	not	r12,r12
 1d0:	2c 2a       	xor	r2,r12
 1d2:	25 88       	tst	r8,r5
 1d4:	32 2a       	subc	r2,r2
 1d6:	62 27       	not	r2,r2
 1d8:	22 5a       	xor	r5,r2
 1da:	3c 2c       	add	r2,r12
 1dc:	3d c3       	cmp/ge	r12,r13
 1de:	89 19       	bt	214 <stspr_20>
 1e0:	40 2b       	jmp	@r0
 1e2:	00 09       	nop	

000001e4 <stspr_21>:
 1e4:	85 70       	mov.w	@(0,r7),r0
 1e6:	17 54       	mov.l	r5,@(16,r7)
 1e8:	ca 10       	xor	#16,r0
 1ea:	81 70       	mov.w	r0,@(0,r7)
 1ec:	17 13       	mov.l	r1,@(12,r7)
 1ee:	17 96       	mov.l	r9,@(24,r7)
 1f0:	a0 14       	bra	21c <rtsp_02>
 1f2:	17 65       	mov.l	r6,@(20,r7)

000001f4 <stspr_22>:
 1f4:	85 70       	mov.w	@(0,r7),r0
 1f6:	17 55       	mov.l	r5,@(20,r7)
 1f8:	ca 30       	xor	#48,r0
 1fa:	81 70       	mov.w	r0,@(0,r7)
 1fc:	17 16       	mov.l	r1,@(24,r7)
 1fe:	17 93       	mov.l	r9,@(12,r7)
 200:	a0 0c       	bra	21c <rtsp_02>
 202:	17 64       	mov.l	r6,@(16,r7)

00000204 <stspr_23>:
 204:	85 70       	mov.w	@(0,r7),r0
 206:	17 56       	mov.l	r5,@(24,r7)
 208:	ca 20       	xor	#32,r0
 20a:	81 70       	mov.w	r0,@(0,r7)
 20c:	17 15       	mov.l	r1,@(20,r7)
 20e:	17 94       	mov.l	r9,@(16,r7)
 210:	a0 04       	bra	21c <rtsp_02>
 212:	17 63       	mov.l	r6,@(12,r7)

00000214 <stspr_20>:
 214:	17 53       	mov.l	r5,@(12,r7)
 216:	17 14       	mov.l	r1,@(16,r7)
 218:	17 95       	mov.l	r9,@(20,r7)
 21a:	17 66       	mov.l	r6,@(24,r7)

0000021c <rtsp_02>:
 21c:	c6 12       	mov.l	@(72,gbr),r0
 21e:	e1 28       	mov	#40,r1
 220:	10 10       	mov.l	r1,@(0,r0)
 222:	10 71       	mov.l	r7,@(4,r0)
 224:	e1 01       	mov	#1,r1
 226:	10 12       	mov.l	r1,@(8,r0)
 228:	e1 00       	mov	#0,r1
 22a:	10 13       	mov.l	r1,@(12,r0)
 22c:	70 10       	add	#16,r0
 22e:	d1 0d       	mov.l	264 <IMM_FRT_INTR>,r1	! 21000000
 230:	c2 12       	mov.l	r0,@(72,gbr)
 232:	21 01       	mov.w	r0,@r1
 234:	68 f6       	mov.l	@r15+,r8
 236:	69 f6       	mov.l	@r15+,r9
 238:	6a f6       	mov.l	@r15+,r10
 23a:	6b f6       	mov.l	@r15+,r11
 23c:	6c f6       	mov.l	@r15+,r12
 23e:	6d f6       	mov.l	@r15+,r13
 240:	6e f6       	mov.l	@r15+,r14
 242:	77 dc       	add	#-36,r7
 244:	60 73       	mov	r7,r0
 246:	c2 0c       	mov.l	r0,@(48,gbr)
 248:	00 0b       	rts	
 24a:	e0 01       	mov	#1,r0

0000024c <IMM_3ffe>:
 24c:	3f fe       	addc	r15,r15
	...

00000250 <IMM_sin_tbl>:
 250:	00 00       	.word 0x0000
	...

00000254 <scidx_tbl>:
 254:	00 ff       	mac.l	@r15+,@r0+
 256:	00 00       	.word 0x0000
 258:	ff 00       	fadd	fr0,fr15
 25a:	00 ff       	mac.l	@r15+,@r0+
 25c:	00 ff       	mac.l	@r15+,@r0+
 25e:	ff ff       	.word 0xffff
 260:	ff 00       	fadd	fr0,fr15
 262:	ff 00       	fadd	fr0,fr15

00000264 <IMM_FRT_INTR>:
 264:	21 00       	mov.b	r0,@r1
	...

00000268 <RotModeTbl>:
 268:	00 00       	.word 0x0000
 26a:	02 a8       	.word 0x02a8
 26c:	00 00       	.word 0x0000
 26e:	02 a8       	.word 0x02a8
 270:	00 00       	.word 0x0000
 272:	02 a8       	.word 0x02a8
 274:	00 00       	.word 0x0000
 276:	02 a8       	.word 0x02a8
 278:	00 00       	.word 0x0000
 27a:	02 a8       	.word 0x02a8
 27c:	00 00       	.word 0x0000
 27e:	03 42       	stc	spc,r3
 280:	00 00       	.word 0x0000
 282:	04 30       	.word 0x0430
 284:	00 00       	.word 0x0000
 286:	03 3a       	stc	sgr,r3
 288:	00 00       	.word 0x0000
 28a:	02 a8       	.word 0x02a8
 28c:	00 00       	.word 0x0000
 28e:	03 bc       	mov.b	@(r0,r11),r3
 290:	00 00       	.word 0x0000
 292:	02 b2       	stc	r3_bank,r2
 294:	00 00       	.word 0x0000
 296:	03 b4       	mov.b	r11,@(r0,r3)
 298:	00 00       	.word 0x0000
 29a:	02 a8       	.word 0x02a8
 29c:	00 00       	.word 0x0000
 29e:	03 2a       	sts	pr,r3
 2a0:	00 00       	.word 0x0000
 2a2:	04 28       	.word 0x0428
 2a4:	00 00       	.word 0x0000
 2a6:	03 32       	stc	ssr,r3

000002a8 <rtsp_0000>:
 2a8:	65 58       	swap.b	r5,r5
 2aa:	e0 f0       	mov	#-16,r0
 2ac:	20 59       	and	r5,r0
 2ae:	cb 0a       	or	#10,r0
 2b0:	65 08       	swap.b	r0,r5

000002b2 <rtsp_1010>:
 2b2:	60 23       	mov	r2,r0
 2b4:	40 21       	shar	r0
 2b6:	34 08       	sub	r0,r4
 2b8:	60 93       	mov	r9,r0
 2ba:	40 21       	shar	r0
 2bc:	34 0c       	add	r0,r4
 2be:	60 43       	mov	r4,r0
 2c0:	30 ac       	add	r10,r0
 2c2:	30 c6       	cmp/hi	r12,r0
 2c4:	8d 6d       	bt.s	3a2 <rtsp_90>
 2c6:	60 33       	mov	r3,r0
 2c8:	40 21       	shar	r0
 2ca:	36 08       	sub	r0,r6
 2cc:	60 83       	mov	r8,r0
 2ce:	40 21       	shar	r0
 2d0:	36 08       	sub	r0,r6
 2d2:	60 63       	mov	r6,r0
 2d4:	30 bc       	add	r11,r0
 2d6:	30 d6       	cmp/hi	r13,r0
 2d8:	8d 63       	bt.s	3a2 <rtsp_90>
 2da:	61 49       	swap.w	r4,r1
 2dc:	34 2c       	add	r2,r4
 2de:	60 43       	mov	r4,r0
 2e0:	30 ac       	add	r10,r0
 2e2:	30 c6       	cmp/hi	r12,r0
 2e4:	8d 5d       	bt.s	3a2 <rtsp_90>
 2e6:	27 51       	mov.w	r5,@r7
 2e8:	65 63       	mov	r6,r5
 2ea:	36 8c       	add	r8,r6
 2ec:	60 63       	mov	r6,r0
 2ee:	30 bc       	add	r11,r0
 2f0:	30 d6       	cmp/hi	r13,r0
 2f2:	8d 56       	bt.s	3a2 <rtsp_90>
 2f4:	25 1d       	xtrct	r1,r5
 2f6:	60 49       	swap.w	r4,r0
 2f8:	61 63       	mov	r6,r1
 2fa:	21 0d       	xtrct	r0,r1
 2fc:	34 98       	sub	r9,r4
 2fe:	60 43       	mov	r4,r0
 300:	30 ac       	add	r10,r0
 302:	30 c6       	cmp/hi	r12,r0
 304:	8d 4d       	bt.s	3a2 <rtsp_90>
 306:	36 3c       	add	r3,r6
 308:	60 63       	mov	r6,r0
 30a:	30 bc       	add	r11,r0
 30c:	30 d6       	cmp/hi	r13,r0
 30e:	8d 48       	bt.s	3a2 <rtsp_90>
 310:	63 49       	swap.w	r4,r3
 312:	34 28       	sub	r2,r4
 314:	3a 4c       	add	r4,r10
 316:	3a c6       	cmp/hi	r12,r10
 318:	8d 43       	bt.s	3a2 <rtsp_90>
 31a:	69 63       	mov	r6,r9
 31c:	36 88       	sub	r8,r6
 31e:	3b 6c       	add	r6,r11
 320:	3b d6       	cmp/hi	r13,r11
 322:	8d 3e       	bt.s	3a2 <rtsp_90>
 324:	64 49       	swap.w	r4,r4
 326:	ae f5       	bra	114 <rtsp_01>
 328:	26 4d       	xtrct	r4,r6

0000032a <rtsp_1101>:
 32a:	e1 20       	mov	#32,r1
 32c:	63 3b       	neg	r3,r3
 32e:	a0 07       	bra	340 <rtsp_Vert>
 330:	69 9b       	neg	r9,r9

00000332 <rtsp_1111>:
 332:	e1 30       	mov	#48,r1
 334:	63 3b       	neg	r3,r3
 336:	a0 01       	bra	33c <rtsp_Vert0>
 338:	69 9b       	neg	r9,r9

0000033a <rtsp_0111>:
 33a:	e1 10       	mov	#16,r1

0000033c <rtsp_Vert0>:
 33c:	62 2b       	neg	r2,r2
 33e:	68 8b       	neg	r8,r8

00000340 <rtsp_Vert>:
 340:	25 1a       	xor	r1,r5

00000342 <rtsp_0101>:
 342:	60 43       	mov	r4,r0
 344:	30 ac       	add	r10,r0
 346:	30 c6       	cmp/hi	r12,r0
 348:	8d 2b       	bt.s	3a2 <rtsp_90>
 34a:	60 63       	mov	r6,r0
 34c:	30 bc       	add	r11,r0
 34e:	30 d6       	cmp/hi	r13,r0
 350:	8d 27       	bt.s	3a2 <rtsp_90>
 352:	61 49       	swap.w	r4,r1
 354:	34 2c       	add	r2,r4
 356:	60 43       	mov	r4,r0
 358:	30 ac       	add	r10,r0
 35a:	30 c6       	cmp/hi	r12,r0
 35c:	8d 21       	bt.s	3a2 <rtsp_90>
 35e:	27 51       	mov.w	r5,@r7
 360:	65 63       	mov	r6,r5
 362:	36 8c       	add	r8,r6
 364:	60 63       	mov	r6,r0
 366:	30 bc       	add	r11,r0
 368:	30 d6       	cmp/hi	r13,r0
 36a:	8d 1a       	bt.s	3a2 <rtsp_90>
 36c:	60 49       	swap.w	r4,r0
 36e:	25 1d       	xtrct	r1,r5
 370:	61 63       	mov	r6,r1
 372:	21 0d       	xtrct	r0,r1
 374:	34 98       	sub	r9,r4
 376:	60 43       	mov	r4,r0
 378:	30 ac       	add	r10,r0
 37a:	30 c6       	cmp/hi	r12,r0
 37c:	8d 11       	bt.s	3a2 <rtsp_90>
 37e:	36 3c       	add	r3,r6
 380:	60 63       	mov	r6,r0
 382:	30 bc       	add	r11,r0
 384:	30 d6       	cmp/hi	r13,r0
 386:	8d 0c       	bt.s	3a2 <rtsp_90>
 388:	63 49       	swap.w	r4,r3
 38a:	34 28       	sub	r2,r4
 38c:	3a 4c       	add	r4,r10
 38e:	3a c6       	cmp/hi	r12,r10
 390:	8d 07       	bt.s	3a2 <rtsp_90>
 392:	69 63       	mov	r6,r9
 394:	36 88       	sub	r8,r6
 396:	3b 6c       	add	r6,r11
 398:	3b d6       	cmp/hi	r13,r11
 39a:	8d 02       	bt.s	3a2 <rtsp_90>
 39c:	64 49       	swap.w	r4,r4
 39e:	ae b9       	bra	114 <rtsp_01>
 3a0:	26 4d       	xtrct	r4,r6

000003a2 <rtsp_90>:
 3a2:	68 f6       	mov.l	@r15+,r8
 3a4:	69 f6       	mov.l	@r15+,r9
 3a6:	6a f6       	mov.l	@r15+,r10
 3a8:	6b f6       	mov.l	@r15+,r11
 3aa:	6c f6       	mov.l	@r15+,r12
 3ac:	6d f6       	mov.l	@r15+,r13
 3ae:	6e f6       	mov.l	@r15+,r14
 3b0:	00 0b       	rts	
 3b2:	e0 00       	mov	#0,r0

000003b4 <rtsp_1011>:
 3b4:	e1 10       	mov	#16,r1
 3b6:	25 1a       	xor	r1,r5
 3b8:	62 2b       	neg	r2,r2
 3ba:	68 8b       	neg	r8,r8

000003bc <rtsp_1001>:
 3bc:	60 93       	mov	r9,r0
 3be:	40 21       	shar	r0
 3c0:	34 0c       	add	r0,r4
 3c2:	60 43       	mov	r4,r0
 3c4:	30 ac       	add	r10,r0
 3c6:	30 c6       	cmp/hi	r12,r0
 3c8:	8d 68       	bt.s	49c <rtsp_99>
 3ca:	60 33       	mov	r3,r0
 3cc:	40 21       	shar	r0
 3ce:	36 08       	sub	r0,r6
 3d0:	60 63       	mov	r6,r0
 3d2:	30 bc       	add	r11,r0
 3d4:	30 d6       	cmp/hi	r13,r0
 3d6:	8d 61       	bt.s	49c <rtsp_99>
 3d8:	61 49       	swap.w	r4,r1
 3da:	34 2c       	add	r2,r4
 3dc:	60 43       	mov	r4,r0
 3de:	30 ac       	add	r10,r0
 3e0:	30 c6       	cmp/hi	r12,r0
 3e2:	8d 5b       	bt.s	49c <rtsp_99>
 3e4:	27 51       	mov.w	r5,@r7
 3e6:	65 63       	mov	r6,r5
 3e8:	36 8c       	add	r8,r6
 3ea:	60 63       	mov	r6,r0
 3ec:	30 bc       	add	r11,r0
 3ee:	30 d6       	cmp/hi	r13,r0
 3f0:	8d 54       	bt.s	49c <rtsp_99>
 3f2:	60 49       	swap.w	r4,r0
 3f4:	25 1d       	xtrct	r1,r5
 3f6:	61 63       	mov	r6,r1
 3f8:	21 0d       	xtrct	r0,r1
 3fa:	34 98       	sub	r9,r4
 3fc:	60 43       	mov	r4,r0
 3fe:	30 ac       	add	r10,r0
 400:	30 c6       	cmp/hi	r12,r0
 402:	8d 4b       	bt.s	49c <rtsp_99>
 404:	36 3c       	add	r3,r6
 406:	60 63       	mov	r6,r0
 408:	30 bc       	add	r11,r0
 40a:	30 d6       	cmp/hi	r13,r0
 40c:	8d 46       	bt.s	49c <rtsp_99>
 40e:	63 49       	swap.w	r4,r3
 410:	34 28       	sub	r2,r4
 412:	3a 4c       	add	r4,r10
 414:	3a c6       	cmp/hi	r12,r10
 416:	8d 41       	bt.s	49c <rtsp_99>
 418:	69 63       	mov	r6,r9
 41a:	36 88       	sub	r8,r6
 41c:	3b 6c       	add	r6,r11
 41e:	3b d6       	cmp/hi	r13,r11
 420:	8d 3c       	bt.s	49c <rtsp_99>
 422:	64 49       	swap.w	r4,r4
 424:	ae 76       	bra	114 <rtsp_01>
 426:	26 4d       	xtrct	r4,r6

00000428 <rtsp_1110>:
 428:	e1 20       	mov	#32,r1
 42a:	25 1a       	xor	r1,r5
 42c:	63 3b       	neg	r3,r3
 42e:	69 9b       	neg	r9,r9

00000430 <rtsp_0110>:
 430:	60 23       	mov	r2,r0
 432:	40 21       	shar	r0
 434:	34 08       	sub	r0,r4
 436:	60 43       	mov	r4,r0
 438:	30 ac       	add	r10,r0
 43a:	30 c6       	cmp/hi	r12,r0
 43c:	8d 2e       	bt.s	49c <rtsp_99>
 43e:	60 83       	mov	r8,r0
 440:	40 21       	shar	r0
 442:	36 08       	sub	r0,r6
 444:	60 63       	mov	r6,r0
 446:	30 bc       	add	r11,r0
 448:	30 d6       	cmp/hi	r13,r0
 44a:	8d 27       	bt.s	49c <rtsp_99>
 44c:	61 49       	swap.w	r4,r1
 44e:	34 2c       	add	r2,r4
 450:	60 43       	mov	r4,r0
 452:	30 ac       	add	r10,r0
 454:	30 c6       	cmp/hi	r12,r0
 456:	8d 21       	bt.s	49c <rtsp_99>
 458:	27 51       	mov.w	r5,@r7
 45a:	65 63       	mov	r6,r5
 45c:	36 8c       	add	r8,r6
 45e:	60 63       	mov	r6,r0
 460:	30 bc       	add	r11,r0
 462:	30 d6       	cmp/hi	r13,r0
 464:	8d 1a       	bt.s	49c <rtsp_99>
 466:	60 49       	swap.w	r4,r0
 468:	25 1d       	xtrct	r1,r5
 46a:	61 63       	mov	r6,r1
 46c:	21 0d       	xtrct	r0,r1
 46e:	34 98       	sub	r9,r4
 470:	60 43       	mov	r4,r0
 472:	30 ac       	add	r10,r0
 474:	30 c6       	cmp/hi	r12,r0
 476:	8d 11       	bt.s	49c <rtsp_99>
 478:	36 3c       	add	r3,r6
 47a:	60 63       	mov	r6,r0
 47c:	30 bc       	add	r11,r0
 47e:	30 d6       	cmp/hi	r13,r0
 480:	8d 0c       	bt.s	49c <rtsp_99>
 482:	63 49       	swap.w	r4,r3
 484:	34 28       	sub	r2,r4
 486:	3a 4c       	add	r4,r10
 488:	3a c6       	cmp/hi	r12,r10
 48a:	8d 07       	bt.s	49c <rtsp_99>
 48c:	69 63       	mov	r6,r9
 48e:	36 88       	sub	r8,r6
 490:	3b 6c       	add	r6,r11
 492:	3b d6       	cmp/hi	r13,r11
 494:	8d 02       	bt.s	49c <rtsp_99>
 496:	64 49       	swap.w	r4,r4
 498:	ae 3c       	bra	114 <rtsp_01>
 49a:	26 4d       	xtrct	r4,r6

0000049c <rtsp_99>:
 49c:	68 f6       	mov.l	@r15+,r8
 49e:	69 f6       	mov.l	@r15+,r9
 4a0:	6a f6       	mov.l	@r15+,r10
 4a2:	6b f6       	mov.l	@r15+,r11
 4a4:	6c f6       	mov.l	@r15+,r12
 4a6:	6d f6       	mov.l	@r15+,r13
 4a8:	6e f6       	mov.l	@r15+,r14
 4aa:	00 0b       	rts	
 4ac:	e0 00       	mov	#0,r0
