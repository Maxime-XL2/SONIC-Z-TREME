
sglC12.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPutObject>:
   0:	2f a6       	mov.l	r10,@-r15
   2:	2f 96       	mov.l	r9,@-r15
   4:	2f 86       	mov.l	r8,@-r15
   6:	4f 22       	sts.l	pr,@-r15
   8:	c6 07       	mov.l	@(28,gbr),r0
   a:	6a 43       	mov	r4,r10
   c:	66 03       	mov	r0,r6
   e:	74 04       	add	#4,r4
  10:	00 28       	clrmac	
  12:	06 4f       	mac.l	@r4+,@r6+
  14:	7f dc       	add	#-36,r15
  16:	06 4f       	mac.l	@r4+,@r6+
  18:	06 4f       	mac.l	@r4+,@r6+
  1a:	61 66       	mov.l	@r6+,r1
  1c:	74 f4       	add	#-12,r4
  1e:	02 0a       	sts	mach,r2
  20:	03 1a       	sts	macl,r3
  22:	00 28       	clrmac	
  24:	06 4f       	mac.l	@r4+,@r6+
  26:	23 2d       	xtrct	r2,r3
  28:	31 3c       	add	r3,r1
  2a:	06 4f       	mac.l	@r4+,@r6+
  2c:	10 13       	mov.l	r1,@(12,r0)
  2e:	06 4f       	mac.l	@r4+,@r6+
  30:	61 66       	mov.l	@r6+,r1
  32:	74 f4       	add	#-12,r4
  34:	02 0a       	sts	mach,r2
  36:	03 1a       	sts	macl,r3
  38:	00 28       	clrmac	
  3a:	06 4f       	mac.l	@r4+,@r6+
  3c:	23 2d       	xtrct	r2,r3
  3e:	31 3c       	add	r3,r1
  40:	06 4f       	mac.l	@r4+,@r6+
  42:	10 17       	mov.l	r1,@(28,r0)
  44:	d3 43       	mov.l	154 <IMM_GetSinCos>,r3	! 0 <_slPutObject>
  46:	06 4f       	mac.l	@r4+,@r6+
  48:	61 62       	mov.l	@r6,r1
  4a:	85 aa       	mov.w	@(20,r10),r0
  4c:	02 0a       	sts	mach,r2
  4e:	04 1a       	sts	macl,r4
  50:	24 2d       	xtrct	r2,r4
  52:	31 4c       	add	r4,r1
  54:	26 12       	mov.l	r1,@r6
  56:	43 0b       	jsr	@r3
  58:	64 03       	mov	r0,r4
  5a:	85 a9       	mov.w	@(18,r10),r0
  5c:	68 43       	mov	r4,r8
  5e:	69 53       	mov	r5,r9
  60:	43 0b       	jsr	@r3
  62:	64 03       	mov	r0,r4
  64:	85 a8       	mov.w	@(16,r10),r0
  66:	66 43       	mov	r4,r6
  68:	67 53       	mov	r5,r7
  6a:	43 0b       	jsr	@r3
  6c:	64 03       	mov	r0,r4
  6e:	39 6d       	dmuls.l	r6,r9
  70:	60 8b       	neg	r8,r0
  72:	1f 50       	mov.l	r5,@(0,r15)
  74:	1f 01       	mov.l	r0,@(4,r15)
  76:	02 0a       	sts	mach,r2
  78:	03 1a       	sts	macl,r3
  7a:	61 4b       	neg	r4,r1
  7c:	23 2d       	xtrct	r2,r3
  7e:	33 4d       	dmuls.l	r4,r3
  80:	1f 12       	mov.l	r1,@(8,r15)
  82:	60 f3       	mov	r15,r0
  84:	00 0f       	mac.l	@r0+,@r0+
  86:	70 fc       	add	#-4,r0
  88:	01 0a       	sts	mach,r1
  8a:	02 1a       	sts	macl,r2
  8c:	33 5d       	dmuls.l	r5,r3
  8e:	22 1d       	xtrct	r1,r2
  90:	1f 23       	mov.l	r2,@(12,r15)
  92:	00 0f       	mac.l	@r0+,@r0+
  94:	1f 91       	mov.l	r9,@(4,r15)
  96:	60 f3       	mov	r15,r0
  98:	01 0a       	sts	mach,r1
  9a:	02 1a       	sts	macl,r2
  9c:	38 6d       	dmuls.l	r6,r8
  9e:	22 1d       	xtrct	r1,r2
  a0:	1f 26       	mov.l	r2,@(24,r15)
  a2:	02 0a       	sts	mach,r2
  a4:	03 1a       	sts	macl,r3
  a6:	23 2d       	xtrct	r2,r3
  a8:	33 4d       	dmuls.l	r4,r3
  aa:	00 0f       	mac.l	@r0+,@r0+
  ac:	70 fc       	add	#-4,r0
  ae:	01 0a       	sts	mach,r1
  b0:	02 1a       	sts	macl,r2
  b2:	33 5d       	dmuls.l	r5,r3
  b4:	22 1d       	xtrct	r1,r2
  b6:	1f 24       	mov.l	r2,@(16,r15)
  b8:	00 0f       	mac.l	@r0+,@r0+
  ba:	60 6b       	neg	r6,r0
  bc:	1f 02       	mov.l	r0,@(8,r15)
  be:	02 0a       	sts	mach,r2
  c0:	03 1a       	sts	macl,r3
  c2:	39 7d       	dmuls.l	r7,r9
  c4:	23 2d       	xtrct	r2,r3
  c6:	1f 37       	mov.l	r3,@(28,r15)
  c8:	02 0a       	sts	mach,r2
  ca:	03 1a       	sts	macl,r3
  cc:	38 7d       	dmuls.l	r7,r8
  ce:	23 2d       	xtrct	r2,r3
  d0:	1f 30       	mov.l	r3,@(0,r15)
  d2:	02 0a       	sts	mach,r2
  d4:	03 1a       	sts	macl,r3
  d6:	37 4d       	dmuls.l	r4,r7
  d8:	23 2d       	xtrct	r2,r3
  da:	1f 31       	mov.l	r3,@(4,r15)
  dc:	02 0a       	sts	mach,r2
  de:	03 1a       	sts	macl,r3
  e0:	37 5d       	dmuls.l	r5,r7
  e2:	23 2d       	xtrct	r2,r3
  e4:	1f 35       	mov.l	r3,@(20,r15)
  e6:	02 0a       	sts	mach,r2
  e8:	03 1a       	sts	macl,r3
  ea:	23 2d       	xtrct	r2,r3
  ec:	1f 38       	mov.l	r3,@(32,r15)
  ee:	c6 07       	mov.l	@(28,gbr),r0
  f0:	e1 03       	mov	#3,r1

