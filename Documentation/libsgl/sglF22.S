
sglF22.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMLine>:
   0:	d0 79       	mov.l	1e8 <IMM_BitMapTop>,r0	! 0 <_slBMLine>
   2:	2f a6       	mov.l	r10,@-r15
   4:	2f 96       	mov.l	r9,@-r15
   6:	2f 86       	mov.l	r8,@-r15
   8:	68 06       	mov.l	@r0+,r8
   a:	69 05       	mov.w	@r0+,r9
   c:	6a 05       	mov.w	@r0+,r10
   e:	62 05       	mov.w	@r0+,r2
  10:	63 01       	mov.w	@r0,r3
  12:	34 2c       	add	r2,r4
  14:	35 3c       	add	r3,r5
  16:	36 2c       	add	r2,r6
  18:	37 3c       	add	r3,r7
  1a:	e3 ff       	mov	#-1,r3
  1c:	43 18       	shll8	r3
  1e:	44 11       	cmp/pz	r4
  20:	8f 09       	bf.s	36 <line_00>
  22:	46 11       	cmp/pz	r6
  24:	8d 16       	bt.s	54 <line_05>
  26:	60 73       	mov	r7,r0
  28:	26 4a       	xor	r4,r6
  2a:	24 6a       	xor	r6,r4
  2c:	26 4a       	xor	r4,r6
  2e:	27 5a       	xor	r5,r7
  30:	25 7a       	xor	r7,r5
  32:	a0 03       	bra	3c <line_01>
  34:	27 5a       	xor	r5,r7

00000036 <line_00>:
  36:	46 11       	cmp/pz	r6
  38:	8f 36       	bf.s	a8 <line_out>
  3a:	60 53       	mov	r5,r0

0000003c <line_01>:
  3c:	30 78       	sub	r7,r0
  3e:	30 4d       	dmuls.l	r4,r0
  40:	60 63       	mov	r6,r0
  42:	30 48       	sub	r4,r0
  44:	13 00       	mov.l	r0,@(0,r3)
  46:	00 0a       	sts	mach,r0
  48:	01 1a       	sts	macl,r1
  4a:	13 04       	mov.l	r0,@(16,r3)
  4c:	13 15       	mov.l	r1,@(20,r3)
  4e:	e4 00       	mov	#0,r4
  50:	50 37       	mov.l	@(28,r3),r0
  52:	35 0c       	add	r0,r5

00000054 <line_05>:
  54:	79 ff       	add	#-1,r9
  56:	34 97       	cmp/gt	r9,r4
  58:	8d 09       	bt.s	6e <line_06>
  5a:	39 63       	cmp/ge	r6,r9
  5c:	8d 18       	bt.s	90 <line_10>
  5e:	60 93       	mov	r9,r0
  60:	26 4a       	xor	r4,r6
  62:	24 6a       	xor	r6,r4
  64:	26 4a       	xor	r4,r6
  66:	27 5a       	xor	r5,r7
  68:	25 7a       	xor	r7,r5
  6a:	a0 03       	bra	74 <line_07>
  6c:	27 5a       	xor	r5,r7

0000006e <line_06>:
  6e:	36 97       	cmp/gt	r9,r6
  70:	8d 1a       	bt.s	a8 <line_out>
  72:	60 93       	mov	r9,r0

00000074 <line_07>:
  74:	30 48       	sub	r4,r0
  76:	61 73       	mov	r7,r1
  78:	31 58       	sub	r5,r1
  7a:	31 0d       	dmuls.l	r0,r1
  7c:	60 63       	mov	r6,r0
  7e:	30 48       	sub	r4,r0
  80:	13 00       	mov.l	r0,@(0,r3)
  82:	00 0a       	sts	mach,r0
  84:	01 1a       	sts	macl,r1
  86:	13 04       	mov.l	r0,@(16,r3)
  88:	13 15       	mov.l	r1,@(20,r3)
  8a:	64 93       	mov	r9,r4
  8c:	50 37       	mov.l	@(28,r3),r0
  8e:	35 0c       	add	r0,r5

00000090 <line_10>:
  90:	45 11       	cmp/pz	r5
  92:	8f 0e       	bf.s	b2 <line_11>
  94:	47 11       	cmp/pz	r7
  96:	8d 1b       	bt.s	d0 <line_15>
  98:	60 63       	mov	r6,r0
  9a:	26 4a       	xor	r4,r6
  9c:	24 6a       	xor	r6,r4
  9e:	26 4a       	xor	r4,r6
  a0:	27 5a       	xor	r5,r7
  a2:	25 7a       	xor	r7,r5
  a4:	a0 08       	bra	b8 <line_12>
  a6:	27 5a       	xor	r5,r7

