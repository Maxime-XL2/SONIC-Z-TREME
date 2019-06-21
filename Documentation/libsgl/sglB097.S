
sglB097.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColRAMOffsetNbg3>:
   0:	c5 d2       	mov.w	@(420,gbr),r0
   2:	91 07       	mov.w	14 <IMM_ff0f>,r1	! ff0f
   4:	60 08       	swap.b	r0,r0
   6:	20 19       	and	r1,r0
   8:	44 08       	shll2	r4
   a:	44 08       	shll2	r4
   c:	20 4b       	or	r4,r0
   e:	60 08       	swap.b	r0,r0
  10:	00 0b       	rts	
  12:	c1 d2       	mov.w	r0,@(420,gbr)

00000014 <IMM_ff0f>:
  14:	ff 0f       	.word 0xff0f
	...
