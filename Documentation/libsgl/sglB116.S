
sglB116.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetVCount>:
   0:	d2 01       	mov.l	8 <IMM_ScrollPort>,r2	! 25f80000
   2:	85 21       	mov.w	@(2,r2),r0
   4:	00 0b       	rts	
   6:	85 25       	mov.w	@(10,r2),r0

00000008 <IMM_ScrollPort>:
   8:	25 f8       	tst	r15,r5
	...
