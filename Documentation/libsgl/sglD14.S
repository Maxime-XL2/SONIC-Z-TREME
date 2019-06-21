
sglD14.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuResult>:
   0:	c4 b9       	mov.b	@(185,gbr),r0
   2:	c8 10       	tst	#16,r0
   4:	8d 05       	bt.s	12 <dmcpu_01>
   6:	e3 8c       	mov	#-116,r3
   8:	60 32       	mov.l	@r3,r0
   a:	c8 02       	tst	#2,r0
   c:	8b 01       	bf	12 <dmcpu_01>
   e:	00 0b       	rts	
  10:	e0 02       	mov	#2,r0

00000012 <dmcpu_01>:
  12:	00 0b       	rts	
  14:	e0 00       	mov	#0,r0
	...
