
sglB029.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrAscSet>:
   0:	66 43       	mov	r4,r6
   2:	d4 03       	mov.l	10 <IMM_ASCII_CG>,r4	! 0 <_slScrAscSet>
   4:	e5 80       	mov	#-128,r5
   6:	d0 03       	mov.l	14 <IMM_setASC_1to8>,r0	! 0 <_slScrAscSet>
   8:	65 5c       	extu.b	r5,r5
   a:	40 2b       	jmp	@r0
   c:	e7 00       	mov	#0,r7
	...

00000010 <IMM_ASCII_CG>:
  10:	00 00       	.word 0x0000
	...

00000014 <IMM_setASC_1to8>:
  14:	00 00       	.word 0x0000
	...
