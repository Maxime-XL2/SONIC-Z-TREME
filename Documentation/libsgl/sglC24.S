
sglC24.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetFrameData>:
   0:	2f 86       	mov.l	r8,@-r15
   2:	c4 b0       	mov.b	@(176,gbr),r0
   4:	2f b6       	mov.l	r11,@-r15
   6:	2f a6       	mov.l	r10,@-r15
   8:	2f 96       	mov.l	r9,@-r15
   a:	63 03       	mov	r0,r3
   c:	c6 20       	mov.l	@(128,gbr),r0
   e:	eb ff       	mov	#-1,r11
  10:	4b 18       	shll8	r11
  12:	68 09       	swap.w	r0,r8
  14:	48 28       	shll16	r8
  16:	1b 50       	mov.l	r5,@(0,r11)
  18:	e1 00       	mov	#0,r1
  1a:	1b 14       	mov.l	r1,@(16,r11)
  1c:	1b 85       	mov.l	r8,@(20,r11)
  1e:	40 28       	shll16	r0
  20:	e2 10       	mov	#16,r2
  22:	23 28       	tst	r2,r3
  24:	89 00       	bt	28 <gtfd_00>
  26:	40 01       	shlr	r0

00000028 <gtfd_00>:
  28:	58 b7       	mov.l	@(28,r11),r8
  2a:	1b 60       	mov.l	r6,@(0,r11)
  2c:	1b 14       	mov.l	r1,@(16,r11)
  2e:	1b 05       	mov.l	r0,@(20,r11)
  30:	da 38       	mov.l	114 <IMM_FrameBuffer>,r10	! 25c80000
  32:	d2 37       	mov.l	110 <IMM_SPR_EDSR>,r2	! 25d00010
  34:	67 83       	mov	r8,r7
  36:	47 01       	shlr	r7
  38:	59 b7       	mov.l	@(28,r11),r9

0000003a <gtfd_10>:
  3a:	60 21       	mov.w	@r2,r0

0000003c <gtfd_11>:
  3c:	c8 02       	tst	#2,r0
  3e:	8f 0a       	bf.s	56 <gtfd_20>
  40:	e1 7f       	mov	#127,r1

00000042 <gtfd_12>:
  42:	41 10       	dt	r1
  44:	8b fd       	bf	42 <gtfd_12>
  46:	c4 13       	mov.b	@(19,gbr),r0
  48:	e1 80       	mov	#-128,r1
  4a:	23 18       	tst	r1,r3
  4c:	8f f5       	bf.s	3a <gtfd_10>
  4e:	40 11       	cmp/pz	r0
  50:	8b 32       	bf	b8 <gtfd_99>
  52:	af f3       	bra	3c <gtfd_11>
  54:	60 21       	mov.w	@r2,r0

00000056 <gtfd_20>:
  56:	6b 93       	mov	r9,r11
  58:	4b 01       	shlr	r11
  5a:	e0 08       	mov	#8,r0
  5c:	23 08       	tst	r0,r3
  5e:	8f 30       	bf.s	c2 <gtfd_30>
  60:	45 09       	shlr2	r5

00000062 <gtfd_21>:
  62:	61 b3       	mov	r11,r1
  64:	41 29       	shlr16	r1
  66:	41 18       	shll8	r1
  68:	41 08       	shll2	r1
  6a:	31 ac       	add	r10,r1
  6c:	62 73       	mov	r7,r2
  6e:	63 53       	mov	r5,r3
  70:	71 0a       	add	#10,r1

