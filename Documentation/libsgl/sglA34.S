
sglA34.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetTranslate>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	51 03       	mov.l	@(12,r0),r1
   4:	52 07       	mov.l	@(28,r0),r2
   6:	53 0b       	mov.l	@(44,r0),r3
   8:	14 10       	mov.l	r1,@(0,r4)
   a:	14 21       	mov.l	r2,@(4,r4)
   c:	00 0b       	rts	
   e:	14 32       	mov.l	r3,@(8,r4)
