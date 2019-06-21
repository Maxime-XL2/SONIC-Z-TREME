
sglG00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitSound>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	2f 86       	mov.l	r8,@-r15
   4:	2f 66       	mov.l	r6,@-r15
   6:	2f 76       	mov.l	r7,@-r15
   8:	2f 46       	mov.l	r4,@-r15
   a:	d8 60       	mov.l	18c <IMM_SMPC_REG>,r8	! 20100000
   c:	b0 6c       	bsr	e8 <PER_SMPC_NO_IREG>
   e:	e4 07       	mov	#7,r4
  10:	d1 5f       	mov.l	190 <IMM_SCSP_REG>,r1	! 25b00400
  12:	e0 02       	mov	#2,r0
  14:	40 18       	shll8	r0
  16:	21 01       	mov.w	r0,@r1
  18:	e0 00       	mov	#0,r0
  1a:	2f 06       	mov.l	r0,@-r15
  1c:	d6 5d       	mov.l	194 <IMM_B000>,r6	! b000
  1e:	d1 5e       	mov.l	198 <IMM_SoundRAM>,r1	! 25a00000
  20:	36 58       	sub	r5,r6
  22:	35 1c       	add	r1,r5
  24:	d0 5d       	mov.l	19c <IMM_slDMAXCopy>,r0	! 0 <_slInitSound>
  26:	e7 0a       	mov	#10,r7
  28:	40 0b       	jsr	@r0
  2a:	64 f3       	mov	r15,r4
  2c:	64 f3       	mov	r15,r4
  2e:	2f 66       	mov.l	r6,@-r15
  30:	2f 56       	mov.l	r5,@-r15
  32:	d5 5c       	mov.l	1a4 <IMM_PCM_Work>,r5	! 0 <_slInitSound>
  34:	d6 5c       	mov.l	1a8 <IMM_PCM_WkSize>,r6	! 0 <_slInitSound>
  36:	d0 59       	mov.l	19c <IMM_slDMAXCopy>,r0	! 0 <_slInitSound>
  38:	e7 0a       	mov	#10,r7
  3a:	65 52       	mov.l	@r5,r5
  3c:	40 0b       	jsr	@r0
  3e:	66 62       	mov.l	@r6,r6
  40:	65 f6       	mov.l	@r15+,r5
  42:	66 f6       	mov.l	@r15+,r6
  44:	7f 04       	add	#4,r15
  46:	d0 56       	mov.l	1a0 <IMM_slDMACopy>,r0	! 0 <_slInitSound>
  48:	66 5d       	extu.w	r5,r6
  4a:	35 68       	sub	r6,r5
  4c:	40 0b       	jsr	@r0
  4e:	64 f6       	mov.l	@r15+,r4
  50:	e0 20       	mov	#32,r0
  52:	40 18       	shll8	r0
  54:	e1 ff       	mov	#-1,r1
  56:	d2 54       	mov.l	1a8 <IMM_PCM_WkSize>,r2	! 0 <_slInitSound>
  58:	e3 ff       	mov	#-1,r3
  5a:	62 22       	mov.l	@r2,r2
  5c:	00 08       	clrt	

0000005e <insnd_01>:
  5e:	32 0a       	subc	r0,r2
  60:	8d 02       	bt.s	68 <insnd_02>
  62:	73 01       	add	#1,r3
  64:	af fb       	bra	5e <insnd_01>
  66:	31 1c       	add	r1,r1

00000068 <insnd_02>:
  68:	d2 50       	mov.l	1ac <IMM_OPTION>,r2	! 60ffcb0
  6a:	60 33       	mov	r3,r0
  6c:	80 21       	mov.b	r0,@(1,r2)
  6e:	60 13       	mov	r1,r0
  70:	81 21       	mov.w	r0,@(2,r2)
  72:	d0 4f       	mov.l	1b0 <IMM_PCMBuf>,r0	! 0 <_slInitSound>
  74:	e1 08       	mov	#8,r1
  76:	62 03       	mov	r0,r2
  78:	e0 00       	mov	#0,r0

