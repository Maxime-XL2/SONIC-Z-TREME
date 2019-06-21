
sglB076.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrMoveNbg2>:
   0:	c6 bb       	mov.l	@(748,gbr),r0
   2:	30 4c       	add	r4,r0
   4:	c2 bb       	mov.l	r0,@(748,gbr)
   6:	61 09       	swap.w	r0,r1
   8:	c6 bc       	mov.l	@(752,gbr),r0
   a:	30 5c       	add	r5,r0
   c:	c2 bc       	mov.l	r0,@(752,gbr)
   e:	20 1d       	xtrct	r1,r0
  10:	00 0b       	rts	
  12:	c2 54       	mov.l	r0,@(336,gbr)
