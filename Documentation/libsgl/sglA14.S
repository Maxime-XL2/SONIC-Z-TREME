
sglA14.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCalcPoint>:
   0:	2f 66       	mov.l	r6,@-r15
   2:	2f 56       	mov.l	r5,@-r15
   4:	2f 46       	mov.l	r4,@-r15
   6:	c6 07       	mov.l	@(28,gbr),r0
   8:	64 f3       	mov	r15,r4
   a:	e1 03       	mov	#3,r1

0000000c <clpnt_lp_0>:
   c:	00 28       	clrmac	
   e:	00 4f       	mac.l	@r4+,@r0+
  10:	00 4f       	mac.l	@r4+,@r0+
  12:	00 4f       	mac.l	@r4+,@r0+
  14:	65 06       	mov.l	@r0+,r5
  16:	02 0a       	sts	mach,r2
  18:	03 1a       	sts	macl,r3
  1a:	23 2d       	xtrct	r2,r3
  1c:	33 5c       	add	r5,r3
  1e:	27 32       	mov.l	r3,@r7
  20:	77 04       	add	#4,r7
  22:	41 10       	dt	r1
  24:	8f f2       	bf.s	c <clpnt_lp_0>
  26:	64 f3       	mov	r15,r4
  28:	00 0b       	rts	
  2a:	7f 0c       	add	#12,r15
