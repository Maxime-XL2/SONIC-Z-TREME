
sglH02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SLPROG>:
   0:	e0 ff       	mov	#-1,r0
   2:	81 51       	mov.w	r0,@(2,r5)
   4:	81 52       	mov.w	r0,@(4,r5)
   6:	00 0b       	rts	
   8:	81 53       	mov.w	r0,@(6,r5)

0000000a <_slPerSetButton>:
   a:	85 51       	mov.w	@(2,r5),r0
   c:	61 47       	not	r4,r1
   e:	62 07       	not	r0,r2
  10:	20 19       	and	r1,r0
  12:	60 07       	not	r0,r0
  14:	81 52       	mov.w	r0,@(4,r5)
  16:	22 49       	and	r4,r2
  18:	60 27       	not	r2,r0
  1a:	81 53       	mov.w	r0,@(6,r5)
  1c:	60 43       	mov	r4,r0
  1e:	00 0b       	rts	
  20:	81 51       	mov.w	r0,@(2,r5)

00000022 <_slPerReserved>:
  22:	4f 22       	sts.l	pr,@-r15
  24:	e0 00       	mov	#0,r0
  26:	61 44       	mov.b	@r4+,r1
  28:	02 5c       	mov.b	@(r0,r5),r2
  2a:	31 20       	cmp/eq	r2,r1
  2c:	8d 0a       	bt.s	44 <_slPerReserved_10>
  2e:	05 14       	mov.b	r1,@(r0,r5)
  30:	bf e6       	bsr	0 <SLPROG>
  32:	2f 16       	mov.l	r1,@-r15
  34:	60 f6       	mov.l	@r15+,r0
  36:	74 01       	add	#1,r4
  38:	c9 0f       	and	#15,r0
  3a:	88 01       	cmp/eq	#1,r0
  3c:	8d 11       	bt.s	62 <_slPerReserved_30>
  3e:	61 03       	mov	r0,r1
  40:	a0 0f       	bra	62 <_slPerReserved_30>
  42:	74 01       	add	#1,r4

00000044 <_slPerReserved_10>:
  44:	60 13       	mov	r1,r0
  46:	c9 0f       	and	#15,r0
  48:	2f 06       	mov.l	r0,@-r15
  4a:	61 44       	mov.b	@r4+,r1
  4c:	88 01       	cmp/eq	#1,r0
  4e:	8d 01       	bt.s	54 <_slPerReserved_20>
  50:	e2 ff       	mov	#-1,r2
  52:	62 44       	mov.b	@r4+,r2

00000054 <_slPerReserved_20>:
  54:	2f 46       	mov.l	r4,@-r15
  56:	41 18       	shll8	r1
  58:	64 2c       	extu.b	r2,r4
  5a:	bf d6       	bsr	a <_slPerSetButton>
  5c:	24 1b       	or	r1,r4
  5e:	64 f6       	mov.l	@r15+,r4
  60:	61 f6       	mov.l	@r15+,r1

00000062 <_slPerReserved_30>:
  62:	e2 02       	mov	#2,r2
  64:	31 26       	cmp/hi	r2,r1
  66:	8b 06       	bf	76 <_slPerReserved_90>
  68:	e0 08       	mov	#8,r0
  6a:	71 fe       	add	#-2,r1

0000006c <_slPerReserved_40>:
  6c:	62 44       	mov.b	@r4+,r2
  6e:	05 24       	mov.b	r2,@(r0,r5)
  70:	41 10       	dt	r1
  72:	8f fb       	bf.s	6c <_slPerReserved_40>
  74:	70 01       	add	#1,r0

00000076 <_slPerReserved_90>:
  76:	4f 26       	lds.l	@r15+,pr
  78:	00 0b       	rts	
  7a:	60 43       	mov	r4,r0

0000007c <_slPerSaturnPad>:
  7c:	4f 22       	sts.l	pr,@-r15
  7e:	e0 00       	mov	#0,r0
  80:	61 44       	mov.b	@r4+,r1
  82:	02 5c       	mov.b	@(r0,r5),r2
  84:	31 20       	cmp/eq	r2,r1
  86:	8d 04       	bt.s	92 <_slPerSaturnPad_10>
  88:	05 14       	mov.b	r1,@(r0,r5)
  8a:	bf b9       	bsr	0 <SLPROG>
  8c:	00 09       	nop	
  8e:	a0 08       	bra	a2 <_slPerSaturnPad_90>
  90:	74 02       	add	#2,r4

