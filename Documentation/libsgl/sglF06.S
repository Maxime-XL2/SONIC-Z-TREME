
sglF06.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SLPROG>:
   0:	00 09       	nop	

00000002 <_slExtendScroll>:
   2:	2f 86       	mov.l	r8,@-r15
   4:	4f 22       	sts.l	pr,@-r15
   6:	2f b6       	mov.l	r11,@-r15
   8:	2f a6       	mov.l	r10,@-r15
   a:	2f 96       	mov.l	r9,@-r15
   c:	ea 00       	mov	#0,r10
   e:	c7 02       	mova	18 <exscr_01>,r0
  10:	40 2a       	lds	r0,pr
  12:	c7 ec       	mova	3c4 <CellBuffer>,r0
  14:	66 03       	mov	r0,r6
  16:	e7 00       	mov	#0,r7

00000018 <exscr_01>:
  18:	60 44       	mov.b	@r4+,r0
  1a:	40 11       	cmp/pz	r0
  1c:	8b 04       	bf	28 <exscr_10>
  1e:	40 00       	shll	r0
  20:	00 6d       	mov.w	@(r0,r6),r0
  22:	25 01       	mov.w	r0,@r5
  24:	af f8       	bra	18 <exscr_01>
  26:	75 02       	add	#2,r5

00000028 <exscr_10>:
  28:	c9 7c       	and	#124,r0
  2a:	61 03       	mov	r0,r1
  2c:	c7 01       	mova	34 <exscr_tbl>,r0
  2e:	00 1e       	mov.l	@(r0,r1),r0
  30:	40 2b       	jmp	@r0
  32:	61 44       	mov.b	@r4+,r1

00000034 <exscr_tbl>:
  34:	00 00       	.word 0x0000
  36:	00 b4       	mov.b	r11,@(r0,r0)
  38:	00 00       	.word 0x0000
  3a:	00 c0       	.word 0x00c0
  3c:	00 00       	.word 0x0000
  3e:	00 c6       	mov.l	r12,@(r0,r0)
  40:	00 00       	.word 0x0000
  42:	00 cc       	mov.b	@(r0,r12),r0
  44:	00 00       	.word 0x0000
  46:	00 d2       	stc	r5_bank,r0
  48:	00 00       	.word 0x0000
  4a:	00 fc       	mov.b	@(r0,r15),r0
  4c:	00 00       	.word 0x0000
  4e:	01 16       	mov.l	r1,@(r0,r1)
  50:	00 00       	.word 0x0000
  52:	01 38       	.word 0x0138
  54:	00 00       	.word 0x0000
  56:	01 3c       	mov.b	@(r0,r3),r1
  58:	00 00       	.word 0x0000
  5a:	01 4c       	mov.b	@(r0,r4),r1
  5c:	00 00       	.word 0x0000
  5e:	01 40       	.word 0x0140
  60:	00 00       	.word 0x0000
  62:	01 44       	mov.b	r4,@(r0,r1)
  64:	00 00       	.word 0x0000
  66:	01 7c       	mov.b	@(r0,r7),r1
  68:	00 00       	.word 0x0000
  6a:	01 78       	.word 0x0178
  6c:	00 00       	.word 0x0000
  6e:	00 e4       	mov.b	r14,@(r0,r0)
  70:	00 00       	.word 0x0000
  72:	00 ec       	mov.b	@(r0,r14),r0
  74:	00 00       	.word 0x0000
  76:	01 9a       	.word 0x019a
  78:	00 00       	.word 0x0000
  7a:	01 b4       	mov.b	r11,@(r0,r1)
  7c:	00 00       	.word 0x0000
  7e:	02 dc       	mov.b	@(r0,r13),r2
  80:	00 00       	.word 0x0000
  82:	02 00       	.word 0x0200
  84:	00 00       	.word 0x0000
  86:	01 f0       	.word 0x01f0
  88:	00 00       	.word 0x0000
  8a:	02 0c       	mov.b	@(r0,r0),r2
  8c:	00 00       	.word 0x0000
  8e:	02 34       	mov.b	r3,@(r0,r2)
  90:	00 00       	.word 0x0000
  92:	02 9a       	.word 0x029a
  94:	00 00       	.word 0x0000
  96:	02 a4       	mov.b	r10,@(r0,r2)
  98:	00 00       	.word 0x0000
  9a:	01 6a       	sts	fpscr,r1
  9c:	00 00       	.word 0x0000
  9e:	01 d6       	mov.l	r13,@(r0,r1)
  a0:	00 00       	.word 0x0000
  a2:	02 68       	.word 0x0268
  a4:	00 00       	.word 0x0000
  a6:	01 48       	.word 0x0148
  a8:	00 00       	.word 0x0000
  aa:	02 9e       	mov.l	@(r0,r9),r2
  ac:	00 00       	.word 0x0000
  ae:	02 18       	.word 0x0218
  b0:	00 00       	.word 0x0000
  b2:	02 20       	.word 0x0220

