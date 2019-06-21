
sglJ04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <EntryZbuf>:
   0:	61 0d       	extu.w	r0,r1
   2:	65 09       	swap.w	r0,r5
   4:	c5 50       	mov.w	@(160,gbr),r0
   6:	31 06       	cmp/hi	r0,r1
   8:	89 26       	bt	58 <OverZps>
   a:	c6 0d       	mov.l	@(52,gbr),r0
   c:	6b 03       	mov	r0,r11
   e:	c4 a9       	mov.b	@(169,gbr),r0
  10:	2b 51       	mov.w	r5,@r11
  12:	c8 01       	tst	#1,r0
  14:	8f 01       	bf.s	1a <enzbf_00>
  16:	e3 20       	mov	#32,r3
  18:	e3 10       	mov	#16,r3

0000001a <enzbf_00>:
  1a:	20 3b       	or	r3,r0
  1c:	c0 a9       	mov.b	r0,@(169,gbr)
  1e:	60 13       	mov	r1,r0
  20:	81 bf       	mov.w	r0,@(30,r11)
  22:	41 19       	shlr8	r1
  24:	c6 0e       	mov.l	@(56,gbr),r0
  26:	41 08       	shll2	r1
  28:	02 1e       	mov.l	@(r0,r1),r2
  2a:	01 b6       	mov.l	r11,@(r0,r1)
  2c:	1b 28       	mov.l	r2,@(32,r11)
  2e:	74 fc       	add	#-4,r4
  30:	85 43       	mov.w	@(6,r4),r0
  32:	81 be       	mov.w	r0,@(28,r11)
  34:	52 42       	mov.l	@(8,r4),r2
  36:	85 42       	mov.w	@(4,r4),r0
  38:	1b 21       	mov.l	r2,@(4,r11)
  3a:	61 0d       	extu.w	r0,r1
  3c:	c6 0f       	mov.l	@(60,gbr),r0
  3e:	41 08       	shll2	r1
  40:	41 00       	shll	r1
  42:	31 0c       	add	r0,r1
  44:	62 15       	mov.w	@r1+,r2
  46:	50 45       	mov.l	@(20,r4),r0
  48:	63 15       	mov.w	@r1+,r3
  4a:	00 27       	mul.l	r2,r0
  4c:	61 12       	mov.l	@r1,r1
  4e:	1b 12       	mov.l	r1,@(8,r11)
  50:	02 1a       	sts	macl,r2
  52:	00 37       	mul.l	r3,r0
  54:	00 0b       	rts	
  56:	03 1a       	sts	macl,r3

00000058 <OverZps>:
  58:	4f 26       	lds.l	@r15+,pr
  5a:	00 0b       	rts	
  5c:	34 2c       	add	r2,r4

0000005e <_sbMakeSprite>:
  5e:	4f 22       	sts.l	pr,@-r15
  60:	bf ce       	bsr	0 <EntryZbuf>
  62:	e2 14       	mov	#20,r2
  64:	85 46       	mov.w	@(12,r4),r0
  66:	51 44       	mov.l	@(16,r4),r1
  68:	67 03       	mov	r0,r7
  6a:	c5 4e       	mov.w	@(156,gbr),r0
  6c:	66 73       	mov	r7,r6
  6e:	36 0c       	add	r0,r6
  70:	c5 46       	mov.w	@(140,gbr),r0
  72:	42 29       	shlr16	r2
  74:	36 06       	cmp/hi	r0,r6
  76:	8d 1c       	bt.s	b2 <mkspr_09>
  78:	74 18       	add	#24,r4
  7a:	c5 4f       	mov.w	@(158,gbr),r0
  7c:	66 19       	swap.w	r1,r6
  7e:	66 6f       	exts.w	r6,r6
  80:	36 0c       	add	r0,r6
  82:	c5 47       	mov.w	@(142,gbr),r0
  84:	21 7d       	xtrct	r7,r1
  86:	36 06       	cmp/hi	r0,r6
  88:	8d 13       	bt.s	b2 <mkspr_09>
  8a:	23 2d       	xtrct	r2,r3
  8c:	1b 13       	mov.l	r1,@(12,r11)
  8e:	1b 34       	mov.l	r3,@(16,r11)
  90:	e1 f0       	mov	#-16,r1
  92:	25 19       	and	r1,r5
  94:	75 01       	add	#1,r5
  96:	60 58       	swap.b	r5,r0
  98:	c8 03       	tst	#3,r0
  9a:	8f 03       	bf.s	a4 <mkspr_01>
  9c:	c8 0c       	tst	#12,r0
  9e:	cb 02       	or	#2,r0
  a0:	8b 00       	bf	a4 <mkspr_01>
  a2:	cb 08       	or	#8,r0

