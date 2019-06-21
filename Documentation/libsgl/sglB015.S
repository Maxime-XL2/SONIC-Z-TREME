
sglB015.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrAutoDisp>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	2f d6       	mov.l	r13,@-r15
   4:	2f c6       	mov.l	r12,@-r15
   6:	2f b6       	mov.l	r11,@-r15
   8:	2f a6       	mov.l	r10,@-r15
   a:	2f 96       	mov.l	r9,@-r15
   c:	2f 86       	mov.l	r8,@-r15
   e:	6c 43       	mov	r4,r12
  10:	90 3a       	mov.w	88 <IMM_LABEL0>,r0	! a4
  12:	3f 08       	sub	r0,r15
  14:	6b f3       	mov	r15,r11
  16:	e0 24       	mov	#36,r0
  18:	3b 0c       	add	r0,r11
  1a:	6a b3       	mov	r11,r10
  1c:	e0 ff       	mov	#-1,r0
  1e:	61 b3       	mov	r11,r1
  20:	71 fc       	add	#-4,r1
  22:	21 02       	mov.l	r0,@r1
  24:	68 b3       	mov	r11,r8
  26:	78 fc       	add	#-4,r8
  28:	d0 e4       	mov.l	3bc <IMM_0e0e0e0e>,r0	! e0e0e0e
  2a:	d1 e4       	mov.l	3bc <IMM_0e0e0e0e>,r1	! e0e0e0e
  2c:	e3 04       	mov	#4,r3

0000002e <sad_cl_loop>:
  2e:	28 16       	mov.l	r1,@-r8
  30:	43 10       	dt	r3
  32:	8f fc       	bf.s	2e <sad_cl_loop>
  34:	28 06       	mov.l	r0,@-r8
  36:	e0 01       	mov	#1,r0
  38:	2c 08       	tst	r0,r12
  3a:	89 2a       	bt	92 <sad_nbg0_ps>
  3c:	c5 ac       	mov.w	@(344,gbr),r0
  3e:	e1 03       	mov	#3,r1
  40:	21 09       	and	r0,r1
  42:	c7 e4       	mova	3d4 <cycle_zoom_tbl>,r0
  44:	04 1c       	mov.b	@(r0,r1),r4
  46:	61 03       	mov	r0,r1
  48:	c5 74       	mov.w	@(232,gbr),r0
  4a:	71 04       	add	#4,r1
  4c:	40 09       	shlr2	r0
  4e:	40 09       	shlr2	r0
  50:	c9 07       	and	#7,r0
  52:	05 1c       	mov.b	@(r0,r1),r5
  54:	e6 00       	mov	#0,r6
  56:	c6 7f       	mov.l	@(508,gbr),r0
  58:	71 ec       	add	#-20,r1
  5a:	40 29       	shlr16	r0
  5c:	40 01       	shlr	r0
  5e:	c9 03       	and	#3,r0
  60:	07 1c       	mov.b	@(r0,r1),r7
  62:	c6 79       	mov.l	@(484,gbr),r0
  64:	40 29       	shlr16	r0
  66:	40 01       	shlr	r0
  68:	c9 03       	and	#3,r0
  6a:	09 1c       	mov.b	@(r0,r1),r9
  6c:	e8 04       	mov	#4,r8
  6e:	c5 ad       	mov.w	@(346,gbr),r0
  70:	c8 01       	tst	#1,r0
  72:	89 02       	bt	7a <sadn0_vsc_ps>
  74:	e1 fc       	mov	#-4,r1
  76:	b1 94       	bsr	3a2 <write_acs_prog_vsc>
  78:	e0 0c       	mov	#12,r0

0000007a <sadn0_vsc_ps>:
  7a:	c5 74       	mov.w	@(232,gbr),r0
  7c:	c8 02       	tst	#2,r0
  7e:	8b 04       	bf	8a <sadn0_bit>
  80:	b1 59       	bsr	336 <write_acs_prog>
  82:	00 09       	nop	
  84:	a0 05       	bra	92 <sad_nbg0_ps>
  86:	00 09       	nop	

