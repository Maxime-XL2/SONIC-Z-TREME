
sglG20.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCDDAOff>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	62 03       	mov	r0,r2
   4:	e0 00       	mov	#0,r0
   6:	81 21       	mov.w	r0,@(2,r2)
   8:	c6 dd       	mov.l	@(884,gbr),r0
   a:	e1 80       	mov	#-128,r1
   c:	40 2b       	jmp	@r0
   e:	22 10       	mov.b	r1,@r2
