
sglB118.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColOffsetOff>:
   0:	c6 74       	mov.l	@(464,gbr),r0
   2:	64 4d       	extu.w	r4,r4
   4:	64 47       	not	r4,r4
   6:	20 49       	and	r4,r0
   8:	64 49       	swap.w	r4,r4
   a:	20 49       	and	r4,r0
   c:	00 0b       	rts	
   e:	c2 74       	mov.l	r0,@(464,gbr)