00000092 <_slPerSaturnPad_10>:
  92:	61 44       	mov.b	@r4+,r1
  94:	62 44       	mov.b	@r4+,r2
  96:	2f 46       	mov.l	r4,@-r15
  98:	41 18       	shll8	r1
  9a:	64 2c       	extu.b	r2,r4
  9c:	bf b5       	bsr	a <_slPerSetButton>
  9e:	24 1b       	or	r1,r4
  a0:	64 f6       	mov.l	@r15+,r4

000000a2 <_slPerSaturnPad_90>:
  a2:	4f 26       	lds.l	@r15+,pr
  a4:	00 0b       	rts	
  a6:	60 43       	mov	r4,r0

000000a8 <_slPerSaturnLacing>:
  a8:	4f 22       	sts.l	pr,@-r15
  aa:	e0 00       	mov	#0,r0
  ac:	61 44       	mov.b	@r4+,r1
  ae:	02 5c       	mov.b	@(r0,r5),r2
  b0:	31 20       	cmp/eq	r2,r1
  b2:	8d 05       	bt.s	c0 <_slPerSaturnLacing_10>
  b4:	05 14       	mov.b	r1,@(r0,r5)
  b6:	e0 7f       	mov	#127,r0
  b8:	bf a2       	bsr	0 <SLPROG>
  ba:	80 58       	mov.b	r0,@(8,r5)
  bc:	a0 0c       	bra	d8 <_slPerSaturnLacing_90>
  be:	74 03       	add	#3,r4

000000c0 <_slPerSaturnLacing_10>:
  c0:	61 44       	mov.b	@r4+,r1
  c2:	62 44       	mov.b	@r4+,r2
  c4:	2f 56       	mov.l	r5,@-r15
  c6:	2f 46       	mov.l	r4,@-r15
  c8:	41 18       	shll8	r1
  ca:	64 2c       	extu.b	r2,r4
  cc:	bf 9d       	bsr	a <_slPerSetButton>
  ce:	24 1b       	or	r1,r4
  d0:	64 f6       	mov.l	@r15+,r4
  d2:	65 f6       	mov.l	@r15+,r5
  d4:	60 44       	mov.b	@r4+,r0
  d6:	80 58       	mov.b	r0,@(8,r5)

000000d8 <_slPerSaturnLacing_90>:
  d8:	e0 7f       	mov	#127,r0
  da:	80 59       	mov.b	r0,@(9,r5)
  dc:	80 5a       	mov.b	r0,@(10,r5)
  de:	4f 26       	lds.l	@r15+,pr
  e0:	00 0b       	rts	
  e2:	60 43       	mov	r4,r0

000000e4 <_slPerSaturnAnalog>:
  e4:	4f 22       	sts.l	pr,@-r15
  e6:	e0 00       	mov	#0,r0
  e8:	61 44       	mov.b	@r4+,r1
  ea:	02 5c       	mov.b	@(r0,r5),r2
  ec:	31 20       	cmp/eq	r2,r1
  ee:	8d 07       	bt.s	100 <_slPerSaturnAnalog_10>
  f0:	05 14       	mov.b	r1,@(r0,r5)
  f2:	e0 7f       	mov	#127,r0
  f4:	80 58       	mov.b	r0,@(8,r5)
  f6:	80 59       	mov.b	r0,@(9,r5)
  f8:	bf 82       	bsr	0 <SLPROG>
  fa:	80 5a       	mov.b	r0,@(10,r5)
  fc:	a0 10       	bra	120 <_slPerSaturnAnalog_90>
  fe:	74 05       	add	#5,r4

00000100 <_slPerSaturnAnalog_10>:
 100:	61 44       	mov.b	@r4+,r1
 102:	62 44       	mov.b	@r4+,r2
 104:	2f 56       	mov.l	r5,@-r15
 106:	2f 46       	mov.l	r4,@-r15
 108:	41 18       	shll8	r1
 10a:	64 2c       	extu.b	r2,r4
 10c:	bf 7d       	bsr	a <_slPerSetButton>
 10e:	24 1b       	or	r1,r4
 110:	64 f6       	mov.l	@r15+,r4
 112:	65 f6       	mov.l	@r15+,r5
 114:	60 44       	mov.b	@r4+,r0
 116:	80 58       	mov.b	r0,@(8,r5)
 118:	60 44       	mov.b	@r4+,r0
 11a:	80 59       	mov.b	r0,@(9,r5)
 11c:	60 44       	mov.b	@r4+,r0
 11e:	80 5a       	mov.b	r0,@(10,r5)