000000a8 <line_out>:
  a8:	68 f6       	mov.l	@r15+,r8
  aa:	69 f6       	mov.l	@r15+,r9
  ac:	6a f6       	mov.l	@r15+,r10
  ae:	00 0b       	rts	
  b0:	e0 00       	mov	#0,r0

000000b2 <line_11>:
  b2:	47 11       	cmp/pz	r7
  b4:	8f f8       	bf.s	a8 <line_out>
  b6:	60 43       	mov	r4,r0

000000b8 <line_12>:
  b8:	30 68       	sub	r6,r0
  ba:	30 5d       	dmuls.l	r5,r0
  bc:	60 73       	mov	r7,r0
  be:	30 58       	sub	r5,r0
  c0:	13 00       	mov.l	r0,@(0,r3)
  c2:	00 0a       	sts	mach,r0
  c4:	01 1a       	sts	macl,r1
  c6:	13 04       	mov.l	r0,@(16,r3)
  c8:	13 15       	mov.l	r1,@(20,r3)
  ca:	e5 00       	mov	#0,r5
  cc:	50 37       	mov.l	@(28,r3),r0
  ce:	34 0c       	add	r0,r4

000000d0 <line_15>:
  d0:	7a ff       	add	#-1,r10
  d2:	35 a7       	cmp/gt	r10,r5
  d4:	8d 09       	bt.s	ea <line_16>
  d6:	3a 73       	cmp/ge	r7,r10
  d8:	8d 18       	bt.s	10c <line_20>
  da:	60 a3       	mov	r10,r0
  dc:	26 4a       	xor	r4,r6
  de:	24 6a       	xor	r6,r4
  e0:	26 4a       	xor	r4,r6
  e2:	27 5a       	xor	r5,r7
  e4:	25 7a       	xor	r7,r5
  e6:	a0 03       	bra	f0 <line_17>
  e8:	27 5a       	xor	r5,r7

000000ea <line_16>:
  ea:	37 a7       	cmp/gt	r10,r7
  ec:	8d dc       	bt.s	a8 <line_out>
  ee:	60 a3       	mov	r10,r0

000000f0 <line_17>:
  f0:	30 58       	sub	r5,r0
  f2:	61 43       	mov	r4,r1
  f4:	31 68       	sub	r6,r1
  f6:	31 0d       	dmuls.l	r0,r1
  f8:	60 73       	mov	r7,r0
  fa:	30 58       	sub	r5,r0
  fc:	13 00       	mov.l	r0,@(0,r3)
  fe:	00 0a       	sts	mach,r0
 100:	01 1a       	sts	macl,r1
 102:	13 04       	mov.l	r0,@(16,r3)
 104:	13 15       	mov.l	r1,@(20,r3)
 106:	65 a3       	mov	r10,r5
 108:	50 37       	mov.l	@(28,r3),r0
 10a:	34 0c       	add	r0,r4

0000010c <line_20>:
 10c:	62 63       	mov	r6,r2
 10e:	32 48       	sub	r4,r2
 110:	42 11       	cmp/pz	r2
 112:	8d 01       	bt.s	118 <line_21>
 114:	63 73       	mov	r7,r3
 116:	62 2b       	neg	r2,r2

00000118 <line_21>:
 118:	33 58       	sub	r5,r3
 11a:	43 11       	cmp/pz	r3
 11c:	89 00       	bt	120 <line_22>
 11e:	63 3b       	neg	r3,r3

00000120 <line_22>:
 120:	33 23       	cmp/ge	r2,r3
 122:	8d 2f       	bt.s	184 <line_30>
 124:	36 43       	cmp/ge	r4,r6
 126:	8d 08       	bt.s	13a <line_24>
 128:	ea 02       	mov	#2,r10
 12a:	26 4a       	xor	r4,r6
 12c:	24 6a       	xor	r6,r4
 12e:	26 4a       	xor	r4,r6
 130:	35 73       	cmp/ge	r7,r5
 132:	8d 05       	bt.s	140 <line_25>
 134:	65 73       	mov	r7,r5
 136:	a0 03       	bra	140 <line_25>
 138:	6a ab       	neg	r10,r10

0000013a <line_24>:
 13a:	37 53       	cmp/ge	r5,r7
 13c:	89 00       	bt	140 <line_25>
 13e:	6a ab       	neg	r10,r10

00000140 <line_25>:
 140:	d0 29       	mov.l	1e8 <IMM_BitMapTop>,r0	! 0 <_slBMLine>
 142:	4a 18       	shll8	r10
 144:	84 0c       	mov.b	@(12,r0),r0
 146:	45 18       	shll8	r5
 148:	20 08       	tst	r0,r0
 14a:	8d 02       	bt.s	152 <line_26>
 14c:	45 00       	shll	r5
 14e:	45 00       	shll	r5
 150:	4a 00       	shll	r10

