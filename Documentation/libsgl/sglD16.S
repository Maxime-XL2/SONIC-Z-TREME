
sglD16.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_ScuSetPrm>:
   0:	d6 10       	mov.l	44 <IMM_DMA_SCU_PRM0>,r6	! 48 <DMA_SCU_PRM0>
   2:	25 58       	tst	r5,r5
   4:	8d 05       	bt.s	12 <scsp_01>
   6:	50 49       	mov.l	@(36,r4),r0
   8:	76 14       	add	#20,r6

0000000a <scsp_00>:
   a:	75 ff       	add	#-1,r5
   c:	25 58       	tst	r5,r5
   e:	89 00       	bt	12 <scsp_01>
  10:	76 14       	add	#20,r6

00000012 <scsp_01>:
  12:	51 42       	mov.l	@(8,r4),r1
  14:	c8 01       	tst	#1,r0
  16:	8d 02       	bt.s	1e <scsp_02>
  18:	16 12       	mov.l	r1,@(8,r6)
  1a:	52 40       	mov.l	@(0,r4),r2
  1c:	16 20       	mov.l	r2,@(0,r6)

0000001e <scsp_02>:
  1e:	c8 02       	tst	#2,r0
  20:	8d 02       	bt.s	28 <scsp_03>
  22:	51 43       	mov.l	@(12,r4),r1
  24:	52 41       	mov.l	@(4,r4),r2
  26:	16 21       	mov.l	r2,@(4,r6)

00000028 <scsp_03>:
  28:	52 44       	mov.l	@(16,r4),r2
  2a:	50 46       	mov.l	@(24,r4),r0
  2c:	22 1b       	or	r1,r2
  2e:	16 23       	mov.l	r2,@(12,r6)
  30:	51 47       	mov.l	@(28,r4),r1
  32:	52 45       	mov.l	@(20,r4),r2
  34:	40 28       	shll16	r0
  36:	22 0b       	or	r0,r2
  38:	50 48       	mov.l	@(32,r4),r0
  3a:	41 18       	shll8	r1
  3c:	22 1b       	or	r1,r2
  3e:	20 2b       	or	r2,r0
  40:	00 0b       	rts	
  42:	16 04       	mov.l	r0,@(16,r6)

00000044 <IMM_DMA_SCU_PRM0>:
  44:	00 00       	.word 0x0000
  46:	00 48       	clrs	

00000048 <DMA_SCU_PRM0>:
	...

0000005c <DMA_SCU_PRM1>:
	...

00000070 <DMA_SCU_PRM2>:
	...