000000b4 <SCR_End>:
  b4:	69 f6       	mov.l	@r15+,r9
  b6:	6a f6       	mov.l	@r15+,r10
  b8:	6b f6       	mov.l	@r15+,r11
  ba:	4f 26       	lds.l	@r15+,pr
  bc:	00 0b       	rts	
  be:	68 f6       	mov.l	@r15+,r8

000000c0 <SCR_LocateA0>:
  c0:	d5 9b       	mov.l	330 <IMM_ScrollVRAM>,r5	! 25e00000
  c2:	a0 08       	bra	d6 <set_locate>
  c4:	60 44       	mov.b	@r4+,r0

000000c6 <SCR_LocateA1>:
  c6:	d5 9b       	mov.l	334 <IMM_ScrollVRAMA1>,r5	! 25e20000
  c8:	a0 05       	bra	d6 <set_locate>
  ca:	60 44       	mov.b	@r4+,r0

000000cc <SCR_LocateB0>:
  cc:	d5 9a       	mov.l	338 <IMM_ScrollVRAMB0>,r5	! 25e40000
  ce:	a0 02       	bra	d6 <set_locate>
  d0:	60 44       	mov.b	@r4+,r0

000000d2 <SCR_LocateB1>:
  d2:	d5 9a       	mov.l	33c <IMM_ScrollVRAMB1>,r5	! 25e60000
  d4:	60 44       	mov.b	@r4+,r0

000000d6 <set_locate>:
  d6:	41 18       	shll8	r1
  d8:	60 0c       	extu.b	r0,r0
  da:	20 1b       	or	r1,r0
  dc:	60 0d       	extu.w	r0,r0
  de:	30 0c       	add	r0,r0
  e0:	00 0b       	rts	
  e2:	35 0c       	add	r0,r5

000000e4 <SCR_Skip>:
  e4:	61 1e       	exts.b	r1,r1
  e6:	31 1c       	add	r1,r1
  e8:	00 0b       	rts	
  ea:	35 1c       	add	r1,r5

000000ec <SCR_Skip2>:
  ec:	60 44       	mov.b	@r4+,r0
  ee:	61 1e       	exts.b	r1,r1
  f0:	41 18       	shll8	r1
  f2:	60 0c       	extu.b	r0,r0
  f4:	20 1b       	or	r1,r0
  f6:	30 0c       	add	r0,r0
  f8:	00 0b       	rts	
  fa:	35 0c       	add	r0,r5

000000fc <SCR_Set>:
  fc:	61 1c       	extu.b	r1,r1
  fe:	71 01       	add	#1,r1

00000100 <scst_0>:
 100:	60 44       	mov.b	@r4+,r0
 102:	62 44       	mov.b	@r4+,r2
 104:	40 18       	shll8	r0
 106:	62 2c       	extu.b	r2,r2
 108:	20 2b       	or	r2,r0
 10a:	25 01       	mov.w	r0,@r5
 10c:	41 10       	dt	r1
 10e:	8f f7       	bf.s	100 <scst_0>
 110:	75 02       	add	#2,r5
 112:	00 0b       	rts	
 114:	00 09       	nop	

