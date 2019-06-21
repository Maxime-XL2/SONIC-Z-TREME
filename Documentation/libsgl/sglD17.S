
sglD17.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_ScuStart>:
   0:	d2 1a       	mov.l	6c <IMM_DMASt_SCU0>,r2	! 60ffcbb
   2:	32 4c       	add	r4,r2
   4:	60 20       	mov.b	@r2,r0

00000006 <scstrt_01>:
   6:	c8 04       	tst	#4,r0
   8:	8f 0c       	bf.s	24 <scstrt_05>
   a:	61 43       	mov	r4,r1
   c:	41 08       	shll2	r1
   e:	c7 18       	mova	70 <IMM_Chk_CH0>,r0
  10:	01 1e       	mov.l	@(r0,r1),r1
  12:	d3 1a       	mov.l	7c <IMM_ScuDMA_Stat>,r3	! 25fe007c
  14:	60 32       	mov.l	@r3,r0
  16:	20 18       	tst	r1,r0
  18:	8d 04       	bt.s	24 <scstrt_05>
  1a:	e1 30       	mov	#48,r1

0000001c <scstrt_02>:
  1c:	41 10       	dt	r1
  1e:	8b fd       	bf	1c <scstrt_02>
  20:	af f1       	bra	6 <scstrt_01>
  22:	60 20       	mov.b	@r2,r0

00000024 <scstrt_05>:
  24:	4f 03       	stc.l	sr,@-r15
  26:	e0 f0       	mov	#-16,r0
  28:	40 0e       	ldc	r0,sr
  2a:	d6 15       	mov.l	80 <IMM_DMA_SCU_PRM0>,r6	! 0 <_DMA_ScuStart>
  2c:	d3 15       	mov.l	84 <IMM_DMA_SET_REG_0>,r3	! 25fe0000
  2e:	24 48       	tst	r4,r4
  30:	8d 07       	bt.s	42 <scstrt_06>
  32:	61 43       	mov	r4,r1
  34:	76 14       	add	#20,r6
  36:	73 20       	add	#32,r3
  38:	71 ff       	add	#-1,r1
  3a:	21 18       	tst	r1,r1
  3c:	89 01       	bt	42 <scstrt_06>
  3e:	76 14       	add	#20,r6
  40:	73 20       	add	#32,r3

00000042 <scstrt_06>:
  42:	e0 00       	mov	#0,r0
  44:	13 04       	mov.l	r0,@(16,r3)
  46:	50 60       	mov.l	@(0,r6),r0
  48:	51 61       	mov.l	@(4,r6),r1
  4a:	52 62       	mov.l	@(8,r6),r2
  4c:	13 00       	mov.l	r0,@(0,r3)
  4e:	13 11       	mov.l	r1,@(4,r3)
  50:	13 22       	mov.l	r2,@(8,r3)
  52:	90 09       	mov.w	68 <IMM_0101>,r0	! 101
  54:	51 63       	mov.l	@(12,r6),r1
  56:	52 64       	mov.l	@(16,r6),r2
  58:	13 13       	mov.l	r1,@(12,r3)
  5a:	13 25       	mov.l	r2,@(20,r3)
  5c:	13 04       	mov.l	r0,@(16,r3)
  5e:	d0 03       	mov.l	6c <IMM_DMASt_SCU0>,r0	! 60ffcbb
  60:	e1 10       	mov	#16,r1
  62:	04 14       	mov.b	r1,@(r0,r4)
  64:	00 0b       	rts	
  66:	4f 07       	ldc.l	@r15+,sr

00000068 <IMM_0101>:
  68:	01 01       	.word 0x0101
	...

0000006c <IMM_DMASt_SCU0>:
  6c:	06 0f       	mac.l	@r0+,@r6+
  6e:	fc bb       	fmov	fr11,@-r12

00000070 <IMM_Chk_CH0>:
  70:	00 01       	.word 0x0001
  72:	00 30       	.word 0x0030

00000074 <IMM_Chk_CH1>:
  74:	00 02       	stc	sr,r0
  76:	03 00       	.word 0x0300

00000078 <IMM_Chk_CH2>:
  78:	00 00       	.word 0x0000
  7a:	30 00       	cmp/eq	r0,r0

0000007c <IMM_ScuDMA_Stat>:
  7c:	25 fe       	mulu.w	r15,r5
  7e:	00 7c       	mov.b	@(r0,r7),r0

00000080 <IMM_DMA_SCU_PRM0>:
  80:	00 00       	.word 0x0000
	...

00000084 <IMM_DMA_SET_REG_0>:
  84:	25 fe       	mulu.w	r15,r5
	...
