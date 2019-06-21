
sglB012.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBitMapRbg0>:
   0:	c4 ea       	mov.b	@(234,gbr),r0
   2:	e1 81       	mov	#-127,r1
   4:	20 19       	and	r1,r0
   6:	20 4b       	or	r4,r0
   8:	20 5b       	or	r5,r0
   a:	c0 ea       	mov.b	r0,@(234,gbr)
   c:	60 63       	mov	r6,r0
   e:	c2 83       	mov.l	r0,@(524,gbr)
  10:	40 29       	shlr16	r0
  12:	40 01       	shlr	r0
  14:	00 0b       	rts	
  16:	c1 7f       	mov.w	r0,@(254,gbr)