000000a4 <mkspr_01>:
  a4:	60 08       	swap.b	r0,r0
  a6:	81 b0       	mov.w	r0,@(0,r11)
  a8:	60 b3       	mov	r11,r0
  aa:	4f 26       	lds.l	@r15+,pr
  ac:	70 24       	add	#36,r0
  ae:	00 0b       	rts	
  b0:	c2 0d       	mov.l	r0,@(52,gbr)

000000b2 <mkspr_09>:
  b2:	85 bf       	mov.w	@(30,r11),r0
  b4:	51 b8       	mov.l	@(32,r11),r1
  b6:	62 08       	swap.b	r0,r2
  b8:	c6 0e       	mov.l	@(56,gbr),r0
  ba:	62 2c       	extu.b	r2,r2
  bc:	4f 26       	lds.l	@r15+,pr
  be:	42 08       	shll2	r2
  c0:	00 0b       	rts	
  c2:	02 16       	mov.l	r1,@(r0,r2)

000000c4 <_sbMakeRotSprite>:
  c4:	4f 22       	sts.l	pr,@-r15
  c6:	bf 9b       	bsr	0 <EntryZbuf>
  c8:	e2 1c       	mov	#28,r2
  ca:	57 46       	mov.l	@(24,r4),r7
  cc:	4f 26       	lds.l	@r15+,pr
  ce:	37 2d       	dmuls.l	r2,r7
  d0:	c6 23       	mov.l	@(140,gbr),r0
  d2:	58 47       	mov.l	@(28,r4),r8
  d4:	6e 03       	mov	r0,r14
  d6:	01 0a       	sts	mach,r1
  d8:	06 1a       	sts	macl,r6
  da:	37 3d       	dmuls.l	r3,r7
  dc:	4e 28       	shll16	r14
  de:	40 29       	shlr16	r0
  e0:	26 1d       	xtrct	r1,r6
  e2:	01 0a       	sts	mach,r1
  e4:	07 1a       	sts	macl,r7
  e6:	38 2d       	dmuls.l	r2,r8
  e8:	6d 09       	swap.w	r0,r13
  ea:	c6 27       	mov.l	@(156,gbr),r0
  ec:	27 1d       	xtrct	r1,r7
  ee:	01 0a       	sts	mach,r1
  f0:	02 1a       	sts	macl,r2
  f2:	38 3d       	dmuls.l	r3,r8
  f4:	6c 03       	mov	r0,r12
  f6:	4c 28       	shll16	r12
  f8:	22 1d       	xtrct	r1,r2
  fa:	01 0a       	sts	mach,r1
  fc:	03 1a       	sts	macl,r3
  fe:	40 29       	shlr16	r0
 100:	6a 09       	swap.w	r0,r10
 102:	23 1d       	xtrct	r1,r3
 104:	60 58       	swap.b	r5,r0
 106:	c9 0f       	and	#15,r0
 108:	61 03       	mov	r0,r1
 10a:	41 08       	shll2	r1
 10c:	c7 02       	mova	118 <ZoomBaseTable>,r0
 10e:	01 1e       	mov.l	@(r0,r1),r1
 110:	58 43       	mov.l	@(12,r4),r8
 112:	41 2b       	jmp	@r1
 114:	59 44       	mov.l	@(16,r4),r9
	...

