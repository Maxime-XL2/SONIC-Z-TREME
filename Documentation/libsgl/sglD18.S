
sglD18.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_ScuGetStatus>:
   0:	61 5c       	extu.b	r5,r1
   2:	71 bb       	add	#-69,r1
   4:	61 1c       	extu.b	r1,r1
   6:	00 12       	stc	gbr,r0
   8:	00 1c       	mov.b	@(r0,r1),r0
   a:	c8 04       	tst	#4,r0
   c:	8f 07       	bf.s	1e <sgtstat_01>
   e:	00 29       	movt	r0
  10:	d3 04       	mov.l	24 <IMM_ScuDMA_Stat>,r3	! 25fe007c
  12:	c7 05       	mova	28 <IMM_Chk_CH0>,r0
  14:	45 08       	shll2	r5
  16:	01 5e       	mov.l	@(r0,r5),r1
  18:	60 32       	mov.l	@r3,r0
  1a:	20 18       	tst	r1,r0
  1c:	00 29       	movt	r0

0000001e <sgtstat_01>:
  1e:	00 0b       	rts	
  20:	24 02       	mov.l	r0,@r4
	...

00000024 <IMM_ScuDMA_Stat>:
  24:	25 fe       	mulu.w	r15,r5
  26:	00 7c       	mov.b	@(r0,r7),r0

00000028 <IMM_Chk_CH0>:
  28:	00 01       	.word 0x0001
  2a:	00 30       	.word 0x0030

0000002c <IMM_Chk_CH1>:
  2c:	00 02       	stc	sr,r0
  2e:	03 00       	.word 0x0300

00000030 <IMM_Chk_CH2>:
  30:	00 00       	.word 0x0000
  32:	30 00       	cmp/eq	r0,r0