0000007a <insnd_03>:
  7a:	81 20       	mov.w	r0,@(0,r2)
  7c:	41 10       	dt	r1
  7e:	8f fc       	bf.s	7a <insnd_03>
  80:	72 14       	add	#20,r2
  82:	66 f6       	mov.l	@r15+,r6
  84:	d5 4b       	mov.l	1b4 <IMM_SoundMap>,r5	! 25a0a000
  86:	d0 46       	mov.l	1a0 <IMM_slDMACopy>,r0	! 0 <_slInitSound>
  88:	40 0b       	jsr	@r0
  8a:	64 f6       	mov.l	@r15+,r4
  8c:	d0 4a       	mov.l	1b8 <IMM_slDMAWait>,r0	! 0 <_slInitSound>
  8e:	40 0b       	jsr	@r0
  90:	00 09       	nop	
  92:	d7 4b       	mov.l	1c0 <IMM_SoundComm_4>,r7	! 25a00740
  94:	e0 0d       	mov	#13,r0
  96:	80 70       	mov.b	r0,@(0,r7)
  98:	d3 4a       	mov.l	1c4 <IMM_SoundReqFlag>,r3	! 25a004e0
  9a:	e0 00       	mov	#0,r0
  9c:	80 31       	mov.b	r0,@(1,r3)
  9e:	b0 23       	bsr	e8 <PER_SMPC_NO_IREG>
  a0:	e4 06       	mov	#6,r4
  a2:	b0 2f       	bsr	104 <_slWaitSound>
  a4:	64 73       	mov	r7,r4
  a6:	e0 80       	mov	#-128,r0
  a8:	80 31       	mov.b	r0,@(1,r3)
  aa:	77 c0       	add	#-64,r7
  ac:	e0 0c       	mov	#12,r0
  ae:	80 70       	mov.b	r0,@(0,r7)
  b0:	77 10       	add	#16,r7
  b2:	e0 00       	mov	#0,r0
  b4:	80 72       	mov.b	r0,@(2,r7)
  b6:	e0 08       	mov	#8,r0
  b8:	80 70       	mov.b	r0,@(0,r7)
  ba:	e0 80       	mov	#-128,r0
  bc:	80 30       	mov.b	r0,@(0,r3)
  be:	b0 21       	bsr	104 <_slWaitSound>
  c0:	64 73       	mov	r7,r4
  c2:	d2 41       	mov.l	1c8 <IMM_SoundCRNT>,r2	! 25a00500
  c4:	e0 80       	mov	#-128,r0
  c6:	e1 20       	mov	#32,r1

000000c8 <insnd_05>:
  c8:	63 20       	mov.b	@r2,r3
  ca:	80 24       	mov.b	r0,@(4,r2)
  cc:	43 11       	cmp/pz	r3
  ce:	8f 02       	bf.s	d6 <insnd_06>
  d0:	41 10       	dt	r1
  d2:	8f f9       	bf.s	c8 <insnd_05>
  d4:	72 08       	add	#8,r2

000000d6 <insnd_06>:
  d6:	d0 36       	mov.l	1b0 <IMM_PCMBuf>,r0	! 0 <_slInitSound>
  d8:	68 f6       	mov.l	@r15+,r8
  da:	c2 db       	mov.l	r0,@(876,gbr)
  dc:	d0 3b       	mov.l	1cc <IMM_Sound_Buf>,r0	! 0 <_slInitSound>
  de:	c2 dc       	mov.l	r0,@(880,gbr)
  e0:	c7 11       	mova	128 <SoundTransCheck>,r0
  e2:	4f 26       	lds.l	@r15+,pr
  e4:	00 0b       	rts	
  e6:	c2 dd       	mov.l	r0,@(884,gbr)

000000e8 <PER_SMPC_NO_IREG>:
  e8:	78 63       	add	#99,r8

000000ea <smwt_01>:
  ea:	60 80       	mov.b	@r8,r0
  ec:	c8 01       	tst	#1,r0
  ee:	8b fc       	bf	ea <smwt_01>
  f0:	e0 01       	mov	#1,r0
  f2:	28 00       	mov.b	r0,@r8
  f4:	78 bc       	add	#-68,r8
  f6:	28 40       	mov.b	r4,@r8
  f8:	78 44       	add	#68,r8

000000fa <rgst_00>:
  fa:	60 80       	mov.b	@r8,r0
  fc:	c8 01       	tst	#1,r0
  fe:	8b fc       	bf	fa <rgst_00>
 100:	00 0b       	rts	
 102:	78 9d       	add	#-99,r8

00000104 <_slWaitSound>:
 104:	24 48       	tst	r4,r4
 106:	89 07       	bt	118 <wtsnd_09>

00000108 <wtsnd_00>:
 108:	84 40       	mov.b	@(0,r4),r0
 10a:	20 08       	tst	r0,r0
 10c:	8d 04       	bt.s	118 <wtsnd_09>
 10e:	e0 7f       	mov	#127,r0

00000110 <wtsnd_01>:
 110:	40 10       	dt	r0
 112:	8b fd       	bf	110 <wtsnd_01>
 114:	af f8       	bra	108 <wtsnd_00>
 116:	00 09       	nop	

00000118 <wtsnd_09>:
 118:	00 0b       	rts	
 11a:	00 09       	nop	

0000011c <_slSndFlush>:
 11c:	c4 b5       	mov.b	@(181,gbr),r0
 11e:	20 08       	tst	r0,r0
 120:	8f 09       	bf.s	136 <sndtrns_01>
 122:	61 03       	mov	r0,r1
 124:	00 0b       	rts	
 126:	00 09       	nop	

00000128 <SoundTransCheck>:
 128:	c4 b5       	mov.b	@(181,gbr),r0
 12a:	e1 07       	mov	#7,r1
 12c:	70 01       	add	#1,r0
 12e:	30 16       	cmp/hi	r1,r0
 130:	8f 26       	bf.s	180 <skip>
 132:	72 10       	add	#16,r2
 134:	e1 08       	mov	#8,r1