00000118 <ZoomBaseTable>:
 118:	00 00       	.word 0x0000
 11a:	02 de       	mov.l	@(r0,r13),r2
 11c:	00 00       	.word 0x0000
 11e:	02 de       	mov.l	@(r0,r13),r2
 120:	00 00       	.word 0x0000
 122:	02 de       	mov.l	@(r0,r13),r2
 124:	00 00       	.word 0x0000
 126:	02 de       	mov.l	@(r0,r13),r2
 128:	00 00       	.word 0x0000
 12a:	02 de       	mov.l	@(r0,r13),r2
 12c:	00 00       	.word 0x0000
 12e:	01 f8       	.word 0x01f8
 130:	00 00       	.word 0x0000
 132:	01 62       	stc	r6_bank,r1
 134:	00 00       	.word 0x0000
 136:	01 ee       	mov.l	@(r0,r14),r1
 138:	00 00       	.word 0x0000
 13a:	02 de       	mov.l	@(r0,r13),r2
 13c:	00 00       	.word 0x0000
 13e:	02 62       	stc	r6_bank,r2
 140:	00 00       	.word 0x0000
 142:	02 ea       	.word 0x02ea
 144:	00 00       	.word 0x0000
 146:	02 58       	.word 0x0258
 148:	00 00       	.word 0x0000
 14a:	02 de       	mov.l	@(r0,r13),r2
 14c:	00 00       	.word 0x0000
 14e:	01 de       	mov.l	@(r0,r13),r1
 150:	00 00       	.word 0x0000
 152:	01 58       	.word 0x0158
 154:	00 00       	.word 0x0000
 156:	01 e6       	mov.l	r14,@(r0,r1)

00000158 <Zoom_CB>:
 158:	e1 20       	mov	#32,r1
 15a:	25 1a       	xor	r1,r5
 15c:	2b 51       	mov.w	r5,@r11
 15e:	63 3b       	neg	r3,r3
 160:	67 7b       	neg	r7,r7

00000162 <Zoom_CT>:
 162:	60 23       	mov	r2,r0
 164:	40 21       	shar	r0
 166:	38 08       	sub	r0,r8
 168:	60 83       	mov	r8,r0
 16a:	30 ac       	add	r10,r0
 16c:	30 d6       	cmp/hi	r13,r0
 16e:	8d 2e       	bt.s	1ce <mkspr_15>
 170:	74 20       	add	#32,r4
 172:	60 63       	mov	r6,r0
 174:	40 21       	shar	r0
 176:	39 08       	sub	r0,r9
 178:	60 93       	mov	r9,r0
 17a:	30 cc       	add	r12,r0
 17c:	30 e6       	cmp/hi	r14,r0
 17e:	8d 26       	bt.s	1ce <mkspr_15>
 180:	61 89       	swap.w	r8,r1
 182:	38 2c       	add	r2,r8
 184:	60 83       	mov	r8,r0
 186:	30 ac       	add	r10,r0
 188:	30 d6       	cmp/hi	r13,r0
 18a:	8d 20       	bt.s	1ce <mkspr_15>
 18c:	65 93       	mov	r9,r5
 18e:	39 6c       	add	r6,r9
 190:	60 93       	mov	r9,r0
 192:	30 cc       	add	r12,r0
 194:	30 e6       	cmp/hi	r14,r0
 196:	8d 1a       	bt.s	1ce <mkspr_15>
 198:	60 89       	swap.w	r8,r0
 19a:	25 1d       	xtrct	r1,r5
 19c:	61 93       	mov	r9,r1
 19e:	21 0d       	xtrct	r0,r1
 1a0:	38 78       	sub	r7,r8
 1a2:	60 83       	mov	r8,r0
 1a4:	30 ac       	add	r10,r0
 1a6:	30 d6       	cmp/hi	r13,r0
 1a8:	8d 11       	bt.s	1ce <mkspr_15>
 1aa:	39 3c       	add	r3,r9
 1ac:	60 93       	mov	r9,r0
 1ae:	30 cc       	add	r12,r0
 1b0:	30 e6       	cmp/hi	r14,r0
 1b2:	8d 0c       	bt.s	1ce <mkspr_15>
 1b4:	63 89       	swap.w	r8,r3
 1b6:	38 28       	sub	r2,r8
 1b8:	3a 8c       	add	r8,r10
 1ba:	3a d6       	cmp/hi	r13,r10
 1bc:	8d 07       	bt.s	1ce <mkspr_15>
 1be:	67 93       	mov	r9,r7
 1c0:	39 68       	sub	r6,r9
 1c2:	3c 9c       	add	r9,r12
 1c4:	3c e6       	cmp/hi	r14,r12
 1c6:	8d 02       	bt.s	1ce <mkspr_15>
 1c8:	27 3d       	xtrct	r3,r7
 1ca:	a0 c9       	bra	360 <stspr_00>
 1cc:	68 89       	swap.w	r8,r8

