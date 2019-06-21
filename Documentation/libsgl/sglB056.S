
sglB056.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPlaneNbg1>:
   0:	c4 fb       	mov.b	@(251,gbr),r0
   2:	44 08       	shll2	r4
   4:	c9 f3       	and	#-13,r0
   6:	20 4b       	or	r4,r0
   8:	00 0b       	rts	
   a:	c0 fb       	mov.b	r0,@(251,gbr)
