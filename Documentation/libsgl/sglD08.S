
sglD08.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuGetComStatus>:
   0:	e3 b0       	mov	#-80,r3
   2:	60 32       	mov.l	@r3,r0
   4:	e1 02       	mov	#2,r1
   6:	21 09       	and	r0,r1
   8:	c9 04       	and	#4,r0
   a:	14 11       	mov.l	r1,@(4,r4)
   c:	00 0b       	rts	
   e:	14 10       	mov.l	r1,@(0,r4)
