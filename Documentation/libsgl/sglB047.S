
sglB047.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slOverRA>:
   0:	c4 fa       	mov.b	@(250,gbr),r0
   2:	44 08       	shll2	r4
   4:	c9 f3       	and	#-13,r0
   6:	20 4b       	or	r4,r0
   8:	00 0b       	rts	
   a:	c0 fa       	mov.b	r0,@(250,gbr)
