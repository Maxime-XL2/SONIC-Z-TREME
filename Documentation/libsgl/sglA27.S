
sglA27.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slTranslate>:
   0:	2f 66       	mov.l	r6,@-r15
   2:	c6 07       	mov.l	@(28,gbr),r0
   4:	2f 56       	mov.l	r5,@-r15
   6:	67 06       	mov.l	@r0+,r7
   8:	65 f3       	mov	r15,r5
   a:	37 4d       	dmuls.l	r4,r7
   c:	00 5f       	mac.l	@r5+,@r0+
   e:	57 01       	mov.l	@(4,r0),r7
  10:	00 5f       	mac.l	@r5+,@r0+
  12:	65 f3       	mov	r15,r5
  14:	70 04       	add	#4,r0
  16:	61 03       	mov	r0,r1
  18:	02 0a       	sts	mach,r2
  1a:	03 1a       	sts	macl,r3
  1c:	66 06       	mov.l	@r0+,r6
  1e:	36 4d       	dmuls.l	r4,r6
  20:	23 2d       	xtrct	r2,r3
  22:	33 7c       	add	r7,r3
  24:	00 5f       	mac.l	@r5+,@r0+
  26:	71 fc       	add	#-4,r1
  28:	21 32       	mov.l	r3,@r1
  2a:	00 5f       	mac.l	@r5+,@r0+
  2c:	67 06       	mov.l	@r0+,r7
  2e:	66 06       	mov.l	@r0+,r6
  30:	02 0a       	sts	mach,r2
  32:	03 1a       	sts	macl,r3
  34:	36 4d       	dmuls.l	r4,r6
  36:	23 2d       	xtrct	r2,r3
  38:	33 7c       	add	r7,r3
  3a:	00 ff       	mac.l	@r15+,@r0+
  3c:	71 10       	add	#16,r1
  3e:	21 32       	mov.l	r3,@r1
  40:	00 ff       	mac.l	@r15+,@r0+
  42:	61 02       	mov.l	@r0,r1
  44:	02 0a       	sts	mach,r2
  46:	03 1a       	sts	macl,r3
  48:	23 2d       	xtrct	r2,r3
  4a:	33 1c       	add	r1,r3
  4c:	00 0b       	rts	
  4e:	20 32       	mov.l	r3,@r0