00000120 <_slPerSaturnAnalog_90>:
 120:	4f 26       	lds.l	@r15+,pr
 122:	00 0b       	rts	
 124:	60 43       	mov	r4,r0

00000126 <_slPerSaturnMouse>:
 126:	2f 76       	mov.l	r7,@-r15
 128:	4f 22       	sts.l	pr,@-r15
 12a:	e0 00       	mov	#0,r0
 12c:	61 44       	mov.b	@r4+,r1
 12e:	02 5c       	mov.b	@(r0,r5),r2
 130:	31 20       	cmp/eq	r2,r1
 132:	8d 06       	bt.s	142 <_slPerSaturnMouse_10>
 134:	05 14       	mov.b	r1,@(r0,r5)
 136:	20 0a       	xor	r0,r0
 138:	81 54       	mov.w	r0,@(8,r5)
 13a:	bf 61       	bsr	0 <SLPROG>
 13c:	81 55       	mov.w	r0,@(10,r5)
 13e:	a0 44       	bra	1ca <_slPerSaturnMouse_90>
 140:	74 03       	add	#3,r4

00000142 <_slPerSaturnMouse_10>:
 142:	c7 24       	mova	1d4 <smpc_mtr_tbl>,r0
 144:	61 44       	mov.b	@r4+,r1
 146:	62 03       	mov	r0,r2
 148:	e0 0f       	mov	#15,r0
 14a:	20 19       	and	r1,r0
 14c:	40 00       	shll	r0
 14e:	06 2d       	mov.w	@(r0,r2),r6
 150:	60 13       	mov	r1,r0
 152:	61 44       	mov.b	@r4+,r1
 154:	e2 80       	mov	#-128,r2
 156:	61 1c       	extu.b	r1,r1
 158:	c8 10       	tst	#16,r0
 15a:	8f 06       	bf.s	16a <_slPerSaturnMouse_20>
 15c:	42 00       	shll	r2
 15e:	93 4a       	mov.w	1f6 <IMM_PER_DGT_KR>,r3	! 8000
 160:	e7 02       	mov	#2,r7
 162:	31 72       	cmp/hs	r7,r1
 164:	89 07       	bt	176 <_slPerSaturnMouse_30>
 166:	a0 06       	bra	176 <_slPerSaturnMouse_30>
 168:	23 3a       	xor	r3,r3

0000016a <_slPerSaturnMouse_20>:
 16a:	21 2b       	or	r2,r1
 16c:	93 44       	mov.w	1f8 <IMM_PER_DGT_KL>,r3	! 4000
 16e:	e7 fe       	mov	#-2,r7
 170:	31 76       	cmp/hi	r7,r1
 172:	8b 00       	bf	176 <_slPerSaturnMouse_30>
 174:	23 3a       	xor	r3,r3

00000176 <_slPerSaturnMouse_30>:
 176:	26 3a       	xor	r3,r6
 178:	c8 40       	tst	#64,r0
 17a:	89 01       	bt	180 <_slPerSaturnMouse_40>
 17c:	93 3a       	mov.w	1f4 <IMM_SMPC_MSK_OVERFLW>,r3	! 100 <_slPerSaturnAnalog_10>
 17e:	21 3a       	xor	r3,r1

00000180 <_slPerSaturnMouse_40>:
 180:	62 03       	mov	r0,r2
 182:	85 54       	mov.w	@(8,r5),r0
 184:	30 1c       	add	r1,r0
 186:	81 54       	mov.w	r0,@(8,r5)
 188:	60 23       	mov	r2,r0
 18a:	61 44       	mov.b	@r4+,r1
 18c:	e2 80       	mov	#-128,r2
 18e:	61 1c       	extu.b	r1,r1
 190:	c8 20       	tst	#32,r0
 192:	8f 06       	bf.s	1a2 <_slPerSaturnMouse_50>
 194:	42 00       	shll	r2
 196:	93 31       	mov.w	1fc <IMM_PER_DGT_KU>,r3	! 1000
 198:	e7 02       	mov	#2,r7
 19a:	31 72       	cmp/hs	r7,r1
 19c:	89 07       	bt	1ae <_slPerSaturnMouse_60>
 19e:	a0 06       	bra	1ae <_slPerSaturnMouse_60>
 1a0:	23 3a       	xor	r3,r3

