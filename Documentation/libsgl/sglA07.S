
sglA07.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDivFX>:
   0:	e3 ff       	mov	#-1,r3
   2:	43 18       	shll8	r3
   4:	13 40       	mov.l	r4,@(0,r3)
   6:	62 59       	swap.w	r5,r2
   8:	62 2f       	exts.w	r2,r2
   a:	13 24       	mov.l	r2,@(16,r3)
   c:	45 28       	shll16	r5
   e:	13 55       	mov.l	r5,@(20,r3)
  10:	00 0b       	rts	
  12:	50 37       	mov.l	@(28,r3),r0
