
sglB065.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpriteCCalcCond>:
   0:	c5 d0       	mov.w	@(416,gbr),r0
   2:	e1 cf       	mov	#-49,r1
   4:	60 08       	swap.b	r0,r0
   6:	20 19       	and	r1,r0
   8:	44 08       	shll2	r4
   a:	44 08       	shll2	r4
   c:	20 4b       	or	r4,r0
   e:	60 08       	swap.b	r0,r0
  10:	00 0b       	rts	
  12:	c1 d0       	mov.w	r0,@(416,gbr)
