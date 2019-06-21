
sglG21.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SLPROG>:
   0:	4f 26       	lds.l	@r15+,pr
   2:	69 f6       	mov.l	@r15+,r9
   4:	00 0b       	rts	
   6:	68 f6       	mov.l	@r15+,r8

00000008 <_slPCMOn>:
   8:	2f 86       	mov.l	r8,@-r15
   a:	2f 96       	mov.l	r9,@-r15
   c:	4f 22       	sts.l	pr,@-r15
   e:	69 43       	mov	r4,r9
  10:	84 90       	mov.b	@(0,r9),r0
  12:	b0 88       	bsr	126 <_slSndPCMNum>
  14:	64 03       	mov	r0,r4
  16:	40 11       	cmp/pz	r0
  18:	8f f2       	bf.s	0 <SLPROG>
  1a:	63 23       	mov	r2,r3
  1c:	80 91       	mov.b	r0,@(1,r9)
  1e:	c6 dc       	mov.l	@(880,gbr),r0
  20:	44 11       	cmp/pz	r4
  22:	01 29       	movt	r1
  24:	62 03       	mov	r0,r2
  26:	e0 10       	mov	#16,r0
  28:	24 08       	tst	r0,r4
  2a:	31 1e       	addc	r1,r1
  2c:	c7 64       	mova	1c0 <PCMmodeTbl>,r0
  2e:	01 1c       	mov.b	@(r0,r1),r1
  30:	84 91       	mov.b	@(1,r9),r0
  32:	45 01       	shlr	r5
  34:	45 00       	shll	r5
  36:	67 53       	mov	r5,r7
  38:	40 08       	shll2	r0
  3a:	40 08       	shll2	r0
  3c:	20 1b       	or	r1,r0
  3e:	c8 02       	tst	#2,r0
  40:	8d 01       	bt.s	46 <pcmon_00>
  42:	46 01       	shlr	r6
  44:	46 01       	shlr	r6

00000046 <pcmon_00>:
  46:	46 00       	shll	r6
  48:	64 03       	mov	r0,r4
  4a:	b0 8b       	bsr	164 <GetPCMBuf>
  4c:	2f 26       	mov.l	r2,@-r15
  4e:	65 03       	mov	r0,r5
  50:	20 08       	tst	r0,r0
  52:	8d 5d       	bt.s	110 <pcmon_08>
  54:	e0 fe       	mov	#-2,r0
  56:	b0 97       	bsr	188 <SetPCMBuf>
  58:	00 09       	nop	
  5a:	13 63       	mov.l	r6,@(12,r3)
  5c:	13 71       	mov.l	r7,@(4,r3)
  5e:	62 f2       	mov.l	@r15,r2
  60:	13 02       	mov.l	r0,@(8,r3)
  62:	65 03       	mov	r0,r5
  64:	cb 02       	or	#2,r0
  66:	40 18       	shll8	r0
  68:	40 08       	shll2	r0
  6a:	40 08       	shll2	r0
  6c:	12 01       	mov.l	r0,@(4,r2)
  6e:	60 43       	mov	r4,r0
  70:	80 31       	mov.b	r0,@(1,r3)
  72:	90 55       	mov.w	120 <IMM_H07ff>,r0	! 7ff
  74:	64 73       	mov	r7,r4
  76:	13 71       	mov.l	r7,@(4,r3)
  78:	81 31       	mov.w	r0,@(2,r3)
  7a:	84 90       	mov.b	@(0,r9),r0
  7c:	e7 09       	mov	#9,r7
  7e:	e1 20       	mov	#32,r1
  80:	c8 10       	tst	#16,r0
  82:	8f 02       	bf.s	8a <pcmon_10>
  84:	47 18       	shll8	r7
  86:	47 00       	shll	r7
  88:	41 00       	shll	r1

0000008a <pcmon_10>:
  8a:	92 4b       	mov.w	124 <IMM_Hdfff>,r2	! dfff
  8c:	68 49       	swap.w	r4,r8
  8e:	68 8d       	extu.w	r8,r8
  90:	28 29       	and	r2,r8
  92:	e2 30       	mov	#48,r2
  94:	38 22       	cmp/hs	r2,r8
  96:	8d 01       	bt.s	9c <pcmon_11>
  98:	e2 00       	mov	#0,r2
  9a:	e2 01       	mov	#1,r2

0000009c <pcmon_11>:
  9c:	36 72       	cmp/hs	r7,r6
  9e:	8d 01       	bt.s	a4 <pcmon_12>
  a0:	e8 0c       	mov	#12,r8
  a2:	e8 4c       	mov	#76,r8

