
sglC07.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SLPROG>:
   0:	e0 01       	mov	#1,r0
   2:	00 0b       	rts	
   4:	c0 73       	mov.b	r0,@(115,gbr)

00000006 <_slPutSprite>:
   6:	c5 55       	mov.w	@(170,gbr),r0
   8:	70 01       	add	#1,r0
   a:	c1 55       	mov.w	r0,@(170,gbr)
   c:	c6 07       	mov.l	@(28,gbr),r0
   e:	e1 fc       	mov	#-4,r1
  10:	24 19       	and	r1,r4
  12:	00 28       	clrmac	
  14:	70 20       	add	#32,r0
  16:	00 4f       	mac.l	@r4+,@r0+
  18:	62 03       	mov	r0,r2
  1a:	c6 1a       	mov.l	@(104,gbr),r0
  1c:	02 4f       	mac.l	@r4+,@r2+
  1e:	63 03       	mov	r0,r3
  20:	c5 38       	mov.w	@(112,gbr),r0
  22:	02 4f       	mac.l	@r4+,@r2+
  24:	62 22       	mov.l	@r2,r2
  26:	67 03       	mov	r0,r7
  28:	c4 ac       	mov.b	@(172,gbr),r0
  2a:	01 0a       	sts	mach,r1

0000002c <ptspr_00>:
  2c:	40 10       	dt	r0
  2e:	8f fd       	bf.s	2c <ptspr_00>
  30:	43 01       	shlr	r3
  32:	60 73       	mov	r7,r0
  34:	07 1a       	sts	macl,r7
  36:	63 3b       	neg	r3,r3
  38:	27 1d       	xtrct	r1,r7
  3a:	37 2c       	add	r2,r7
  3c:	33 7c       	add	r7,r3
  3e:	40 28       	shll16	r0
  40:	33 06       	cmp/hi	r0,r3
  42:	8d dd       	bt.s	0 <SLPROG>
  44:	74 f4       	add	#-12,r4
  46:	c6 1a       	mov.l	@(104,gbr),r0
  48:	e1 ff       	mov	#-1,r1
  4a:	41 18       	shll8	r1
  4c:	e1 ff       	mov	#-1,r1
  4e:	41 18       	shll8	r1
  50:	11 70       	mov.l	r7,@(0,r1)
  52:	67 09       	swap.w	r0,r7
  54:	67 7f       	exts.w	r7,r7
  56:	11 74       	mov.l	r7,@(16,r1)
  58:	40 28       	shll16	r0
  5a:	11 05       	mov.l	r0,@(20,r1)
  5c:	c5 44       	mov.w	@(136,gbr),r0
  5e:	61 0d       	extu.w	r0,r1
  60:	c5 3a       	mov.w	@(116,gbr),r0
  62:	60 0d       	extu.w	r0,r0
  64:	30 12       	cmp/hs	r1,r0
  66:	8d 6b       	bt.s	140 <ptspr_09>
  68:	e1 fe       	mov	#-2,r1
  6a:	70 01       	add	#1,r0
  6c:	c1 3a       	mov.w	r0,@(116,gbr)
  6e:	25 19       	and	r1,r5
  70:	c6 07       	mov.l	@(28,gbr),r0
  72:	00 28       	clrmac	
  74:	62 03       	mov	r0,r2
  76:	c6 12       	mov.l	@(72,gbr),r0
  78:	02 4f       	mac.l	@r4+,@r2+
  7a:	2f 96       	mov.l	r9,@-r15
  7c:	69 03       	mov	r0,r9
  7e:	02 4f       	mac.l	@r4+,@r2+
  80:	85 54       	mov.w	@(8,r5),r0
  82:	2f 86       	mov.l	r8,@-r15
  84:	02 4f       	mac.l	@r4+,@r2+
  86:	67 26       	mov.l	@r2+,r7
  88:	74 f4       	add	#-12,r4
  8a:	23 0d       	xtrct	r0,r3
  8c:	19 31       	mov.l	r3,@(4,r9)
  8e:	01 0a       	sts	mach,r1
  90:	08 1a       	sts	macl,r8
  92:	00 28       	clrmac	
  94:	28 1d       	xtrct	r1,r8
  96:	02 4f       	mac.l	@r4+,@r2+
  98:	38 7c       	add	r7,r8
  9a:	60 55       	mov.w	@r5+,r0
  9c:	02 4f       	mac.l	@r4+,@r2+
  9e:	63 55       	mov.w	@r5+,r3
  a0:	61 55       	mov.w	@r5+,r1
  a2:	02 4f       	mac.l	@r4+,@r2+
  a4:	41 28       	shll16	r1
  a6:	21 3d       	xtrct	r3,r1
  a8:	63 22       	mov.l	@r2,r3
  aa:	02 0a       	sts	mach,r2
  ac:	07 1a       	sts	macl,r7
  ae:	64 42       	mov.l	@r4,r4
  b0:	27 2d       	xtrct	r2,r7
  b2:	37 3c       	add	r3,r7
  b4:	44 11       	cmp/pz	r4
  b6:	8d 01       	bt.s	bc <ptspr_01>
  b8:	63 55       	mov.w	@r5+,r3
  ba:	64 4b       	neg	r4,r4