000001ce <mkspr_15>:
 1ce:	85 bf       	mov.w	@(30,r11),r0
 1d0:	51 b8       	mov.l	@(32,r11),r1
 1d2:	62 08       	swap.b	r0,r2
 1d4:	c6 0e       	mov.l	@(56,gbr),r0
 1d6:	62 2c       	extu.b	r2,r2
 1d8:	42 08       	shll2	r2
 1da:	00 0b       	rts	
 1dc:	02 16       	mov.l	r1,@(r0,r2)

000001de <Zoom_LB>:
 1de:	e1 20       	mov	#32,r1
 1e0:	63 3b       	neg	r3,r3
 1e2:	a0 07       	bra	1f4 <Zoom_Vert>
 1e4:	67 7b       	neg	r7,r7

000001e6 <Zoom_RB>:
 1e6:	e1 30       	mov	#48,r1
 1e8:	63 3b       	neg	r3,r3
 1ea:	a0 01       	bra	1f0 <Zoom_RBT>
 1ec:	67 7b       	neg	r7,r7

000001ee <Zoom_RT>:
 1ee:	e1 10       	mov	#16,r1

000001f0 <Zoom_RBT>:
 1f0:	62 2b       	neg	r2,r2
 1f2:	66 6b       	neg	r6,r6

000001f4 <Zoom_Vert>:
 1f4:	25 1a       	xor	r1,r5
 1f6:	2b 51       	mov.w	r5,@r11

000001f8 <Zoom_LT>:
 1f8:	60 83       	mov	r8,r0
 1fa:	30 ac       	add	r10,r0
 1fc:	30 d6       	cmp/hi	r13,r0
 1fe:	8d e6       	bt.s	1ce <mkspr_15>
 200:	74 20       	add	#32,r4
 202:	60 93       	mov	r9,r0
 204:	30 cc       	add	r12,r0
 206:	30 e6       	cmp/hi	r14,r0
 208:	8d e1       	bt.s	1ce <mkspr_15>
 20a:	60 89       	swap.w	r8,r0
 20c:	65 93       	mov	r9,r5
 20e:	25 0d       	xtrct	r0,r5
 210:	38 2c       	add	r2,r8
 212:	60 83       	mov	r8,r0
 214:	30 ac       	add	r10,r0
 216:	30 d6       	cmp/hi	r13,r0
 218:	8d d9       	bt.s	1ce <mkspr_15>
 21a:	39 6c       	add	r6,r9
 21c:	60 93       	mov	r9,r0
 21e:	30 cc       	add	r12,r0
 220:	30 e6       	cmp/hi	r14,r0
 222:	8d d4       	bt.s	1ce <mkspr_15>
 224:	60 89       	swap.w	r8,r0
 226:	61 93       	mov	r9,r1
 228:	21 0d       	xtrct	r0,r1
 22a:	38 78       	sub	r7,r8
 22c:	60 83       	mov	r8,r0
 22e:	30 ac       	add	r10,r0
 230:	30 d6       	cmp/hi	r13,r0
 232:	8d cc       	bt.s	1ce <mkspr_15>
 234:	39 3c       	add	r3,r9
 236:	60 93       	mov	r9,r0
 238:	30 cc       	add	r12,r0
 23a:	30 e6       	cmp/hi	r14,r0
 23c:	8d c7       	bt.s	1ce <mkspr_15>
 23e:	63 89       	swap.w	r8,r3
 240:	38 28       	sub	r2,r8
 242:	3a 8c       	add	r8,r10
 244:	3a d6       	cmp/hi	r13,r10
 246:	8d c2       	bt.s	1ce <mkspr_15>
 248:	67 93       	mov	r9,r7
 24a:	39 68       	sub	r6,r9
 24c:	3c 9c       	add	r9,r12
 24e:	3c e6       	cmp/hi	r14,r12
 250:	8d bd       	bt.s	1ce <mkspr_15>
 252:	27 3d       	xtrct	r3,r7
 254:	a0 84       	bra	360 <stspr_00>
 256:	68 89       	swap.w	r8,r8

