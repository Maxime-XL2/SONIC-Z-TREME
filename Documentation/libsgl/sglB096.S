
sglB096.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColRAMOffsetNbg2>:
   0:	c5 d2       	mov.w	@(420,gbr),r0
   2:	e1 f0       	mov	#-16,r1
   4:	60 08       	swap.b	r0,r0
   6:	20 19       	and	r1,r0
   8:	20 4b       	or	r4,r0
   a:	60 08       	swap.b	r0,r0
   c:	00 0b       	rts	
   e:	c1 d2       	mov.w	r0,@(420,gbr)
