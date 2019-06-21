
sglD03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDMAStatus>:
   0:	e1 80       	mov	#-128,r1
   2:	50 13       	mov.l	@(12,r1),r0
   4:	c9 03       	and	#3,r0
   6:	88 01       	cmp/eq	#1,r0
   8:	00 0b       	rts	
   a:	00 29       	movt	r0