00000258 <Zoom_RC>:
 258:	e1 10       	mov	#16,r1
 25a:	25 1a       	xor	r1,r5
 25c:	2b 51       	mov.w	r5,@r11
 25e:	62 2b       	neg	r2,r2
 260:	66 6b       	neg	r6,r6

00000262 <Zoom_LC>:
 262:	60 73       	mov	r7,r0
 264:	40 21       	shar	r0
 266:	38 0c       	add	r0,r8
 268:	60 83       	mov	r8,r0
 26a:	30 ac       	add	r10,r0
 26c:	30 d6       	cmp/hi	r13,r0
 26e:	8d 2e       	bt.s	2ce <mkspr_19>
 270:	74 20       	add	#32,r4
 272:	60 33       	mov	r3,r0
 274:	40 21       	shar	r0
 276:	39 08       	sub	r0,r9
 278:	60 93       	mov	r9,r0
 27a:	30 cc       	add	r12,r0
 27c:	30 e6       	cmp/hi	r14,r0
 27e:	8d 26       	bt.s	2ce <mkspr_19>
 280:	61 89       	swap.w	r8,r1
 282:	38 2c       	add	r2,r8
 284:	60 83       	mov	r8,r0
 286:	30 ac       	add	r10,r0
 288:	30 d6       	cmp/hi	r13,r0
 28a:	8d 20       	bt.s	2ce <mkspr_19>
 28c:	65 93       	mov	r9,r5
 28e:	39 6c       	add	r6,r9
 290:	60 93       	mov	r9,r0
 292:	30 cc       	add	r12,r0
 294:	30 e6       	cmp/hi	r14,r0
 296:	8d 1a       	bt.s	2ce <mkspr_19>
 298:	60 89       	swap.w	r8,r0
 29a:	25 1d       	xtrct	r1,r5
 29c:	61 93       	mov	r9,r1
 29e:	21 0d       	xtrct	r0,r1
 2a0:	38 78       	sub	r7,r8
 2a2:	60 83       	mov	r8,r0
 2a4:	30 ac       	add	r10,r0
 2a6:	30 d6       	cmp/hi	r13,r0
 2a8:	8d 11       	bt.s	2ce <mkspr_19>
 2aa:	39 3c       	add	r3,r9
 2ac:	60 93       	mov	r9,r0
 2ae:	30 cc       	add	r12,r0
 2b0:	30 e6       	cmp/hi	r14,r0
 2b2:	8d 0c       	bt.s	2ce <mkspr_19>
 2b4:	63 89       	swap.w	r8,r3
 2b6:	38 28       	sub	r2,r8
 2b8:	3a 8c       	add	r8,r10
 2ba:	3a d6       	cmp/hi	r13,r10
 2bc:	8d 07       	bt.s	2ce <mkspr_19>
 2be:	67 93       	mov	r9,r7
 2c0:	39 68       	sub	r6,r9
 2c2:	3c 9c       	add	r9,r12
 2c4:	3c e6       	cmp/hi	r14,r12
 2c6:	8d 02       	bt.s	2ce <mkspr_19>
 2c8:	27 3d       	xtrct	r3,r7
 2ca:	a0 49       	bra	360 <stspr_00>
 2cc:	68 89       	swap.w	r8,r8