00000152 <line_26>:
 152:	50 f3       	mov.l	@(12,r15),r0
 154:	38 4c       	add	r4,r8
 156:	38 5c       	add	r5,r8
 158:	28 00       	mov.b	r0,@r8
 15a:	61 23       	mov	r2,r1
 15c:	41 01       	shlr	r1
 15e:	74 01       	add	#1,r4
 160:	34 67       	cmp/gt	r6,r4
 162:	8d 0a       	bt.s	17a <line_29>
 164:	78 01       	add	#1,r8

00000166 <line_27>:
 166:	31 38       	sub	r3,r1
 168:	41 11       	cmp/pz	r1
 16a:	89 01       	bt	170 <line_28>
 16c:	31 2c       	add	r2,r1
 16e:	38 ac       	add	r10,r8

00000170 <line_28>:
 170:	28 00       	mov.b	r0,@r8
 172:	74 01       	add	#1,r4
 174:	36 43       	cmp/ge	r4,r6
 176:	8d f6       	bt.s	166 <line_27>
 178:	78 01       	add	#1,r8

0000017a <line_29>:
 17a:	68 f6       	mov.l	@r15+,r8
 17c:	69 f6       	mov.l	@r15+,r9
 17e:	6a f6       	mov.l	@r15+,r10
 180:	00 0b       	rts	
 182:	e0 01       	mov	#1,r0

00000184 <line_30>:
 184:	37 53       	cmp/ge	r5,r7
 186:	8d 08       	bt.s	19a <line_32>
 188:	ea 01       	mov	#1,r10
 18a:	27 5a       	xor	r5,r7
 18c:	25 7a       	xor	r7,r5
 18e:	27 5a       	xor	r5,r7
 190:	34 63       	cmp/ge	r6,r4
 192:	8d 05       	bt.s	1a0 <line_34>
 194:	64 63       	mov	r6,r4
 196:	a0 03       	bra	1a0 <line_34>
 198:	6a ab       	neg	r10,r10

0000019a <line_32>:
 19a:	36 47       	cmp/gt	r4,r6
 19c:	89 00       	bt	1a0 <line_34>
 19e:	6a ab       	neg	r10,r10

000001a0 <line_34>:
 1a0:	d0 11       	mov.l	1e8 <IMM_BitMapTop>,r0	! 0 <_slBMLine>
 1a2:	e9 02       	mov	#2,r9
 1a4:	84 0c       	mov.b	@(12,r0),r0
 1a6:	61 53       	mov	r5,r1
 1a8:	41 18       	shll8	r1
 1aa:	20 08       	tst	r0,r0
 1ac:	8d 02       	bt.s	1b4 <line_35>
 1ae:	41 00       	shll	r1
 1b0:	41 00       	shll	r1
 1b2:	49 00       	shll	r9

000001b4 <line_35>:
 1b4:	49 18       	shll8	r9
 1b6:	50 f3       	mov.l	@(12,r15),r0
 1b8:	38 4c       	add	r4,r8
 1ba:	38 1c       	add	r1,r8
 1bc:	28 00       	mov.b	r0,@r8
 1be:	61 33       	mov	r3,r1
 1c0:	41 01       	shlr	r1
 1c2:	75 01       	add	#1,r5
 1c4:	35 77       	cmp/gt	r7,r5
 1c6:	8d 0a       	bt.s	1de <line_39>
 1c8:	38 9c       	add	r9,r8

000001ca <line_36>:
 1ca:	31 28       	sub	r2,r1
 1cc:	41 11       	cmp/pz	r1
 1ce:	89 01       	bt	1d4 <line_37>
 1d0:	31 3c       	add	r3,r1
 1d2:	38 ac       	add	r10,r8

000001d4 <line_37>:
 1d4:	28 00       	mov.b	r0,@r8
 1d6:	75 01       	add	#1,r5
 1d8:	37 53       	cmp/ge	r5,r7
 1da:	8d f6       	bt.s	1ca <line_36>
 1dc:	38 9c       	add	r9,r8

000001de <line_39>:
 1de:	68 f6       	mov.l	@r15+,r8
 1e0:	69 f6       	mov.l	@r15+,r9
 1e2:	6a f6       	mov.l	@r15+,r10
 1e4:	00 0b       	rts	
 1e6:	e0 01       	mov	#1,r0

000001e8 <IMM_BitMapTop>:
 1e8:	00 00       	.word 0x0000
	...