000001a2 <_slPerSaturnMouse_50>:
 1a2:	21 2b       	or	r2,r1
 1a4:	93 29       	mov.w	1fa <IMM_PER_DGT_KD>,r3	! 2000
 1a6:	e7 fe       	mov	#-2,r7
 1a8:	31 76       	cmp/hi	r7,r1
 1aa:	8b 00       	bf	1ae <_slPerSaturnMouse_60>
 1ac:	23 3a       	xor	r3,r3

000001ae <_slPerSaturnMouse_60>:
 1ae:	26 3a       	xor	r3,r6
 1b0:	c8 80       	tst	#-128,r0
 1b2:	89 01       	bt	1b8 <_slPerSaturnMouse_70>
 1b4:	93 1e       	mov.w	1f4 <IMM_SMPC_MSK_OVERFLW>,r3	! 100 <_slPerSaturnAnalog_10>
 1b6:	21 3a       	xor	r3,r1

000001b8 <_slPerSaturnMouse_70>:
 1b8:	85 55       	mov.w	@(10,r5),r0
 1ba:	30 18       	sub	r1,r0
 1bc:	81 55       	mov.w	r0,@(10,r5)
 1be:	2f 56       	mov.l	r5,@-r15
 1c0:	2f 46       	mov.l	r4,@-r15
 1c2:	bf 22       	bsr	a <_slPerSetButton>
 1c4:	64 63       	mov	r6,r4
 1c6:	64 f6       	mov.l	@r15+,r4
 1c8:	65 f6       	mov.l	@r15+,r5

000001ca <_slPerSaturnMouse_90>:
 1ca:	60 43       	mov	r4,r0
 1cc:	4f 26       	lds.l	@r15+,pr
 1ce:	00 0b       	rts	
 1d0:	67 f6       	mov.l	@r15+,r7
	...

000001d4 <smpc_mtr_tbl>:
 1d4:	ff ff       	.word 0xffff
 1d6:	fb ff       	.word 0xfbff
 1d8:	fd ff       	.word 0xfdff
 1da:	f9 ff       	.word 0xf9ff
 1dc:	fe ff       	.word 0xfeff
 1de:	fa ff       	.word 0xfaff
 1e0:	fc ff       	.word 0xfcff
 1e2:	f8 ff       	.word 0xf8ff
 1e4:	f7 ff       	.word 0xf7ff
 1e6:	f3 ff       	.word 0xf3ff
 1e8:	f5 ff       	.word 0xf5ff
 1ea:	f1 ff       	.word 0xf1ff
 1ec:	f6 ff       	.word 0xf6ff
 1ee:	f2 ff       	.word 0xf2ff
 1f0:	f4 ff       	.word 0xf4ff
 1f2:	f0 ff       	.word 0xf0ff

000001f4 <IMM_SMPC_MSK_OVERFLW>:
 1f4:	01 00       	.word 0x0100

000001f6 <IMM_PER_DGT_KR>:
 1f6:	80 00       	mov.b	r0,@(0,r0)

000001f8 <IMM_PER_DGT_KL>:
 1f8:	40 00       	shll	r0

000001fa <IMM_PER_DGT_KD>:
 1fa:	20 00       	mov.b	r0,@r0

000001fc <IMM_PER_DGT_KU>:
 1fc:	10 00       	mov.l	r0,@(0,r0)

000001fe <_slPerSaturnShooting>:
 1fe:	4f 22       	sts.l	pr,@-r15
 200:	e0 00       	mov	#0,r0
 202:	61 44       	mov.b	@r4+,r1
 204:	02 5c       	mov.b	@(r0,r5),r2
 206:	31 20       	cmp/eq	r2,r1
 208:	8d 06       	bt.s	218 <_slPerSaturnShooting_10>
 20a:	05 14       	mov.b	r1,@(r0,r5)
 20c:	20 0a       	xor	r0,r0
 20e:	81 54       	mov.w	r0,@(8,r5)
 210:	be f6       	bsr	0 <SLPROG>
 212:	81 55       	mov.w	r0,@(10,r5)
 214:	a0 17       	bra	246 <_slPerSaturnShooting_90>
 216:	74 05       	add	#5,r4

