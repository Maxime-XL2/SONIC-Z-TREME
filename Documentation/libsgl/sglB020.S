
sglB020.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColorCalc>:
   0:	c5 d6       	mov.w	@(428,gbr),r0
   2:	91 03       	mov.w	c <IMM_F000>,r1	! f000
   4:	20 19       	and	r1,r0
   6:	20 4b       	or	r4,r0
   8:	00 0b       	rts	
   a:	c1 d6       	mov.w	r0,@(428,gbr)

0000000c <IMM_F000>:
   c:	f0 00       	fadd	fr0,fr0
	...