00000088 <IMM_LABEL0>:
  88:	00 a4       	mov.b	r10,@(r0,r0)

0000008a <sadn0_bit>:
  8a:	c5 74       	mov.w	@(232,gbr),r0
  8c:	40 09       	shlr2	r0
  8e:	b1 6e       	bsr	36e <write_acs_prog_bit>
  90:	c9 1f       	and	#31,r0

00000092 <sad_nbg0_ps>:
  92:	e0 02       	mov	#2,r0
  94:	2c 08       	tst	r0,r12
  96:	89 2e       	bt	f6 <sad_nbg1_ps>
  98:	c5 ac       	mov.w	@(344,gbr),r0
  9a:	e1 03       	mov	#3,r1
  9c:	40 19       	shlr8	r0
  9e:	21 09       	and	r0,r1
  a0:	c7 cc       	mova	3d4 <cycle_zoom_tbl>,r0
  a2:	04 1c       	mov.b	@(r0,r1),r4
  a4:	61 03       	mov	r0,r1
  a6:	c5 74       	mov.w	@(232,gbr),r0
  a8:	71 04       	add	#4,r1
  aa:	40 19       	shlr8	r0
  ac:	40 09       	shlr2	r0
  ae:	40 09       	shlr2	r0
  b0:	c9 07       	and	#7,r0
  b2:	05 1c       	mov.b	@(r0,r1),r5
  b4:	e6 01       	mov	#1,r6
  b6:	c6 80       	mov.l	@(512,gbr),r0
  b8:	71 ec       	add	#-20,r1
  ba:	40 29       	shlr16	r0
  bc:	40 01       	shlr	r0
  be:	c9 03       	and	#3,r0
  c0:	07 1c       	mov.b	@(r0,r1),r7
  c2:	c6 7a       	mov.l	@(488,gbr),r0
  c4:	40 29       	shlr16	r0
  c6:	40 01       	shlr	r0
  c8:	c9 03       	and	#3,r0
  ca:	09 1c       	mov.b	@(r0,r1),r9
  cc:	e8 05       	mov	#5,r8
  ce:	c5 ad       	mov.w	@(346,gbr),r0
  d0:	40 19       	shlr8	r0
  d2:	c8 01       	tst	#1,r0
  d4:	89 02       	bt	dc <sadn1_vsc_ps>
  d6:	e0 fb       	mov	#-5,r0
  d8:	b1 63       	bsr	3a2 <write_acs_prog_vsc>
  da:	e0 0d       	mov	#13,r0

000000dc <sadn1_vsc_ps>:
  dc:	c5 74       	mov.w	@(232,gbr),r0
  de:	40 19       	shlr8	r0
  e0:	c8 02       	tst	#2,r0
  e2:	8b 03       	bf	ec <sadn1_bit>
  e4:	b1 27       	bsr	336 <write_acs_prog>
  e6:	00 09       	nop	
  e8:	a0 05       	bra	f6 <sad_nbg1_ps>
  ea:	00 09       	nop	

000000ec <sadn1_bit>:
  ec:	c5 74       	mov.w	@(232,gbr),r0
  ee:	40 19       	shlr8	r0
  f0:	40 09       	shlr2	r0
  f2:	b1 3c       	bsr	36e <write_acs_prog_bit>
  f4:	c9 0f       	and	#15,r0

