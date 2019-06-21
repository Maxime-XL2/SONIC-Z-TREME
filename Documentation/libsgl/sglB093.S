
sglB093.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGradationOn>:
   0:	c5 d6       	mov.w	@(428,gbr),r0
   2:	91 03       	mov.w	c <IMM_0FFF>,r1	! fff
   4:	20 19       	and	r1,r0
   6:	20 4b       	or	r4,r0
   8:	00 0b       	rts	
   a:	c1 d6       	mov.w	r0,@(428,gbr)

0000000c <IMM_0FFF>:
   c:	0f ff       	mac.l	@r15+,@r15+
	...
