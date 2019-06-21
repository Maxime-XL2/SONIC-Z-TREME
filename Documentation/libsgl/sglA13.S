
sglA13.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCheckOnScreen>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	e6 20       	mov	#32,r6
   4:	00 28       	clrmac	
   6:	36 0c       	add	r0,r6
   8:	06 4f       	mac.l	@r4+,@r6+
   a:	c6 1a       	mov.l	@(104,gbr),r0
   c:	e7 ff       	mov	#-1,r7
   e:	06 4f       	mac.l	@r4+,@r6+
  10:	47 18       	shll8	r7
  12:	62 09       	swap.w	r0,r2
  14:	06 4f       	mac.l	@r4+,@r6+
  16:	61 62       	mov.l	@r6,r1
  18:	62 2f       	exts.w	r2,r2
  1a:	17 24       	mov.l	r2,@(16,r7)
  1c:	02 0a       	sts	mach,r2
  1e:	03 1a       	sts	macl,r3
  20:	2f 06       	mov.l	r0,@-r15
  22:	23 2d       	xtrct	r2,r3
  24:	62 03       	mov	r0,r2
  26:	c4 ac       	mov.b	@(172,gbr),r0
  28:	33 1c       	add	r1,r3

0000002a <chons_01>:
  2a:	40 10       	dt	r0
  2c:	8f fd       	bf.s	2a <chons_01>
  2e:	42 01       	shlr	r2
  30:	33 23       	cmp/ge	r2,r3
  32:	8f 46       	bf.s	c2 <before_screen>
  34:	60 f6       	mov.l	@r15+,r0
  36:	17 30       	mov.l	r3,@(0,r7)
  38:	33 28       	sub	r2,r3
  3a:	40 28       	shll16	r0
  3c:	17 05       	mov.l	r0,@(20,r7)
  3e:	74 f4       	add	#-12,r4
  40:	76 d4       	add	#-44,r6
  42:	00 28       	clrmac	
  44:	06 4f       	mac.l	@r4+,@r6+
  46:	c5 38       	mov.w	@(112,gbr),r0
  48:	06 4f       	mac.l	@r4+,@r6+
  4a:	40 28       	shll16	r0
  4c:	33 06       	cmp/hi	r0,r3
  4e:	06 4f       	mac.l	@r4+,@r6+
  50:	89 35       	bt	be <out_of_screen>
  52:	62 66       	mov.l	@r6+,r2
  54:	74 f4       	add	#-12,r4
  56:	00 0a       	sts	mach,r0
  58:	01 1a       	sts	macl,r1
  5a:	00 28       	clrmac	
  5c:	06 4f       	mac.l	@r4+,@r6+
  5e:	21 0d       	xtrct	r0,r1
  60:	31 2c       	add	r2,r1
  62:	06 4f       	mac.l	@r4+,@r6+
  64:	06 4f       	mac.l	@r4+,@r6+
  66:	64 66       	mov.l	@r6+,r4
  68:	00 0a       	sts	mach,r0
  6a:	02 1a       	sts	macl,r2
  6c:	45 21       	shar	r5
  6e:	22 0d       	xtrct	r0,r2
  70:	32 4c       	add	r4,r2
  72:	57 77       	mov.l	@(28,r7),r7
  74:	37 1d       	dmuls.l	r1,r7
  76:	c5 3c       	mov.w	@(120,gbr),r0
  78:	66 03       	mov	r0,r6
  7a:	00 0a       	sts	mach,r0
  7c:	01 1a       	sts	macl,r1
  7e:	37 55       	dmulu.l	r5,r7
  80:	21 0d       	xtrct	r0,r1
  82:	c5 3e       	mov.w	@(124,gbr),r0
  84:	46 28       	shll16	r6
  86:	04 0a       	sts	mach,r4
  88:	05 1a       	sts	macl,r5
  8a:	37 2d       	dmuls.l	r2,r7
  8c:	25 4d       	xtrct	r4,r5
  8e:	31 5c       	add	r5,r1
  90:	31 63       	cmp/ge	r6,r1
  92:	8b 14       	bf	be <out_of_screen>
  94:	40 28       	shll16	r0
  96:	31 58       	sub	r5,r1
  98:	31 58       	sub	r5,r1
  9a:	31 07       	cmp/gt	r0,r1
  9c:	89 0f       	bt	be <out_of_screen>
  9e:	01 0a       	sts	mach,r1
  a0:	02 1a       	sts	macl,r2
  a2:	c5 3d       	mov.w	@(122,gbr),r0
  a4:	22 1d       	xtrct	r1,r2
  a6:	32 5c       	add	r5,r2
  a8:	40 28       	shll16	r0
  aa:	32 03       	cmp/ge	r0,r2
  ac:	8b 07       	bf	be <out_of_screen>
  ae:	c5 3f       	mov.w	@(126,gbr),r0
  b0:	32 58       	sub	r5,r2
  b2:	32 58       	sub	r5,r2
  b4:	40 28       	shll16	r0
  b6:	32 03       	cmp/ge	r0,r2
  b8:	89 01       	bt	be <out_of_screen>
  ba:	00 0b       	rts	
  bc:	60 33       	mov	r3,r0

000000be <out_of_screen>:
  be:	00 0b       	rts	
  c0:	e0 fe       	mov	#-2,r0

000000c2 <before_screen>:
  c2:	00 0b       	rts	
  c4:	e0 ff       	mov	#-1,r0
