
sglB010.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBitMapNbg0>:
   0:	c5 74       	mov.w	@(232,gbr),r0
   2:	e1 81       	mov	#-127,r1
   4:	20 19       	and	r1,r0
   6:	20 4b       	or	r4,r0
   8:	20 5b       	or	r5,r0
   a:	c1 74       	mov.w	r0,@(232,gbr)
   c:	60 63       	mov	r6,r0
   e:	c2 7f       	mov.l	r0,@(508,gbr)
  10:	c4 fd       	mov.b	@(253,gbr),r0
  12:	46 29       	shlr16	r6
  14:	46 01       	shlr	r6
  16:	e1 0f       	mov	#15,r1
  18:	26 19       	and	r1,r6
  1a:	c9 f0       	and	#-16,r0
  1c:	20 6b       	or	r6,r0
  1e:	00 0b       	rts	
  20:	c0 fd       	mov.b	r0,@(253,gbr)
	...
