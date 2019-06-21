
sglB060.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPlaneRB>:
   0:	c4 fa       	mov.b	@(250,gbr),r0
   2:	44 08       	shll2	r4
   4:	c9 cf       	and	#-49,r0
   6:	44 08       	shll2	r4
   8:	20 4b       	or	r4,r0
   a:	00 0b       	rts	
   c:	c0 fa       	mov.b	r0,@(250,gbr)
	...
