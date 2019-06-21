
sglD11.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuMemCopy2>:
   0:	36 6c       	add	r6,r6
   2:	60 43       	mov	r4,r0
   4:	d1 02       	mov.l	10 <IMM_slDMAXCopy>,r1	! 0 <_DMA_CpuMemCopy2>
   6:	64 53       	mov	r5,r4
   8:	65 03       	mov	r0,r5
   a:	41 2b       	jmp	@r1
   c:	e7 07       	mov	#7,r7
	...

00000010 <IMM_slDMAXCopy>:
  10:	00 00       	.word 0x0000
	...