000000bc <ptspr_01>:
  bc:	19 13       	mov.l	r1,@(12,r9)
  be:	43 28       	shll16	r3
  c0:	23 0d       	xtrct	r0,r3
  c2:	e1 ff       	mov	#-1,r1
  c4:	41 18       	shll8	r1
  c6:	51 17       	mov.l	@(28,r1),r1
  c8:	19 32       	mov.l	r3,@(8,r9)
  ca:	34 1d       	dmuls.l	r1,r4
  cc:	02 0a       	sts	mach,r2
  ce:	04 1a       	sts	macl,r4
  d0:	38 1d       	dmuls.l	r1,r8
  d2:	24 2d       	xtrct	r2,r4
  d4:	19 46       	mov.l	r4,@(24,r9)
  d6:	02 0a       	sts	mach,r2
  d8:	03 1a       	sts	macl,r3
  da:	37 1d       	dmuls.l	r1,r7
  dc:	23 2d       	xtrct	r2,r3
  de:	19 34       	mov.l	r3,@(16,r9)
  e0:	02 0a       	sts	mach,r2
  e2:	03 1a       	sts	macl,r3
  e4:	64 6d       	extu.w	r6,r4
  e6:	23 2d       	xtrct	r2,r3
  e8:	24 48       	tst	r4,r4
  ea:	8d 20       	bt.s	12e <ptspr_02>
  ec:	19 35       	mov.l	r3,@(20,r9)
  ee:	60 48       	swap.b	r4,r0
  f0:	40 09       	shlr2	r0
  f2:	40 09       	shlr2	r0
  f4:	e2 0c       	mov	#12,r2
  f6:	22 09       	and	r0,r2
  f8:	c7 15       	mova	150 <scidx_tbl>,r0
  fa:	32 0c       	add	r0,r2
  fc:	61 24       	mov.b	@r2+,r1
  fe:	60 24       	mov.b	@r2+,r0
 100:	65 43       	mov	r4,r5
 102:	24 1a       	xor	r1,r4
 104:	91 2c       	mov.w	160 <IMM_3ffe>,r1	! 3ffe
 106:	25 0a       	xor	r0,r5
 108:	d0 10       	mov.l	14c <IMM_sin_tbl>,r0	! 0 <SLPROG>
 10a:	24 19       	and	r1,r4
 10c:	25 19       	and	r1,r5
 10e:	04 4d       	mov.w	@(r0,r4),r4
 110:	05 5d       	mov.w	@(r0,r5),r5
 112:	60 24       	mov.b	@r2+,r0
 114:	61 24       	mov.b	@r2+,r1
 116:	64 4d       	extu.w	r4,r4
 118:	65 5d       	extu.w	r5,r5
 11a:	74 02       	add	#2,r4
 11c:	75 02       	add	#2,r5
 11e:	24 0a       	xor	r0,r4
 120:	25 1a       	xor	r1,r5
 122:	19 47       	mov.l	r4,@(28,r9)
 124:	19 58       	mov.l	r5,@(32,r9)
 126:	e0 18       	mov	#24,r0
 128:	19 00       	mov.l	r0,@(0,r9)
 12a:	a0 03       	bra	134 <ptspr_08>
 12c:	e0 24       	mov	#36,r0

0000012e <ptspr_02>:
 12e:	e0 1c       	mov	#28,r0
 130:	19 00       	mov.l	r0,@(0,r9)
 132:	e0 1c       	mov	#28,r0

00000134 <ptspr_08>:
 134:	68 f6       	mov.l	@r15+,r8
 136:	30 9c       	add	r9,r0
 138:	d1 03       	mov.l	148 <IMM_FRT_INTR>,r1	! 21000000
 13a:	c2 12       	mov.l	r0,@(72,gbr)
 13c:	21 01       	mov.w	r0,@r1
 13e:	69 f6       	mov.l	@r15+,r9

00000140 <ptspr_09>:
 140:	e0 01       	mov	#1,r0
 142:	00 0b       	rts	
 144:	c0 73       	mov.b	r0,@(115,gbr)
	...

00000148 <IMM_FRT_INTR>:
 148:	21 00       	mov.b	r0,@r1
	...

0000014c <IMM_sin_tbl>:
 14c:	00 00       	.word 0x0000
	...

00000150 <scidx_tbl>:
 150:	00 ff       	mac.l	@r15+,@r0+
 152:	00 00       	.word 0x0000
 154:	ff 00       	fadd	fr0,fr15
 156:	00 ff       	mac.l	@r15+,@r0+
 158:	00 ff       	mac.l	@r15+,@r0+
 15a:	ff ff       	.word 0xffff
 15c:	ff 00       	fadd	fr0,fr15
 15e:	ff 00       	fadd	fr0,fr15

00000160 <IMM_3ffe>:
 160:	3f fe       	addc	r15,r15
