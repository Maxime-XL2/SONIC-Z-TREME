
sglD13.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuMemCopy16>:
   0:	46 08       	shll2	r6
   2:	46 08       	shll2	r6
   4:	60 43       	mov	r4,r0
   6:	d1 02       	mov.l	10 <IMM_slDMAXCopy>,r1	! 0 <_DMA_CpuMemCopy16>
   8:	64 53       	mov	r5,r4
   a:	65 03       	mov	r0,r5
   c:	41 2b       	jmp	@r1
   e:	e7 15       	mov	#21,r7

00000010 <IMM_slDMAXCopy>:
  10:	00 00       	.word 0x0000
	...