000000f6 <sad_nbg1_ps>:
  f6:	e0 04       	mov	#4,r0
  f8:	2c 08       	tst	r0,r12
  fa:	89 15       	bt	128 <sad_nbg2_ps>
  fc:	c5 75       	mov.w	@(234,gbr),r0
  fe:	e4 01       	mov	#1,r4
 100:	40 01       	shlr	r0
 102:	c9 01       	and	#1,r0
 104:	61 03       	mov	r0,r1
 106:	c7 b4       	mova	3d8 <cycle_col_tbl>,r0
 108:	05 1c       	mov.b	@(r0,r1),r5
 10a:	61 03       	mov	r0,r1
 10c:	e6 02       	mov	#2,r6
 10e:	c6 81       	mov.l	@(516,gbr),r0
 110:	71 ec       	add	#-20,r1
 112:	40 29       	shlr16	r0
 114:	40 01       	shlr	r0
 116:	c9 03       	and	#3,r0
 118:	07 1c       	mov.b	@(r0,r1),r7
 11a:	c6 7b       	mov.l	@(492,gbr),r0
 11c:	40 29       	shlr16	r0
 11e:	40 01       	shlr	r0
 120:	c9 03       	and	#3,r0
 122:	09 1c       	mov.b	@(r0,r1),r9
 124:	b1 07       	bsr	336 <write_acs_prog>
 126:	e8 06       	mov	#6,r8

00000128 <sad_nbg2_ps>:
 128:	e0 08       	mov	#8,r0
 12a:	2c 08       	tst	r0,r12
 12c:	89 17       	bt	15e <sad_nbg3_ps>
 12e:	c5 75       	mov.w	@(234,gbr),r0
 130:	e4 01       	mov	#1,r4
 132:	40 09       	shlr2	r0
 134:	40 09       	shlr2	r0
 136:	40 01       	shlr	r0
 138:	c9 01       	and	#1,r0
 13a:	61 03       	mov	r0,r1
 13c:	c7 a6       	mova	3d8 <cycle_col_tbl>,r0
 13e:	05 1c       	mov.b	@(r0,r1),r5
 140:	61 03       	mov	r0,r1
 142:	e6 03       	mov	#3,r6
 144:	c6 82       	mov.l	@(520,gbr),r0
 146:	71 ec       	add	#-20,r1
 148:	40 29       	shlr16	r0
 14a:	40 01       	shlr	r0
 14c:	c9 03       	and	#3,r0
 14e:	07 1c       	mov.b	@(r0,r1),r7
 150:	c6 7c       	mov.l	@(496,gbr),r0
 152:	40 29       	shlr16	r0
 154:	40 01       	shlr	r0
 156:	c9 03       	and	#3,r0
 158:	09 1c       	mov.b	@(r0,r1),r9
 15a:	b0 ec       	bsr	336 <write_acs_prog>
 15c:	e8 07       	mov	#7,r8

0000015e <sad_nbg3_ps>:
 15e:	e0 ff       	mov	#-1,r0
 160:	80 a0       	mov.b	r0,@(0,r10)
 162:	6a b3       	mov	r11,r10
 164:	69 b3       	mov	r11,r9
 166:	68 b3       	mov	r11,r8
 168:	79 fc       	add	#-4,r9
 16a:	78 dc       	add	#-36,r8

0000016c <ape_next>:
 16c:	84 a2       	mov.b	@(2,r10),r0
 16e:	e6 0f       	mov	#15,r6
 170:	65 03       	mov	r0,r5
 172:	c4 b0       	mov.b	@(176,gbr),r0
 174:	c8 08       	tst	#8,r0
 176:	8b 02       	bf	17e <ape_fault_start>
 178:	46 08       	shll2	r6
 17a:	46 08       	shll2	r6
 17c:	76 0f       	add	#15,r6

0000017e <ape_fault_start>:
 17e:	84 a0       	mov.b	@(0,r10),r0
 180:	88 ff       	cmp/eq	#-1,r0
 182:	8b 01       	bf	188 <ape_not_end>
 184:	a0 7b       	bra	27e <ape_end>
 186:	00 09       	nop	

00000188 <ape_not_end>:
 188:	64 03       	mov	r0,r4
 18a:	c8 80       	tst	#-128,r0
 18c:	89 0e       	bt	1ac <ape_char_acs>
 18e:	88 fc       	cmp/eq	#-4,r0
 190:	89 09       	bt	1a6 <ape_n0vsc_acs>
 192:	88 fb       	cmp/eq	#-5,r0
 194:	8b 26       	bf	1e4 <ape_char_ps>