000002ce <mkspr_19>:
 2ce:	85 bf       	mov.w	@(30,r11),r0
 2d0:	51 b8       	mov.l	@(32,r11),r1
 2d2:	62 08       	swap.b	r0,r2
 2d4:	c6 0e       	mov.l	@(56,gbr),r0
 2d6:	62 2c       	extu.b	r2,r2
 2d8:	42 08       	shll2	r2
 2da:	00 0b       	rts	
 2dc:	02 16       	mov.l	r1,@(r0,r2)

000002de <Zoom_ZZ>:
 2de:	65 58       	swap.b	r5,r5
 2e0:	e0 f0       	mov	#-16,r0
 2e2:	20 59       	and	r5,r0
 2e4:	cb 0a       	or	#10,r0
 2e6:	60 08       	swap.b	r0,r0
 2e8:	81 b0       	mov.w	r0,@(0,r11)

000002ea <Zoom_CC>:
 2ea:	60 23       	mov	r2,r0
 2ec:	40 21       	shar	r0
 2ee:	38 08       	sub	r0,r8
 2f0:	60 73       	mov	r7,r0
 2f2:	40 21       	shar	r0
 2f4:	38 0c       	add	r0,r8
 2f6:	60 83       	mov	r8,r0
 2f8:	30 ac       	add	r10,r0
 2fa:	30 d6       	cmp/hi	r13,r0
 2fc:	8d e7       	bt.s	2ce <mkspr_19>
 2fe:	74 20       	add	#32,r4
 300:	60 33       	mov	r3,r0
 302:	40 21       	shar	r0
 304:	39 08       	sub	r0,r9
 306:	60 63       	mov	r6,r0
 308:	40 21       	shar	r0
 30a:	39 08       	sub	r0,r9
 30c:	60 93       	mov	r9,r0
 30e:	30 cc       	add	r12,r0
 310:	30 e6       	cmp/hi	r14,r0
 312:	8d dc       	bt.s	2ce <mkspr_19>
 314:	61 89       	swap.w	r8,r1
 316:	38 2c       	add	r2,r8
 318:	60 83       	mov	r8,r0
 31a:	30 ac       	add	r10,r0
 31c:	30 d6       	cmp/hi	r13,r0
 31e:	8d d6       	bt.s	2ce <mkspr_19>
 320:	65 93       	mov	r9,r5
 322:	25 1d       	xtrct	r1,r5
 324:	39 6c       	add	r6,r9
 326:	60 93       	mov	r9,r0
 328:	30 cc       	add	r12,r0
 32a:	30 e6       	cmp/hi	r14,r0
 32c:	8d cf       	bt.s	2ce <mkspr_19>
 32e:	60 89       	swap.w	r8,r0
 330:	61 93       	mov	r9,r1
 332:	21 0d       	xtrct	r0,r1
 334:	38 78       	sub	r7,r8
 336:	60 83       	mov	r8,r0
 338:	30 ac       	add	r10,r0
 33a:	30 d6       	cmp/hi	r13,r0
 33c:	8d c7       	bt.s	2ce <mkspr_19>
 33e:	39 3c       	add	r3,r9
 340:	60 93       	mov	r9,r0
 342:	30 cc       	add	r12,r0
 344:	30 e6       	cmp/hi	r14,r0
 346:	8d c2       	bt.s	2ce <mkspr_19>
 348:	63 89       	swap.w	r8,r3
 34a:	38 28       	sub	r2,r8
 34c:	3a 8c       	add	r8,r10
 34e:	3a d6       	cmp/hi	r13,r10
 350:	8d bd       	bt.s	2ce <mkspr_19>
 352:	67 93       	mov	r9,r7
 354:	39 68       	sub	r6,r9
 356:	3c 9c       	add	r9,r12
 358:	3c e6       	cmp/hi	r14,r12
 35a:	8d b8       	bt.s	2ce <mkspr_19>
 35c:	27 3d       	xtrct	r3,r7
 35e:	68 89       	swap.w	r8,r8

