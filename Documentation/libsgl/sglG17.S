
sglG17.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSndMixChange>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	44 18       	shll8	r4
   4:	62 03       	mov	r0,r2
   6:	60 5c       	extu.b	r5,r0
   8:	20 4b       	or	r4,r0
   a:	81 21       	mov.w	r0,@(2,r2)
   c:	c6 dd       	mov.l	@(884,gbr),r0
   e:	e1 87       	mov	#-121,r1
  10:	40 2b       	jmp	@r0
  12:	22 10       	mov.b	r1,@r2
