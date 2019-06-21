
sglF11.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slAng2FX>:
   0:	d0 03       	mov.l	10 <IMM_360_00>,r0	! 1680000
   2:	64 4d       	extu.w	r4,r4
   4:	34 05       	dmulu.l	r0,r4
   6:	01 0a       	sts	mach,r1
   8:	00 1a       	sts	macl,r0
   a:	00 0b       	rts	
   c:	20 1d       	xtrct	r1,r0
	...

00000010 <IMM_360_00>:
  10:	01 68       	.word 0x0168
	...
