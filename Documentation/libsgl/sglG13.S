
sglG13.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBGMFade>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	62 03       	mov	r0,r2
   4:	60 4c       	extu.b	r4,r0
   6:	81 21       	mov.w	r0,@(2,r2)
   8:	60 53       	mov	r5,r0
   a:	80 24       	mov.b	r0,@(4,r2)
   c:	c6 dd       	mov.l	@(884,gbr),r0
   e:	e1 05       	mov	#5,r1
  10:	40 2b       	jmp	@r0
  12:	22 10       	mov.b	r1,@r2