000000a4 <pcmon_12>:
  a4:	28 2b       	or	r2,r8
  a6:	e0 00       	mov	#0,r0
  a8:	13 04       	mov.l	r0,@(16,r3)
  aa:	65 33       	mov	r3,r5
  ac:	62 f6       	mov.l	@r15+,r2
  ae:	60 94       	mov.b	@r9+,r0
  b0:	61 94       	mov.b	@r9+,r1
  b2:	63 94       	mov.b	@r9+,r3
  b4:	20 1b       	or	r1,r0
  b6:	e1 70       	mov	#112,r1
  b8:	23 19       	and	r1,r3
  ba:	61 94       	mov.b	@r9+,r1
  bc:	41 11       	cmp/pz	r1
  be:	8d 03       	bt.s	c8 <pcmon_22>
  c0:	43 00       	shll	r3
  c2:	61 17       	not	r1,r1
  c4:	71 80       	add	#-128,r1
  c6:	61 1c       	extu.b	r1,r1

000000c8 <pcmon_22>:
  c8:	41 09       	shlr2	r1
  ca:	41 01       	shlr	r1
  cc:	21 3b       	or	r3,r1
  ce:	40 18       	shll8	r0
  d0:	20 1b       	or	r1,r0
  d2:	81 21       	mov.w	r0,@(2,r2)
  d4:	60 95       	mov.w	@r9+,r0
  d6:	93 24       	mov.w	122 <IMM_7fff>,r3	! 7fff
  d8:	61 94       	mov.b	@r9+,r1
  da:	20 39       	and	r3,r0
  dc:	63 94       	mov.b	@r9+,r3
  de:	81 24       	mov.w	r0,@(8,r2)
  e0:	43 08       	shll2	r3
  e2:	43 00       	shll	r3
  e4:	23 1b       	or	r1,r3
  e6:	61 94       	mov.b	@r9+,r1
  e8:	60 94       	mov.b	@r9+,r0
  ea:	41 08       	shll2	r1
  ec:	41 00       	shll	r1
  ee:	20 1b       	or	r1,r0
  f0:	43 18       	shll8	r3
  f2:	20 3b       	or	r3,r0
  f4:	81 25       	mov.w	r0,@(10,r2)
  f6:	64 23       	mov	r2,r4
  f8:	e1 85       	mov	#-123,r1
  fa:	c6 dd       	mov.l	@(884,gbr),r0
  fc:	24 10       	mov.b	r1,@r4
  fe:	25 80       	mov.b	r8,@r5
 100:	40 0b       	jsr	@r0
 102:	62 43       	mov	r4,r2
 104:	79 f6       	add	#-10,r9
 106:	84 91       	mov.b	@(1,r9),r0
 108:	4f 26       	lds.l	@r15+,pr
 10a:	69 f6       	mov.l	@r15+,r9
 10c:	00 0b       	rts	
 10e:	68 f6       	mov.l	@r15+,r8

00000110 <pcmon_08>:
 110:	7f 04       	add	#4,r15
 112:	e1 00       	mov	#0,r1
 114:	23 11       	mov.w	r1,@r3
 116:	4f 26       	lds.l	@r15+,pr
 118:	69 f6       	mov.l	@r15+,r9
 11a:	60 0e       	exts.b	r0,r0
 11c:	00 0b       	rts	
 11e:	68 f6       	mov.l	@r15+,r8

00000120 <IMM_H07ff>:
 120:	07 ff       	mac.l	@r15+,@r7+

00000122 <IMM_7fff>:
 122:	7f ff       	add	#-1,r15

00000124 <IMM_Hdfff>:
 124:	df ff       	mov.l	524 <IMM_PCM_Work+0x348>,r15

00000126 <_slSndPCMNum>:
 126:	c6 db       	mov.l	@(876,gbr),r0
 128:	e1 08       	mov	#8,r1
 12a:	62 03       	mov	r0,r2
 12c:	64 4e       	exts.b	r4,r4
 12e:	44 11       	cmp/pz	r4
 130:	e0 00       	mov	#0,r0
 132:	e3 02       	mov	#2,r3
 134:	33 0a       	subc	r0,r3

00000136 <pcmn_00>:
 136:	84 21       	mov.b	@(1,r2),r0
 138:	72 14       	add	#20,r2
 13a:	41 10       	dt	r1
 13c:	8f fb       	bf.s	136 <pcmn_00>
 13e:	33 0c       	add	r0,r3
 140:	e0 0f       	mov	#15,r0
 142:	23 09       	and	r0,r3
 144:	e0 08       	mov	#8,r0
 146:	33 06       	cmp/hi	r0,r3
 148:	8d 0a       	bt.s	160 <pcmn_09>
 14a:	e0 fd       	mov	#-3,r0
 14c:	c6 db       	mov.l	@(876,gbr),r0
 14e:	e1 07       	mov	#7,r1
 150:	62 03       	mov	r0,r2

