
sglF16.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBitMapBase>:
   0:	d0 02       	mov.l	c <IMM_BitMapTop>,r0	! 0 <_slBitMapBase>
   2:	45 28       	shll16	r5
   4:	25 4d       	xtrct	r4,r5
   6:	00 0b       	rts	
   8:	10 52       	mov.l	r5,@(8,r0)
	...

0000000c <IMM_BitMapTop>:
   c:	00 00       	.word 0x0000
	...