00000116 <SCR_Stock>:
 116:	60 73       	mov	r7,r0
 118:	61 1c       	extu.b	r1,r1
 11a:	71 01       	add	#1,r1

0000011c <stk_0>:
 11c:	62 44       	mov.b	@r4+,r2
 11e:	63 44       	mov.b	@r4+,r3
 120:	42 18       	shll8	r2
 122:	63 3c       	extu.b	r3,r3
 124:	22 3b       	or	r3,r2
 126:	25 21       	mov.w	r2,@r5
 128:	06 25       	mov.w	r2,@(r0,r6)
 12a:	75 02       	add	#2,r5
 12c:	70 02       	add	#2,r0
 12e:	41 10       	dt	r1
 130:	8f f4       	bf.s	11c <stk_0>
 132:	c9 fe       	and	#-2,r0
 134:	00 0b       	rts	
 136:	67 03       	mov	r0,r7

00000138 <SCR_Same>:
 138:	a0 09       	bra	14e <set_chrs>
 13a:	e3 00       	mov	#0,r3

0000013c <SCR_Inc>:
 13c:	a0 07       	bra	14e <set_chrs>
 13e:	e3 01       	mov	#1,r3

00000140 <SCR_Dec>:
 140:	a0 05       	bra	14e <set_chrs>
 142:	e3 ff       	mov	#-1,r3

00000144 <SCR_Dec2>:
 144:	a0 03       	bra	14e <set_chrs>
 146:	e3 fe       	mov	#-2,r3

00000148 <SCR_Add>:
 148:	a0 01       	bra	14e <set_chrs>
 14a:	63 44       	mov.b	@r4+,r3

0000014c <SCR_Inc2>:
 14c:	e3 02       	mov	#2,r3

0000014e <set_chrs>:
 14e:	60 44       	mov.b	@r4+,r0
 150:	62 44       	mov.b	@r4+,r2
 152:	61 1c       	extu.b	r1,r1
 154:	40 18       	shll8	r0
 156:	62 2c       	extu.b	r2,r2
 158:	20 2b       	or	r2,r0
 15a:	71 01       	add	#1,r1

0000015c <stch_0>:
 15c:	25 01       	mov.w	r0,@r5
 15e:	30 3c       	add	r3,r0
 160:	41 10       	dt	r1
 162:	8f fb       	bf.s	15c <stch_0>
 164:	75 02       	add	#2,r5
 166:	00 0b       	rts	
 168:	00 09       	nop	

0000016a <SCR_SetOneChar>:
 16a:	60 44       	mov.b	@r4+,r0
 16c:	41 18       	shll8	r1
 16e:	60 0c       	extu.b	r0,r0
 170:	20 1b       	or	r1,r0
 172:	25 01       	mov.w	r0,@r5
 174:	00 0b       	rts	
 176:	75 02       	add	#2,r5

00000178 <SCR_VlineMinus>:
 178:	a0 02       	bra	180 <stch_vl>
 17a:	e3 80       	mov	#-128,r3

0000017c <SCR_Vline>:
 17c:	e3 80       	mov	#-128,r3
 17e:	63 3c       	extu.b	r3,r3

00000180 <stch_vl>:
 180:	60 44       	mov.b	@r4+,r0
 182:	62 44       	mov.b	@r4+,r2
 184:	61 1c       	extu.b	r1,r1
 186:	40 18       	shll8	r0
 188:	62 2c       	extu.b	r2,r2
 18a:	20 2b       	or	r2,r0
 18c:	71 01       	add	#1,r1

0000018e <stch_vl_0>:
 18e:	25 01       	mov.w	r0,@r5
 190:	41 10       	dt	r1
 192:	8f fc       	bf.s	18e <stch_vl_0>
 194:	35 3c       	add	r3,r5
 196:	00 0b       	rts	
 198:	00 09       	nop	

