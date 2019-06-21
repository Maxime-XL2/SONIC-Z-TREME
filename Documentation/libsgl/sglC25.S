
sglC25.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slNearClipFlag>:
   0:	60 43       	mov	r4,r0
   2:	c2 de       	mov.l	r0,@(888,gbr)
   4:	c6 12       	mov.l	@(72,gbr),r0
   6:	e1 3c       	mov	#60,r1
   8:	10 41       	mov.l	r4,@(4,r0)
   a:	10 10       	mov.l	r1,@(0,r0)
   c:	70 08       	add	#8,r0
   e:	d1 0d       	mov.l	44 <IMM_FRT_INTR>,r1	! 21000000
  10:	c2 12       	mov.l	r0,@(72,gbr)
  12:	00 0b       	rts	
  14:	21 01       	mov.w	r0,@r1

00000016 <_slDispPlaneLevel>:
  16:	60 43       	mov	r4,r0
  18:	c2 e0       	mov.l	r0,@(896,gbr)
  1a:	c6 12       	mov.l	@(72,gbr),r0
  1c:	e1 40       	mov	#64,r1
  1e:	10 41       	mov.l	r4,@(4,r0)
  20:	10 10       	mov.l	r1,@(0,r0)
  22:	70 08       	add	#8,r0
  24:	d1 07       	mov.l	44 <IMM_FRT_INTR>,r1	! 21000000
  26:	c2 12       	mov.l	r0,@(72,gbr)
  28:	00 0b       	rts	
  2a:	21 01       	mov.w	r0,@r1

0000002c <_slWindowClipLevel>:
  2c:	60 43       	mov	r4,r0
  2e:	c2 e2       	mov.l	r0,@(904,gbr)
  30:	c6 12       	mov.l	@(72,gbr),r0
  32:	e1 44       	mov	#68,r1
  34:	10 41       	mov.l	r4,@(4,r0)
  36:	10 10       	mov.l	r1,@(0,r0)
  38:	70 08       	add	#8,r0
  3a:	d1 02       	mov.l	44 <IMM_FRT_INTR>,r1	! 21000000
  3c:	c2 12       	mov.l	r0,@(72,gbr)
  3e:	00 0b       	rts	
  40:	21 01       	mov.w	r0,@r1
	...

00000044 <IMM_FRT_INTR>:
  44:	21 00       	mov.b	r0,@r1
	...
