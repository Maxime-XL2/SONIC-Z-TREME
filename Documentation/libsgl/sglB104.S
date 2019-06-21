
sglB104.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRparaReadCtrlRA>:
   0:	c5 b9       	mov.w	@(370,gbr),r0
   2:	40 19       	shlr8	r0
   4:	40 18       	shll8	r0
   6:	20 4b       	or	r4,r0
   8:	00 0b       	rts	
   a:	c1 b9       	mov.w	r0,@(370,gbr)