0000019a <SCR_Copy>:
 19a:	60 44       	mov.b	@r4+,r0
 19c:	62 44       	mov.b	@r4+,r2
 19e:	41 18       	shll8	r1
 1a0:	60 0c       	extu.b	r0,r0
 1a2:	20 1b       	or	r1,r0
 1a4:	40 18       	shll8	r0
 1a6:	62 2c       	extu.b	r2,r2
 1a8:	20 2b       	or	r2,r0
 1aa:	d2 61       	mov.l	330 <IMM_ScrollVRAM>,r2	! 25e00000
 1ac:	40 00       	shll	r0
 1ae:	32 0c       	add	r0,r2
 1b0:	a0 08       	bra	1c4 <cplp_0>
 1b2:	61 44       	mov.b	@r4+,r1

000001b4 <SCR_RelCopy>:
 1b4:	62 44       	mov.b	@r4+,r2
 1b6:	41 18       	shll8	r1
 1b8:	62 2c       	extu.b	r2,r2
 1ba:	22 1b       	or	r1,r2
 1bc:	62 2f       	exts.w	r2,r2
 1be:	42 00       	shll	r2
 1c0:	61 44       	mov.b	@r4+,r1
 1c2:	32 5c       	add	r5,r2

000001c4 <cplp_0>:
 1c4:	61 1c       	extu.b	r1,r1
 1c6:	71 01       	add	#1,r1

000001c8 <cplp_1>:
 1c8:	60 25       	mov.w	@r2+,r0
 1ca:	41 10       	dt	r1
 1cc:	25 01       	mov.w	r0,@r5
 1ce:	8f fb       	bf.s	1c8 <cplp_1>
 1d0:	75 02       	add	#2,r5
 1d2:	00 0b       	rts	
 1d4:	00 09       	nop	

000001d6 <SCR_SameHigh>:
 1d6:	60 44       	mov.b	@r4+,r0
 1d8:	61 1c       	extu.b	r1,r1
 1da:	71 01       	add	#1,r1
 1dc:	40 18       	shll8	r0

000001de <smhg_01>:
 1de:	62 44       	mov.b	@r4+,r2
 1e0:	41 10       	dt	r1
 1e2:	62 2c       	extu.b	r2,r2
 1e4:	22 0b       	or	r0,r2
 1e6:	25 21       	mov.w	r2,@r5
 1e8:	8f f9       	bf.s	1de <smhg_01>
 1ea:	75 02       	add	#2,r5
 1ec:	00 0b       	rts	
 1ee:	00 09       	nop	

000001f0 <SCR_Bsr>:
 1f0:	62 43       	mov	r4,r2
 1f2:	72 01       	add	#1,r2
 1f4:	c7 53       	mova	344 <RdPtrBuffer>,r0
 1f6:	06 26       	mov.l	r2,@(r0,r6)
 1f8:	e0 04       	mov	#4,r0
 1fa:	30 6c       	add	r6,r0
 1fc:	c9 7c       	and	#124,r0
 1fe:	66 03       	mov	r0,r6

00000200 <SCR_Bra>:
 200:	60 44       	mov.b	@r4+,r0
 202:	41 18       	shll8	r1
 204:	60 0c       	extu.b	r0,r0
 206:	21 0b       	or	r0,r1
 208:	00 0b       	rts	
 20a:	34 1c       	add	r1,r4

0000020c <SCR_Rts>:
 20c:	76 fc       	add	#-4,r6
 20e:	e0 7c       	mov	#124,r0
 210:	26 09       	and	r0,r6
 212:	c7 4c       	mova	344 <RdPtrBuffer>,r0
 214:	00 0b       	rts	
 216:	04 6e       	mov.l	@(r0,r6),r4

00000218 <SCR_Loop>:
 218:	6a 43       	mov	r4,r10
 21a:	6b 1c       	extu.b	r1,r11
 21c:	00 0b       	rts	
 21e:	7b 01       	add	#1,r11

00000220 <SCR_Until>:
 220:	7b ff       	add	#-1,r11
 222:	4b 15       	cmp/pl	r11
 224:	8f 03       	bf.s	22e <untl_01>
 226:	2a a8       	tst	r10,r10
 228:	89 01       	bt	22e <untl_01>
 22a:	00 0b       	rts	
 22c:	64 a3       	mov	r10,r4

