
sglA15.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSlaveFunc>:
   0:	c6 12       	mov.l	@(72,gbr),r0
   2:	e1 30       	mov	#48,r1
   4:	10 41       	mov.l	r4,@(4,r0)
   6:	10 52       	mov.l	r5,@(8,r0)
   8:	10 10       	mov.l	r1,@(0,r0)
   a:	70 0c       	add	#12,r0
   c:	d1 01       	mov.l	14 <IMM_FRT_INTR>,r1	! 21000000
   e:	c2 12       	mov.l	r0,@(72,gbr)
  10:	00 0b       	rts	
  12:	21 01       	mov.w	r0,@r1

00000014 <IMM_FRT_INTR>:
  14:	21 00       	mov.b	r0,@r1
	...