00000136 <sndtrns_01>:
 136:	d2 23       	mov.l	1c4 <IMM_SoundReqFlag>,r2	! 25a004e0
 138:	84 20       	mov.b	@(0,r2),r0

0000013a <hndshk_001097>:
 13a:	40 11       	cmp/pz	r0
 13c:	8d 04       	bt.s	148 <hndshk_201097>
 13e:	e0 30       	mov	#48,r0

00000140 <hndshk_101097>:
 140:	40 10       	dt	r0
 142:	8b fd       	bf	140 <hndshk_101097>
 144:	af f9       	bra	13a <hndshk_001097>
 146:	84 20       	mov.b	@(0,r2),r0

00000148 <hndshk_201097>:
 148:	41 08       	shll2	r1
 14a:	e3 80       	mov	#-128,r3

0000014c <sndtrns_02>:
 14c:	50 33       	mov.l	@(12,r3),r0
 14e:	c9 03       	and	#3,r0
 150:	88 01       	cmp/eq	#1,r0
 152:	89 fb       	bt	14c <sndtrns_02>
 154:	50 3c       	mov.l	@(48,r3),r0
 156:	e0 00       	mov	#0,r0
 158:	13 03       	mov.l	r0,@(12,r3)
 15a:	e3 9c       	mov	#-100,r3
 15c:	43 08       	shll2	r3
 15e:	80 31       	mov.b	r0,@(1,r3)
 160:	e3 80       	mov	#-128,r3
 162:	13 12       	mov.l	r1,@(8,r3)
 164:	d2 19       	mov.l	1cc <IMM_Sound_Buf>,r2	! 0 <_slInitSound>
 166:	d1 15       	mov.l	1bc <IMM_SoundComm>,r1	! 25a00700
 168:	13 20       	mov.l	r2,@(0,r3)
 16a:	13 11       	mov.l	r1,@(4,r3)
 16c:	91 0c       	mov.w	188 <IMM_DMA_REQ_LONG>,r1	! 5a01
 16e:	e0 08       	mov	#8,r0
 170:	13 13       	mov.l	r1,@(12,r3)
 172:	c0 b9       	mov.b	r0,@(185,gbr)
 174:	e0 09       	mov	#9,r0
 176:	13 08       	mov.l	r0,@(32,r3)
 178:	d1 12       	mov.l	1c4 <IMM_SoundReqFlag>,r1	! 25a004e0
 17a:	e0 80       	mov	#-128,r0
 17c:	80 10       	mov.b	r0,@(0,r1)
 17e:	e0 00       	mov	#0,r0

00000180 <skip>:
 180:	c0 b5       	mov.b	r0,@(181,gbr)
 182:	60 23       	mov	r2,r0
 184:	00 0b       	rts	
 186:	c2 dc       	mov.l	r0,@(880,gbr)

00000188 <IMM_DMA_REQ_LONG>:
 188:	5a 01       	mov.l	@(4,r0),r10
	...

0000018c <IMM_SMPC_REG>:
 18c:	20 10       	mov.b	r1,@r0
	...

00000190 <IMM_SCSP_REG>:
 190:	25 b0       	mov.b	r11,@r5
 192:	04 00       	.word 0x0400

00000194 <IMM_B000>:
 194:	00 00       	.word 0x0000
 196:	b0 00       	bsr	19a <IMM_SoundRAM+0x2>

00000198 <IMM_SoundRAM>:
 198:	25 a0       	mov.b	r10,@r5
	...

0000019c <IMM_slDMAXCopy>:
 19c:	00 00       	.word 0x0000
	...

000001a0 <IMM_slDMACopy>:
 1a0:	00 00       	.word 0x0000
	...

000001a4 <IMM_PCM_Work>:
 1a4:	00 00       	.word 0x0000
	...

000001a8 <IMM_PCM_WkSize>:
 1a8:	00 00       	.word 0x0000
	...

000001ac <IMM_OPTION>:
 1ac:	06 0f       	mac.l	@r0+,@r6+
 1ae:	fc b0       	fadd	fr11,fr12

000001b0 <IMM_PCMBuf>:
 1b0:	00 00       	.word 0x0000
	...

000001b4 <IMM_SoundMap>:
 1b4:	25 a0       	mov.b	r10,@r5
 1b6:	a0 00       	bra	1ba <IMM_slDMAWait+0x2>

000001b8 <IMM_slDMAWait>:
 1b8:	00 00       	.word 0x0000
	...

000001bc <IMM_SoundComm>:
 1bc:	25 a0       	mov.b	r10,@r5
 1be:	07 00       	.word 0x0700

000001c0 <IMM_SoundComm_4>:
 1c0:	25 a0       	mov.b	r10,@r5
 1c2:	07 40       	.word 0x0740

000001c4 <IMM_SoundReqFlag>:
 1c4:	25 a0       	mov.b	r10,@r5
 1c6:	04 e0       	.word 0x04e0

000001c8 <IMM_SoundCRNT>:
 1c8:	25 a0       	mov.b	r10,@r5
 1ca:	05 00       	.word 0x0500

000001cc <IMM_Sound_Buf>:
 1cc:	00 00       	.word 0x0000
	...
