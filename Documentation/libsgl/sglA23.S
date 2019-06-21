
sglA23.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetMatrix>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	e7 03       	mov	#3,r7

00000004 <gtmx_01>:
   4:	61 06       	mov.l	@r0+,r1
   6:	62 06       	mov.l	@r0+,r2
   8:	63 06       	mov.l	@r0+,r3
   a:	65 06       	mov.l	@r0+,r5
   c:	14 10       	mov.l	r1,@(0,r4)
   e:	14 23       	mov.l	r2,@(12,r4)
  10:	14 36       	mov.l	r3,@(24,r4)
  12:	14 59       	mov.l	r5,@(36,r4)
  14:	47 10       	dt	r7
  16:	8f f5       	bf.s	4 <gtmx_01>
  18:	74 04       	add	#4,r4
  1a:	00 0b       	rts	
  1c:	00 09       	nop	
