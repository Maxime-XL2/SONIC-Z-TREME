
sglA29.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slIncMatrixPtr>:
   0:	c4 20       	mov.b	@(32,gbr),r0
   2:	e2 14       	mov	#20,r2
   4:	30 22       	cmp/hs	r2,r0
   6:	8d 06       	bt.s	16 <push_pop_err>
   8:	70 01       	add	#1,r0
   a:	c0 20       	mov.b	r0,@(32,gbr)
   c:	c6 07       	mov.l	@(28,gbr),r0
   e:	70 30       	add	#48,r0
  10:	c2 07       	mov.l	r0,@(28,gbr)
  12:	00 0b       	rts	
  14:	e0 01       	mov	#1,r0

00000016 <push_pop_err>:
  16:	00 0b       	rts	
  18:	e0 00       	mov	#0,r0