00000218 <_slPerSaturnShooting_10>:
 218:	c7 0c       	mova	24c <smpc_str_tbl>,r0
 21a:	61 44       	mov.b	@r4+,r1
 21c:	62 03       	mov	r0,r2
 21e:	e0 30       	mov	#48,r0
 220:	20 19       	and	r1,r0
 222:	40 09       	shlr2	r0
 224:	40 01       	shlr	r0
 226:	2f 46       	mov.l	r4,@-r15
 228:	be ef       	bsr	a <_slPerSetButton>
 22a:	04 2d       	mov.w	@(r0,r2),r4
 22c:	64 f6       	mov.l	@r15+,r4
 22e:	60 44       	mov.b	@r4+,r0
 230:	61 44       	mov.b	@r4+,r1
 232:	40 18       	shll8	r0
 234:	61 1c       	extu.b	r1,r1
 236:	20 1b       	or	r1,r0
 238:	81 54       	mov.w	r0,@(8,r5)
 23a:	60 44       	mov.b	@r4+,r0
 23c:	61 44       	mov.b	@r4+,r1
 23e:	40 18       	shll8	r0
 240:	61 1c       	extu.b	r1,r1
 242:	20 1b       	or	r1,r0
 244:	81 55       	mov.w	r0,@(10,r5)

00000246 <_slPerSaturnShooting_90>:
 246:	4f 26       	lds.l	@r15+,pr
 248:	00 0b       	rts	
 24a:	60 43       	mov	r4,r0

0000024c <smpc_str_tbl>:
 24c:	f3 ff       	.word 0xf3ff
 24e:	f7 ff       	.word 0xf7ff
 250:	fb ff       	.word 0xfbff
 252:	ff ff       	.word 0xffff

00000254 <_slPerSaturnKeyBoard>:
 254:	4f 22       	sts.l	pr,@-r15
 256:	e0 00       	mov	#0,r0
 258:	61 44       	mov.b	@r4+,r1
 25a:	02 5c       	mov.b	@(r0,r5),r2
 25c:	31 20       	cmp/eq	r2,r1
 25e:	8d 07       	bt.s	270 <_slPerSaturnKeyBoard_10>
 260:	05 14       	mov.b	r1,@(r0,r5)
 262:	e0 06       	mov	#6,r0
 264:	80 58       	mov.b	r0,@(8,r5)
 266:	20 0a       	xor	r0,r0
 268:	be ca       	bsr	0 <SLPROG>
 26a:	80 59       	mov.b	r0,@(9,r5)
 26c:	a0 0e       	bra	28c <_slPerSaturnKeyBoard_90>
 26e:	74 04       	add	#4,r4

00000270 <_slPerSaturnKeyBoard_10>:
 270:	61 44       	mov.b	@r4+,r1
 272:	62 44       	mov.b	@r4+,r2
 274:	2f 56       	mov.l	r5,@-r15
 276:	2f 46       	mov.l	r4,@-r15
 278:	41 18       	shll8	r1
 27a:	64 2c       	extu.b	r2,r4
 27c:	be c5       	bsr	a <_slPerSetButton>
 27e:	24 1b       	or	r1,r4
 280:	64 f6       	mov.l	@r15+,r4
 282:	65 f6       	mov.l	@r15+,r5
 284:	60 44       	mov.b	@r4+,r0
 286:	80 58       	mov.b	r0,@(8,r5)
 288:	60 44       	mov.b	@r4+,r0
 28a:	80 59       	mov.b	r0,@(9,r5)

0000028c <_slPerSaturnKeyBoard_90>:
 28c:	4f 26       	lds.l	@r15+,pr
 28e:	00 0b       	rts	
 290:	60 43       	mov	r4,r0

