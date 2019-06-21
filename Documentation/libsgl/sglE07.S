
sglE07.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slReturnWork>:
   0:	c5 07       	mov.w	@(14,gbr),r0
   2:	61 03       	mov	r0,r1
   4:	70 01       	add	#1,r0
   6:	c1 07       	mov.w	r0,@(14,gbr)
   8:	41 08       	shll2	r1
   a:	d0 01       	mov.l	10 <IMM_RemainWork>,r0	! 0 <_slReturnWork>
   c:	00 0b       	rts	
   e:	01 46       	mov.l	r4,@(r0,r1)

00000010 <IMM_RemainWork>:
  10:	00 00       	.word 0x0000
	...
