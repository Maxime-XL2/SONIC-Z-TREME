
sglF18.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slClearBitMap>:
   0:	d0 0a       	mov.l	2c <IMM_BitMapTop>,r0	! 0 <_slClearBitMap>
   2:	65 02       	mov.l	@r0,r5
   4:	84 0d       	mov.b	@(13,r0),r0
   6:	4f 22       	sts.l	pr,@-r15
   8:	61 03       	mov	r0,r1
   a:	c7 0c       	mova	3c <bmSizeTbl2>,r0
   c:	06 1e       	mov.l	@(r0,r1),r6
   e:	d1 08       	mov.l	30 <IMM_slDMAXCopy>,r1	! 0 <_slClearBitMap>
  10:	c7 09       	mova	38 <clear_data>,r0
  12:	62 4c       	extu.b	r4,r2
  14:	44 18       	shll8	r4
  16:	24 2b       	or	r2,r4
  18:	62 4d       	extu.w	r4,r2
  1a:	44 28       	shll16	r4
  1c:	24 2b       	or	r2,r4
  1e:	20 42       	mov.l	r4,@r0
  20:	e7 11       	mov	#17,r7
  22:	41 0b       	jsr	@r1
  24:	64 03       	mov	r0,r4
  26:	d1 03       	mov.l	34 <IMM_slDMAWait>,r1	! 0 <_slClearBitMap>
  28:	41 2b       	jmp	@r1
  2a:	4f 26       	lds.l	@r15+,pr

0000002c <IMM_BitMapTop>:
  2c:	00 00       	.word 0x0000
	...

00000030 <IMM_slDMAXCopy>:
  30:	00 00       	.word 0x0000
	...

00000034 <IMM_slDMAWait>:
  34:	00 00       	.word 0x0000
	...

00000038 <clear_data>:
  38:	00 00       	.word 0x0000
	...

0000003c <bmSizeTbl2>:
  3c:	00 02       	stc	sr,r0
  3e:	00 00       	.word 0x0000
  40:	00 04       	mov.b	r0,@(r0,r0)
  42:	00 00       	.word 0x0000
  44:	00 04       	mov.b	r0,@(r0,r0)
  46:	00 00       	.word 0x0000
  48:	00 08       	clrt	
	...
