
sglB078.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLookR>:
   0:	c6 78       	mov.l	@(480,gbr),r0
   2:	4f 13       	stc.l	gbr,@-r15
   4:	40 1e       	ldc	r0,gbr
   6:	c5 1e       	mov.w	@(60,gbr),r0
   8:	40 28       	shll16	r0
   a:	34 08       	sub	r0,r4
   c:	60 43       	mov	r4,r0
   e:	c2 11       	mov.l	r0,@(68,gbr)
  10:	c5 1f       	mov.w	@(62,gbr),r0
  12:	40 28       	shll16	r0
  14:	35 08       	sub	r0,r5
  16:	60 53       	mov	r5,r0
  18:	c2 12       	mov.l	r0,@(72,gbr)
  1a:	00 0b       	rts	
  1c:	4f 17       	ldc.l	@r15+,gbr
	...
