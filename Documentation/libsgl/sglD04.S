
sglD04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuSetComPrm>:
   0:	00 0b       	rts	
   2:	00 09       	nop	

00000004 <_DMA_CpuSetPrm>:
   4:	d6 25       	mov.l	9c <IMM_CTRL_DMA_TRANS>,r6	! 60fff44
   6:	25 58       	tst	r5,r5
   8:	89 00       	bt	c <cpprm_00>
   a:	76 14       	add	#20,r6

0000000c <cpprm_00>:
   c:	50 49       	mov.l	@(36,r4),r0
   e:	c8 01       	tst	#1,r0
  10:	8d 02       	bt.s	18 <cpprm_01>
  12:	c8 02       	tst	#2,r0
  14:	52 40       	mov.l	@(0,r4),r2
  16:	16 21       	mov.l	r2,@(4,r6)

00000018 <cpprm_01>:
  18:	8d 02       	bt.s	20 <cpprm_02>
  1a:	c8 04       	tst	#4,r0
  1c:	52 41       	mov.l	@(4,r4),r2
  1e:	16 22       	mov.l	r2,@(8,r6)

00000020 <cpprm_02>:
  20:	8d 02       	bt.s	28 <cpprm_10>
  22:	c8 08       	tst	#8,r0
  24:	52 42       	mov.l	@(8,r4),r2
  26:	16 23       	mov.l	r2,@(12,r6)

00000028 <cpprm_10>:
  28:	53 64       	mov.l	@(16,r6),r3
  2a:	8d 06       	bt.s	3a <cpprm_11>
  2c:	c8 10       	tst	#16,r0
  2e:	91 2d       	mov.w	8c <IMM_Msk_DM>,r1	! 3fff
  30:	52 43       	mov.l	@(12,r4),r2
  32:	23 19       	and	r1,r3
  34:	42 28       	shll16	r2
  36:	42 09       	shlr2	r2
  38:	23 2b       	or	r2,r3

0000003a <cpprm_11>:
  3a:	8d 07       	bt.s	4c <cpprm_12>
  3c:	c8 20       	tst	#32,r0
  3e:	91 26       	mov.w	8e <IMM_Msk_SM>,r1	! cfff
  40:	52 44       	mov.l	@(16,r4),r2
  42:	23 19       	and	r1,r3
  44:	42 18       	shll8	r2
  46:	42 08       	shll2	r2
  48:	42 08       	shll2	r2
  4a:	23 2b       	or	r2,r3

0000004c <cpprm_12>:
  4c:	8d 04       	bt.s	58 <cpprm_13>
  4e:	c8 40       	tst	#64,r0
  50:	91 1e       	mov.w	90 <IMM_Msk_TS>,r1	! f3ff
  52:	52 45       	mov.l	@(20,r4),r2
  54:	23 19       	and	r1,r3
  56:	23 2b       	or	r2,r3

00000058 <cpprm_13>:
  58:	8d 04       	bt.s	64 <cpprm_14>
  5a:	c8 80       	tst	#-128,r0
  5c:	91 19       	mov.w	92 <IMM_Msk_AR>,r1	! fdff
  5e:	52 46       	mov.l	@(24,r4),r2
  60:	23 19       	and	r1,r3
  62:	23 2b       	or	r2,r3

00000064 <cpprm_14>:
  64:	91 16       	mov.w	94 <IMM_DMA_CPU_M_TE>,r1	! 200
  66:	8d 04       	bt.s	72 <cpprm_15>
  68:	20 18       	tst	r1,r0
  6a:	e1 fb       	mov	#-5,r1
  6c:	52 47       	mov.l	@(28,r4),r2
  6e:	23 19       	and	r1,r3
  70:	23 2b       	or	r2,r3

00000072 <cpprm_15>:
  72:	91 10       	mov.w	96 <IMM_R_CHCR_TA_TB>,r1	! ffe7
  74:	8d 02       	bt.s	7c <cpprm_16>
  76:	23 19       	and	r1,r3
  78:	e1 fd       	mov	#-3,r1
  7a:	23 19       	and	r1,r3

0000007c <cpprm_16>:
  7c:	91 0c       	mov.w	98 <IMM_DMA_CPU_M_DRCR>,r1	! 100
  7e:	16 34       	mov.l	r3,@(16,r6)
  80:	20 18       	tst	r1,r0
  82:	89 01       	bt	88 <cpprm_17>
  84:	50 48       	mov.l	@(32,r4),r0
  86:	80 62       	mov.b	r0,@(2,r6)

00000088 <cpprm_17>:
  88:	00 0b       	rts	
  8a:	00 09       	nop	

0000008c <IMM_Msk_DM>:
  8c:	3f ff       	addv	r15,r15

0000008e <IMM_Msk_SM>:
  8e:	cf ff       	or.b	#-1,@(r0,gbr)

00000090 <IMM_Msk_TS>:
  90:	f3 ff       	.word 0xf3ff

00000092 <IMM_Msk_AR>:
  92:	fd ff       	.word 0xfdff

00000094 <IMM_DMA_CPU_M_TE>:
  94:	02 00       	.word 0x0200

00000096 <IMM_R_CHCR_TA_TB>:
  96:	ff e7       	fmov	fr14,@(r0,r15)

00000098 <IMM_DMA_CPU_M_DRCR>:
  98:	01 00       	.word 0x0100
	...

0000009c <IMM_CTRL_DMA_TRANS>:
  9c:	06 0f       	mac.l	@r0+,@r6+
  9e:	ff 44       	fcmp/eq	fr4,fr15
