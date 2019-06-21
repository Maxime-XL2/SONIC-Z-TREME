
sglA02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slNormalVector>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	2f b6       	mov.l	r11,@-r15
   4:	2f a6       	mov.l	r10,@-r15
   6:	2f 96       	mov.l	r9,@-r15
   8:	2f 86       	mov.l	r8,@-r15
   a:	6b 73       	mov	r7,r11
   c:	50 51       	mov.l	@(4,r5),r0
   e:	51 41       	mov.l	@(4,r4),r1
  10:	57 52       	mov.l	@(8,r5),r7
  12:	62 03       	mov	r0,r2
  14:	32 18       	sub	r1,r2
  16:	51 62       	mov.l	@(8,r6),r1
  18:	31 78       	sub	r7,r1
  1a:	32 1d       	dmuls.l	r1,r2
  1c:	51 42       	mov.l	@(8,r4),r1
  1e:	02 0a       	sts	mach,r2
  20:	08 1a       	sts	macl,r8
  22:	37 18       	sub	r1,r7
  24:	51 61       	mov.l	@(4,r6),r1
  26:	31 08       	sub	r0,r1
  28:	37 1d       	dmuls.l	r1,r7
  2a:	00 08       	clrt	
  2c:	01 1a       	sts	macl,r1
  2e:	00 0a       	sts	mach,r0
  30:	38 1a       	subc	r1,r8
  32:	32 0a       	subc	r0,r2
  34:	42 18       	shll8	r2
  36:	48 29       	shlr16	r8
  38:	48 19       	shlr8	r8
  3a:	28 2b       	or	r2,r8
  3c:	50 52       	mov.l	@(8,r5),r0
  3e:	51 42       	mov.l	@(8,r4),r1
  40:	57 50       	mov.l	@(0,r5),r7
  42:	62 03       	mov	r0,r2
  44:	32 18       	sub	r1,r2
  46:	51 60       	mov.l	@(0,r6),r1
  48:	31 78       	sub	r7,r1
  4a:	32 1d       	dmuls.l	r1,r2
  4c:	51 40       	mov.l	@(0,r4),r1
  4e:	02 0a       	sts	mach,r2
  50:	09 1a       	sts	macl,r9
  52:	37 18       	sub	r1,r7
  54:	51 62       	mov.l	@(8,r6),r1
  56:	31 08       	sub	r0,r1
  58:	37 1d       	dmuls.l	r1,r7
  5a:	00 08       	clrt	
  5c:	01 1a       	sts	macl,r1
  5e:	00 0a       	sts	mach,r0
  60:	39 1a       	subc	r1,r9
  62:	32 0a       	subc	r0,r2
  64:	42 18       	shll8	r2
  66:	49 29       	shlr16	r9
  68:	49 19       	shlr8	r9
  6a:	29 2b       	or	r2,r9
  6c:	50 50       	mov.l	@(0,r5),r0
  6e:	51 40       	mov.l	@(0,r4),r1
  70:	57 51       	mov.l	@(4,r5),r7
  72:	62 03       	mov	r0,r2
  74:	32 18       	sub	r1,r2
  76:	51 61       	mov.l	@(4,r6),r1
  78:	31 78       	sub	r7,r1
  7a:	32 1d       	dmuls.l	r1,r2
  7c:	51 41       	mov.l	@(4,r4),r1
  7e:	02 0a       	sts	mach,r2
  80:	0a 1a       	sts	macl,r10
  82:	37 18       	sub	r1,r7
  84:	51 60       	mov.l	@(0,r6),r1
  86:	31 08       	sub	r0,r1
  88:	37 1d       	dmuls.l	r1,r7
  8a:	00 08       	clrt	
  8c:	01 1a       	sts	macl,r1
  8e:	00 0a       	sts	mach,r0
  90:	3a 1a       	subc	r1,r10
  92:	32 0a       	subc	r0,r2
  94:	42 18       	shll8	r2
  96:	4a 29       	shlr16	r10
  98:	4a 19       	shlr8	r10
  9a:	2a 2b       	or	r2,r10
  9c:	38 8d       	dmuls.l	r8,r8
  9e:	04 0a       	sts	mach,r4
  a0:	05 1a       	sts	macl,r5
  a2:	39 9d       	dmuls.l	r9,r9
  a4:	00 08       	clrt	
  a6:	01 1a       	sts	macl,r1
  a8:	00 0a       	sts	mach,r0
  aa:	35 1e       	addc	r1,r5
  ac:	34 0e       	addc	r0,r4
  ae:	3a ad       	dmuls.l	r10,r10
  b0:	00 08       	clrt	
  b2:	01 1a       	sts	macl,r1
  b4:	00 0a       	sts	mach,r0
  b6:	d2 13       	mov.l	104 <IMM_slSquartDbl>,r2	! 0 <_slNormalVector>
  b8:	35 1e       	addc	r1,r5
  ba:	42 0b       	jsr	@r2
  bc:	34 0e       	addc	r0,r4
  be:	64 03       	mov	r0,r4
  c0:	e5 ff       	mov	#-1,r5
  c2:	45 18       	shll8	r5
  c4:	15 40       	mov.l	r4,@(0,r5)
  c6:	60 89       	swap.w	r8,r0
  c8:	60 0f       	exts.w	r0,r0
  ca:	15 04       	mov.l	r0,@(16,r5)
  cc:	48 28       	shll16	r8
  ce:	15 85       	mov.l	r8,@(20,r5)
  d0:	62 99       	swap.w	r9,r2
  d2:	62 2f       	exts.w	r2,r2
  d4:	49 28       	shll16	r9
  d6:	50 57       	mov.l	@(28,r5),r0
  d8:	15 40       	mov.l	r4,@(0,r5)
  da:	15 24       	mov.l	r2,@(16,r5)
  dc:	15 95       	mov.l	r9,@(20,r5)
  de:	1b 00       	mov.l	r0,@(0,r11)
  e0:	62 a9       	swap.w	r10,r2
  e2:	62 2f       	exts.w	r2,r2
  e4:	4a 28       	shll16	r10
  e6:	50 57       	mov.l	@(28,r5),r0
  e8:	15 40       	mov.l	r4,@(0,r5)
  ea:	15 24       	mov.l	r2,@(16,r5)
  ec:	15 a5       	mov.l	r10,@(20,r5)
  ee:	1b 01       	mov.l	r0,@(4,r11)
  f0:	67 b3       	mov	r11,r7
  f2:	68 f6       	mov.l	@r15+,r8
  f4:	69 f6       	mov.l	@r15+,r9
  f6:	6a f6       	mov.l	@r15+,r10
  f8:	6b f6       	mov.l	@r15+,r11
  fa:	4f 26       	lds.l	@r15+,pr
  fc:	50 57       	mov.l	@(28,r5),r0
  fe:	00 0b       	rts	
 100:	17 02       	mov.l	r0,@(8,r7)
	...

00000104 <IMM_slSquartDbl>:
 104:	00 00       	.word 0x0000
	...