00000196 <ape_n1vsc_acs>:
 196:	e1 07       	mov	#7,r1
 198:	c5 ad       	mov.w	@(346,gbr),r0
 19a:	c8 01       	tst	#1,r0
 19c:	89 00       	bt	1a0 <ape_n1_n0>
 19e:	e1 06       	mov	#6,r1

000001a0 <ape_n1_n0>:
 1a0:	26 19       	and	r1,r6
 1a2:	a0 1f       	bra	1e4 <ape_char_ps>
 1a4:	00 09       	nop	

000001a6 <ape_n0vsc_acs>:
 1a6:	e1 03       	mov	#3,r1
 1a8:	a0 1c       	bra	1e4 <ape_char_ps>
 1aa:	26 19       	and	r1,r6

000001ac <ape_char_acs>:
 1ac:	61 03       	mov	r0,r1
 1ae:	c4 b0       	mov.b	@(176,gbr),r0
 1b0:	31 bc       	add	r11,r1
 1b2:	62 a3       	mov	r10,r2
 1b4:	71 03       	add	#3,r1
 1b6:	72 01       	add	#1,r2
 1b8:	61 10       	mov.b	@r1,r1
 1ba:	62 20       	mov.b	@r2,r2
 1bc:	21 18       	tst	r1,r1
 1be:	8f 0c       	bf.s	1da <ape_char_acs_conti>
 1c0:	e3 04       	mov	#4,r3
 1c2:	32 30       	cmp/eq	r3,r2
 1c4:	8d 02       	bt.s	1cc <ape_char_acs_spe>
 1c6:	e3 05       	mov	#5,r3
 1c8:	32 30       	cmp/eq	r3,r2
 1ca:	8f 06       	bf.s	1da <ape_char_acs_conti>

000001cc <ape_char_acs_spe>:
 1cc:	e2 ff       	mov	#-1,r2
 1ce:	c8 08       	tst	#8,r0
 1d0:	8d 07       	bt.s	1e2 <ape_char_acs_end>
 1d2:	62 2c       	extu.b	r2,r2
 1d4:	42 09       	shlr2	r2
 1d6:	a0 04       	bra	1e2 <ape_char_acs_end>
 1d8:	42 09       	shlr2	r2

000001da <ape_char_acs_conti>:
 1da:	c9 08       	and	#8,r0
 1dc:	31 0c       	add	r0,r1
 1de:	c7 80       	mova	3e0 <cycle_char_limit_tbl>,r0
 1e0:	02 1c       	mov.b	@(r0,r1),r2

000001e2 <ape_char_acs_end>:
 1e2:	26 29       	and	r2,r6

000001e4 <ape_char_ps>:
 1e4:	e1 01       	mov	#1,r1
 1e6:	e0 00       	mov	#0,r0

000001e8 <ape_a0c_nx>:
 1e8:	25 18       	tst	r1,r5
 1ea:	89 01       	bt	1f0 <ape_a0c_ps>
 1ec:	02 9c       	mov.b	@(r0,r9),r2
 1ee:	26 29       	and	r2,r6

000001f0 <ape_a0c_ps>:
 1f0:	41 00       	shll	r1
 1f2:	88 03       	cmp/eq	#3,r0
 1f4:	8f f8       	bf.s	1e8 <ape_a0c_nx>
 1f6:	70 01       	add	#1,r0
 1f8:	26 68       	tst	r6,r6
 1fa:	89 1f       	bt	23c <ape_fault>
 1fc:	e7 00       	mov	#0,r7

000001fe <ape_csc_loop>:
 1fe:	46 01       	shlr	r6
 200:	89 01       	bt	206 <ape_csc_find>
 202:	af fc       	bra	1fe <ape_csc_loop>
 204:	77 01       	add	#1,r7