00000292 <_slPerMega3ButtonPad>:
 292:	4f 22       	sts.l	pr,@-r15
 294:	e0 00       	mov	#0,r0
 296:	61 44       	mov.b	@r4+,r1
 298:	02 5c       	mov.b	@(r0,r5),r2
 29a:	31 20       	cmp/eq	r2,r1
 29c:	8d 04       	bt.s	2a8 <_slPerMega3ButtonPad_10>
 29e:	05 14       	mov.b	r1,@(r0,r5)
 2a0:	be ae       	bsr	0 <SLPROG>
 2a2:	00 09       	nop	
 2a4:	a0 08       	bra	2b8 <_slPerMega3ButtonPad_90>
 2a6:	74 01       	add	#1,r4

000002a8 <_slPerMega3ButtonPad_10>:
 2a8:	61 44       	mov.b	@r4+,r1
 2aa:	e2 ff       	mov	#-1,r2
 2ac:	2f 46       	mov.l	r4,@-r15
 2ae:	41 18       	shll8	r1
 2b0:	64 2c       	extu.b	r2,r4
 2b2:	be aa       	bsr	a <_slPerSetButton>
 2b4:	24 1b       	or	r1,r4
 2b6:	64 f6       	mov.l	@r15+,r4

000002b8 <_slPerMega3ButtonPad_90>:
 2b8:	4f 26       	lds.l	@r15+,pr
 2ba:	00 0b       	rts	
 2bc:	60 43       	mov	r4,r0

000002be <_slPerMega6ButtonPad>:
 2be:	4f 22       	sts.l	pr,@-r15
 2c0:	e0 00       	mov	#0,r0
 2c2:	61 44       	mov.b	@r4+,r1
 2c4:	02 5c       	mov.b	@(r0,r5),r2
 2c6:	31 20       	cmp/eq	r2,r1
 2c8:	8d 04       	bt.s	2d4 <_slPerMega6ButtonPad_10>
 2ca:	05 14       	mov.b	r1,@(r0,r5)
 2cc:	be 98       	bsr	0 <SLPROG>
 2ce:	00 09       	nop	
 2d0:	a0 08       	bra	2e4 <_slPerMega6ButtonPad_90>
 2d2:	74 02       	add	#2,r4

000002d4 <_slPerMega6ButtonPad_10>:
 2d4:	61 44       	mov.b	@r4+,r1
 2d6:	62 44       	mov.b	@r4+,r2
 2d8:	2f 46       	mov.l	r4,@-r15
 2da:	41 18       	shll8	r1
 2dc:	64 2c       	extu.b	r2,r4
 2de:	be 94       	bsr	a <_slPerSetButton>
 2e0:	24 1b       	or	r1,r4
 2e2:	64 f6       	mov.l	@r15+,r4

000002e4 <_slPerMega6ButtonPad_90>:
 2e4:	4f 26       	lds.l	@r15+,pr
 2e6:	00 0b       	rts	
 2e8:	60 43       	mov	r4,r0

000002ea <_slExtDigitalDev>:
 2ea:	4f 22       	sts.l	pr,@-r15
 2ec:	e0 00       	mov	#0,r0
 2ee:	61 44       	mov.b	@r4+,r1
 2f0:	02 5c       	mov.b	@(r0,r5),r2
 2f2:	05 14       	mov.b	r1,@(r0,r5)
 2f4:	e0 01       	mov	#1,r0
 2f6:	63 44       	mov.b	@r4+,r3
 2f8:	63 3c       	extu.b	r3,r3
 2fa:	31 20       	cmp/eq	r2,r1
 2fc:	8d 05       	bt.s	30a <_slExtDigitalDev_10>
 2fe:	05 34       	mov.b	r3,@(r0,r5)
 300:	be 7e       	bsr	0 <SLPROG>
 302:	2f 36       	mov.l	r3,@-r15
 304:	61 f6       	mov.l	@r15+,r1
 306:	a0 0a       	bra	31e <_slExtDigitalDev_20>
 308:	74 02       	add	#2,r4

0000030a <_slExtDigitalDev_10>:
 30a:	2f 36       	mov.l	r3,@-r15
 30c:	61 44       	mov.b	@r4+,r1
 30e:	62 44       	mov.b	@r4+,r2
 310:	2f 46       	mov.l	r4,@-r15
 312:	41 18       	shll8	r1
 314:	64 2c       	extu.b	r2,r4
 316:	be 78       	bsr	a <_slPerSetButton>
 318:	24 1b       	or	r1,r4
 31a:	64 f6       	mov.l	@r15+,r4
 31c:	61 f6       	mov.l	@r15+,r1

