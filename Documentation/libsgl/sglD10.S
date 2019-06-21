
sglD10.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuMemCopy1>:
   0:	60 43       	mov	r4,r0
   2:	d1 02       	mov.l	c <IMM_slDMAXCopy>,r1	! 0 <_DMA_CpuMemCopy1>
   4:	64 53       	mov	r5,r4
   6:	65 03       	mov	r0,r5
   8:	41 2b       	jmp	@r1
   a:	e7 00       	mov	#0,r7

0000000c <IMM_slDMAXCopy>:
   c:	00 00       	.word 0x0000
	...