00000206 <ape_csc_find>:
 206:	60 73       	mov	r7,r0
 208:	80 a3       	mov.b	r0,@(3,r10)
 20a:	84 a1       	mov.b	@(1,r10),r0
 20c:	63 03       	mov	r0,r3
 20e:	c7 6d       	mova	3c4 <bm_tbl_b>,r0
 210:	01 7c       	mov.b	@(r0,r7),r1
 212:	62 17       	not	r1,r2
 214:	e1 01       	mov	#1,r1
 216:	e0 00       	mov	#0,r0
 218:	64 83       	mov	r8,r4
 21a:	34 7c       	add	r7,r4

0000021c <ape_abs_lp>:
 21c:	25 18       	tst	r1,r5
 21e:	89 07       	bt	230 <ape_abs_ps>
 220:	06 9c       	mov.b	@(r0,r9),r6
 222:	26 29       	and	r2,r6
 224:	09 64       	mov.b	r6,@(r0,r9)
 226:	66 03       	mov	r0,r6
 228:	46 08       	shll2	r6
 22a:	46 00       	shll	r6
 22c:	36 4c       	add	r4,r6
 22e:	26 30       	mov.b	r3,@r6

00000230 <ape_abs_ps>:
 230:	41 00       	shll	r1
 232:	88 03       	cmp/eq	#3,r0
 234:	8f f2       	bf.s	21c <ape_abs_lp>
 236:	70 01       	add	#1,r0
 238:	af 98       	bra	16c <ape_next>
 23a:	7a 04       	add	#4,r10

0000023c <ape_fault>:
 23c:	3a b0       	cmp/eq	r11,r10
 23e:	8d 1c       	bt.s	27a <ape_give_up>
 240:	7a fc       	add	#-4,r10
 242:	c7 60       	mova	3c4 <bm_tbl_b>,r0
 244:	61 03       	mov	r0,r1
 246:	84 a3       	mov.b	@(3,r10),r0
 248:	02 1c       	mov.b	@(r0,r1),r2
 24a:	71 2c       	add	#44,r1
 24c:	06 1c       	mov.b	@(r0,r1),r6
 24e:	c4 b0       	mov.b	@(176,gbr),r0
 250:	c8 08       	tst	#8,r0
 252:	8d 01       	bt.s	258 <apflt_01>
 254:	e0 0f       	mov	#15,r0
 256:	26 09       	and	r0,r6

00000258 <apflt_01>:
 258:	84 a2       	mov.b	@(2,r10),r0
 25a:	65 03       	mov	r0,r5
 25c:	e1 01       	mov	#1,r1
 25e:	e0 00       	mov	#0,r0

00000260 <ape_abcl_lp>:
 260:	25 18       	tst	r1,r5
 262:	89 02       	bt	26a <ape_abcl_ps>
 264:	03 9c       	mov.b	@(r0,r9),r3
 266:	23 2b       	or	r2,r3
 268:	09 34       	mov.b	r3,@(r0,r9)

0000026a <ape_abcl_ps>:
 26a:	41 00       	shll	r1
 26c:	88 03       	cmp/eq	#3,r0
 26e:	8f f7       	bf.s	260 <ape_abcl_lp>
 270:	70 01       	add	#1,r0
 272:	26 68       	tst	r6,r6
 274:	89 e2       	bt	23c <ape_fault>
 276:	af 82       	bra	17e <ape_fault_start>
 278:	00 09       	nop	

0000027a <ape_give_up>:
 27a:	a0 4f       	bra	31c <ape_exit>
 27c:	e0 ff       	mov	#-1,r0

0000027e <ape_end>:
 27e:	d9 50       	mov.l	3c0 <IMM_VDP2_CYCA0L>,r9	! 60ffcd0
 280:	e7 08       	mov	#8,r7

