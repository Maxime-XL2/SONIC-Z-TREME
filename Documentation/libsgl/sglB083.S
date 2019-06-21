
sglB083.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrWindow1>:
   0:	c5 60       	mov.w	@(192,gbr),r0
   2:	c8 02       	tst	#2,r0
   4:	8b 01       	bf	a <scwn1_00>
   6:	44 00       	shll	r4
   8:	46 00       	shll	r6

0000000a <scwn1_00>:
   a:	60 59       	swap.w	r5,r0
   c:	20 4d       	xtrct	r4,r0
   e:	c2 62       	mov.l	r0,@(392,gbr)
  10:	60 79       	swap.w	r7,r0
  12:	20 6d       	xtrct	r6,r0
  14:	c2 63       	mov.l	r0,@(396,gbr)
  16:	e0 00       	mov	#0,r0
  18:	00 0b       	rts	
  1a:	c2 67       	mov.l	r0,@(412,gbr)
