
sglA11.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBezier>:
   0:	63 f2       	mov.l	@r15,r3
   2:	e2 01       	mov	#1,r2
   4:	42 28       	shll16	r2
   6:	32 38       	sub	r3,r2
   8:	33 3d       	dmuls.l	r3,r3
   a:	00 0a       	sts	mach,r0
   c:	01 1a       	sts	macl,r1
   e:	21 0d       	xtrct	r0,r1
  10:	31 3d       	dmuls.l	r3,r1
  12:	2f 16       	mov.l	r1,@-r15
  14:	00 0a       	sts	mach,r0
  16:	01 1a       	sts	macl,r1
  18:	21 0d       	xtrct	r0,r1
  1a:	32 2d       	dmuls.l	r2,r2
  1c:	2f 16       	mov.l	r1,@-r15
  1e:	00 0a       	sts	mach,r0
  20:	01 1a       	sts	macl,r1
  22:	21 0d       	xtrct	r0,r1
  24:	31 2d       	dmuls.l	r2,r1
  26:	2f 16       	mov.l	r1,@-r15
  28:	00 0a       	sts	mach,r0
  2a:	01 1a       	sts	macl,r1
  2c:	21 0d       	xtrct	r0,r1
  2e:	2f 16       	mov.l	r1,@-r15
  30:	51 f1       	mov.l	@(4,r15),r1
  32:	60 13       	mov	r1,r0
  34:	41 00       	shll	r1
  36:	31 0c       	add	r0,r1
  38:	31 3d       	dmuls.l	r3,r1
  3a:	00 0a       	sts	mach,r0
  3c:	01 1a       	sts	macl,r1
  3e:	21 0d       	xtrct	r0,r1
  40:	50 f3       	mov.l	@(12,r15),r0
  42:	1f 11       	mov.l	r1,@(4,r15)
  44:	61 03       	mov	r0,r1
  46:	41 00       	shll	r1
  48:	31 0c       	add	r0,r1
  4a:	31 2d       	dmuls.l	r2,r1
  4c:	00 0a       	sts	mach,r0
  4e:	01 1a       	sts	macl,r1
  50:	21 0d       	xtrct	r0,r1
  52:	1f 13       	mov.l	r1,@(12,r15)
  54:	62 f3       	mov	r15,r2
  56:	00 28       	clrmac	
  58:	04 2f       	mac.l	@r2+,@r4+
  5a:	53 f5       	mov.l	@(20,r15),r3
  5c:	05 2f       	mac.l	@r2+,@r5+
  5e:	07 2f       	mac.l	@r2+,@r7+
  60:	06 2f       	mac.l	@r2+,@r6+
  62:	62 f3       	mov	r15,r2
  64:	00 0a       	sts	mach,r0
  66:	01 1a       	sts	macl,r1
  68:	00 28       	clrmac	
  6a:	04 2f       	mac.l	@r2+,@r4+
  6c:	21 0d       	xtrct	r0,r1
  6e:	05 2f       	mac.l	@r2+,@r5+
  70:	13 10       	mov.l	r1,@(0,r3)
  72:	07 2f       	mac.l	@r2+,@r7+
  74:	06 2f       	mac.l	@r2+,@r6+
  76:	00 0a       	sts	mach,r0
  78:	01 1a       	sts	macl,r1
  7a:	00 28       	clrmac	
  7c:	04 ff       	mac.l	@r15+,@r4+
  7e:	21 0d       	xtrct	r0,r1
  80:	05 ff       	mac.l	@r15+,@r5+
  82:	13 11       	mov.l	r1,@(4,r3)
  84:	07 ff       	mac.l	@r15+,@r7+
  86:	06 ff       	mac.l	@r15+,@r6+
  88:	00 0a       	sts	mach,r0
  8a:	01 1a       	sts	macl,r1
  8c:	21 0d       	xtrct	r0,r1
  8e:	00 0b       	rts	
  90:	13 12       	mov.l	r1,@(8,r3)
