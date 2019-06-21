
sglF03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPrintFX>:
   0:	c4 21       	mov.b	@(33,gbr),r0
   2:	44 11       	cmp/pz	r4
   4:	8d 02       	bt.s	c <dsfx_01>
   6:	e7 00       	mov	#0,r7
   8:	64 4b       	neg	r4,r4
   a:	e7 5a       	mov	#90,r7

0000000c <dsfx_01>:
   c:	40 18       	shll8	r0
   e:	27 0b       	or	r0,r7
  10:	2f 76       	mov.l	r7,@-r15
  12:	70 60       	add	#96,r0
  14:	67 03       	mov	r0,r7
  16:	c7 2e       	mova	d0 <dec_tbl>,r0
  18:	e1 04       	mov	#4,r1
  1a:	66 49       	swap.w	r4,r6
  1c:	66 6d       	extu.w	r6,r6
  1e:	e3 00       	mov	#0,r3

00000020 <dsfx_02>:
  20:	62 05       	mov.w	@r0+,r2
  22:	43 08       	shll2	r3
  24:	43 08       	shll2	r3
  26:	73 ff       	add	#-1,r3
  28:	00 08       	clrt	

0000002a <dsfx_03>:
  2a:	36 2a       	subc	r2,r6
  2c:	8f fd       	bf.s	2a <dsfx_03>
  2e:	73 01       	add	#1,r3
  30:	41 10       	dt	r1
  32:	8f f5       	bf.s	20 <dsfx_02>
  34:	36 2c       	add	r2,r6
  36:	75 0c       	add	#12,r5
  38:	36 6c       	add	r6,r6
  3a:	36 7c       	add	r7,r6
  3c:	25 65       	mov.w	r6,@-r5
  3e:	e1 04       	mov	#4,r1

00000040 <dsfx_10>:
  40:	23 38       	tst	r3,r3
  42:	8d 08       	bt.s	56 <dsfx_11>
  44:	60 33       	mov	r3,r0
  46:	c9 0f       	and	#15,r0
  48:	30 0c       	add	r0,r0
  4a:	30 7c       	add	r7,r0
  4c:	25 05       	mov.w	r0,@-r5
  4e:	43 09       	shlr2	r3
  50:	41 10       	dt	r1
  52:	8f f5       	bf.s	40 <dsfx_10>
  54:	43 09       	shlr2	r3

00000056 <dsfx_11>:
  56:	60 f6       	mov.l	@r15+,r0
  58:	21 18       	tst	r1,r1
  5a:	8d 04       	bt.s	66 <dsfx_15>
  5c:	25 05       	mov.w	r0,@-r5
  5e:	e0 00       	mov	#0,r0

00000060 <dsfx_12>:
  60:	41 10       	dt	r1
  62:	8f fd       	bf.s	60 <dsfx_12>
  64:	25 05       	mov.w	r0,@-r5

00000066 <dsfx_15>:
  66:	e0 fc       	mov	#-4,r0
  68:	30 7c       	add	r7,r0
  6a:	e6 00       	mov	#0,r6
  6c:	44 28       	shll16	r4
  6e:	44 00       	shll	r4
  70:	8f 01       	bf.s	76 <dsfx_20>
  72:	81 56       	mov.w	r0,@(12,r5)
  74:	96 58       	mov.w	128 <IMM_B_15>,r6	! c350

00000076 <dsfx_20>:
  76:	75 0e       	add	#14,r5
  78:	44 29       	shlr16	r4
  7a:	c7 17       	mova	d8 <bittbl2_0>,r0
  7c:	e1 05       	mov	#5,r1
  7e:	e2 0e       	mov	#14,r2
  80:	66 6d       	extu.w	r6,r6

00000082 <dsfx_21>:
  82:	63 43       	mov	r4,r3
  84:	23 29       	and	r2,r3
  86:	03 3d       	mov.w	@(r0,r3),r3
  88:	44 09       	shlr2	r4
  8a:	44 01       	shlr	r4
  8c:	63 3d       	extu.w	r3,r3
  8e:	36 3c       	add	r3,r6
  90:	41 10       	dt	r1
  92:	8f f6       	bf.s	82 <dsfx_21>
  94:	70 10       	add	#16,r0
  96:	c7 0e       	mova	d0 <dec_tbl>,r0
  98:	e1 04       	mov	#4,r1
  9a:	77 fe       	add	#-2,r7

