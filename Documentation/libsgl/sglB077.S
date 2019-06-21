
sglB077.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrMoveNbg3>:
   0:	c6 bd       	mov.l	@(756,gbr),r0
   2:	30 4c       	add	r4,r0
   4:	c2 bd       	mov.l	r0,@(756,gbr)
   6:	61 09       	swap.w	r0,r1
   8:	c6 be       	mov.l	@(760,gbr),r0
   a:	30 5c       	add	r5,r0
   c:	c2 be       	mov.l	r0,@(760,gbr)
   e:	20 1d       	xtrct	r1,r0
  10:	00 0b       	rts	
  12:	c2 55       	mov.l	r0,@(340,gbr)
