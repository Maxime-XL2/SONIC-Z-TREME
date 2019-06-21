
sglF09.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slAng2Hex>:
   0:	90 04       	mov.w	c <IMM_360>,r0	! 168
   2:	64 4d       	extu.w	r4,r4
   4:	24 0e       	mulu.w	r0,r4
   6:	00 1a       	sts	macl,r0
   8:	00 0b       	rts	
   a:	40 29       	shlr16	r0

0000000c <IMM_360>:
   c:	01 68       	.word 0x0168
	...