00000282 <ape_mcp_loop>:
 282:	62 84       	mov.b	@r8+,r2
 284:	61 84       	mov.b	@r8+,r1
 286:	42 08       	shll2	r2
 288:	42 08       	shll2	r2
 28a:	22 1b       	or	r1,r2
 28c:	61 84       	mov.b	@r8+,r1
 28e:	42 08       	shll2	r2
 290:	42 08       	shll2	r2
 292:	22 1b       	or	r1,r2
 294:	61 84       	mov.b	@r8+,r1
 296:	42 08       	shll2	r2
 298:	42 08       	shll2	r2
 29a:	22 1b       	or	r1,r2
 29c:	29 21       	mov.w	r2,@r9
 29e:	47 10       	dt	r7
 2a0:	8f ef       	bf.s	282 <ape_mcp_loop>
 2a2:	79 02       	add	#2,r9
 2a4:	c4 ce       	mov.b	@(206,gbr),r0
 2a6:	d6 46       	mov.l	3c0 <IMM_VDP2_CYCA0L>,r6	! 60ffcd0
 2a8:	68 03       	mov	r0,r8
 2aa:	e9 01       	mov	#1,r9

000002ac <cpuck_00>:
 2ac:	28 98       	tst	r9,r8
 2ae:	8d 2e       	bt.s	30e <cpuck_10>
 2b0:	49 00       	shll	r9
 2b2:	54 60       	mov.l	@(0,r6),r4
 2b4:	55 61       	mov.l	@(4,r6),r5
 2b6:	e7 0f       	mov	#15,r7
 2b8:	e1 08       	mov	#8,r1
 2ba:	e3 0e       	mov	#14,r3
 2bc:	e0 00       	mov	#0,r0

000002be <cpuck_01>:
 2be:	62 43       	mov	r4,r2
 2c0:	22 79       	and	r7,r2
 2c2:	32 30       	cmp/eq	r3,r2
 2c4:	8d 05       	bt.s	2d2 <cpuck_02>
 2c6:	62 53       	mov	r5,r2
 2c8:	22 79       	and	r7,r2
 2ca:	32 30       	cmp/eq	r3,r2
 2cc:	8b 05       	bf	2da <cpuck_05>
 2ce:	a0 04       	bra	2da <cpuck_05>
 2d0:	25 7b       	or	r7,r5

000002d2 <cpuck_02>:
 2d2:	22 79       	and	r7,r2
 2d4:	32 30       	cmp/eq	r3,r2
 2d6:	89 00       	bt	2da <cpuck_05>
 2d8:	24 7b       	or	r7,r4

000002da <cpuck_05>:
 2da:	47 08       	shll2	r7
 2dc:	47 08       	shll2	r7
 2de:	43 08       	shll2	r3
 2e0:	41 10       	dt	r1
 2e2:	8f ec       	bf.s	2be <cpuck_01>
 2e4:	43 08       	shll2	r3
 2e6:	d0 39       	mov.l	3cc <IMM_f0000000>,r0	! f0000000
 2e8:	e7 ff       	mov	#-1,r7
 2ea:	d3 39       	mov.l	3d0 <IMM_eeeeeeee>,r3	! eeeeeeee
 2ec:	e1 08       	mov	#8,r1
 2ee:	62 43       	mov	r4,r2

000002f0 <cpuck_06>:
 2f0:	22 79       	and	r7,r2
 2f2:	23 79       	and	r7,r3
 2f4:	33 20       	cmp/eq	r2,r3
 2f6:	8f 03       	bf.s	300 <cpuck_07>
 2f8:	47 09       	shlr2	r7
 2fa:	24 0b       	or	r0,r4
 2fc:	a0 05       	bra	30a <cpuck_09>
 2fe:	25 0b       	or	r0,r5

00000300 <cpuck_07>:
 300:	40 09       	shlr2	r0
 302:	40 09       	shlr2	r0
 304:	41 10       	dt	r1
 306:	8f f3       	bf.s	2f0 <cpuck_06>
 308:	47 09       	shlr2	r7

0000030a <cpuck_09>:
 30a:	16 40       	mov.l	r4,@(0,r6)
 30c:	16 51       	mov.l	r5,@(4,r6)

