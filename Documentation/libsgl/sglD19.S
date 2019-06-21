
sglD19.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_ScuMemCopy>:
   0:	d2 26       	mov.l	9c <IMM_WORKRAM_L_Start>,r2	! 200000
   2:	d3 27       	mov.l	a0 <IMM_WORKRAM_L_End>,r3	! 300000
   4:	d1 27       	mov.l	a4 <IMM_CasheThrough>,r1	! 20000000
   6:	35 32       	cmp/hs	r3,r5
   8:	8d 01       	bt.s	e <smcp_01>
   a:	35 22       	cmp/hs	r2,r5
   c:	89 3a       	bt	84 <smcp_20>

0000000e <smcp_01>:
   e:	34 32       	cmp/hs	r3,r4
  10:	8d 01       	bt.s	16 <smcp_02>
  12:	34 22       	cmp/hs	r2,r4
  14:	89 36       	bt	84 <smcp_20>

00000016 <smcp_02>:
  16:	33 1c       	add	r1,r3
  18:	35 32       	cmp/hs	r3,r5
  1a:	8d 02       	bt.s	22 <smcp_03>
  1c:	32 1c       	add	r1,r2
  1e:	35 22       	cmp/hs	r2,r5
  20:	89 30       	bt	84 <smcp_20>

00000022 <smcp_03>:
  22:	34 32       	cmp/hs	r3,r4
  24:	8d 01       	bt.s	2a <smcp_04>
  26:	34 22       	cmp/hs	r2,r4
  28:	89 2c       	bt	84 <smcp_20>

0000002a <smcp_04>:
  2a:	d3 20       	mov.l	ac <IMM_BBus_End>,r3	! 5fe0000
  2c:	d2 1e       	mov.l	a8 <IMM_BBus_Start>,r2	! 5a00000
  2e:	97 33       	mov.w	98 <IMM_DMA_SCU_W4>,r7	! 102
  30:	34 32       	cmp/hs	r3,r4
  32:	8d 01       	bt.s	38 <smcp_05>
  34:	34 22       	cmp/hs	r2,r4
  36:	89 05       	bt	44 <smcp_06>

00000038 <smcp_05>:
  38:	33 1c       	add	r1,r3
  3a:	34 32       	cmp/hs	r3,r4
  3c:	8d 03       	bt.s	46 <smcp_07>
  3e:	32 1c       	add	r1,r2
  40:	34 22       	cmp/hs	r2,r4
  42:	8b 00       	bf	46 <smcp_07>

00000044 <smcp_06>:
  44:	77 ff       	add	#-1,r7

00000046 <smcp_07>:
  46:	c4 bb       	mov.b	@(187,gbr),r0

00000048 <smcp_08>:
  48:	c8 04       	tst	#4,r0
  4a:	8b 09       	bf	60 <smcp_10>
  4c:	d3 19       	mov.l	b4 <IMM_ScuDMA_Stat>,r3	! 25fe007c
  4e:	d1 1a       	mov.l	b8 <IMM_Chk_CH0>,r1	! 10030
  50:	60 32       	mov.l	@r3,r0
  52:	20 18       	tst	r1,r0
  54:	8d 04       	bt.s	60 <smcp_10>
  56:	e0 30       	mov	#48,r0

00000058 <smcp_09>:
  58:	40 10       	dt	r0
  5a:	8b fd       	bf	58 <smcp_09>
  5c:	af f4       	bra	48 <smcp_08>
  5e:	c4 bb       	mov.b	@(187,gbr),r0

00000060 <smcp_10>:
  60:	4f 03       	stc.l	sr,@-r15
  62:	e0 f0       	mov	#-16,r0
  64:	40 0e       	ldc	r0,sr
  66:	d3 15       	mov.l	bc <IMM_ScuDMA_CH0>,r3	! 25fe0000
  68:	13 50       	mov.l	r5,@(0,r3)
  6a:	13 41       	mov.l	r4,@(4,r3)
  6c:	13 62       	mov.l	r6,@(8,r3)
  6e:	13 73       	mov.l	r7,@(12,r3)
  70:	e0 07       	mov	#7,r0
  72:	13 05       	mov.l	r0,@(20,r3)
  74:	91 11       	mov.w	9a <IMM_0101>,r1	! 101
  76:	e0 10       	mov	#16,r0
  78:	c0 bb       	mov.b	r0,@(187,gbr)
  7a:	13 14       	mov.l	r1,@(16,r3)
  7c:	e0 03       	mov	#3,r0
  7e:	c0 b8       	mov.b	r0,@(184,gbr)
  80:	00 0b       	rts	
  82:	4f 07       	ldc.l	@r15+,sr

00000084 <smcp_20>:
  84:	4f 22       	sts.l	pr,@-r15
  86:	d0 0a       	mov.l	b0 <IMM_slCpuDMACopy>,r0	! 0 <_DMA_ScuMemCopy>
  88:	61 43       	mov	r4,r1
  8a:	64 53       	mov	r5,r4
  8c:	40 0b       	jsr	@r0
  8e:	65 13       	mov	r1,r5
  90:	4f 26       	lds.l	@r15+,pr
  92:	e0 01       	mov	#1,r0
  94:	00 0b       	rts	
  96:	c0 b8       	mov.b	r0,@(184,gbr)

00000098 <IMM_DMA_SCU_W4>:
  98:	01 02       	stc	sr,r1

0000009a <IMM_0101>:
  9a:	01 01       	.word 0x0101

0000009c <IMM_WORKRAM_L_Start>:
  9c:	00 20       	.word 0x0020
	...

000000a0 <IMM_WORKRAM_L_End>:
  a0:	00 30       	.word 0x0030
	...

000000a4 <IMM_CasheThrough>:
  a4:	20 00       	mov.b	r0,@r0
	...

000000a8 <IMM_BBus_Start>:
  a8:	05 a0       	.word 0x05a0
	...

000000ac <IMM_BBus_End>:
  ac:	05 fe       	mov.l	@(r0,r15),r5
	...

000000b0 <IMM_slCpuDMACopy>:
  b0:	00 00       	.word 0x0000
	...

000000b4 <IMM_ScuDMA_Stat>:
  b4:	25 fe       	mulu.w	r15,r5
  b6:	00 7c       	mov.b	@(r0,r7),r0

000000b8 <IMM_Chk_CH0>:
  b8:	00 01       	.word 0x0001
  ba:	00 30       	.word 0x0030

000000bc <IMM_ScuDMA_CH0>:
  bc:	25 fe       	mulu.w	r15,r5
	...
