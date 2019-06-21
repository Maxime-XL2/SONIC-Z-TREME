
sglD01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDMAXCopy>:
   0:	e0 16       	mov	#22,r0
   2:	37 02       	cmp/hs	r0,r7
   4:	8d 31       	bt.s	6a <dmx_err>
   6:	e1 ff       	mov	#-1,r1
   8:	e0 07       	mov	#7,r0
   a:	37 03       	cmp/ge	r0,r7
   c:	8f 06       	bf.s	1c <dmx_01>
   e:	e0 0e       	mov	#14,r0
  10:	31 1c       	add	r1,r1
  12:	37 03       	cmp/ge	r0,r7
  14:	8f 02       	bf.s	1c <dmx_01>
  16:	46 01       	shlr	r6
  18:	46 01       	shlr	r6
  1a:	31 1c       	add	r1,r1

0000001c <dmx_01>:
  1c:	c7 15       	mova	74 <DMAModeTbl>,r0
  1e:	47 00       	shll	r7
  20:	07 7d       	mov.w	@(r0,r7),r7
  22:	24 19       	and	r1,r4
  24:	25 19       	and	r1,r5
  26:	e3 80       	mov	#-128,r3

00000028 <dmx_10>:
  28:	50 33       	mov.l	@(12,r3),r0
  2a:	c9 03       	and	#3,r0
  2c:	88 01       	cmp/eq	#1,r0
  2e:	89 fb       	bt	28 <dmx_10>
  30:	50 3c       	mov.l	@(48,r3),r0
  32:	e0 00       	mov	#0,r0
  34:	13 03       	mov.l	r0,@(12,r3)
  36:	e1 9c       	mov	#-100,r1
  38:	41 08       	shll2	r1
  3a:	80 11       	mov.b	r0,@(1,r1)
  3c:	13 40       	mov.l	r4,@(0,r3)
  3e:	13 51       	mov.l	r5,@(4,r3)
  40:	13 62       	mov.l	r6,@(8,r3)
  42:	13 73       	mov.l	r7,@(12,r3)
  44:	e0 10       	mov	#16,r0
  46:	c0 b9       	mov.b	r0,@(185,gbr)
  48:	d1 09       	mov.l	70 <IMM_CasheThrough>,r1	! 20000000
  4a:	e0 09       	mov	#9,r0
  4c:	13 0c       	mov.l	r0,@(48,r3)
  4e:	35 12       	cmp/hs	r1,r5
  50:	8d 09       	bt.s	66 <dmx_19>
  52:	e1 a4       	mov	#-92,r1
  54:	41 08       	shll2	r1
  56:	e0 11       	mov	#17,r0
  58:	80 12       	mov.b	r0,@(2,r1)
  5a:	00 09       	nop	
  5c:	00 09       	nop	
  5e:	00 09       	nop	
  60:	00 09       	nop	
  62:	00 09       	nop	
  64:	00 09       	nop	

00000066 <dmx_19>:
  66:	00 0b       	rts	
  68:	e0 01       	mov	#1,r0

0000006a <dmx_err>:
  6a:	00 0b       	rts	
  6c:	e0 00       	mov	#0,r0
	...

00000070 <IMM_CasheThrough>:
  70:	20 00       	mov.b	r0,@r0
	...

00000074 <DMAModeTbl>:
  74:	52 01       	mov.l	@(4,r0),r2
  76:	62 01       	mov.w	@r0,r2
  78:	92 01       	mov.w	7e <DMAModeTbl+0xa>,r2	! 1201
  7a:	42 01       	shlr	r2
  7c:	82 01       	.word 0x8201
  7e:	12 01       	mov.l	r0,@(4,r2)
  80:	22 01       	mov.w	r0,@r2
  82:	56 01       	mov.l	@(4,r0),r6
  84:	66 01       	mov.w	@r0,r6
  86:	96 01       	mov.w	8c <DMAModeTbl+0x18>,r6	! 1601
  88:	46 01       	shlr	r6
  8a:	86 01       	.word 0x8601
  8c:	16 01       	mov.l	r0,@(4,r6)
  8e:	26 01       	mov.w	r0,@r6
  90:	5a 01       	mov.l	@(4,r0),r10
  92:	6a 01       	mov.w	@r0,r10
  94:	9a 01       	mov.w	9a <DMAModeTbl+0x26>,r10	! 1a01
  96:	4a 01       	shlr	r10
  98:	8a 01       	.word 0x8a01
  9a:	1a 01       	mov.l	r0,@(4,r10)
  9c:	2a 01       	mov.w	r0,@r10
  9e:	5e 01       	mov.l	@(4,r0),r14
