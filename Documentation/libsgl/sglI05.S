
sglI05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSynchFunction>:
   0:	24 48       	tst	r4,r4
   2:	8f 01       	bf.s	8 <stusf_01>
   4:	60 43       	mov	r4,r0
   6:	c7 01       	mova	c <NoOperation>,r0

00000008 <stusf_01>:
   8:	00 0b       	rts	
   a:	c2 f3       	mov.l	r0,@(972,gbr)

0000000c <NoOperation>:
   c:	00 0b       	rts	
   e:	00 09       	nop	
