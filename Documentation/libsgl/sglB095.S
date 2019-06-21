
sglB095.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColRAMOffsetNbg1>:
   0:	c5 d2       	mov.w	@(420,gbr),r0
   2:	91 05       	mov.w	10 <IMM_ff0f>,r1	! ff0f
   4:	20 19       	and	r1,r0
   6:	44 08       	shll2	r4
   8:	44 08       	shll2	r4
   a:	20 4b       	or	r4,r0
   c:	00 0b       	rts	
   e:	c1 d2       	mov.w	r0,@(420,gbr)

00000010 <IMM_ff0f>:
  10:	ff 0f       	.word 0xff0f
	...
