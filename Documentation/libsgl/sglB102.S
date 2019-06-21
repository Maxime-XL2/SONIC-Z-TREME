
sglB102.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialPrioModeNbg0>:
   0:	a0 0e       	bra	20 <SpPrioMode>
   2:	e1 fc       	mov	#-4,r1

00000004 <_slSpecialPrioModeNbg1>:
   4:	a0 0b       	bra	1e <SpPrioMode_0>
   6:	e1 f3       	mov	#-13,r1

00000008 <_slSpecialPrioModeNbg3>:
   8:	44 18       	shll8	r4
   a:	44 09       	shlr2	r4
   c:	e1 9f       	mov	#-97,r1
   e:	a0 07       	bra	20 <SpPrioMode>
  10:	41 04       	rotl	r1

00000012 <_slSpecialPrioModeRbg0>:
  12:	44 18       	shll8	r4
  14:	e1 ff       	mov	#-1,r1
  16:	a0 03       	bra	20 <SpPrioMode>
  18:	61 1c       	extu.b	r1,r1

0000001a <_slSpecialPrioModeNbg2>:
  1a:	e1 cf       	mov	#-49,r1
  1c:	44 08       	shll2	r4

0000001e <SpPrioMode_0>:
  1e:	44 08       	shll2	r4

00000020 <SpPrioMode>:
  20:	c5 d5       	mov.w	@(426,gbr),r0
  22:	20 19       	and	r1,r0
  24:	20 4b       	or	r4,r0
  26:	00 0b       	rts	
  28:	c1 d5       	mov.w	r0,@(426,gbr)
	...