00000360 <stspr_00>:
 360:	60 b3       	mov	r11,r0
 362:	70 24       	add	#36,r0
 364:	c2 0d       	mov.l	r0,@(52,gbr)
 366:	c6 25       	mov.l	@(148,gbr),r0
 368:	63 0f       	exts.w	r0,r3
 36a:	62 09       	swap.w	r0,r2
 36c:	c6 cc       	mov.l	@(816,gbr),r0
 36e:	62 2f       	exts.w	r2,r2
 370:	6d 0d       	extu.w	r0,r13
 372:	6c 09       	swap.w	r0,r12
 374:	6c cd       	extu.w	r12,r12
 376:	60 5f       	exts.w	r5,r0
 378:	30 3c       	add	r3,r0
 37a:	30 d2       	cmp/hs	r13,r0
 37c:	8d 05       	bt.s	38a <stspr_01>
 37e:	29 8d       	xtrct	r8,r9
 380:	60 59       	swap.w	r5,r0
 382:	60 0f       	exts.w	r0,r0
 384:	30 2c       	add	r2,r0
 386:	3c 06       	cmp/hi	r0,r12
 388:	8d 55       	bt.s	436 <stspr_20>

0000038a <stspr_01>:
 38a:	60 1f       	exts.w	r1,r0
 38c:	30 3c       	add	r3,r0
 38e:	30 d2       	cmp/hs	r13,r0
 390:	8d 04       	bt.s	39c <stspr_02>
 392:	60 19       	swap.w	r1,r0
 394:	60 0f       	exts.w	r0,r0
 396:	30 2c       	add	r2,r0
 398:	3c 06       	cmp/hi	r0,r12
 39a:	8d 51       	bt.s	440 <stspr_21>

0000039c <stspr_02>:
 39c:	60 7f       	exts.w	r7,r0
 39e:	30 3c       	add	r3,r0
 3a0:	30 d2       	cmp/hs	r13,r0
 3a2:	8d 04       	bt.s	3ae <stspr_03>
 3a4:	60 79       	swap.w	r7,r0
 3a6:	60 0f       	exts.w	r0,r0
 3a8:	30 2c       	add	r2,r0
 3aa:	3c 06       	cmp/hi	r0,r12
 3ac:	8d 50       	bt.s	450 <stspr_22>

000003ae <stspr_03>:
 3ae:	60 9f       	exts.w	r9,r0
 3b0:	30 3c       	add	r3,r0
 3b2:	30 d2       	cmp/hs	r13,r0
 3b4:	8d 03       	bt.s	3be <stspr_04>
 3b6:	60 8f       	exts.w	r8,r0
 3b8:	30 2c       	add	r2,r0
 3ba:	3c 06       	cmp/hi	r0,r12
 3bc:	8d 50       	bt.s	460 <stspr_23>

000003be <stspr_04>:
 3be:	e8 01       	mov	#1,r8
 3c0:	48 28       	shll16	r8
 3c2:	48 01       	shlr	r8
 3c4:	62 99       	swap.w	r9,r2
 3c6:	22 88       	tst	r8,r2
 3c8:	3d da       	subc	r13,r13
 3ca:	6d d7       	not	r13,r13
 3cc:	2d 2a       	xor	r2,r13
 3ce:	29 88       	tst	r8,r9
 3d0:	32 2a       	subc	r2,r2
 3d2:	62 27       	not	r2,r2
 3d4:	22 9a       	xor	r9,r2
 3d6:	3d 2c       	add	r2,r13
 3d8:	6d dd       	extu.w	r13,r13
 3da:	c7 21       	mova	460 <stspr_23>,r0
 3dc:	62 79       	swap.w	r7,r2
 3de:	22 88       	tst	r8,r2
 3e0:	3c ca       	subc	r12,r12
 3e2:	6c c7       	not	r12,r12
 3e4:	2c 2a       	xor	r2,r12
 3e6:	27 88       	tst	r8,r7
 3e8:	32 2a       	subc	r2,r2
 3ea:	62 27       	not	r2,r2
 3ec:	22 7a       	xor	r7,r2
 3ee:	3c 2c       	add	r2,r12
 3f0:	6c cd       	extu.w	r12,r12
 3f2:	3c d7       	cmp/gt	r13,r12
 3f4:	8d 02       	bt.s	3fc <stspr_10>
 3f6:	62 19       	swap.w	r1,r2
 3f8:	6d c3       	mov	r12,r13
 3fa:	c7 15       	mova	450 <stspr_22>,r0

