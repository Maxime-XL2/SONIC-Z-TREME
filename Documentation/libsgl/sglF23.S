
sglF23.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMBox>:
   0:	d0 3d       	mov.l	f8 <IMM_BitMapTop>,r0	! 0 <_slBMBox>
   2:	36 43       	cmp/ge	r4,r6
   4:	8d 03       	bt.s	e <box_00>
   6:	37 53       	cmp/ge	r5,r7
   8:	26 4a       	xor	r4,r6
   a:	24 6a       	xor	r6,r4
   c:	26 4a       	xor	r4,r6

0000000e <box_00>:
   e:	8d 03       	bt.s	18 <box_01>
  10:	53 02       	mov.l	@(8,r0),r3
  12:	27 5a       	xor	r5,r7
  14:	25 7a       	xor	r7,r5
  16:	27 5a       	xor	r5,r7

00000018 <box_01>:
  18:	62 39       	swap.w	r3,r2
  1a:	62 2f       	exts.w	r2,r2
  1c:	63 3f       	exts.w	r3,r3
  1e:	36 2c       	add	r2,r6
  20:	46 11       	cmp/pz	r6
  22:	8f 65       	bf.s	f0 <box_out>
  24:	37 3c       	add	r3,r7
  26:	47 11       	cmp/pz	r7
  28:	8f 62       	bf.s	f0 <box_out>
  2a:	35 3c       	add	r3,r5
  2c:	53 01       	mov.l	@(4,r0),r3
  2e:	34 2c       	add	r2,r4
  30:	62 39       	swap.w	r3,r2
  32:	62 2f       	exts.w	r2,r2
  34:	34 23       	cmp/ge	r2,r4
  36:	8d 5b       	bt.s	f0 <box_out>
  38:	63 3f       	exts.w	r3,r3
  3a:	35 33       	cmp/ge	r3,r5
  3c:	8d 58       	bt.s	f0 <box_out>
  3e:	73 ff       	add	#-1,r3
  40:	e1 02       	mov	#2,r1
  42:	2f a6       	mov.l	r10,@-r15
  44:	2f 96       	mov.l	r9,@-r15
  46:	2f 86       	mov.l	r8,@-r15
  48:	59 00       	mov.l	@(0,r0),r9
  4a:	84 0c       	mov.b	@(12,r0),r0
  4c:	58 f3       	mov.l	@(12,r15),r8
  4e:	43 00       	shll	r3
  50:	20 08       	tst	r0,r0
  52:	8d 04       	bt.s	5e <box_02>
  54:	41 18       	shll8	r1
  56:	41 00       	shll	r1
  58:	43 00       	shll	r3
  5a:	45 00       	shll	r5
  5c:	47 00       	shll	r7

0000005e <box_02>:
  5e:	43 18       	shll8	r3
  60:	45 00       	shll	r5
  62:	45 18       	shll8	r5
  64:	47 00       	shll	r7
  66:	72 ff       	add	#-1,r2
  68:	2f 26       	mov.l	r2,@-r15
  6a:	44 11       	cmp/pz	r4
  6c:	8d 05       	bt.s	7a <box_03>
  6e:	47 18       	shll8	r7
  70:	45 11       	cmp/pz	r5
  72:	8d 12       	bt.s	9a <box_11>
  74:	e4 00       	mov	#0,r4
  76:	a0 1d       	bra	b4 <box_14>
  78:	62 f6       	mov.l	@r15+,r2

0000007a <box_03>:
  7a:	37 37       	cmp/gt	r3,r7
  7c:	8f 01       	bf.s	82 <box_04>
  7e:	62 73       	mov	r7,r2
  80:	62 33       	mov	r3,r2

00000082 <box_04>:
  82:	6a 93       	mov	r9,r10
  84:	3a 4c       	add	r4,r10
  86:	45 11       	cmp/pz	r5
  88:	8d 01       	bt.s	8e <box_05>
  8a:	60 53       	mov	r5,r0
  8c:	e0 00       	mov	#0,r0

0000008e <box_05>:
  8e:	0a 84       	mov.b	r8,@(r0,r10)
  90:	30 23       	cmp/ge	r2,r0
  92:	8f fc       	bf.s	8e <box_05>
  94:	30 1c       	add	r1,r0

00000096 <box_10>:
  96:	45 11       	cmp/pz	r5
  98:	8f 0b       	bf.s	b2 <box_13>

0000009a <box_11>:
  9a:	6a 93       	mov	r9,r10
  9c:	62 f2       	mov.l	@r15,r2
  9e:	3a 5c       	add	r5,r10
  a0:	36 23       	cmp/ge	r2,r6
  a2:	8d 01       	bt.s	a8 <box_12>
  a4:	60 43       	mov	r4,r0
  a6:	62 63       	mov	r6,r2

000000a8 <box_12>:
  a8:	0a 84       	mov.b	r8,@(r0,r10)
  aa:	30 23       	cmp/ge	r2,r0
  ac:	8f fc       	bf.s	a8 <box_12>
  ae:	70 01       	add	#1,r0
  b0:	a0 01       	bra	b6 <box_15>

000000b2 <box_13>:
  b2:	62 f6       	mov.l	@r15+,r2

000000b4 <box_14>:
  b4:	e5 00       	mov	#0,r5

000000b6 <box_15>:
  b6:	36 27       	cmp/gt	r2,r6
  b8:	8d 0a       	bt.s	d0 <box_20>
  ba:	6a 93       	mov	r9,r10
  bc:	3a 6c       	add	r6,r10
  be:	60 53       	mov	r5,r0
  c0:	33 73       	cmp/ge	r7,r3
  c2:	8d 01       	bt.s	c8 <box_16>
  c4:	65 73       	mov	r7,r5
  c6:	65 33       	mov	r3,r5

000000c8 <box_16>:
  c8:	0a 84       	mov.b	r8,@(r0,r10)
  ca:	30 53       	cmp/ge	r5,r0
  cc:	8f fc       	bf.s	c8 <box_16>
  ce:	30 1c       	add	r1,r0

000000d0 <box_20>:
  d0:	37 37       	cmp/gt	r3,r7
  d2:	8d 08       	bt.s	e6 <box_25>
  d4:	39 7c       	add	r7,r9
  d6:	32 63       	cmp/ge	r6,r2
  d8:	8d 01       	bt.s	de <box_21>
  da:	60 43       	mov	r4,r0
  dc:	66 23       	mov	r2,r6

000000de <box_21>:
  de:	09 84       	mov.b	r8,@(r0,r9)
  e0:	30 63       	cmp/ge	r6,r0
  e2:	8f fc       	bf.s	de <box_21>
  e4:	70 01       	add	#1,r0

000000e6 <box_25>:
  e6:	68 f6       	mov.l	@r15+,r8
  e8:	69 f6       	mov.l	@r15+,r9
  ea:	6a f6       	mov.l	@r15+,r10
  ec:	00 0b       	rts	
  ee:	e0 01       	mov	#1,r0

000000f0 <box_out>:
  f0:	00 0b       	rts	
  f2:	e0 00       	mov	#0,r0
  f4:	00 0b       	rts	
  f6:	00 09       	nop	

000000f8 <IMM_BitMapTop>:
  f8:	00 00       	.word 0x0000
	...
