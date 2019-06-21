
sglC09.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispPolygon>:
   0:	2f e6       	mov.l	r14,@-r15
   2:	2f d6       	mov.l	r13,@-r15
   4:	2f c6       	mov.l	r12,@-r15
   6:	2f b6       	mov.l	r11,@-r15
   8:	2f a6       	mov.l	r10,@-r15
   a:	2f 96       	mov.l	r9,@-r15
   c:	2f 86       	mov.l	r8,@-r15
   e:	e0 01       	mov	#1,r0
  10:	c0 73       	mov.b	r0,@(115,gbr)
  12:	c5 55       	mov.w	@(170,gbr),r0
  14:	67 46       	mov.l	@r4+,r7
  16:	70 01       	add	#1,r0
  18:	c1 55       	mov.w	r0,@(170,gbr)
  1a:	c6 22       	mov.l	@(136,gbr),r0
  1c:	69 46       	mov.l	@r4+,r9
  1e:	66 03       	mov	r0,r6
  20:	c6 1d       	mov.l	@(116,gbr),r0
  22:	79 01       	add	#1,r9
  24:	61 0d       	extu.w	r0,r1
  26:	31 9c       	add	r9,r1
  28:	62 6d       	extu.w	r6,r2
  2a:	31 26       	cmp/hi	r2,r1
  2c:	8d 72       	bt.s	114 <dspl_08>
  2e:	62 19       	swap.w	r1,r2
  30:	5d 41       	mov.l	@(4,r4),r13
  32:	46 29       	shlr16	r6
  34:	40 29       	shlr16	r0
  36:	30 dc       	add	r13,r0
  38:	30 66       	cmp/hi	r6,r0
  3a:	8d 6b       	bt.s	114 <dspl_08>
  3c:	22 0d       	xtrct	r0,r2
  3e:	2f 26       	mov.l	r2,@-r15
  40:	c6 09       	mov.l	@(36,gbr),r0
  42:	ea 10       	mov	#16,r10
  44:	6b 03       	mov	r0,r11
  46:	c6 12       	mov.l	@(72,gbr),r0
  48:	3a bc       	add	r11,r10
  4a:	68 03       	mov	r0,r8
  4c:	c6 0c       	mov.l	@(48,gbr),r0
  4e:	18 93       	mov.l	r9,@(12,r8)
  50:	18 01       	mov.l	r0,@(4,r8)
  52:	68 03       	mov	r0,r8
  54:	c6 07       	mov.l	@(28,gbr),r0
  56:	79 ff       	add	#-1,r9
  58:	66 03       	mov	r0,r6

0000005a <dspl_10>:
  5a:	00 28       	clrmac	
  5c:	06 7f       	mac.l	@r7+,@r6+
  5e:	23 2d       	xtrct	r2,r3
  60:	06 7f       	mac.l	@r7+,@r6+
  62:	33 0c       	add	r0,r3
  64:	1b 33       	mov.l	r3,@(12,r11)
  66:	06 7f       	mac.l	@r7+,@r6+
  68:	60 66       	mov.l	@r6+,r0
  6a:	77 f4       	add	#-12,r7
  6c:	7b 10       	add	#16,r11
  6e:	02 0a       	sts	mach,r2
  70:	03 1a       	sts	macl,r3
  72:	00 28       	clrmac	
  74:	06 7f       	mac.l	@r7+,@r6+
  76:	23 2d       	xtrct	r2,r3
  78:	33 0c       	add	r0,r3
  7a:	06 7f       	mac.l	@r7+,@r6+
  7c:	1b 31       	mov.l	r3,@(4,r11)
  7e:	63 39       	swap.w	r3,r3
  80:	06 7f       	mac.l	@r7+,@r6+
  82:	60 66       	mov.l	@r6+,r0
  84:	77 f4       	add	#-12,r7
  86:	01 0a       	sts	mach,r1
  88:	02 1a       	sts	macl,r2
  8a:	00 28       	clrmac	
  8c:	06 7f       	mac.l	@r7+,@r6+
  8e:	22 1d       	xtrct	r1,r2
  90:	32 0c       	add	r0,r2
  92:	06 7f       	mac.l	@r7+,@r6+
  94:	1b 22       	mov.l	r2,@(8,r11)
  96:	22 3d       	xtrct	r3,r2
  98:	06 7f       	mac.l	@r7+,@r6+
  9a:	60 62       	mov.l	@r6,r0
  9c:	1b 20       	mov.l	r2,@(0,r11)
  9e:	49 10       	dt	r9
  a0:	02 0a       	sts	mach,r2
  a2:	03 1a       	sts	macl,r3
  a4:	8f d9       	bf.s	5a <dspl_10>
  a6:	76 d4       	add	#-44,r6
  a8:	23 2d       	xtrct	r2,r3
  aa:	33 0c       	add	r0,r3
  ac:	1b 33       	mov.l	r3,@(12,r11)
  ae:	2f b6       	mov.l	r11,@-r15
  b0:	6b 83       	mov	r8,r11
  b2:	c6 1a       	mov.l	@(104,gbr),r0
  b4:	67 46       	mov.l	@r4+,r7
  b6:	58 41       	mov.l	@(4,r4),r8
  b8:	61 03       	mov	r0,r1
  ba:	c4 ac       	mov.b	@(172,gbr),r0
  bc:	41 29       	shlr16	r1

