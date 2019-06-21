
sglA40.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCalcVector>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	e1 03       	mov	#3,r1

00000004 <clpnt_lp_0>:
   4:	00 28       	clrmac	
   6:	00 4f       	mac.l	@r4+,@r0+
   8:	00 4f       	mac.l	@r4+,@r0+
   a:	00 4f       	mac.l	@r4+,@r0+
   c:	70 04       	add	#4,r0
   e:	02 0a       	sts	mach,r2
  10:	03 1a       	sts	macl,r3
  12:	23 2d       	xtrct	r2,r3
  14:	25 32       	mov.l	r3,@r5
  16:	75 04       	add	#4,r5
  18:	41 10       	dt	r1
  1a:	8f f3       	bf.s	4 <clpnt_lp_0>
  1c:	74 f4       	add	#-12,r4
  1e:	00 0b       	rts	
  20:	00 09       	nop	