0000031e <_slExtDigitalDev_20>:
 31e:	e2 02       	mov	#2,r2
 320:	31 26       	cmp/hi	r2,r1
 322:	8b 08       	bf	336 <_slExtDigitalDev_90>
 324:	e0 08       	mov	#8,r0
 326:	71 fe       	add	#-2,r1

00000328 <_slExtDigitalDev_30>:
 328:	30 62       	cmp/hs	r6,r0
 32a:	89 04       	bt	336 <_slExtDigitalDev_90>
 32c:	62 44       	mov.b	@r4+,r2
 32e:	05 24       	mov.b	r2,@(r0,r5)
 330:	41 10       	dt	r1
 332:	8f f9       	bf.s	328 <_slExtDigitalDev_30>
 334:	70 01       	add	#1,r0

00000336 <_slExtDigitalDev_90>:
 336:	4f 26       	lds.l	@r15+,pr
 338:	00 0b       	rts	
 33a:	60 43       	mov	r4,r0

0000033c <_slExtAnalogDev>:
 33c:	af d5       	bra	2ea <_slExtDigitalDev>
 33e:	00 09       	nop	

00000340 <_slExtPointingDev>:
 340:	4f 22       	sts.l	pr,@-r15
 342:	60 44       	mov.b	@r4+,r0
 344:	80 50       	mov.b	r0,@(0,r5)
 346:	60 44       	mov.b	@r4+,r0
 348:	60 0c       	extu.b	r0,r0
 34a:	80 51       	mov.b	r0,@(1,r5)
 34c:	be 58       	bsr	0 <SLPROG>
 34e:	2f 06       	mov.l	r0,@-r15
 350:	61 f6       	mov.l	@r15+,r1
 352:	21 18       	tst	r1,r1
 354:	89 07       	bt	366 <_slExtPointingDev_90>
 356:	e0 08       	mov	#8,r0

00000358 <_slExtPointingDev_10>:
 358:	30 62       	cmp/hs	r6,r0
 35a:	89 04       	bt	366 <_slExtPointingDev_90>
 35c:	62 44       	mov.b	@r4+,r2
 35e:	05 24       	mov.b	r2,@(r0,r5)
 360:	41 10       	dt	r1
 362:	8f f9       	bf.s	358 <_slExtPointingDev_10>
 364:	70 01       	add	#1,r0

00000366 <_slExtPointingDev_90>:
 366:	4f 26       	lds.l	@r15+,pr
 368:	00 0b       	rts	
 36a:	60 43       	mov	r4,r0

0000036c <_slExtKeyBoardDev>:
 36c:	af bd       	bra	2ea <_slExtDigitalDev>
 36e:	00 09       	nop	

00000370 <_slExtMegaDriveDev>:
 370:	af bb       	bra	2ea <_slExtDigitalDev>
 372:	00 09       	nop	

00000374 <_slPerUnknownDev>:
 374:	4f 22       	sts.l	pr,@-r15
 376:	60 44       	mov.b	@r4+,r0
 378:	be 42       	bsr	0 <SLPROG>
 37a:	80 50       	mov.b	r0,@(0,r5)
 37c:	4f 26       	lds.l	@r15+,pr
 37e:	00 0b       	rts	
 380:	60 43       	mov	r4,r0

00000382 <_slPerNotConnect>:
 382:	4f 22       	sts.l	pr,@-r15
 384:	60 44       	mov.b	@r4+,r0
 386:	be 3b       	bsr	0 <SLPROG>
 388:	80 50       	mov.b	r0,@(0,r5)
 38a:	4f 26       	lds.l	@r15+,pr
 38c:	00 0b       	rts	
 38e:	60 43       	mov	r4,r0

00000390 <smpc_pfr_tbl_0>:
 390:	24 00       	mov.b	r0,@r4
 392:	04 00       	.word 0x0400
	...

000003a0 <smpc_pfr_tbl_1>:
 3a0:	28 00       	mov.b	r0,@r8
 3a2:	00 08       	clrt	
 3a4:	00 0c       	mov.b	@(r0,r0),r0
	...

