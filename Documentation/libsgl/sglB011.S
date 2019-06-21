
sglB011.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBitMapNbg1>:
   0:	c4 e8       	mov.b	@(232,gbr),r0
   2:	e1 c1       	mov	#-63,r1
   4:	20 19       	and	r1,r0
   6:	20 4b       	or	r4,r0
   8:	20 5b       	or	r5,r0
   a:	c0 e8       	mov.b	r0,@(232,gbr)
   c:	60 63       	mov	r6,r0
   e:	c2 80       	mov.l	r0,@(512,gbr)
  10:	c4 fd       	mov.b	@(253,gbr),r0
  12:	46 29       	shlr16	r6
  14:	46 08       	shll2	r6
  16:	46 00       	shll	r6
  18:	e1 f0       	mov	#-16,r1
  1a:	26 19       	and	r1,r6
  1c:	c9 0f       	and	#15,r0
  1e:	20 6b       	or	r6,r0
  20:	00 0b       	rts	
  22:	c0 fd       	mov.b	r0,@(253,gbr)