0000030e <cpuck_10>:
 30e:	e0 02       	mov	#2,r0
 310:	39 00       	cmp/eq	r0,r9
 312:	8d cb       	bt.s	2ac <cpuck_00>
 314:	76 08       	add	#8,r6
 316:	60 c3       	mov	r12,r0
 318:	c0 e1       	mov.b	r0,@(225,gbr)
 31a:	e0 00       	mov	#0,r0

0000031c <ape_exit>:
 31c:	91 0a       	mov.w	334 <IMM_LABEL1>,r1	! a4
 31e:	3f 1c       	add	r1,r15
 320:	68 f6       	mov.l	@r15+,r8
 322:	69 f6       	mov.l	@r15+,r9
 324:	6a f6       	mov.l	@r15+,r10
 326:	6b f6       	mov.l	@r15+,r11
 328:	6c f6       	mov.l	@r15+,r12
 32a:	6d f6       	mov.l	@r15+,r13
 32c:	4f 26       	lds.l	@r15+,pr
 32e:	00 0b       	rts	
 330:	00 09       	nop	
	...

00000334 <IMM_LABEL1>:
 334:	00 a4       	mov.b	r10,@(r0,r0)

00000336 <write_acs_prog>:
 336:	6d a3       	mov	r10,r13
 338:	63 43       	mov	r4,r3

0000033a <wap_page_loop>:
 33a:	e0 fe       	mov	#-2,r0
 33c:	80 a0       	mov.b	r0,@(0,r10)
 33e:	60 63       	mov	r6,r0
 340:	80 a1       	mov.b	r0,@(1,r10)
 342:	60 73       	mov	r7,r0
 344:	80 a2       	mov.b	r0,@(2,r10)
 346:	43 10       	dt	r3
 348:	8f f7       	bf.s	33a <wap_page_loop>
 34a:	7a 04       	add	#4,r10
 34c:	63 43       	mov	r4,r3

0000034e <wap_char_zloop>:
 34e:	62 53       	mov	r5,r2

00000350 <wap_char_cloop>:
 350:	60 d3       	mov	r13,r0
 352:	30 b8       	sub	r11,r0
 354:	80 a0       	mov.b	r0,@(0,r10)
 356:	60 83       	mov	r8,r0
 358:	80 a1       	mov.b	r0,@(1,r10)
 35a:	60 93       	mov	r9,r0
 35c:	80 a2       	mov.b	r0,@(2,r10)
 35e:	42 10       	dt	r2
 360:	8f f6       	bf.s	350 <wap_char_cloop>
 362:	7a 04       	add	#4,r10
 364:	43 10       	dt	r3
 366:	8f f2       	bf.s	34e <wap_char_zloop>
 368:	7d 04       	add	#4,r13
 36a:	00 0b       	rts	
 36c:	00 09       	nop	

0000036e <write_acs_prog_bit>:
 36e:	d1 04       	mov.l	380 <IMM_LABEL2>,r1	! 3f8 <bitmap_bank_use_tbl>
 370:	02 1c       	mov.b	@(r0,r1),r2
 372:	60 73       	mov	r7,r0

00000374 <wapb_bank_loop>:
 374:	42 10       	dt	r2
 376:	8d 05       	bt.s	384 <wapb_bank_end>
 378:	40 00       	shll	r0
 37a:	af fb       	bra	374 <wapb_bank_loop>
 37c:	27 0b       	or	r0,r7
	...

00000380 <IMM_LABEL2>:
 380:	00 00       	.word 0x0000
 382:	03 f8       	.word 0x03f8

00000384 <wapb_bank_end>:
 384:	63 43       	mov	r4,r3

00000386 <wapb_bit_zloop>:
 386:	62 53       	mov	r5,r2

00000388 <wapb_bit_cloop>:
 388:	e0 fd       	mov	#-3,r0
 38a:	80 a0       	mov.b	r0,@(0,r10)
 38c:	60 83       	mov	r8,r0
 38e:	80 a1       	mov.b	r0,@(1,r10)
 390:	60 73       	mov	r7,r0
 392:	80 a2       	mov.b	r0,@(2,r10)
 394:	42 10       	dt	r2
 396:	8f f7       	bf.s	388 <wapb_bit_cloop>
 398:	7a 04       	add	#4,r10
 39a:	43 10       	dt	r3
 39c:	8b f3       	bf	386 <wapb_bit_zloop>
 39e:	00 0b       	rts	
 3a0:	00 09       	nop	

