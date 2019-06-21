
sglE03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slReturnEvent>:
   0:	c5 06       	mov.w	@(12,gbr),r0
   2:	61 0c       	extu.b	r0,r1
   4:	70 01       	add	#1,r0
   6:	c1 06       	mov.w	r0,@(12,gbr)
   8:	41 08       	shll2	r1
   a:	d0 01       	mov.l	10 <IMM_RemainEvent>,r0	! 0 <_slReturnEvent>
   c:	00 0b       	rts	
   e:	01 46       	mov.l	r4,@(r0,r1)

00000010 <IMM_RemainEvent>:
  10:	00 00       	.word 0x0000
	...