00000152 <pcmn_01>:
 152:	84 20       	mov.b	@(0,r2),r0
 154:	20 08       	tst	r0,r0
 156:	89 02       	bt	15e <pcmn_02>
 158:	41 10       	dt	r1
 15a:	8f fa       	bf.s	152 <pcmn_01>
 15c:	72 14       	add	#20,r2

0000015e <pcmn_02>:
 15e:	e0 07       	mov	#7,r0

00000160 <pcmn_09>:
 160:	00 0b       	rts	
 162:	30 18       	sub	r1,r0

00000164 <GetPCMBuf>:
 164:	c5 59       	mov.w	@(178,gbr),r0
 166:	e2 ff       	mov	#-1,r2
 168:	42 28       	shll16	r2
 16a:	22 0b       	or	r0,r2
 16c:	61 4e       	exts.b	r4,r1
 16e:	41 04       	rotl	r1
 170:	e0 07       	mov	#7,r0
 172:	21 09       	and	r0,r1
 174:	c7 13       	mova	1c4 <BitFieldTbl>,r0
 176:	01 1c       	mov.b	@(r0,r1),r1
 178:	c4 b1       	mov.b	@(177,gbr),r0

0000017a <gtpb_00>:
 17a:	22 18       	tst	r1,r2
 17c:	89 02       	bt	184 <gtpb_01>
 17e:	40 10       	dt	r0
 180:	8f fb       	bf.s	17a <gtpb_00>
 182:	41 00       	shll	r1

00000184 <gtpb_01>:
 184:	00 0b       	rts	
 186:	00 09       	nop	

00000188 <SetPCMBuf>:
 188:	60 4e       	exts.b	r4,r0
 18a:	40 04       	rotl	r0
 18c:	c9 07       	and	#7,r0
 18e:	61 03       	mov	r0,r1
 190:	c7 0c       	mova	1c4 <BitFieldTbl>,r0
 192:	02 1c       	mov.b	@(r0,r1),r2
 194:	c4 b1       	mov.b	@(177,gbr),r0
 196:	30 58       	sub	r5,r0
 198:	20 08       	tst	r0,r0
 19a:	89 02       	bt	1a2 <stpb_02>

0000019c <stpb_01>:
 19c:	40 10       	dt	r0
 19e:	8f fd       	bf.s	19c <stpb_01>
 1a0:	42 00       	shll	r2

000001a2 <stpb_02>:
 1a2:	c5 59       	mov.w	@(178,gbr),r0
 1a4:	41 00       	shll	r1
 1a6:	20 2b       	or	r2,r0
 1a8:	c1 59       	mov.w	r0,@(178,gbr)
 1aa:	c7 08       	mova	1cc <FieldTbl>,r0
 1ac:	00 1d       	mov.w	@(r0,r1),r0
 1ae:	d1 0b       	mov.l	1dc <IMM_PCM_Work>,r1	! 0 <SLPROG>
 1b0:	45 28       	shll16	r5
 1b2:	45 09       	shlr2	r5
 1b4:	45 01       	shlr	r5
 1b6:	30 5c       	add	r5,r0
 1b8:	61 12       	mov.l	@r1,r1
 1ba:	00 0b       	rts	
 1bc:	30 1c       	add	r1,r0
	...

000001c0 <PCMmodeTbl>:
 1c0:	02 82       	stc	r0_bank,r2
 1c2:	01 81       	.word 0x0181

000001c4 <BitFieldTbl>:
 1c4:	01 01       	.word 0x0101
 1c6:	01 03       	bsrf	r1
 1c8:	03 0f       	mac.l	@r0+,@r3+
 1ca:	01 01       	.word 0x0101

000001cc <FieldTbl>:
 1cc:	e0 00       	mov	#0,r0
 1ce:	e0 00       	mov	#0,r0
 1d0:	e0 00       	mov	#0,r0
 1d2:	c0 00       	mov.b	r0,@(0,gbr)
 1d4:	c0 00       	mov.b	r0,@(0,gbr)
 1d6:	80 00       	mov.b	r0,@(0,r0)
 1d8:	e0 00       	mov	#0,r0
 1da:	e0 00       	mov	#0,r0

000001dc <IMM_PCM_Work>:
 1dc:	00 00       	.word 0x0000
	...