000003fc <stspr_10>:
 3fc:	22 88       	tst	r8,r2
 3fe:	3c ca       	subc	r12,r12
 400:	6c c7       	not	r12,r12
 402:	2c 2a       	xor	r2,r12
 404:	21 88       	tst	r8,r1
 406:	32 2a       	subc	r2,r2
 408:	62 27       	not	r2,r2
 40a:	22 1a       	xor	r1,r2
 40c:	3c 2c       	add	r2,r12
 40e:	6c cd       	extu.w	r12,r12
 410:	3c d7       	cmp/gt	r13,r12
 412:	8d 02       	bt.s	41a <stspr_11>
 414:	62 59       	swap.w	r5,r2
 416:	6d c3       	mov	r12,r13
 418:	c7 0d       	mova	450 <stspr_22>,r0

0000041a <stspr_11>:
 41a:	22 88       	tst	r8,r2
 41c:	3c ca       	subc	r12,r12
 41e:	6c c7       	not	r12,r12
 420:	2c 2a       	xor	r2,r12
 422:	25 88       	tst	r8,r5
 424:	32 2a       	subc	r2,r2
 426:	62 27       	not	r2,r2
 428:	22 5a       	xor	r5,r2
 42a:	3c 2c       	add	r2,r12
 42c:	6c cd       	extu.w	r12,r12
 42e:	3d c3       	cmp/ge	r12,r13
 430:	89 01       	bt	436 <stspr_20>
 432:	40 2b       	jmp	@r0
 434:	00 09       	nop	

00000436 <stspr_20>:
 436:	1b 53       	mov.l	r5,@(12,r11)
 438:	1b 14       	mov.l	r1,@(16,r11)
 43a:	1b 75       	mov.l	r7,@(20,r11)
 43c:	00 0b       	rts	
 43e:	1b 96       	mov.l	r9,@(24,r11)

00000440 <stspr_21>:
 440:	85 b0       	mov.w	@(0,r11),r0
 442:	1b 54       	mov.l	r5,@(16,r11)
 444:	ca 10       	xor	#16,r0
 446:	81 b0       	mov.w	r0,@(0,r11)
 448:	1b 13       	mov.l	r1,@(12,r11)
 44a:	1b 76       	mov.l	r7,@(24,r11)
 44c:	00 0b       	rts	
 44e:	1b 95       	mov.l	r9,@(20,r11)

00000450 <stspr_22>:
 450:	85 b0       	mov.w	@(0,r11),r0
 452:	1b 55       	mov.l	r5,@(20,r11)
 454:	ca 30       	xor	#48,r0
 456:	81 b0       	mov.w	r0,@(0,r11)
 458:	1b 16       	mov.l	r1,@(24,r11)
 45a:	1b 73       	mov.l	r7,@(12,r11)
 45c:	00 0b       	rts	
 45e:	1b 94       	mov.l	r9,@(16,r11)

00000460 <stspr_23>:
 460:	85 b0       	mov.w	@(0,r11),r0
 462:	1b 56       	mov.l	r5,@(24,r11)
 464:	ca 20       	xor	#32,r0
 466:	81 b0       	mov.w	r0,@(0,r11)
 468:	1b 15       	mov.l	r1,@(20,r11)
 46a:	1b 74       	mov.l	r7,@(16,r11)
 46c:	00 0b       	rts	
 46e:	1b 93       	mov.l	r9,@(12,r11)
