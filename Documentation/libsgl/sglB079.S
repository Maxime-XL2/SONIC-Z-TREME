
sglB079.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispCenterR>:
   0:	c6 78       	mov.l	@(480,gbr),r0
   2:	4f 13       	stc.l	gbr,@-r15
   4:	40 1e       	ldc	r0,gbr
   6:	c5 1e       	mov.w	@(60,gbr),r0
   8:	61 03       	mov	r0,r1
   a:	60 49       	swap.w	r4,r0
   c:	c1 1e       	mov.w	r0,@(60,gbr)
   e:	c1 1a       	mov.w	r0,@(52,gbr)
  10:	31 08       	sub	r0,r1
  12:	c6 11       	mov.l	@(68,gbr),r0
  14:	41 28       	shll16	r1
  16:	30 1c       	add	r1,r0
  18:	c2 11       	mov.l	r0,@(68,gbr)
  1a:	c5 1f       	mov.w	@(62,gbr),r0
  1c:	61 03       	mov	r0,r1
  1e:	60 59       	swap.w	r5,r0
  20:	c1 1f       	mov.w	r0,@(62,gbr)
  22:	c1 1b       	mov.w	r0,@(54,gbr)
  24:	31 08       	sub	r0,r1
  26:	c6 12       	mov.l	@(72,gbr),r0
  28:	41 28       	shll16	r1
  2a:	30 1c       	add	r1,r0
  2c:	c2 12       	mov.l	r0,@(72,gbr)
  2e:	00 0b       	rts	
  30:	4f 17       	ldc.l	@r15+,gbr
	...