000000be <dspl_11>:
  be:	40 10       	dt	r0
  c0:	8f fd       	bf.s	be <dspl_11>
  c2:	41 01       	shlr	r1
  c4:	2f 16       	mov.l	r1,@-r15
  c6:	7f fc       	add	#-4,r15
  c8:	4f 22       	sts.l	pr,@-r15
  ca:	e0 00       	mov	#0,r0
  cc:	2f 06       	mov.l	r0,@-r15
  ce:	c6 0f       	mov.l	@(60,gbr),r0
  d0:	76 20       	add	#32,r6
  d2:	70 04       	add	#4,r0
  d4:	40 2a       	lds	r0,pr
  d6:	ee ff       	mov	#-1,r14
  d8:	25 58       	tst	r5,r5
  da:	8d 01       	bt.s	e0 <dspl_20>
  dc:	6c 53       	mov	r5,r12
  de:	ec 0c       	mov	#12,r12

000000e0 <dspl_20>:
  e0:	00 28       	clrmac	
  e2:	06 7f       	mac.l	@r7+,@r6+
  e4:	85 80       	mov.w	@(0,r8),r0
  e6:	e9 07       	mov	#7,r9
  e8:	06 7f       	mac.l	@r7+,@r6+
  ea:	29 09       	and	r0,r9
  ec:	49 08       	shll2	r9
  ee:	06 7f       	mac.l	@r7+,@r6+
  f0:	60 08       	swap.b	r0,r0
  f2:	49 08       	shll2	r9
  f4:	01 0a       	sts	mach,r1
  f6:	76 f4       	add	#-12,r6
  f8:	41 11       	cmp/pz	r1
  fa:	8f 01       	bf.s	100 <dspl_21>
  fc:	c8 01       	tst	#1,r0
  fe:	89 12       	bt	126 <dspl_22>

00000100 <dspl_21>:
 100:	61 75       	mov.w	@r7+,r1
 102:	c7 29       	mova	1a8 <OrthoBaseTbl>,r0
 104:	62 75       	mov.w	@r7+,r2
 106:	39 0c       	add	r0,r9
 108:	60 96       	mov.l	@r9+,r0
 10a:	41 08       	shll2	r1
 10c:	41 08       	shll2	r1
 10e:	31 ac       	add	r10,r1
 110:	40 2b       	jmp	@r0
 112:	42 08       	shll2	r2

00000114 <dspl_08>:
 114:	68 f6       	mov.l	@r15+,r8
 116:	69 f6       	mov.l	@r15+,r9
 118:	6a f6       	mov.l	@r15+,r10
 11a:	6b f6       	mov.l	@r15+,r11
 11c:	6c f6       	mov.l	@r15+,r12
 11e:	6d f6       	mov.l	@r15+,r13
 120:	6e f6       	mov.l	@r15+,r14

00000122 <dspl_09>:
 122:	00 0b       	rts	
 124:	e0 00       	mov	#0,r0

00000126 <dspl_22>:
 126:	a0 1a       	bra	15e <dspl_28>
 128:	77 08       	add	#8,r7

0000012a <dspl_25>:
 12a:	85 81       	mov.w	@(2,r8),r0
 12c:	05 2a       	sts	pr,r5
 12e:	40 08       	shll2	r0
 130:	30 0c       	add	r0,r0
 132:	00 5e       	mov.l	@(r0,r5),r0
 134:	1b 02       	mov.l	r0,@(8,r11)

00000136 <dspl_26>:
 136:	85 84       	mov.w	@(8,r8),r0
 138:	55 81       	mov.l	@(4,r8),r5
 13a:	81 be       	mov.w	r0,@(28,r11)
 13c:	1b 51       	mov.l	r5,@(4,r11)
 13e:	51 10       	mov.l	@(0,r1),r1
 140:	52 20       	mov.l	@(0,r2),r2
 142:	53 30       	mov.l	@(0,r3),r3
 144:	54 40       	mov.l	@(0,r4),r4
 146:	1b 13       	mov.l	r1,@(12,r11)
 148:	1b 24       	mov.l	r2,@(16,r11)
 14a:	1b 35       	mov.l	r3,@(20,r11)
 14c:	1b 46       	mov.l	r4,@(24,r11)

