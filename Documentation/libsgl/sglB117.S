
sglB117.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColOffsetAUse>:
   0:	c6 74       	mov.l	@(464,gbr),r0
   2:	64 4d       	extu.w	r4,r4
   4:	61 47       	not	r4,r1
   6:	20 19       	and	r1,r0
   8:	44 28       	shll16	r4
   a:	20 4b       	or	r4,r0
   c:	00 0b       	rts	
   e:	c2 74       	mov.l	r0,@(464,gbr)
