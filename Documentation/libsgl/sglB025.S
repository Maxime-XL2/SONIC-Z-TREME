
sglB025.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColOffsetBUse>:
   0:	c6 74       	mov.l	@(464,gbr),r0
   2:	64 4d       	extu.w	r4,r4
   4:	20 4b       	or	r4,r0
   6:	44 28       	shll16	r4
   8:	20 4b       	or	r4,r0
   a:	00 0b       	rts	
   c:	c2 74       	mov.l	r0,@(464,gbr)
	...