0000009c <dsfx_30>:
  9c:	63 05       	mov.w	@r0+,r3
  9e:	64 73       	mov	r7,r4
  a0:	00 08       	clrt	

000000a2 <dsfx_31>:
  a2:	36 3a       	subc	r3,r6
  a4:	8f fd       	bf.s	a2 <dsfx_31>
  a6:	74 02       	add	#2,r4
  a8:	36 3c       	add	r3,r6
  aa:	25 41       	mov.w	r4,@r5
  ac:	26 68       	tst	r6,r6
  ae:	8d 07       	bt.s	c0 <dsfx_35>
  b0:	75 02       	add	#2,r5
  b2:	41 10       	dt	r1
  b4:	8b f2       	bf	9c <dsfx_30>
  b6:	36 6c       	add	r6,r6
  b8:	36 7c       	add	r7,r6
  ba:	25 61       	mov.w	r6,@r5
  bc:	a0 05       	bra	ca <dsfx_39>
  be:	75 02       	add	#2,r5

000000c0 <dsfx_35>:
  c0:	e0 00       	mov	#0,r0

000000c2 <dsfx_36>:
  c2:	25 01       	mov.w	r0,@r5
  c4:	41 10       	dt	r1
  c6:	8f fc       	bf.s	c2 <dsfx_36>
  c8:	75 02       	add	#2,r5

000000ca <dsfx_39>:
  ca:	00 0b       	rts	
  cc:	00 09       	nop	
	...

000000d0 <dec_tbl>:
  d0:	27 10       	mov.b	r1,@r7
  d2:	03 e8       	.word 0x03e8
  d4:	00 64       	mov.b	r6,@(r0,r0)
  d6:	00 0a       	sts	mach,r0

000000d8 <bittbl2_0>:
  d8:	00 00       	.word 0x0000
  da:	00 02       	stc	sr,r0
  dc:	00 03       	bsrf	r0
  de:	00 05       	mov.w	r0,@(r0,r0)
  e0:	00 06       	mov.l	r0,@(r0,r0)
  e2:	00 08       	clrt	
  e4:	00 09       	nop	
  e6:	00 0b       	rts	

000000e8 <bittbl5_3>:
  e8:	00 00       	.word 0x0000
  ea:	00 0c       	mov.b	@(r0,r0),r0
  ec:	00 18       	sett	
  ee:	00 24       	mov.b	r2,@(r0,r0)
  f0:	00 31       	.word 0x0031
  f2:	00 3d       	mov.w	@(r0,r3),r0
  f4:	00 49       	.word 0x0049
  f6:	00 55       	mov.w	r5,@(r0,r0)

000000f8 <bittbl8_6>:
  f8:	00 00       	.word 0x0000
  fa:	00 62       	stc	r6_bank,r0
  fc:	00 c3       	movca.l	r0,@r0
  fe:	01 25       	mov.w	r2,@(r0,r1)
 100:	01 87       	mul.l	r8,r1
 102:	01 e9       	.word 0x01e9
 104:	02 4a       	.word 0x024a
 106:	02 ac       	mov.b	@(r0,r10),r2

00000108 <bittbl11_9>:
 108:	00 00       	.word 0x0000
 10a:	03 0d       	mov.w	@(r0,r0),r3
 10c:	06 1b       	.word 0x061b
 10e:	09 28       	.word 0x0928
 110:	0c 35       	mov.w	r3,@(r0,r12)
 112:	0f 42       	stc	spc,r15
 114:	12 50       	mov.l	r5,@(0,r2)
 116:	15 5d       	mov.l	r5,@(52,r5)

00000118 <bittbl14_12>:
 118:	00 00       	.word 0x0000
 11a:	18 6a       	mov.l	r6,@(40,r8)
 11c:	30 d4       	div1	r13,r0
 11e:	49 3e       	ldc	r9,ssr
 120:	61 a8       	swap.b	r10,r1
 122:	7a 12       	add	#18,r10
 124:	92 7c       	mov.w	220 <IMM_B_15+0xf8>,r2
 126:	aa e6       	bra	fffff6f6 <IMM_B_15+0xfffff5ce>

00000128 <IMM_B_15>:
 128:	c3 50       	trapa	#80
