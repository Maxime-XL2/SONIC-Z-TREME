
sglB067.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpriteColMode>:
   0:	c5 d0       	mov.w	@(416,gbr),r0
   2:	e1 df       	mov	#-33,r1
   4:	20 19       	and	r1,r0
   6:	44 08       	shll2	r4
   8:	44 08       	shll2	r4
   a:	44 00       	shll	r4
   c:	20 4b       	or	r4,r0
   e:	00 0b       	rts	
  10:	c1 d0       	mov.w	r0,@(416,gbr)
	...