000003a2 <write_acs_prog_vsc>:
 3a2:	80 a1       	mov.b	r0,@(1,r10)
 3a4:	60 13       	mov	r1,r0
 3a6:	80 a0       	mov.b	r0,@(0,r10)
 3a8:	c5 ae       	mov.w	@(348,gbr),r0
 3aa:	c9 03       	and	#3,r0
 3ac:	d1 02       	mov.l	3b8 <IMM_LABEL3>,r1	! 3c4 <bm_tbl_b>
 3ae:	00 1c       	mov.b	@(r0,r1),r0
 3b0:	80 a2       	mov.b	r0,@(2,r10)
 3b2:	7a 04       	add	#4,r10
 3b4:	00 0b       	rts	
 3b6:	00 09       	nop	

000003b8 <IMM_LABEL3>:
 3b8:	00 00       	.word 0x0000
 3ba:	03 c4       	mov.b	r12,@(r0,r3)

000003bc <IMM_0e0e0e0e>:
 3bc:	0e 0e       	mov.l	@(r0,r0),r14
 3be:	0e 0e       	mov.l	@(r0,r0),r14

000003c0 <IMM_VDP2_CYCA0L>:
 3c0:	06 0f       	mac.l	@r0+,@r6+
 3c2:	fc d0       	fadd	fr13,fr12

000003c4 <bm_tbl_b>:
 3c4:	01 02       	stc	sr,r1
 3c6:	04 08       	.word 0x0408
 3c8:	10 20       	mov.l	r2,@(0,r0)
 3ca:	40 80       	.word 0x4080

000003cc <IMM_f0000000>:
 3cc:	f0 00       	fadd	fr0,fr0
	...

000003d0 <IMM_eeeeeeee>:
 3d0:	ee ee       	mov	#-18,r14
 3d2:	ee ee       	mov	#-18,r14

000003d4 <cycle_zoom_tbl>:
 3d4:	01 02       	stc	sr,r1
 3d6:	04 04       	mov.b	r0,@(r0,r4)

000003d8 <cycle_col_tbl>:
 3d8:	01 02       	stc	sr,r1
 3da:	04 04       	mov.b	r0,@(r0,r4)
 3dc:	08 08       	.word 0x0808
 3de:	08 08       	.word 0x0808

000003e0 <cycle_char_limit_tbl>:
 3e0:	f7 ef       	.word 0xf7ef
 3e2:	cf 8f       	or.b	#-113,@(r0,gbr)
 3e4:	0f 0e       	mov.l	@(r0,r0),r15
 3e6:	0c 08       	.word 0x0c08
 3e8:	0f 0e       	mov.l	@(r0,r0),r15
 3ea:	0c 08       	.word 0x0c08
 3ec:	00 00       	.word 0x0000
	...

000003f0 <cycle_mask_again_tbl>:
 3f0:	fe fc       	fmov	fr15,fr14
 3f2:	f8 f0       	fadd	fr15,fr8
 3f4:	e0 c0       	mov	#-64,r0
 3f6:	80 00       	mov.b	r0,@(0,r0)

000003f8 <bitmap_bank_use_tbl>:
 3f8:	01 01       	.word 0x0101
 3fa:	01 02       	stc	sr,r1
 3fc:	01 02       	stc	sr,r1
 3fe:	02 04       	mov.b	r0,@(r0,r2)
 400:	02 04       	mov.b	r0,@(r0,r2)
 402:	04 08       	.word 0x0408
 404:	02 04       	mov.b	r0,@(r0,r2)
 406:	04 08       	.word 0x0408
 408:	04 08       	.word 0x0408
 40a:	08 10       	.word 0x0810