0000022e <untl_01>:
 22e:	74 ff       	add	#-1,r4
 230:	00 0b       	rts	
 232:	ea 00       	mov	#0,r10

00000234 <SCR_Block>:
 234:	62 44       	mov.b	@r4+,r2
 236:	61 1c       	extu.b	r1,r1
 238:	62 2c       	extu.b	r2,r2
 23a:	71 01       	add	#1,r1
 23c:	72 01       	add	#1,r2
 23e:	2f 56       	mov.l	r5,@-r15

00000240 <scblk_0>:
 240:	68 13       	mov	r1,r8
 242:	69 53       	mov	r5,r9

00000244 <scblk_1>:
 244:	60 44       	mov.b	@r4+,r0
 246:	63 44       	mov.b	@r4+,r3
 248:	40 18       	shll8	r0
 24a:	63 3c       	extu.b	r3,r3
 24c:	20 3b       	or	r3,r0
 24e:	29 01       	mov.w	r0,@r9
 250:	48 10       	dt	r8
 252:	8f f7       	bf.s	244 <scblk_1>
 254:	79 02       	add	#2,r9
 256:	e8 80       	mov	#-128,r8
 258:	68 8c       	extu.b	r8,r8
 25a:	42 10       	dt	r2
 25c:	8f f0       	bf.s	240 <scblk_0>
 25e:	35 8c       	add	r8,r5
 260:	65 f6       	mov.l	@r15+,r5
 262:	31 1c       	add	r1,r1
 264:	00 0b       	rts	
 266:	35 1c       	add	r1,r5

00000268 <SCR_BlockFill>:
 268:	62 44       	mov.b	@r4+,r2
 26a:	61 1c       	extu.b	r1,r1
 26c:	62 2c       	extu.b	r2,r2
 26e:	71 01       	add	#1,r1
 270:	72 01       	add	#1,r2
 272:	60 44       	mov.b	@r4+,r0
 274:	63 44       	mov.b	@r4+,r3
 276:	40 18       	shll8	r0
 278:	63 3c       	extu.b	r3,r3
 27a:	20 3b       	or	r3,r0
 27c:	63 53       	mov	r5,r3

0000027e <scblkf_0>:
 27e:	68 13       	mov	r1,r8
 280:	69 33       	mov	r3,r9

00000282 <scblkf_1>:
 282:	29 01       	mov.w	r0,@r9
 284:	48 10       	dt	r8
 286:	8f fc       	bf.s	282 <scblkf_1>
 288:	79 02       	add	#2,r9
 28a:	e8 80       	mov	#-128,r8
 28c:	68 8c       	extu.b	r8,r8
 28e:	42 10       	dt	r2
 290:	8f f5       	bf.s	27e <scblkf_0>
 292:	33 8c       	add	r8,r3
 294:	31 1c       	add	r1,r1
 296:	00 0b       	rts	
 298:	35 1c       	add	r1,r5

0000029a <SCR_BlockInc>:
 29a:	a0 04       	bra	2a6 <scblki_0>
 29c:	e3 01       	mov	#1,r3

0000029e <SCR_BlockAdd>:
 29e:	63 13       	mov	r1,r3
 2a0:	a0 01       	bra	2a6 <scblki_0>
 2a2:	61 44       	mov.b	@r4+,r1

000002a4 <SCR_BlockInc2>:
 2a4:	e3 02       	mov	#2,r3

000002a6 <scblki_0>:
 2a6:	62 44       	mov.b	@r4+,r2
 2a8:	61 1c       	extu.b	r1,r1
 2aa:	62 2c       	extu.b	r2,r2
 2ac:	71 01       	add	#1,r1
 2ae:	72 01       	add	#1,r2
 2b0:	60 44       	mov.b	@r4+,r0
 2b2:	68 44       	mov.b	@r4+,r8
 2b4:	40 18       	shll8	r0
 2b6:	68 8c       	extu.b	r8,r8
 2b8:	20 8b       	or	r8,r0
 2ba:	2f 56       	mov.l	r5,@-r15