00000072 <gtfd_22>:
  72:	60 23       	mov	r2,r0
  74:	40 29       	shlr16	r0
  76:	40 00       	shll	r0
  78:	00 1d       	mov.w	@(r0,r1),r0
  7a:	32 8c       	add	r8,r2
  7c:	81 40       	mov.w	r0,@(0,r4)
  7e:	60 23       	mov	r2,r0
  80:	40 29       	shlr16	r0
  82:	40 00       	shll	r0
  84:	00 1d       	mov.w	@(r0,r1),r0
  86:	32 8c       	add	r8,r2
  88:	81 41       	mov.w	r0,@(2,r4)
  8a:	60 23       	mov	r2,r0
  8c:	40 29       	shlr16	r0
  8e:	40 00       	shll	r0
  90:	00 1d       	mov.w	@(r0,r1),r0
  92:	32 8c       	add	r8,r2
  94:	81 42       	mov.w	r0,@(4,r4)
  96:	60 23       	mov	r2,r0
  98:	40 29       	shlr16	r0
  9a:	40 00       	shll	r0
  9c:	00 1d       	mov.w	@(r0,r1),r0
  9e:	32 8c       	add	r8,r2
  a0:	81 43       	mov.w	r0,@(6,r4)
  a2:	43 10       	dt	r3
  a4:	8f e5       	bf.s	72 <gtfd_22>
  a6:	74 08       	add	#8,r4
  a8:	46 10       	dt	r6
  aa:	8f da       	bf.s	62 <gtfd_21>
  ac:	3b 9c       	add	r9,r11
  ae:	69 f6       	mov.l	@r15+,r9
  b0:	6a f6       	mov.l	@r15+,r10
  b2:	6b f6       	mov.l	@r15+,r11
  b4:	00 0b       	rts	
  b6:	68 f6       	mov.l	@r15+,r8

000000b8 <gtfd_99>:
  b8:	69 f6       	mov.l	@r15+,r9
  ba:	6a f6       	mov.l	@r15+,r10
  bc:	6b f6       	mov.l	@r15+,r11
  be:	00 0b       	rts	
  c0:	68 f6       	mov.l	@r15+,r8

000000c2 <gtfd_30>:
  c2:	61 b3       	mov	r11,r1
  c4:	41 29       	shlr16	r1
  c6:	41 18       	shll8	r1
  c8:	41 08       	shll2	r1
  ca:	31 ac       	add	r10,r1
  cc:	62 73       	mov	r7,r2
  ce:	63 53       	mov	r5,r3

000000d0 <gtfd_32>:
  d0:	60 23       	mov	r2,r0
  d2:	40 29       	shlr16	r0
  d4:	00 1c       	mov.b	@(r0,r1),r0
  d6:	32 8c       	add	r8,r2
  d8:	80 40       	mov.b	r0,@(0,r4)
  da:	60 23       	mov	r2,r0
  dc:	40 29       	shlr16	r0
  de:	00 1c       	mov.b	@(r0,r1),r0
  e0:	32 8c       	add	r8,r2
  e2:	80 41       	mov.b	r0,@(1,r4)
  e4:	60 23       	mov	r2,r0
  e6:	40 29       	shlr16	r0
  e8:	00 1c       	mov.b	@(r0,r1),r0
  ea:	32 8c       	add	r8,r2
  ec:	80 42       	mov.b	r0,@(2,r4)
  ee:	60 23       	mov	r2,r0
  f0:	40 29       	shlr16	r0
  f2:	00 1c       	mov.b	@(r0,r1),r0
  f4:	32 8c       	add	r8,r2
  f6:	80 43       	mov.b	r0,@(3,r4)
  f8:	43 10       	dt	r3
  fa:	8f e9       	bf.s	d0 <gtfd_32>
  fc:	74 04       	add	#4,r4
  fe:	46 10       	dt	r6
 100:	8f df       	bf.s	c2 <gtfd_30>
 102:	3b 9c       	add	r9,r11
 104:	69 f6       	mov.l	@r15+,r9
 106:	6a f6       	mov.l	@r15+,r10
 108:	6b f6       	mov.l	@r15+,r11
 10a:	00 0b       	rts	
 10c:	68 f6       	mov.l	@r15+,r8
	...

00000110 <IMM_SPR_EDSR>:
 110:	25 d0       	mov.b	r13,@r5
 112:	00 10       	.word 0x0010

00000114 <IMM_FrameBuffer>:
 114:	25 c8       	tst	r12,r5
	...