000003b0 <smpc_pfr_tbl_2>:
 3b0:	2c 00       	mov.b	r0,@r12
 3b2:	00 10       	.word 0x0010
 3b4:	00 14       	mov.b	r1,@(r0,r0)
	...

000003c0 <smpc_pfr_tbl_3>:
 3c0:	30 00       	cmp/eq	r0,r0
 3c2:	00 00       	.word 0x0000
 3c4:	18 00       	mov.l	r0,@(0,r8)
	...

000003d0 <smpc_pfr_tbl_4>:
 3d0:	34 1c       	add	r1,r4
 3d2:	20 10       	mov.b	r1,@r0
	...

000003e0 <smpc_pfr_tbl_f>:
 3e0:	38 38       	sub	r3,r8
 3e2:	38 38       	sub	r3,r8
 3e4:	38 38       	sub	r3,r8
 3e6:	38 38       	sub	r3,r8
 3e8:	38 38       	sub	r3,r8
 3ea:	38 38       	sub	r3,r8
 3ec:	38 38       	sub	r3,r8
 3ee:	38 3c       	add	r3,r8

000003f0 <smpc_pfr_tbl>:
 3f0:	00 00       	.word 0x0000
 3f2:	03 90       	.word 0x0390
 3f4:	00 00       	.word 0x0000
 3f6:	03 a0       	.word 0x03a0
 3f8:	00 00       	.word 0x0000
 3fa:	03 b0       	.word 0x03b0
 3fc:	00 00       	.word 0x0000
 3fe:	03 c0       	.word 0x03c0
 400:	00 00       	.word 0x0000
 402:	03 d0       	.word 0x03d0
 404:	00 00       	.word 0x0000
 406:	03 d0       	.word 0x03d0
 408:	00 00       	.word 0x0000
 40a:	03 d0       	.word 0x03d0
 40c:	00 00       	.word 0x0000
 40e:	03 d0       	.word 0x03d0
 410:	00 00       	.word 0x0000
 412:	03 d0       	.word 0x03d0
 414:	00 00       	.word 0x0000
 416:	03 d0       	.word 0x03d0
 418:	00 00       	.word 0x0000
 41a:	03 d0       	.word 0x03d0
 41c:	00 00       	.word 0x0000
 41e:	03 d0       	.word 0x03d0
 420:	00 00       	.word 0x0000
 422:	03 d0       	.word 0x03d0
 424:	00 00       	.word 0x0000
 426:	03 d0       	.word 0x03d0
 428:	00 00       	.word 0x0000
 42a:	03 d0       	.word 0x03d0
 42c:	00 00       	.word 0x0000
 42e:	03 e0       	.word 0x03e0

00000430 <smpc_ptf_tbl>:
 430:	00 00       	.word 0x0000
 432:	00 22       	stc	vbr,r0
 434:	00 00       	.word 0x0000
 436:	00 7c       	mov.b	@(r0,r7),r0
 438:	00 00       	.word 0x0000
 43a:	00 a8       	.word 0x00a8
 43c:	00 00       	.word 0x0000
 43e:	00 e4       	mov.b	r14,@(r0,r0)
 440:	00 00       	.word 0x0000
 442:	01 26       	mov.l	r2,@(r0,r1)
 444:	00 00       	.word 0x0000
 446:	01 fe       	mov.l	@(r0,r15),r1
 448:	00 00       	.word 0x0000
 44a:	02 54       	mov.b	r5,@(r0,r2)
 44c:	00 00       	.word 0x0000
 44e:	02 92       	stc	r1_bank,r2
 450:	00 00       	.word 0x0000
 452:	02 be       	mov.l	@(r0,r11),r2
 454:	00 00       	.word 0x0000
 456:	02 ea       	.word 0x02ea
 458:	00 00       	.word 0x0000
 45a:	03 3c       	mov.b	@(r0,r3),r3
 45c:	00 00       	.word 0x0000
 45e:	03 40       	.word 0x0340
 460:	00 00       	.word 0x0000
 462:	03 6c       	mov.b	@(r0,r6),r3
 464:	00 00       	.word 0x0000
 466:	03 70       	.word 0x0370
 468:	00 00       	.word 0x0000
 46a:	03 74       	mov.b	r7,@(r0,r3)
 46c:	00 00       	.word 0x0000
 46e:	03 82       	stc	r0_bank,r3
