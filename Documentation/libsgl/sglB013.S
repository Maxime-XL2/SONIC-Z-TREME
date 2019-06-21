
sglB013.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrDisp>:
   0:	c5 70       	mov.w	@(224,gbr),r0
   2:	20 4b       	or	r4,r0
   4:	44 29       	shlr16	r4
   6:	64 47       	not	r4,r4
   8:	20 49       	and	r4,r0
   a:	00 0b       	rts	
   c:	c1 70       	mov.w	r0,@(224,gbr)
	...
