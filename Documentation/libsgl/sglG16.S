
sglG16.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSndEffect>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	62 03       	mov	r0,r2
   4:	60 43       	mov	r4,r0
   6:	80 22       	mov.b	r0,@(2,r2)
   8:	c6 dd       	mov.l	@(884,gbr),r0
   a:	e1 83       	mov	#-125,r1
   c:	40 2b       	jmp	@r0
   e:	22 10       	mov.b	r1,@r2
