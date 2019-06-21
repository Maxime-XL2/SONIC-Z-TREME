
sglA22.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLoadMatrix>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	e7 04       	mov	#4,r7

00000004 <ldmx_01>:
   4:	61 46       	mov.l	@r4+,r1
   6:	62 46       	mov.l	@r4+,r2
   8:	63 46       	mov.l	@r4+,r3
   a:	10 10       	mov.l	r1,@(0,r0)
   c:	10 24       	mov.l	r2,@(16,r0)
   e:	10 38       	mov.l	r3,@(32,r0)
  10:	47 10       	dt	r7
  12:	8f f7       	bf.s	4 <ldmx_01>
  14:	70 04       	add	#4,r0
  16:	00 0b       	rts	
  18:	00 09       	nop	