000000f2 <ptobj_01>:
  f2:	00 28       	clrmac	
  f4:	69 f3       	mov	r15,r9
  f6:	09 0f       	mac.l	@r0+,@r9+
  f8:	09 0f       	mac.l	@r0+,@r9+
  fa:	09 0f       	mac.l	@r0+,@r9+
  fc:	70 f4       	add	#-12,r0
  fe:	02 0a       	sts	mach,r2
 100:	03 1a       	sts	macl,r3
 102:	00 28       	clrmac	
 104:	09 0f       	mac.l	@r0+,@r9+
 106:	23 2d       	xtrct	r2,r3
 108:	09 0f       	mac.l	@r0+,@r9+
 10a:	09 0f       	mac.l	@r0+,@r9+
 10c:	70 f4       	add	#-12,r0
 10e:	67 03       	mov	r0,r7
 110:	02 0a       	sts	mach,r2
 112:	05 1a       	sts	macl,r5
 114:	00 28       	clrmac	
 116:	09 0f       	mac.l	@r0+,@r9+
 118:	25 2d       	xtrct	r2,r5
 11a:	17 30       	mov.l	r3,@(0,r7)
 11c:	09 0f       	mac.l	@r0+,@r9+
 11e:	17 51       	mov.l	r5,@(4,r7)
 120:	09 0f       	mac.l	@r0+,@r9+
 122:	70 fc       	add	#-4,r0
 124:	02 0a       	sts	mach,r2
 126:	07 1a       	sts	macl,r7
 128:	41 10       	dt	r1
 12a:	27 2d       	xtrct	r2,r7
 12c:	20 72       	mov.l	r7,@r0
 12e:	8f e0       	bf.s	f2 <ptobj_01>
 130:	70 08       	add	#8,r0
 132:	d1 09       	mov.l	158 <IMM_slScale>,r1	! 0 <_slPutObject>
 134:	54 a6       	mov.l	@(24,r10),r4
 136:	55 a7       	mov.l	@(28,r10),r5
 138:	41 0b       	jsr	@r1
 13a:	56 a8       	mov.l	@(32,r10),r6
 13c:	7f 24       	add	#36,r15
 13e:	54 a0       	mov.l	@(0,r10),r4
 140:	4f 26       	lds.l	@r15+,pr
 142:	68 f6       	mov.l	@r15+,r8
 144:	69 f6       	mov.l	@r15+,r9
 146:	24 48       	tst	r4,r4
 148:	8d 01       	bt.s	14e <ptobj_09>
 14a:	01 2a       	sts	pr,r1
 14c:	d1 03       	mov.l	15c <IMM_PutPolygon>,r1	! 0 <_slPutObject>

0000014e <ptobj_09>:
 14e:	41 2b       	jmp	@r1
 150:	6a f6       	mov.l	@r15+,r10
	...

00000154 <IMM_GetSinCos>:
 154:	00 00       	.word 0x0000
	...

00000158 <IMM_slScale>:
 158:	00 00       	.word 0x0000
	...

0000015c <IMM_PutPolygon>:
 15c:	00 00       	.word 0x0000
	...