000002bc <scblki_1>:
 2bc:	68 13       	mov	r1,r8
 2be:	69 53       	mov	r5,r9

000002c0 <scblki_2>:
 2c0:	29 01       	mov.w	r0,@r9
 2c2:	30 3c       	add	r3,r0
 2c4:	48 10       	dt	r8
 2c6:	8f fb       	bf.s	2c0 <scblki_2>
 2c8:	79 02       	add	#2,r9
 2ca:	e8 80       	mov	#-128,r8
 2cc:	68 8c       	extu.b	r8,r8
 2ce:	42 10       	dt	r2
 2d0:	8f f4       	bf.s	2bc <scblki_1>
 2d2:	35 8c       	add	r8,r5
 2d4:	65 f6       	mov.l	@r15+,r5
 2d6:	31 1c       	add	r1,r1
 2d8:	00 0b       	rts	
 2da:	35 1c       	add	r1,r5

000002dc <SCR_Fill>:
 2dc:	60 44       	mov.b	@r4+,r0
 2de:	41 18       	shll8	r1
 2e0:	60 0c       	extu.b	r0,r0
 2e2:	61 1d       	extu.w	r1,r1
 2e4:	21 0b       	or	r0,r1
 2e6:	71 01       	add	#1,r1
 2e8:	60 44       	mov.b	@r4+,r0
 2ea:	62 44       	mov.b	@r4+,r2
 2ec:	40 18       	shll8	r0
 2ee:	62 2c       	extu.b	r2,r2
 2f0:	22 0b       	or	r0,r2
 2f2:	c7 13       	mova	340 <FillChar>,r0
 2f4:	20 21       	mov.w	r2,@r0
 2f6:	62 03       	mov	r0,r2
 2f8:	e3 80       	mov	#-128,r3

000002fa <wait_DMAC_01038>:
 2fa:	50 33       	mov.l	@(12,r3),r0
 2fc:	c9 03       	and	#3,r0
 2fe:	88 01       	cmp/eq	#1,r0
 300:	89 fb       	bt	2fa <wait_DMAC_01038>
 302:	50 3c       	mov.l	@(48,r3),r0
 304:	e0 00       	mov	#0,r0
 306:	13 03       	mov.l	r0,@(12,r3)
 308:	e3 9c       	mov	#-100,r3
 30a:	43 08       	shll2	r3
 30c:	80 31       	mov.b	r0,@(1,r3)
 30e:	e3 80       	mov	#-128,r3
 310:	13 20       	mov.l	r2,@(0,r3)
 312:	13 51       	mov.l	r5,@(4,r3)
 314:	13 12       	mov.l	r1,@(8,r3)
 316:	90 09       	mov.w	32c <IMM_DMA_REQ_WORD_FILL>,r0	! 4601
 318:	13 03       	mov.l	r0,@(12,r3)
 31a:	e0 09       	mov	#9,r0
 31c:	13 0c       	mov.l	r0,@(48,r3)
 31e:	e1 80       	mov	#-128,r1

00000320 <wait_DMAC_01040>:
 320:	50 13       	mov.l	@(12,r1),r0
 322:	c9 03       	and	#3,r0
 324:	88 01       	cmp/eq	#1,r0
 326:	89 fb       	bt	320 <wait_DMAC_01040>
 328:	00 0b       	rts	
 32a:	00 09       	nop	

0000032c <IMM_DMA_REQ_WORD_FILL>:
 32c:	46 01       	shlr	r6
	...

00000330 <IMM_ScrollVRAM>:
 330:	25 e0       	mov.b	r14,@r5
	...

00000334 <IMM_ScrollVRAMA1>:
 334:	25 e2       	mov.l	r14,@r5
	...

00000338 <IMM_ScrollVRAMB0>:
 338:	25 e4       	mov.b	r14,@-r5
	...

0000033c <IMM_ScrollVRAMB1>:
 33c:	25 e6       	mov.l	r14,@-r5
	...

00000340 <FillChar>:
 340:	00 00       	.word 0x0000
	...

00000344 <RdPtrBuffer>:
	...

000003c4 <CellBuffer>:
	...
