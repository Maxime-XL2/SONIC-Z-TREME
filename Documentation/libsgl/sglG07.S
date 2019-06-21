
sglG07.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSequenceFade>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	44 18       	shll8	r4
   4:	62 03       	mov	r0,r2
   6:	60 5c       	extu.b	r5,r0
   8:	20 4b       	or	r4,r0
   a:	81 21       	mov.w	r0,@(2,r2)
   c:	60 63       	mov	r6,r0
   e:	80 24       	mov.b	r0,@(4,r2)
  10:	c6 dd       	mov.l	@(884,gbr),r0
  12:	e1 05       	mov	#5,r1
  14:	40 2b       	jmp	@r0
  16:	22 10       	mov.b	r1,@r2