0000014e <dspl_27>:
 14e:	85 85       	mov.w	@(10,r8),r0
 150:	61 f2       	mov.l	@r15,r1
 152:	81 b0       	mov.w	r0,@(0,r11)
 154:	71 01       	add	#1,r1
 156:	2f 12       	mov.l	r1,@r15
 158:	60 e3       	mov	r14,r0
 15a:	81 bf       	mov.w	r0,@(30,r11)
 15c:	7b dc       	add	#-36,r11

0000015e <dspl_28>:
 15e:	4d 10       	dt	r13
 160:	8f be       	bf.s	e0 <dspl_20>
 162:	38 cc       	add	r12,r8
 164:	62 f6       	mov.l	@r15+,r2
 166:	4f 26       	lds.l	@r15+,pr
 168:	7f 08       	add	#8,r15
 16a:	63 f6       	mov.l	@r15+,r3
 16c:	64 f6       	mov.l	@r15+,r4
 16e:	c6 12       	mov.l	@(72,gbr),r0
 170:	22 28       	tst	r2,r2
 172:	8d 0d       	bt.s	190 <dspl_29>
 174:	e1 28       	mov	#40,r1
 176:	10 22       	mov.l	r2,@(8,r0)
 178:	10 10       	mov.l	r1,@(0,r0)
 17a:	70 10       	add	#16,r0
 17c:	d1 09       	mov.l	1a4 <IMM_FRT_INTR>,r1	! 21000000
 17e:	c2 12       	mov.l	r0,@(72,gbr)
 180:	21 01       	mov.w	r0,@r1
 182:	60 b3       	mov	r11,r0
 184:	c2 0c       	mov.l	r0,@(48,gbr)
 186:	73 10       	add	#16,r3
 188:	60 33       	mov	r3,r0
 18a:	c2 09       	mov.l	r0,@(36,gbr)
 18c:	60 43       	mov	r4,r0
 18e:	c2 1d       	mov.l	r0,@(116,gbr)

00000190 <dspl_29>:
 190:	68 f6       	mov.l	@r15+,r8
 192:	69 f6       	mov.l	@r15+,r9
 194:	6a f6       	mov.l	@r15+,r10
 196:	6b f6       	mov.l	@r15+,r11
 198:	6c f6       	mov.l	@r15+,r12
 19a:	6d f6       	mov.l	@r15+,r13
 19c:	6e f6       	mov.l	@r15+,r14
 19e:	00 0b       	rts	
 1a0:	e0 01       	mov	#1,r0
	...

000001a4 <IMM_FRT_INTR>:
 1a4:	21 00       	mov.b	r0,@r1
	...

000001a8 <OrthoBaseTbl>:
 1a8:	00 00       	.word 0x0000
 1aa:	00 00       	.word 0x0000
 1ac:	00 00       	.word 0x0000
 1ae:	01 5e       	mov.l	@(r0,r5),r1
 1b0:	00 00       	.word 0x0000
 1b2:	01 36       	mov.l	r3,@(r0,r1)
	...
 1bc:	00 00       	.word 0x0000
 1be:	01 5e       	mov.l	@(r0,r5),r1
 1c0:	00 00       	.word 0x0000
 1c2:	01 36       	mov.l	r3,@(r0,r1)
	...
 1cc:	00 00       	.word 0x0000
 1ce:	01 5e       	mov.l	@(r0,r5),r1
 1d0:	00 00       	.word 0x0000
 1d2:	01 36       	mov.l	r3,@(r0,r1)
	...
 1dc:	00 00       	.word 0x0000
 1de:	01 5e       	mov.l	@(r0,r5),r1
 1e0:	00 00       	.word 0x0000
 1e2:	01 36       	mov.l	r3,@(r0,r1)
	...
 1ec:	00 00       	.word 0x0000
 1ee:	01 5e       	mov.l	@(r0,r5),r1
 1f0:	00 00       	.word 0x0000
 1f2:	01 2a       	sts	pr,r1
	...
 1fc:	00 00       	.word 0x0000
 1fe:	01 5e       	mov.l	@(r0,r5),r1
 200:	00 00       	.word 0x0000
 202:	01 2a       	sts	pr,r1
	...
 20c:	00 00       	.word 0x0000
 20e:	01 5e       	mov.l	@(r0,r5),r1
 210:	00 00       	.word 0x0000
 212:	01 2a       	sts	pr,r1
	...
 21c:	00 00       	.word 0x0000
 21e:	01 5e       	mov.l	@(r0,r5),r1
 220:	00 00       	.word 0x0000
 222:	01 2a       	sts	pr,r1
 224:	00 00       	.word 0x0000
	...
