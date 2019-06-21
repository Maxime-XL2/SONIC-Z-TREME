
sglF21.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMCircle>:
   0:	2f d6       	mov.l	r13,@-r15
   2:	d0 3f       	mov.l	100 <IMM_BitMapTop>,r0	! 0 <_slBMCircle>
   4:	53 02       	mov.l	@(8,r0),r3
   6:	2f c6       	mov.l	r12,@-r15
   8:	2f b6       	mov.l	r11,@-r15
   a:	2f a6       	mov.l	r10,@-r15
   c:	2f 96       	mov.l	r9,@-r15
   e:	2f 86       	mov.l	r8,@-r15
  10:	62 39       	swap.w	r3,r2
  12:	62 2f       	exts.w	r2,r2
  14:	63 3f       	exts.w	r3,r3
  16:	34 2c       	add	r2,r4
  18:	35 3c       	add	r3,r5
  1a:	5b 00       	mov.l	@(0,r0),r11
  1c:	53 01       	mov.l	@(4,r0),r3
  1e:	84 0c       	mov.b	@(12,r0),r0
  20:	62 39       	swap.w	r3,r2
  22:	62 2f       	exts.w	r2,r2
  24:	63 3f       	exts.w	r3,r3
  26:	ec 02       	mov	#2,r12
  28:	20 08       	tst	r0,r0
  2a:	8d 04       	bt.s	36 <crcl_01>
  2c:	6d 63       	mov	r6,r13
  2e:	45 00       	shll	r5
  30:	43 00       	shll	r3
  32:	4c 00       	shll	r12
  34:	4d 00       	shll	r13

00000036 <crcl_01>:
  36:	45 00       	shll	r5
  38:	45 18       	shll8	r5
  3a:	43 00       	shll	r3
  3c:	43 18       	shll8	r3
  3e:	4c 18       	shll8	r12
  40:	4d 00       	shll	r13
  42:	4d 18       	shll8	r13
  44:	e9 00       	mov	#0,r9
  46:	ea 00       	mov	#0,r10
  48:	68 63       	mov	r6,r8
  4a:	60 43       	mov	r4,r0

0000004c <crcl_10>:
  4c:	30 8c       	add	r8,r0
  4e:	30 22       	cmp/hs	r2,r0
  50:	8d 0c       	bt.s	6c <crcl_12>
  52:	61 53       	mov	r5,r1
  54:	31 ac       	add	r10,r1
  56:	31 32       	cmp/hs	r3,r1
  58:	8d 01       	bt.s	5e <crcl_11>
  5a:	30 1c       	add	r1,r0
  5c:	0b 74       	mov.b	r7,@(r0,r11)

0000005e <crcl_11>:
  5e:	30 18       	sub	r1,r0
  60:	61 53       	mov	r5,r1
  62:	31 a8       	sub	r10,r1
  64:	31 32       	cmp/hs	r3,r1
  66:	8d 01       	bt.s	6c <crcl_12>
  68:	30 1c       	add	r1,r0
  6a:	0b 74       	mov.b	r7,@(r0,r11)

0000006c <crcl_12>:
  6c:	60 43       	mov	r4,r0
  6e:	30 88       	sub	r8,r0
  70:	30 22       	cmp/hs	r2,r0
  72:	8d 0c       	bt.s	8e <crcl_14>
  74:	61 53       	mov	r5,r1
  76:	31 ac       	add	r10,r1
  78:	31 32       	cmp/hs	r3,r1
  7a:	8d 01       	bt.s	80 <crcl_13>
  7c:	30 1c       	add	r1,r0
  7e:	0b 74       	mov.b	r7,@(r0,r11)

00000080 <crcl_13>:
  80:	30 18       	sub	r1,r0
  82:	61 53       	mov	r5,r1
  84:	31 a8       	sub	r10,r1
  86:	31 32       	cmp/hs	r3,r1
  88:	8d 01       	bt.s	8e <crcl_14>
  8a:	30 1c       	add	r1,r0
  8c:	0b 74       	mov.b	r7,@(r0,r11)

0000008e <crcl_14>:
  8e:	60 43       	mov	r4,r0
  90:	30 9c       	add	r9,r0
  92:	30 22       	cmp/hs	r2,r0
  94:	8d 0c       	bt.s	b0 <crcl_16>
  96:	61 53       	mov	r5,r1
  98:	31 dc       	add	r13,r1
  9a:	31 32       	cmp/hs	r3,r1
  9c:	8d 01       	bt.s	a2 <crcl_15>
  9e:	30 1c       	add	r1,r0
  a0:	0b 74       	mov.b	r7,@(r0,r11)

000000a2 <crcl_15>:
  a2:	30 18       	sub	r1,r0
  a4:	61 53       	mov	r5,r1
  a6:	31 d8       	sub	r13,r1
  a8:	31 32       	cmp/hs	r3,r1
  aa:	8d 01       	bt.s	b0 <crcl_16>
  ac:	30 1c       	add	r1,r0
  ae:	0b 74       	mov.b	r7,@(r0,r11)

000000b0 <crcl_16>:
  b0:	60 43       	mov	r4,r0
  b2:	30 98       	sub	r9,r0
  b4:	30 22       	cmp/hs	r2,r0
  b6:	8d 0c       	bt.s	d2 <crcl_18>
  b8:	61 53       	mov	r5,r1
  ba:	31 dc       	add	r13,r1
  bc:	31 32       	cmp/hs	r3,r1
  be:	8d 01       	bt.s	c4 <crcl_17>
  c0:	30 1c       	add	r1,r0
  c2:	0b 74       	mov.b	r7,@(r0,r11)

000000c4 <crcl_17>:
  c4:	30 18       	sub	r1,r0
  c6:	61 53       	mov	r5,r1
  c8:	31 d8       	sub	r13,r1
  ca:	31 32       	cmp/hs	r3,r1
  cc:	8d 01       	bt.s	d2 <crcl_18>
  ce:	30 1c       	add	r1,r0
  d0:	0b 74       	mov.b	r7,@(r0,r11)

000000d2 <crcl_18>:
  d2:	36 98       	sub	r9,r6
  d4:	36 98       	sub	r9,r6
  d6:	76 01       	add	#1,r6
  d8:	79 01       	add	#1,r9
  da:	46 11       	cmp/pz	r6
  dc:	8d 05       	bt.s	ea <crcl_19>
  de:	3a cc       	add	r12,r10
  e0:	36 8c       	add	r8,r6
  e2:	36 8c       	add	r8,r6
  e4:	76 fe       	add	#-2,r6
  e6:	78 ff       	add	#-1,r8
  e8:	3d c8       	sub	r12,r13

000000ea <crcl_19>:
  ea:	38 93       	cmp/ge	r9,r8
  ec:	8d ae       	bt.s	4c <crcl_10>
  ee:	60 43       	mov	r4,r0
  f0:	68 f6       	mov.l	@r15+,r8
  f2:	69 f6       	mov.l	@r15+,r9
  f4:	6a f6       	mov.l	@r15+,r10
  f6:	6b f6       	mov.l	@r15+,r11
  f8:	6c f6       	mov.l	@r15+,r12
  fa:	00 0b       	rts	
  fc:	6d f6       	mov.l	@r15+,r13
	...

00000100 <IMM_BitMapTop>:
 100:	00 00       	.word 0x0000
	...
