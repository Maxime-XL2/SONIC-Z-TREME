
sglC08.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPutPolygon>:
       0:	e0 01       	mov	#1,r0
       2:	c0 73       	mov.b	r0,@(115,gbr)
       4:	c5 55       	mov.w	@(170,gbr),r0
       6:	70 01       	add	#1,r0
       8:	c1 55       	mov.w	r0,@(170,gbr)
       a:	c6 22       	mov.l	@(136,gbr),r0
       c:	51 41       	mov.l	@(4,r4),r1
       e:	63 03       	mov	r0,r3
      10:	c6 1d       	mov.l	@(116,gbr),r0
      12:	65 3d       	extu.w	r3,r5
      14:	62 0d       	extu.w	r0,r2
      16:	32 1c       	add	r1,r2
      18:	32 56       	cmp/hi	r5,r2
      1a:	8d 46       	bt.s	aa <ptpl_09>
      1c:	65 29       	swap.w	r2,r5
      1e:	52 43       	mov.l	@(12,r4),r2
      20:	43 29       	shlr16	r3
      22:	40 29       	shlr16	r0
      24:	30 2c       	add	r2,r0
      26:	30 36       	cmp/hi	r3,r0
      28:	8d 3f       	bt.s	aa <ptpl_09>
      2a:	25 0d       	xtrct	r0,r5
      2c:	d6 7b       	mov.l	21c <IMM_ComRdPtr>,r6	! 260ffc44
      2e:	c6 12       	mov.l	@(72,gbr),r0
      30:	63 62       	mov.l	@r6,r3
      32:	67 03       	mov	r0,r7
      34:	30 30       	cmp/eq	r3,r0
      36:	8f 3a       	bf.s	ae <ptpl_01>
      38:	c6 07       	mov.l	@(28,gbr),r0
      3a:	17 11       	mov.l	r1,@(4,r7)
      3c:	17 23       	mov.l	r2,@(12,r7)
      3e:	66 03       	mov	r0,r6
      40:	c6 09       	mov.l	@(36,gbr),r0
      42:	41 08       	shll2	r1
      44:	41 08       	shll2	r1
      46:	30 1c       	add	r1,r0
      48:	c2 09       	mov.l	r0,@(36,gbr)
      4a:	e0 fc       	mov	#-4,r0
      4c:	24 09       	and	r0,r4
      4e:	51 40       	mov.l	@(0,r4),r1
      50:	52 42       	mov.l	@(8,r4),r2
      52:	53 44       	mov.l	@(16,r4),r3
      54:	21 09       	and	r0,r1
      56:	22 09       	and	r0,r2
      58:	e0 fe       	mov	#-2,r0
      5a:	23 09       	and	r0,r3
      5c:	17 12       	mov.l	r1,@(8,r7)
      5e:	17 24       	mov.l	r2,@(16,r7)
      60:	17 35       	mov.l	r3,@(20,r7)
      62:	e1 14       	mov	#20,r1
      64:	17 10       	mov.l	r1,@(0,r7)
      66:	60 53       	mov	r5,r0
      68:	c2 1d       	mov.l	r0,@(116,gbr)
      6a:	77 18       	add	#24,r7
      6c:	50 60       	mov.l	@(0,r6),r0
      6e:	51 61       	mov.l	@(4,r6),r1
      70:	52 62       	mov.l	@(8,r6),r2
      72:	53 63       	mov.l	@(12,r6),r3
      74:	17 00       	mov.l	r0,@(0,r7)
      76:	17 11       	mov.l	r1,@(4,r7)
      78:	17 22       	mov.l	r2,@(8,r7)
      7a:	17 33       	mov.l	r3,@(12,r7)
      7c:	50 64       	mov.l	@(16,r6),r0
      7e:	51 65       	mov.l	@(20,r6),r1
      80:	52 66       	mov.l	@(24,r6),r2
      82:	53 67       	mov.l	@(28,r6),r3
      84:	17 04       	mov.l	r0,@(16,r7)
      86:	17 15       	mov.l	r1,@(20,r7)
      88:	17 26       	mov.l	r2,@(24,r7)
      8a:	17 37       	mov.l	r3,@(28,r7)
      8c:	50 68       	mov.l	@(32,r6),r0
      8e:	51 69       	mov.l	@(36,r6),r1
      90:	52 6a       	mov.l	@(40,r6),r2
      92:	53 6b       	mov.l	@(44,r6),r3
      94:	17 08       	mov.l	r0,@(32,r7)
      96:	17 19       	mov.l	r1,@(36,r7)
      98:	17 2a       	mov.l	r2,@(40,r7)
      9a:	17 3b       	mov.l	r3,@(44,r7)
      9c:	e0 30       	mov	#48,r0
      9e:	30 7c       	add	r7,r0
      a0:	d1 5f       	mov.l	220 <IMM_FRT_INTR>,r1	! 21000000
      a2:	c2 12       	mov.l	r0,@(72,gbr)
      a4:	21 01       	mov.w	r0,@r1
      a6:	00 0b       	rts	
      a8:	e0 01       	mov	#1,r0

000000aa <ptpl_09>:
      aa:	00 0b       	rts	
      ac:	e0 00       	mov	#0,r0

000000ae <ptpl_01>:
      ae:	2f 86       	mov.l	r8,@-r15
      b0:	2f e6       	mov.l	r14,@-r15
      b2:	2f d6       	mov.l	r13,@-r15
      b4:	2f c6       	mov.l	r12,@-r15
      b6:	2f b6       	mov.l	r11,@-r15
      b8:	2f a6       	mov.l	r10,@-r15
      ba:	4f 22       	sts.l	pr,@-r15
      bc:	2f 96       	mov.l	r9,@-r15
      be:	66 03       	mov	r0,r6
      c0:	c6 09       	mov.l	@(36,gbr),r0
      c2:	69 13       	mov	r1,r9
      c4:	e1 fc       	mov	#-4,r1
      c6:	24 19       	and	r1,r4
      c8:	5a 40       	mov.l	@(0,r4),r10
      ca:	2f 56       	mov.l	r5,@-r15
      cc:	2f 46       	mov.l	r4,@-r15
      ce:	b6 c7       	bsr	e60 <CalcVertices>
      d0:	6b 03       	mov	r0,r11
      d2:	d2 52       	mov.l	21c <IMM_ComRdPtr>,r2	! 260ffc44
      d4:	64 f6       	mov.l	@r15+,r4
      d6:	61 22       	mov.l	@r2,r1
      d8:	63 73       	mov	r7,r3
      da:	73 b8       	add	#-72,r3
      dc:	31 33       	cmp/ge	r3,r1
      de:	8f 33       	bf.s	148 <ptpl_03>
      e0:	76 e0       	add	#-32,r6
      e2:	52 41       	mov.l	@(4,r4),r2
      e4:	e1 20       	mov	#32,r1
      e6:	53 42       	mov.l	@(8,r4),r3
      e8:	17 02       	mov.l	r0,@(8,r7)
      ea:	17 10       	mov.l	r1,@(0,r7)
      ec:	17 21       	mov.l	r2,@(4,r7)
      ee:	e1 fc       	mov	#-4,r1
      f0:	60 f6       	mov.l	@r15+,r0
      f2:	23 19       	and	r1,r3
      f4:	17 34       	mov.l	r3,@(16,r7)
      f6:	52 43       	mov.l	@(12,r4),r2
      f8:	53 44       	mov.l	@(16,r4),r3
      fa:	e1 fe       	mov	#-2,r1
      fc:	23 19       	and	r1,r3
      fe:	17 23       	mov.l	r2,@(12,r7)
     100:	17 35       	mov.l	r3,@(20,r7)
     102:	c2 1d       	mov.l	r0,@(116,gbr)
     104:	51 68       	mov.l	@(32,r6),r1
     106:	52 69       	mov.l	@(36,r6),r2
     108:	53 6a       	mov.l	@(40,r6),r3
     10a:	77 18       	add	#24,r7
     10c:	17 18       	mov.l	r1,@(32,r7)
     10e:	17 29       	mov.l	r2,@(36,r7)
     110:	17 3a       	mov.l	r3,@(40,r7)
     112:	51 64       	mov.l	@(16,r6),r1
     114:	52 65       	mov.l	@(20,r6),r2
     116:	53 66       	mov.l	@(24,r6),r3
     118:	17 14       	mov.l	r1,@(16,r7)
     11a:	17 25       	mov.l	r2,@(20,r7)
     11c:	17 36       	mov.l	r3,@(24,r7)
     11e:	51 60       	mov.l	@(0,r6),r1
     120:	52 61       	mov.l	@(4,r6),r2
     122:	53 62       	mov.l	@(8,r6),r3
     124:	17 10       	mov.l	r1,@(0,r7)
     126:	17 21       	mov.l	r2,@(4,r7)
     128:	17 32       	mov.l	r3,@(8,r7)
     12a:	e0 30       	mov	#48,r0
     12c:	30 7c       	add	r7,r0
     12e:	d1 3c       	mov.l	220 <IMM_FRT_INTR>,r1	! 21000000
     130:	c2 12       	mov.l	r0,@(72,gbr)
     132:	21 11       	mov.w	r1,@r1
     134:	e0 01       	mov	#1,r0
     136:	69 f6       	mov.l	@r15+,r9
     138:	4f 26       	lds.l	@r15+,pr
     13a:	6a f6       	mov.l	@r15+,r10
     13c:	6b f6       	mov.l	@r15+,r11
     13e:	6c f6       	mov.l	@r15+,r12
     140:	6d f6       	mov.l	@r15+,r13
     142:	6e f6       	mov.l	@r15+,r14
     144:	00 0b       	rts	
     146:	68 f6       	mov.l	@r15+,r8

00000148 <ptpl_03>:
     148:	6a 03       	mov	r0,r10
     14a:	c6 0f       	mov.l	@(60,gbr),r0
     14c:	e1 00       	mov	#0,r1
     14e:	2f 16       	mov.l	r1,@-r15
     150:	70 04       	add	#4,r0
     152:	2f 06       	mov.l	r0,@-r15
     154:	5d 43       	mov.l	@(12,r4),r13
     156:	51 41       	mov.l	@(4,r4),r1
     158:	c6 0c       	mov.l	@(48,gbr),r0
     15a:	17 13       	mov.l	r1,@(12,r7)
     15c:	6b 03       	mov	r0,r11
     15e:	17 01       	mov.l	r0,@(4,r7)
     160:	57 42       	mov.l	@(8,r4),r7
     162:	58 44       	mov.l	@(16,r4),r8
     164:	e0 fc       	mov	#-4,r0
     166:	27 09       	and	r0,r7
     168:	e0 fe       	mov	#-2,r0
     16a:	28 09       	and	r0,r8
     16c:	c6 1a       	mov.l	@(104,gbr),r0
     16e:	2f d6       	mov.l	r13,@-r15
     170:	61 03       	mov	r0,r1
     172:	c4 ac       	mov.b	@(172,gbr),r0
     174:	41 29       	shlr16	r1

00000176 <ptpl_05>:
     176:	40 10       	dt	r0
     178:	8f fd       	bf.s	176 <ptpl_05>
     17a:	41 01       	shlr	r1
     17c:	2f 16       	mov.l	r1,@-r15
     17e:	7f f4       	add	#-12,r15
     180:	ee ff       	mov	#-1,r14
     182:	c7 2d       	mova	238 <ptpl_lp_28>,r0
     184:	40 2a       	lds	r0,pr

00000186 <ptpl_lp_20>:
     186:	00 28       	clrmac	
     188:	06 7f       	mac.l	@r7+,@r6+
     18a:	85 74       	mov.w	@(8,r7),r0
     18c:	65 f3       	mov	r15,r5
     18e:	06 7f       	mac.l	@r7+,@r6+
     190:	61 0f       	exts.w	r0,r1
     192:	41 08       	shll2	r1
     194:	06 7f       	mac.l	@r7+,@r6+
     196:	76 04       	add	#4,r6
     198:	77 f4       	add	#-12,r7
     19a:	41 08       	shll2	r1
     19c:	00 0a       	sts	mach,r0
     19e:	0d 1a       	sts	macl,r13
     1a0:	00 28       	clrmac	
     1a2:	06 7f       	mac.l	@r7+,@r6+
     1a4:	2d 0d       	xtrct	r0,r13
     1a6:	15 d0       	mov.l	r13,@(0,r5)
     1a8:	06 7f       	mac.l	@r7+,@r6+
     1aa:	31 ac       	add	r10,r1
     1ac:	e4 04       	mov	#4,r4
     1ae:	06 7f       	mac.l	@r7+,@r6+
     1b0:	76 04       	add	#4,r6
     1b2:	77 f4       	add	#-12,r7
     1b4:	34 1c       	add	r1,r4
     1b6:	00 0a       	sts	mach,r0
     1b8:	02 1a       	sts	macl,r2
     1ba:	00 28       	clrmac	
     1bc:	06 7f       	mac.l	@r7+,@r6+
     1be:	22 0d       	xtrct	r0,r2
     1c0:	15 21       	mov.l	r2,@(4,r5)
     1c2:	06 7f       	mac.l	@r7+,@r6+
     1c4:	6c 81       	mov.w	@r8,r12
     1c6:	e9 7f       	mov	#127,r9
     1c8:	06 7f       	mac.l	@r7+,@r6+
     1ca:	76 d4       	add	#-44,r6
     1cc:	29 c9       	and	r12,r9
     1ce:	49 08       	shll2	r9
     1d0:	00 0a       	sts	mach,r0
     1d2:	03 1a       	sts	macl,r3
     1d4:	00 28       	clrmac	
     1d6:	05 4f       	mac.l	@r4+,@r5+
     1d8:	23 0d       	xtrct	r0,r3
     1da:	c7 2a       	mova	284 <MsSBase_tbl>,r0
     1dc:	05 4f       	mac.l	@r4+,@r5+
     1de:	25 32       	mov.l	r3,@r5
     1e0:	49 08       	shll2	r9
     1e2:	05 4f       	mac.l	@r4+,@r5+
     1e4:	39 0c       	add	r0,r9
     1e6:	85 85       	mov.w	@(10,r8),r0
     1e8:	77 02       	add	#2,r7
     1ea:	04 0a       	sts	mach,r4
     1ec:	81 b0       	mov.w	r0,@(0,r11)
     1ee:	c6 e0       	mov.l	@(896,gbr),r0
     1f0:	34 03       	cmp/ge	r0,r4
     1f2:	8d 04       	bt.s	1fe <ptpl_lp_21>
     1f4:	60 c8       	swap.b	r12,r0
     1f6:	64 96       	mov.l	@r9+,r4
     1f8:	62 75       	mov.w	@r7+,r2
     1fa:	44 2b       	jmp	@r4
     1fc:	42 08       	shll2	r2

000001fe <ptpl_lp_21>:
     1fe:	c8 01       	tst	#1,r0
     200:	8d 09       	bt.s	216 <ptpl_lp_22>
     202:	63 3b       	neg	r3,r3
     204:	25 36       	mov.l	r3,@-r5
     206:	62 2b       	neg	r2,r2
     208:	25 26       	mov.l	r2,@-r5
     20a:	6d db       	neg	r13,r13
     20c:	25 d6       	mov.l	r13,@-r5
     20e:	64 96       	mov.l	@r9+,r4
     210:	62 75       	mov.w	@r7+,r2
     212:	44 2b       	jmp	@r4
     214:	42 08       	shll2	r2

00000216 <ptpl_lp_22>:
     216:	a0 15       	bra	244 <ptpl_lp_29>
     218:	77 06       	add	#6,r7
	...

0000021c <IMM_ComRdPtr>:
     21c:	26 0f       	muls.w	r0,r6
     21e:	fc 44       	fcmp/eq	fr4,fr12

00000220 <IMM_FRT_INTR>:
     220:	21 00       	mov.b	r0,@r1
	...

00000224 <ptpl_lp_26>:
     224:	85 81       	mov.w	@(2,r8),r0
     226:	55 f5       	mov.l	@(20,r15),r5
     228:	40 08       	shll2	r0
     22a:	30 0c       	add	r0,r0
     22c:	00 5e       	mov.l	@(r0,r5),r0
     22e:	1b 02       	mov.l	r0,@(8,r11)

00000230 <ptpl_lp_27>:
     230:	85 84       	mov.w	@(8,r8),r0
     232:	55 81       	mov.l	@(4,r8),r5
     234:	81 be       	mov.w	r0,@(28,r11)
     236:	1b 51       	mov.l	r5,@(4,r11)

00000238 <ptpl_lp_28>:
     238:	60 e3       	mov	r14,r0
     23a:	81 bf       	mov.w	r0,@(30,r11)
     23c:	50 f6       	mov.l	@(24,r15),r0
     23e:	7b dc       	add	#-36,r11
     240:	70 01       	add	#1,r0
     242:	1f 06       	mov.l	r0,@(24,r15)

00000244 <ptpl_lp_29>:
     244:	50 f4       	mov.l	@(16,r15),r0
     246:	78 0c       	add	#12,r8
     248:	40 10       	dt	r0
     24a:	8f 9c       	bf.s	186 <ptpl_lp_20>
     24c:	1f 04       	mov.l	r0,@(16,r15)
     24e:	60 b3       	mov	r11,r0
     250:	c2 0c       	mov.l	r0,@(48,gbr)
     252:	7f 18       	add	#24,r15
     254:	61 f6       	mov.l	@r15+,r1
     256:	62 f6       	mov.l	@r15+,r2
     258:	c6 12       	mov.l	@(72,gbr),r0
     25a:	10 12       	mov.l	r1,@(8,r0)
     25c:	e1 28       	mov	#40,r1
     25e:	10 10       	mov.l	r1,@(0,r0)
     260:	70 10       	add	#16,r0
     262:	d1 07       	mov.l	280 <IMM_FRT_INTR_2>,r1	! 21000000
     264:	c2 12       	mov.l	r0,@(72,gbr)
     266:	21 01       	mov.w	r0,@r1
     268:	60 23       	mov	r2,r0
     26a:	c2 1d       	mov.l	r0,@(116,gbr)

0000026c <ptpl_lp_30>:
     26c:	e0 01       	mov	#1,r0
     26e:	69 f6       	mov.l	@r15+,r9
     270:	4f 26       	lds.l	@r15+,pr
     272:	6a f6       	mov.l	@r15+,r10
     274:	6b f6       	mov.l	@r15+,r11
     276:	6c f6       	mov.l	@r15+,r12
     278:	6d f6       	mov.l	@r15+,r13
     27a:	6e f6       	mov.l	@r15+,r14
     27c:	00 0b       	rts	
     27e:	68 f6       	mov.l	@r15+,r8

00000280 <IMM_FRT_INTR_2>:
     280:	21 00       	mov.b	r0,@r1
	...

00000284 <MsSBase_tbl>:
     284:	00 00       	.word 0x0000
     286:	10 6c       	mov.l	r6,@(48,r0)
     288:	00 00       	.word 0x0000
     28a:	02 44       	mov.b	r4,@(r0,r2)
     28c:	00 00       	.word 0x0000
     28e:	00 00       	.word 0x0000
     290:	00 00       	.word 0x0000
     292:	02 38       	.word 0x0238
     294:	00 00       	.word 0x0000
     296:	0f a4       	mov.b	r10,@(r0,r15)
     298:	00 00       	.word 0x0000
     29a:	02 44       	mov.b	r4,@(r0,r2)
     29c:	00 00       	.word 0x0000
     29e:	00 00       	.word 0x0000
     2a0:	00 00       	.word 0x0000
     2a2:	02 38       	.word 0x0238
     2a4:	00 00       	.word 0x0000
     2a6:	10 28       	mov.l	r2,@(32,r0)
     2a8:	00 00       	.word 0x0000
     2aa:	02 44       	mov.b	r4,@(r0,r2)
     2ac:	00 00       	.word 0x0000
     2ae:	00 00       	.word 0x0000
     2b0:	00 00       	.word 0x0000
     2b2:	02 38       	.word 0x0238
     2b4:	00 00       	.word 0x0000
     2b6:	0f e8       	.word 0x0fe8
     2b8:	00 00       	.word 0x0000
     2ba:	02 44       	mov.b	r4,@(r0,r2)
     2bc:	00 00       	.word 0x0000
     2be:	00 00       	.word 0x0000
     2c0:	00 00       	.word 0x0000
     2c2:	02 38       	.word 0x0238
     2c4:	00 00       	.word 0x0000
     2c6:	10 6c       	mov.l	r6,@(48,r0)
     2c8:	00 00       	.word 0x0000
     2ca:	02 44       	mov.b	r4,@(r0,r2)
     2cc:	00 00       	.word 0x0000
     2ce:	00 00       	.word 0x0000
     2d0:	00 00       	.word 0x0000
     2d2:	02 38       	.word 0x0238
     2d4:	00 00       	.word 0x0000
     2d6:	0f a4       	mov.b	r10,@(r0,r15)
     2d8:	00 00       	.word 0x0000
     2da:	02 44       	mov.b	r4,@(r0,r2)
     2dc:	00 00       	.word 0x0000
     2de:	00 00       	.word 0x0000
     2e0:	00 00       	.word 0x0000
     2e2:	02 38       	.word 0x0238
     2e4:	00 00       	.word 0x0000
     2e6:	10 28       	mov.l	r2,@(32,r0)
     2e8:	00 00       	.word 0x0000
     2ea:	02 44       	mov.b	r4,@(r0,r2)
     2ec:	00 00       	.word 0x0000
     2ee:	00 00       	.word 0x0000
     2f0:	00 00       	.word 0x0000
     2f2:	02 38       	.word 0x0238
     2f4:	00 00       	.word 0x0000
     2f6:	0f e8       	.word 0x0fe8
     2f8:	00 00       	.word 0x0000
     2fa:	02 44       	mov.b	r4,@(r0,r2)
     2fc:	00 00       	.word 0x0000
     2fe:	00 00       	.word 0x0000
     300:	00 00       	.word 0x0000
     302:	02 38       	.word 0x0238
     304:	00 00       	.word 0x0000
     306:	10 6c       	mov.l	r6,@(48,r0)
     308:	00 00       	.word 0x0000
     30a:	02 44       	mov.b	r4,@(r0,r2)
     30c:	00 00       	.word 0x0000
     30e:	00 00       	.word 0x0000
     310:	00 00       	.word 0x0000
     312:	0a 84       	mov.b	r8,@(r0,r10)
     314:	00 00       	.word 0x0000
     316:	0f a4       	mov.b	r10,@(r0,r15)
     318:	00 00       	.word 0x0000
     31a:	02 44       	mov.b	r4,@(r0,r2)
     31c:	00 00       	.word 0x0000
     31e:	00 00       	.word 0x0000
     320:	00 00       	.word 0x0000
     322:	0a 84       	mov.b	r8,@(r0,r10)
     324:	00 00       	.word 0x0000
     326:	10 28       	mov.l	r2,@(32,r0)
     328:	00 00       	.word 0x0000
     32a:	02 44       	mov.b	r4,@(r0,r2)
     32c:	00 00       	.word 0x0000
     32e:	00 00       	.word 0x0000
     330:	00 00       	.word 0x0000
     332:	0a 84       	mov.b	r8,@(r0,r10)
     334:	00 00       	.word 0x0000
     336:	0f e8       	.word 0x0fe8
     338:	00 00       	.word 0x0000
     33a:	02 44       	mov.b	r4,@(r0,r2)
     33c:	00 00       	.word 0x0000
     33e:	00 00       	.word 0x0000
     340:	00 00       	.word 0x0000
     342:	0a 84       	mov.b	r8,@(r0,r10)
     344:	00 00       	.word 0x0000
     346:	10 6c       	mov.l	r6,@(48,r0)
     348:	00 00       	.word 0x0000
     34a:	02 44       	mov.b	r4,@(r0,r2)
     34c:	00 00       	.word 0x0000
     34e:	00 00       	.word 0x0000
     350:	00 00       	.word 0x0000
     352:	0b 3a       	stc	sgr,r11
     354:	00 00       	.word 0x0000
     356:	0f a4       	mov.b	r10,@(r0,r15)
     358:	00 00       	.word 0x0000
     35a:	02 44       	mov.b	r4,@(r0,r2)
     35c:	00 00       	.word 0x0000
     35e:	00 00       	.word 0x0000
     360:	00 00       	.word 0x0000
     362:	0b 3a       	stc	sgr,r11
     364:	00 00       	.word 0x0000
     366:	10 28       	mov.l	r2,@(32,r0)
     368:	00 00       	.word 0x0000
     36a:	02 44       	mov.b	r4,@(r0,r2)
     36c:	00 00       	.word 0x0000
     36e:	00 00       	.word 0x0000
     370:	00 00       	.word 0x0000
     372:	0b 3a       	stc	sgr,r11
     374:	00 00       	.word 0x0000
     376:	0f e8       	.word 0x0fe8
     378:	00 00       	.word 0x0000
     37a:	02 44       	mov.b	r4,@(r0,r2)
     37c:	00 00       	.word 0x0000
     37e:	00 00       	.word 0x0000
     380:	00 00       	.word 0x0000
     382:	0b 3a       	stc	sgr,r11
     384:	00 00       	.word 0x0000
     386:	10 6c       	mov.l	r6,@(48,r0)
     388:	00 00       	.word 0x0000
     38a:	02 44       	mov.b	r4,@(r0,r2)
     38c:	00 00       	.word 0x0000
     38e:	0c 7c       	mov.b	@(r0,r7),r12
     390:	00 00       	.word 0x0000
     392:	02 30       	.word 0x0230
     394:	00 00       	.word 0x0000
     396:	0f a4       	mov.b	r10,@(r0,r15)
     398:	00 00       	.word 0x0000
     39a:	02 44       	mov.b	r4,@(r0,r2)
     39c:	00 00       	.word 0x0000
     39e:	0c 7c       	mov.b	@(r0,r7),r12
     3a0:	00 00       	.word 0x0000
     3a2:	02 30       	.word 0x0230
     3a4:	00 00       	.word 0x0000
     3a6:	10 28       	mov.l	r2,@(32,r0)
     3a8:	00 00       	.word 0x0000
     3aa:	02 44       	mov.b	r4,@(r0,r2)
     3ac:	00 00       	.word 0x0000
     3ae:	0c 7c       	mov.b	@(r0,r7),r12
     3b0:	00 00       	.word 0x0000
     3b2:	02 30       	.word 0x0230
     3b4:	00 00       	.word 0x0000
     3b6:	0f e8       	.word 0x0fe8
     3b8:	00 00       	.word 0x0000
     3ba:	02 44       	mov.b	r4,@(r0,r2)
     3bc:	00 00       	.word 0x0000
     3be:	0c 7c       	mov.b	@(r0,r7),r12
     3c0:	00 00       	.word 0x0000
     3c2:	02 30       	.word 0x0230
     3c4:	00 00       	.word 0x0000
     3c6:	10 6c       	mov.l	r6,@(48,r0)
     3c8:	00 00       	.word 0x0000
     3ca:	02 44       	mov.b	r4,@(r0,r2)
     3cc:	00 00       	.word 0x0000
     3ce:	0c 7c       	mov.b	@(r0,r7),r12
     3d0:	00 00       	.word 0x0000
     3d2:	02 24       	mov.b	r2,@(r0,r2)
     3d4:	00 00       	.word 0x0000
     3d6:	0f a4       	mov.b	r10,@(r0,r15)
     3d8:	00 00       	.word 0x0000
     3da:	02 44       	mov.b	r4,@(r0,r2)
     3dc:	00 00       	.word 0x0000
     3de:	0c 7c       	mov.b	@(r0,r7),r12
     3e0:	00 00       	.word 0x0000
     3e2:	02 24       	mov.b	r2,@(r0,r2)
     3e4:	00 00       	.word 0x0000
     3e6:	10 28       	mov.l	r2,@(32,r0)
     3e8:	00 00       	.word 0x0000
     3ea:	02 44       	mov.b	r4,@(r0,r2)
     3ec:	00 00       	.word 0x0000
     3ee:	0c 7c       	mov.b	@(r0,r7),r12
     3f0:	00 00       	.word 0x0000
     3f2:	02 24       	mov.b	r2,@(r0,r2)
     3f4:	00 00       	.word 0x0000
     3f6:	0f e8       	.word 0x0fe8
     3f8:	00 00       	.word 0x0000
     3fa:	02 44       	mov.b	r4,@(r0,r2)
     3fc:	00 00       	.word 0x0000
     3fe:	0c 7c       	mov.b	@(r0,r7),r12
     400:	00 00       	.word 0x0000
     402:	02 24       	mov.b	r2,@(r0,r2)
     404:	00 00       	.word 0x0000
     406:	10 6c       	mov.l	r6,@(48,r0)
     408:	00 00       	.word 0x0000
     40a:	02 44       	mov.b	r4,@(r0,r2)
     40c:	00 00       	.word 0x0000
     40e:	0c 7c       	mov.b	@(r0,r7),r12
     410:	00 00       	.word 0x0000
     412:	0a 84       	mov.b	r8,@(r0,r10)
     414:	00 00       	.word 0x0000
     416:	0f a4       	mov.b	r10,@(r0,r15)
     418:	00 00       	.word 0x0000
     41a:	02 44       	mov.b	r4,@(r0,r2)
     41c:	00 00       	.word 0x0000
     41e:	0c 7c       	mov.b	@(r0,r7),r12
     420:	00 00       	.word 0x0000
     422:	0a 84       	mov.b	r8,@(r0,r10)
     424:	00 00       	.word 0x0000
     426:	10 28       	mov.l	r2,@(32,r0)
     428:	00 00       	.word 0x0000
     42a:	02 44       	mov.b	r4,@(r0,r2)
     42c:	00 00       	.word 0x0000
     42e:	0c 7c       	mov.b	@(r0,r7),r12
     430:	00 00       	.word 0x0000
     432:	0a 84       	mov.b	r8,@(r0,r10)
     434:	00 00       	.word 0x0000
     436:	0f e8       	.word 0x0fe8
     438:	00 00       	.word 0x0000
     43a:	02 44       	mov.b	r4,@(r0,r2)
     43c:	00 00       	.word 0x0000
     43e:	0c 7c       	mov.b	@(r0,r7),r12
     440:	00 00       	.word 0x0000
     442:	0a 84       	mov.b	r8,@(r0,r10)
     444:	00 00       	.word 0x0000
     446:	10 6c       	mov.l	r6,@(48,r0)
     448:	00 00       	.word 0x0000
     44a:	02 44       	mov.b	r4,@(r0,r2)
     44c:	00 00       	.word 0x0000
     44e:	0c 7c       	mov.b	@(r0,r7),r12
     450:	00 00       	.word 0x0000
     452:	0b 3a       	stc	sgr,r11
     454:	00 00       	.word 0x0000
     456:	0f a4       	mov.b	r10,@(r0,r15)
     458:	00 00       	.word 0x0000
     45a:	02 44       	mov.b	r4,@(r0,r2)
     45c:	00 00       	.word 0x0000
     45e:	0c 7c       	mov.b	@(r0,r7),r12
     460:	00 00       	.word 0x0000
     462:	0b 3a       	stc	sgr,r11
     464:	00 00       	.word 0x0000
     466:	10 28       	mov.l	r2,@(32,r0)
     468:	00 00       	.word 0x0000
     46a:	02 44       	mov.b	r4,@(r0,r2)
     46c:	00 00       	.word 0x0000
     46e:	0c 7c       	mov.b	@(r0,r7),r12
     470:	00 00       	.word 0x0000
     472:	0b 3a       	stc	sgr,r11
     474:	00 00       	.word 0x0000
     476:	0f e8       	.word 0x0fe8
     478:	00 00       	.word 0x0000
     47a:	02 44       	mov.b	r4,@(r0,r2)
     47c:	00 00       	.word 0x0000
     47e:	0c 7c       	mov.b	@(r0,r7),r12
     480:	00 00       	.word 0x0000
     482:	0b 3a       	stc	sgr,r11
     484:	00 00       	.word 0x0000
     486:	10 6c       	mov.l	r6,@(48,r0)
     488:	00 00       	.word 0x0000
     48a:	02 44       	mov.b	r4,@(r0,r2)
     48c:	00 00       	.word 0x0000
     48e:	00 00       	.word 0x0000
     490:	00 00       	.word 0x0000
     492:	02 38       	.word 0x0238
     494:	00 00       	.word 0x0000
     496:	0f a4       	mov.b	r10,@(r0,r15)
     498:	00 00       	.word 0x0000
     49a:	02 44       	mov.b	r4,@(r0,r2)
     49c:	00 00       	.word 0x0000
     49e:	00 00       	.word 0x0000
     4a0:	00 00       	.word 0x0000
     4a2:	02 38       	.word 0x0238
     4a4:	00 00       	.word 0x0000
     4a6:	10 28       	mov.l	r2,@(32,r0)
     4a8:	00 00       	.word 0x0000
     4aa:	02 44       	mov.b	r4,@(r0,r2)
     4ac:	00 00       	.word 0x0000
     4ae:	00 00       	.word 0x0000
     4b0:	00 00       	.word 0x0000
     4b2:	02 38       	.word 0x0238
     4b4:	00 00       	.word 0x0000
     4b6:	0f e8       	.word 0x0fe8
     4b8:	00 00       	.word 0x0000
     4ba:	02 44       	mov.b	r4,@(r0,r2)
     4bc:	00 00       	.word 0x0000
     4be:	00 00       	.word 0x0000
     4c0:	00 00       	.word 0x0000
     4c2:	02 38       	.word 0x0238
     4c4:	00 00       	.word 0x0000
     4c6:	10 6c       	mov.l	r6,@(48,r0)
     4c8:	00 00       	.word 0x0000
     4ca:	02 44       	mov.b	r4,@(r0,r2)
     4cc:	00 00       	.word 0x0000
     4ce:	00 00       	.word 0x0000
     4d0:	00 00       	.word 0x0000
     4d2:	02 38       	.word 0x0238
     4d4:	00 00       	.word 0x0000
     4d6:	0f a4       	mov.b	r10,@(r0,r15)
     4d8:	00 00       	.word 0x0000
     4da:	02 44       	mov.b	r4,@(r0,r2)
     4dc:	00 00       	.word 0x0000
     4de:	00 00       	.word 0x0000
     4e0:	00 00       	.word 0x0000
     4e2:	02 38       	.word 0x0238
     4e4:	00 00       	.word 0x0000
     4e6:	10 28       	mov.l	r2,@(32,r0)
     4e8:	00 00       	.word 0x0000
     4ea:	02 44       	mov.b	r4,@(r0,r2)
     4ec:	00 00       	.word 0x0000
     4ee:	00 00       	.word 0x0000
     4f0:	00 00       	.word 0x0000
     4f2:	02 38       	.word 0x0238
     4f4:	00 00       	.word 0x0000
     4f6:	0f e8       	.word 0x0fe8
     4f8:	00 00       	.word 0x0000
     4fa:	02 44       	mov.b	r4,@(r0,r2)
     4fc:	00 00       	.word 0x0000
     4fe:	00 00       	.word 0x0000
     500:	00 00       	.word 0x0000
     502:	02 38       	.word 0x0238
     504:	00 00       	.word 0x0000
     506:	10 6c       	mov.l	r6,@(48,r0)
     508:	00 00       	.word 0x0000
     50a:	02 44       	mov.b	r4,@(r0,r2)
     50c:	00 00       	.word 0x0000
     50e:	00 00       	.word 0x0000
     510:	00 00       	.word 0x0000
     512:	0b 02       	stc	sr,r11
     514:	00 00       	.word 0x0000
     516:	0f a4       	mov.b	r10,@(r0,r15)
     518:	00 00       	.word 0x0000
     51a:	02 44       	mov.b	r4,@(r0,r2)
     51c:	00 00       	.word 0x0000
     51e:	00 00       	.word 0x0000
     520:	00 00       	.word 0x0000
     522:	0b 02       	stc	sr,r11
     524:	00 00       	.word 0x0000
     526:	10 28       	mov.l	r2,@(32,r0)
     528:	00 00       	.word 0x0000
     52a:	02 44       	mov.b	r4,@(r0,r2)
     52c:	00 00       	.word 0x0000
     52e:	00 00       	.word 0x0000
     530:	00 00       	.word 0x0000
     532:	0b 02       	stc	sr,r11
     534:	00 00       	.word 0x0000
     536:	0f e8       	.word 0x0fe8
     538:	00 00       	.word 0x0000
     53a:	02 44       	mov.b	r4,@(r0,r2)
     53c:	00 00       	.word 0x0000
     53e:	00 00       	.word 0x0000
     540:	00 00       	.word 0x0000
     542:	0b 02       	stc	sr,r11
     544:	00 00       	.word 0x0000
     546:	10 6c       	mov.l	r6,@(48,r0)
     548:	00 00       	.word 0x0000
     54a:	02 44       	mov.b	r4,@(r0,r2)
     54c:	00 00       	.word 0x0000
     54e:	00 00       	.word 0x0000
     550:	00 00       	.word 0x0000
     552:	02 38       	.word 0x0238
     554:	00 00       	.word 0x0000
     556:	0f a4       	mov.b	r10,@(r0,r15)
     558:	00 00       	.word 0x0000
     55a:	02 44       	mov.b	r4,@(r0,r2)
     55c:	00 00       	.word 0x0000
     55e:	00 00       	.word 0x0000
     560:	00 00       	.word 0x0000
     562:	02 38       	.word 0x0238
     564:	00 00       	.word 0x0000
     566:	10 28       	mov.l	r2,@(32,r0)
     568:	00 00       	.word 0x0000
     56a:	02 44       	mov.b	r4,@(r0,r2)
     56c:	00 00       	.word 0x0000
     56e:	00 00       	.word 0x0000
     570:	00 00       	.word 0x0000
     572:	02 38       	.word 0x0238
     574:	00 00       	.word 0x0000
     576:	0f e8       	.word 0x0fe8
     578:	00 00       	.word 0x0000
     57a:	02 44       	mov.b	r4,@(r0,r2)
     57c:	00 00       	.word 0x0000
     57e:	00 00       	.word 0x0000
     580:	00 00       	.word 0x0000
     582:	02 38       	.word 0x0238
     584:	00 00       	.word 0x0000
     586:	10 6c       	mov.l	r6,@(48,r0)
     588:	00 00       	.word 0x0000
     58a:	02 44       	mov.b	r4,@(r0,r2)
     58c:	00 00       	.word 0x0000
     58e:	0c 7c       	mov.b	@(r0,r7),r12
     590:	00 00       	.word 0x0000
     592:	02 30       	.word 0x0230
     594:	00 00       	.word 0x0000
     596:	0f a4       	mov.b	r10,@(r0,r15)
     598:	00 00       	.word 0x0000
     59a:	02 44       	mov.b	r4,@(r0,r2)
     59c:	00 00       	.word 0x0000
     59e:	0c 7c       	mov.b	@(r0,r7),r12
     5a0:	00 00       	.word 0x0000
     5a2:	02 30       	.word 0x0230
     5a4:	00 00       	.word 0x0000
     5a6:	10 28       	mov.l	r2,@(32,r0)
     5a8:	00 00       	.word 0x0000
     5aa:	02 44       	mov.b	r4,@(r0,r2)
     5ac:	00 00       	.word 0x0000
     5ae:	0c 7c       	mov.b	@(r0,r7),r12
     5b0:	00 00       	.word 0x0000
     5b2:	02 30       	.word 0x0230
     5b4:	00 00       	.word 0x0000
     5b6:	0f e8       	.word 0x0fe8
     5b8:	00 00       	.word 0x0000
     5ba:	02 44       	mov.b	r4,@(r0,r2)
     5bc:	00 00       	.word 0x0000
     5be:	0c 7c       	mov.b	@(r0,r7),r12
     5c0:	00 00       	.word 0x0000
     5c2:	02 30       	.word 0x0230
     5c4:	00 00       	.word 0x0000
     5c6:	10 6c       	mov.l	r6,@(48,r0)
     5c8:	00 00       	.word 0x0000
     5ca:	02 44       	mov.b	r4,@(r0,r2)
     5cc:	00 00       	.word 0x0000
     5ce:	0c 7c       	mov.b	@(r0,r7),r12
     5d0:	00 00       	.word 0x0000
     5d2:	02 24       	mov.b	r2,@(r0,r2)
     5d4:	00 00       	.word 0x0000
     5d6:	0f a4       	mov.b	r10,@(r0,r15)
     5d8:	00 00       	.word 0x0000
     5da:	02 44       	mov.b	r4,@(r0,r2)
     5dc:	00 00       	.word 0x0000
     5de:	0c 7c       	mov.b	@(r0,r7),r12
     5e0:	00 00       	.word 0x0000
     5e2:	02 24       	mov.b	r2,@(r0,r2)
     5e4:	00 00       	.word 0x0000
     5e6:	10 28       	mov.l	r2,@(32,r0)
     5e8:	00 00       	.word 0x0000
     5ea:	02 44       	mov.b	r4,@(r0,r2)
     5ec:	00 00       	.word 0x0000
     5ee:	0c 7c       	mov.b	@(r0,r7),r12
     5f0:	00 00       	.word 0x0000
     5f2:	02 24       	mov.b	r2,@(r0,r2)
     5f4:	00 00       	.word 0x0000
     5f6:	0f e8       	.word 0x0fe8
     5f8:	00 00       	.word 0x0000
     5fa:	02 44       	mov.b	r4,@(r0,r2)
     5fc:	00 00       	.word 0x0000
     5fe:	0c 7c       	mov.b	@(r0,r7),r12
     600:	00 00       	.word 0x0000
     602:	02 24       	mov.b	r2,@(r0,r2)
     604:	00 00       	.word 0x0000
     606:	10 6c       	mov.l	r6,@(48,r0)
     608:	00 00       	.word 0x0000
     60a:	02 44       	mov.b	r4,@(r0,r2)
     60c:	00 00       	.word 0x0000
     60e:	0c 7c       	mov.b	@(r0,r7),r12
     610:	00 00       	.word 0x0000
     612:	0b 02       	stc	sr,r11
     614:	00 00       	.word 0x0000
     616:	0f a4       	mov.b	r10,@(r0,r15)
     618:	00 00       	.word 0x0000
     61a:	02 44       	mov.b	r4,@(r0,r2)
     61c:	00 00       	.word 0x0000
     61e:	0c 7c       	mov.b	@(r0,r7),r12
     620:	00 00       	.word 0x0000
     622:	0b 02       	stc	sr,r11
     624:	00 00       	.word 0x0000
     626:	10 28       	mov.l	r2,@(32,r0)
     628:	00 00       	.word 0x0000
     62a:	02 44       	mov.b	r4,@(r0,r2)
     62c:	00 00       	.word 0x0000
     62e:	0c 7c       	mov.b	@(r0,r7),r12
     630:	00 00       	.word 0x0000
     632:	0b 02       	stc	sr,r11
     634:	00 00       	.word 0x0000
     636:	0f e8       	.word 0x0fe8
     638:	00 00       	.word 0x0000
     63a:	02 44       	mov.b	r4,@(r0,r2)
     63c:	00 00       	.word 0x0000
     63e:	0c 7c       	mov.b	@(r0,r7),r12
     640:	00 00       	.word 0x0000
     642:	0b 02       	stc	sr,r11
     644:	00 00       	.word 0x0000
     646:	10 6c       	mov.l	r6,@(48,r0)
     648:	00 00       	.word 0x0000
     64a:	02 44       	mov.b	r4,@(r0,r2)
     64c:	00 00       	.word 0x0000
     64e:	0c 7c       	mov.b	@(r0,r7),r12
     650:	00 00       	.word 0x0000
     652:	02 24       	mov.b	r2,@(r0,r2)
     654:	00 00       	.word 0x0000
     656:	0f a4       	mov.b	r10,@(r0,r15)
     658:	00 00       	.word 0x0000
     65a:	02 44       	mov.b	r4,@(r0,r2)
     65c:	00 00       	.word 0x0000
     65e:	0c 7c       	mov.b	@(r0,r7),r12
     660:	00 00       	.word 0x0000
     662:	02 24       	mov.b	r2,@(r0,r2)
     664:	00 00       	.word 0x0000
     666:	10 28       	mov.l	r2,@(32,r0)
     668:	00 00       	.word 0x0000
     66a:	02 44       	mov.b	r4,@(r0,r2)
     66c:	00 00       	.word 0x0000
     66e:	0c 7c       	mov.b	@(r0,r7),r12
     670:	00 00       	.word 0x0000
     672:	02 24       	mov.b	r2,@(r0,r2)
     674:	00 00       	.word 0x0000
     676:	0f e8       	.word 0x0fe8
     678:	00 00       	.word 0x0000
     67a:	02 44       	mov.b	r4,@(r0,r2)
     67c:	00 00       	.word 0x0000
     67e:	0c 7c       	mov.b	@(r0,r7),r12
     680:	00 00       	.word 0x0000
     682:	02 24       	mov.b	r2,@(r0,r2)
     684:	00 00       	.word 0x0000
     686:	11 70       	mov.l	r7,@(0,r1)
     688:	00 00       	.word 0x0000
     68a:	02 44       	mov.b	r4,@(r0,r2)
     68c:	00 00       	.word 0x0000
     68e:	00 00       	.word 0x0000
     690:	00 00       	.word 0x0000
     692:	02 38       	.word 0x0238
     694:	00 00       	.word 0x0000
     696:	10 94       	mov.l	r9,@(16,r0)
     698:	00 00       	.word 0x0000
     69a:	02 44       	mov.b	r4,@(r0,r2)
     69c:	00 00       	.word 0x0000
     69e:	00 00       	.word 0x0000
     6a0:	00 00       	.word 0x0000
     6a2:	02 38       	.word 0x0238
     6a4:	00 00       	.word 0x0000
     6a6:	11 24       	mov.l	r2,@(16,r1)
     6a8:	00 00       	.word 0x0000
     6aa:	02 44       	mov.b	r4,@(r0,r2)
     6ac:	00 00       	.word 0x0000
     6ae:	00 00       	.word 0x0000
     6b0:	00 00       	.word 0x0000
     6b2:	02 38       	.word 0x0238
     6b4:	00 00       	.word 0x0000
     6b6:	10 e0       	mov.l	r14,@(0,r0)
     6b8:	00 00       	.word 0x0000
     6ba:	02 44       	mov.b	r4,@(r0,r2)
     6bc:	00 00       	.word 0x0000
     6be:	00 00       	.word 0x0000
     6c0:	00 00       	.word 0x0000
     6c2:	02 38       	.word 0x0238
     6c4:	00 00       	.word 0x0000
     6c6:	11 70       	mov.l	r7,@(0,r1)
     6c8:	00 00       	.word 0x0000
     6ca:	02 44       	mov.b	r4,@(r0,r2)
     6cc:	00 00       	.word 0x0000
     6ce:	00 00       	.word 0x0000
     6d0:	00 00       	.word 0x0000
     6d2:	02 38       	.word 0x0238
     6d4:	00 00       	.word 0x0000
     6d6:	10 94       	mov.l	r9,@(16,r0)
     6d8:	00 00       	.word 0x0000
     6da:	02 44       	mov.b	r4,@(r0,r2)
     6dc:	00 00       	.word 0x0000
     6de:	00 00       	.word 0x0000
     6e0:	00 00       	.word 0x0000
     6e2:	02 38       	.word 0x0238
     6e4:	00 00       	.word 0x0000
     6e6:	11 24       	mov.l	r2,@(16,r1)
     6e8:	00 00       	.word 0x0000
     6ea:	02 44       	mov.b	r4,@(r0,r2)
     6ec:	00 00       	.word 0x0000
     6ee:	00 00       	.word 0x0000
     6f0:	00 00       	.word 0x0000
     6f2:	02 38       	.word 0x0238
     6f4:	00 00       	.word 0x0000
     6f6:	10 e0       	mov.l	r14,@(0,r0)
     6f8:	00 00       	.word 0x0000
     6fa:	02 44       	mov.b	r4,@(r0,r2)
     6fc:	00 00       	.word 0x0000
     6fe:	00 00       	.word 0x0000
     700:	00 00       	.word 0x0000
     702:	02 38       	.word 0x0238
     704:	00 00       	.word 0x0000
     706:	11 70       	mov.l	r7,@(0,r1)
     708:	00 00       	.word 0x0000
     70a:	02 44       	mov.b	r4,@(r0,r2)
     70c:	00 00       	.word 0x0000
     70e:	00 00       	.word 0x0000
     710:	00 00       	.word 0x0000
     712:	0a 84       	mov.b	r8,@(r0,r10)
     714:	00 00       	.word 0x0000
     716:	10 94       	mov.l	r9,@(16,r0)
     718:	00 00       	.word 0x0000
     71a:	02 44       	mov.b	r4,@(r0,r2)
     71c:	00 00       	.word 0x0000
     71e:	00 00       	.word 0x0000
     720:	00 00       	.word 0x0000
     722:	0a 84       	mov.b	r8,@(r0,r10)
     724:	00 00       	.word 0x0000
     726:	11 24       	mov.l	r2,@(16,r1)
     728:	00 00       	.word 0x0000
     72a:	02 44       	mov.b	r4,@(r0,r2)
     72c:	00 00       	.word 0x0000
     72e:	00 00       	.word 0x0000
     730:	00 00       	.word 0x0000
     732:	0a 84       	mov.b	r8,@(r0,r10)
     734:	00 00       	.word 0x0000
     736:	10 e0       	mov.l	r14,@(0,r0)
     738:	00 00       	.word 0x0000
     73a:	02 44       	mov.b	r4,@(r0,r2)
     73c:	00 00       	.word 0x0000
     73e:	00 00       	.word 0x0000
     740:	00 00       	.word 0x0000
     742:	0a 84       	mov.b	r8,@(r0,r10)
     744:	00 00       	.word 0x0000
     746:	11 70       	mov.l	r7,@(0,r1)
     748:	00 00       	.word 0x0000
     74a:	02 44       	mov.b	r4,@(r0,r2)
     74c:	00 00       	.word 0x0000
     74e:	00 00       	.word 0x0000
     750:	00 00       	.word 0x0000
     752:	0b 3a       	stc	sgr,r11
     754:	00 00       	.word 0x0000
     756:	10 94       	mov.l	r9,@(16,r0)
     758:	00 00       	.word 0x0000
     75a:	02 44       	mov.b	r4,@(r0,r2)
     75c:	00 00       	.word 0x0000
     75e:	00 00       	.word 0x0000
     760:	00 00       	.word 0x0000
     762:	0b 3a       	stc	sgr,r11
     764:	00 00       	.word 0x0000
     766:	11 24       	mov.l	r2,@(16,r1)
     768:	00 00       	.word 0x0000
     76a:	02 44       	mov.b	r4,@(r0,r2)
     76c:	00 00       	.word 0x0000
     76e:	00 00       	.word 0x0000
     770:	00 00       	.word 0x0000
     772:	0b 3a       	stc	sgr,r11
     774:	00 00       	.word 0x0000
     776:	10 e0       	mov.l	r14,@(0,r0)
     778:	00 00       	.word 0x0000
     77a:	02 44       	mov.b	r4,@(r0,r2)
     77c:	00 00       	.word 0x0000
     77e:	00 00       	.word 0x0000
     780:	00 00       	.word 0x0000
     782:	0b 3a       	stc	sgr,r11
     784:	00 00       	.word 0x0000
     786:	11 70       	mov.l	r7,@(0,r1)
     788:	00 00       	.word 0x0000
     78a:	02 44       	mov.b	r4,@(r0,r2)
     78c:	00 00       	.word 0x0000
     78e:	0c 7c       	mov.b	@(r0,r7),r12
     790:	00 00       	.word 0x0000
     792:	02 30       	.word 0x0230
     794:	00 00       	.word 0x0000
     796:	10 94       	mov.l	r9,@(16,r0)
     798:	00 00       	.word 0x0000
     79a:	02 44       	mov.b	r4,@(r0,r2)
     79c:	00 00       	.word 0x0000
     79e:	0c 7c       	mov.b	@(r0,r7),r12
     7a0:	00 00       	.word 0x0000
     7a2:	02 30       	.word 0x0230
     7a4:	00 00       	.word 0x0000
     7a6:	11 24       	mov.l	r2,@(16,r1)
     7a8:	00 00       	.word 0x0000
     7aa:	02 44       	mov.b	r4,@(r0,r2)
     7ac:	00 00       	.word 0x0000
     7ae:	0c 7c       	mov.b	@(r0,r7),r12
     7b0:	00 00       	.word 0x0000
     7b2:	02 30       	.word 0x0230
     7b4:	00 00       	.word 0x0000
     7b6:	10 e0       	mov.l	r14,@(0,r0)
     7b8:	00 00       	.word 0x0000
     7ba:	02 44       	mov.b	r4,@(r0,r2)
     7bc:	00 00       	.word 0x0000
     7be:	0c 7c       	mov.b	@(r0,r7),r12
     7c0:	00 00       	.word 0x0000
     7c2:	02 30       	.word 0x0230
     7c4:	00 00       	.word 0x0000
     7c6:	11 70       	mov.l	r7,@(0,r1)
     7c8:	00 00       	.word 0x0000
     7ca:	02 44       	mov.b	r4,@(r0,r2)
     7cc:	00 00       	.word 0x0000
     7ce:	0c 7c       	mov.b	@(r0,r7),r12
     7d0:	00 00       	.word 0x0000
     7d2:	02 24       	mov.b	r2,@(r0,r2)
     7d4:	00 00       	.word 0x0000
     7d6:	10 94       	mov.l	r9,@(16,r0)
     7d8:	00 00       	.word 0x0000
     7da:	02 44       	mov.b	r4,@(r0,r2)
     7dc:	00 00       	.word 0x0000
     7de:	0c 7c       	mov.b	@(r0,r7),r12
     7e0:	00 00       	.word 0x0000
     7e2:	02 24       	mov.b	r2,@(r0,r2)
     7e4:	00 00       	.word 0x0000
     7e6:	11 24       	mov.l	r2,@(16,r1)
     7e8:	00 00       	.word 0x0000
     7ea:	02 44       	mov.b	r4,@(r0,r2)
     7ec:	00 00       	.word 0x0000
     7ee:	0c 7c       	mov.b	@(r0,r7),r12
     7f0:	00 00       	.word 0x0000
     7f2:	02 24       	mov.b	r2,@(r0,r2)
     7f4:	00 00       	.word 0x0000
     7f6:	10 e0       	mov.l	r14,@(0,r0)
     7f8:	00 00       	.word 0x0000
     7fa:	02 44       	mov.b	r4,@(r0,r2)
     7fc:	00 00       	.word 0x0000
     7fe:	0c 7c       	mov.b	@(r0,r7),r12
     800:	00 00       	.word 0x0000
     802:	02 24       	mov.b	r2,@(r0,r2)
     804:	00 00       	.word 0x0000
     806:	11 70       	mov.l	r7,@(0,r1)
     808:	00 00       	.word 0x0000
     80a:	02 44       	mov.b	r4,@(r0,r2)
     80c:	00 00       	.word 0x0000
     80e:	0c 7c       	mov.b	@(r0,r7),r12
     810:	00 00       	.word 0x0000
     812:	0a 84       	mov.b	r8,@(r0,r10)
     814:	00 00       	.word 0x0000
     816:	10 94       	mov.l	r9,@(16,r0)
     818:	00 00       	.word 0x0000
     81a:	02 44       	mov.b	r4,@(r0,r2)
     81c:	00 00       	.word 0x0000
     81e:	0c 7c       	mov.b	@(r0,r7),r12
     820:	00 00       	.word 0x0000
     822:	0a 84       	mov.b	r8,@(r0,r10)
     824:	00 00       	.word 0x0000
     826:	11 24       	mov.l	r2,@(16,r1)
     828:	00 00       	.word 0x0000
     82a:	02 44       	mov.b	r4,@(r0,r2)
     82c:	00 00       	.word 0x0000
     82e:	0c 7c       	mov.b	@(r0,r7),r12
     830:	00 00       	.word 0x0000
     832:	0a 84       	mov.b	r8,@(r0,r10)
     834:	00 00       	.word 0x0000
     836:	10 e0       	mov.l	r14,@(0,r0)
     838:	00 00       	.word 0x0000
     83a:	02 44       	mov.b	r4,@(r0,r2)
     83c:	00 00       	.word 0x0000
     83e:	0c 7c       	mov.b	@(r0,r7),r12
     840:	00 00       	.word 0x0000
     842:	0a 84       	mov.b	r8,@(r0,r10)
     844:	00 00       	.word 0x0000
     846:	11 70       	mov.l	r7,@(0,r1)
     848:	00 00       	.word 0x0000
     84a:	02 44       	mov.b	r4,@(r0,r2)
     84c:	00 00       	.word 0x0000
     84e:	0c 7c       	mov.b	@(r0,r7),r12
     850:	00 00       	.word 0x0000
     852:	0b 3a       	stc	sgr,r11
     854:	00 00       	.word 0x0000
     856:	10 94       	mov.l	r9,@(16,r0)
     858:	00 00       	.word 0x0000
     85a:	02 44       	mov.b	r4,@(r0,r2)
     85c:	00 00       	.word 0x0000
     85e:	0c 7c       	mov.b	@(r0,r7),r12
     860:	00 00       	.word 0x0000
     862:	0b 3a       	stc	sgr,r11
     864:	00 00       	.word 0x0000
     866:	11 24       	mov.l	r2,@(16,r1)
     868:	00 00       	.word 0x0000
     86a:	02 44       	mov.b	r4,@(r0,r2)
     86c:	00 00       	.word 0x0000
     86e:	0c 7c       	mov.b	@(r0,r7),r12
     870:	00 00       	.word 0x0000
     872:	0b 3a       	stc	sgr,r11
     874:	00 00       	.word 0x0000
     876:	10 e0       	mov.l	r14,@(0,r0)
     878:	00 00       	.word 0x0000
     87a:	02 44       	mov.b	r4,@(r0,r2)
     87c:	00 00       	.word 0x0000
     87e:	0c 7c       	mov.b	@(r0,r7),r12
     880:	00 00       	.word 0x0000
     882:	0b 3a       	stc	sgr,r11
     884:	00 00       	.word 0x0000
     886:	11 70       	mov.l	r7,@(0,r1)
     888:	00 00       	.word 0x0000
     88a:	02 44       	mov.b	r4,@(r0,r2)
     88c:	00 00       	.word 0x0000
     88e:	00 00       	.word 0x0000
     890:	00 00       	.word 0x0000
     892:	02 38       	.word 0x0238
     894:	00 00       	.word 0x0000
     896:	10 94       	mov.l	r9,@(16,r0)
     898:	00 00       	.word 0x0000
     89a:	02 44       	mov.b	r4,@(r0,r2)
     89c:	00 00       	.word 0x0000
     89e:	00 00       	.word 0x0000
     8a0:	00 00       	.word 0x0000
     8a2:	02 38       	.word 0x0238
     8a4:	00 00       	.word 0x0000
     8a6:	11 24       	mov.l	r2,@(16,r1)
     8a8:	00 00       	.word 0x0000
     8aa:	02 44       	mov.b	r4,@(r0,r2)
     8ac:	00 00       	.word 0x0000
     8ae:	00 00       	.word 0x0000
     8b0:	00 00       	.word 0x0000
     8b2:	02 38       	.word 0x0238
     8b4:	00 00       	.word 0x0000
     8b6:	10 e0       	mov.l	r14,@(0,r0)
     8b8:	00 00       	.word 0x0000
     8ba:	02 44       	mov.b	r4,@(r0,r2)
     8bc:	00 00       	.word 0x0000
     8be:	00 00       	.word 0x0000
     8c0:	00 00       	.word 0x0000
     8c2:	02 38       	.word 0x0238
     8c4:	00 00       	.word 0x0000
     8c6:	11 70       	mov.l	r7,@(0,r1)
     8c8:	00 00       	.word 0x0000
     8ca:	02 44       	mov.b	r4,@(r0,r2)
     8cc:	00 00       	.word 0x0000
     8ce:	00 00       	.word 0x0000
     8d0:	00 00       	.word 0x0000
     8d2:	02 38       	.word 0x0238
     8d4:	00 00       	.word 0x0000
     8d6:	10 94       	mov.l	r9,@(16,r0)
     8d8:	00 00       	.word 0x0000
     8da:	02 44       	mov.b	r4,@(r0,r2)
     8dc:	00 00       	.word 0x0000
     8de:	00 00       	.word 0x0000
     8e0:	00 00       	.word 0x0000
     8e2:	02 38       	.word 0x0238
     8e4:	00 00       	.word 0x0000
     8e6:	11 24       	mov.l	r2,@(16,r1)
     8e8:	00 00       	.word 0x0000
     8ea:	02 44       	mov.b	r4,@(r0,r2)
     8ec:	00 00       	.word 0x0000
     8ee:	00 00       	.word 0x0000
     8f0:	00 00       	.word 0x0000
     8f2:	02 38       	.word 0x0238
     8f4:	00 00       	.word 0x0000
     8f6:	10 e0       	mov.l	r14,@(0,r0)
     8f8:	00 00       	.word 0x0000
     8fa:	02 44       	mov.b	r4,@(r0,r2)
     8fc:	00 00       	.word 0x0000
     8fe:	00 00       	.word 0x0000
     900:	00 00       	.word 0x0000
     902:	02 38       	.word 0x0238
     904:	00 00       	.word 0x0000
     906:	11 70       	mov.l	r7,@(0,r1)
     908:	00 00       	.word 0x0000
     90a:	02 44       	mov.b	r4,@(r0,r2)
     90c:	00 00       	.word 0x0000
     90e:	00 00       	.word 0x0000
     910:	00 00       	.word 0x0000
     912:	0b 02       	stc	sr,r11
     914:	00 00       	.word 0x0000
     916:	10 94       	mov.l	r9,@(16,r0)
     918:	00 00       	.word 0x0000
     91a:	02 44       	mov.b	r4,@(r0,r2)
     91c:	00 00       	.word 0x0000
     91e:	00 00       	.word 0x0000
     920:	00 00       	.word 0x0000
     922:	0b 02       	stc	sr,r11
     924:	00 00       	.word 0x0000
     926:	11 24       	mov.l	r2,@(16,r1)
     928:	00 00       	.word 0x0000
     92a:	02 44       	mov.b	r4,@(r0,r2)
     92c:	00 00       	.word 0x0000
     92e:	00 00       	.word 0x0000
     930:	00 00       	.word 0x0000
     932:	0b 02       	stc	sr,r11
     934:	00 00       	.word 0x0000
     936:	10 e0       	mov.l	r14,@(0,r0)
     938:	00 00       	.word 0x0000
     93a:	02 44       	mov.b	r4,@(r0,r2)
     93c:	00 00       	.word 0x0000
     93e:	00 00       	.word 0x0000
     940:	00 00       	.word 0x0000
     942:	0b 02       	stc	sr,r11
     944:	00 00       	.word 0x0000
     946:	11 70       	mov.l	r7,@(0,r1)
     948:	00 00       	.word 0x0000
     94a:	02 44       	mov.b	r4,@(r0,r2)
     94c:	00 00       	.word 0x0000
     94e:	00 00       	.word 0x0000
     950:	00 00       	.word 0x0000
     952:	02 38       	.word 0x0238
     954:	00 00       	.word 0x0000
     956:	10 94       	mov.l	r9,@(16,r0)
     958:	00 00       	.word 0x0000
     95a:	02 44       	mov.b	r4,@(r0,r2)
     95c:	00 00       	.word 0x0000
     95e:	00 00       	.word 0x0000
     960:	00 00       	.word 0x0000
     962:	02 38       	.word 0x0238
     964:	00 00       	.word 0x0000
     966:	11 24       	mov.l	r2,@(16,r1)
     968:	00 00       	.word 0x0000
     96a:	02 44       	mov.b	r4,@(r0,r2)
     96c:	00 00       	.word 0x0000
     96e:	00 00       	.word 0x0000
     970:	00 00       	.word 0x0000
     972:	02 38       	.word 0x0238
     974:	00 00       	.word 0x0000
     976:	10 e0       	mov.l	r14,@(0,r0)
     978:	00 00       	.word 0x0000
     97a:	02 44       	mov.b	r4,@(r0,r2)
     97c:	00 00       	.word 0x0000
     97e:	00 00       	.word 0x0000
     980:	00 00       	.word 0x0000
     982:	02 38       	.word 0x0238
     984:	00 00       	.word 0x0000
     986:	11 70       	mov.l	r7,@(0,r1)
     988:	00 00       	.word 0x0000
     98a:	02 44       	mov.b	r4,@(r0,r2)
     98c:	00 00       	.word 0x0000
     98e:	0c 7c       	mov.b	@(r0,r7),r12
     990:	00 00       	.word 0x0000
     992:	02 30       	.word 0x0230
     994:	00 00       	.word 0x0000
     996:	10 94       	mov.l	r9,@(16,r0)
     998:	00 00       	.word 0x0000
     99a:	02 44       	mov.b	r4,@(r0,r2)
     99c:	00 00       	.word 0x0000
     99e:	0c 7c       	mov.b	@(r0,r7),r12
     9a0:	00 00       	.word 0x0000
     9a2:	02 30       	.word 0x0230
     9a4:	00 00       	.word 0x0000
     9a6:	11 24       	mov.l	r2,@(16,r1)
     9a8:	00 00       	.word 0x0000
     9aa:	02 44       	mov.b	r4,@(r0,r2)
     9ac:	00 00       	.word 0x0000
     9ae:	0c 7c       	mov.b	@(r0,r7),r12
     9b0:	00 00       	.word 0x0000
     9b2:	02 30       	.word 0x0230
     9b4:	00 00       	.word 0x0000
     9b6:	10 e0       	mov.l	r14,@(0,r0)
     9b8:	00 00       	.word 0x0000
     9ba:	02 44       	mov.b	r4,@(r0,r2)
     9bc:	00 00       	.word 0x0000
     9be:	0c 7c       	mov.b	@(r0,r7),r12
     9c0:	00 00       	.word 0x0000
     9c2:	02 30       	.word 0x0230
     9c4:	00 00       	.word 0x0000
     9c6:	11 70       	mov.l	r7,@(0,r1)
     9c8:	00 00       	.word 0x0000
     9ca:	02 44       	mov.b	r4,@(r0,r2)
     9cc:	00 00       	.word 0x0000
     9ce:	0c 7c       	mov.b	@(r0,r7),r12
     9d0:	00 00       	.word 0x0000
     9d2:	02 24       	mov.b	r2,@(r0,r2)
     9d4:	00 00       	.word 0x0000
     9d6:	10 94       	mov.l	r9,@(16,r0)
     9d8:	00 00       	.word 0x0000
     9da:	02 44       	mov.b	r4,@(r0,r2)
     9dc:	00 00       	.word 0x0000
     9de:	0c 7c       	mov.b	@(r0,r7),r12
     9e0:	00 00       	.word 0x0000
     9e2:	02 24       	mov.b	r2,@(r0,r2)
     9e4:	00 00       	.word 0x0000
     9e6:	11 24       	mov.l	r2,@(16,r1)
     9e8:	00 00       	.word 0x0000
     9ea:	02 44       	mov.b	r4,@(r0,r2)
     9ec:	00 00       	.word 0x0000
     9ee:	0c 7c       	mov.b	@(r0,r7),r12
     9f0:	00 00       	.word 0x0000
     9f2:	02 24       	mov.b	r2,@(r0,r2)
     9f4:	00 00       	.word 0x0000
     9f6:	10 e0       	mov.l	r14,@(0,r0)
     9f8:	00 00       	.word 0x0000
     9fa:	02 44       	mov.b	r4,@(r0,r2)
     9fc:	00 00       	.word 0x0000
     9fe:	0c 7c       	mov.b	@(r0,r7),r12
     a00:	00 00       	.word 0x0000
     a02:	02 24       	mov.b	r2,@(r0,r2)
     a04:	00 00       	.word 0x0000
     a06:	11 70       	mov.l	r7,@(0,r1)
     a08:	00 00       	.word 0x0000
     a0a:	02 44       	mov.b	r4,@(r0,r2)
     a0c:	00 00       	.word 0x0000
     a0e:	0c 7c       	mov.b	@(r0,r7),r12
     a10:	00 00       	.word 0x0000
     a12:	0b 02       	stc	sr,r11
     a14:	00 00       	.word 0x0000
     a16:	10 94       	mov.l	r9,@(16,r0)
     a18:	00 00       	.word 0x0000
     a1a:	02 44       	mov.b	r4,@(r0,r2)
     a1c:	00 00       	.word 0x0000
     a1e:	0c 7c       	mov.b	@(r0,r7),r12
     a20:	00 00       	.word 0x0000
     a22:	0b 02       	stc	sr,r11
     a24:	00 00       	.word 0x0000
     a26:	11 24       	mov.l	r2,@(16,r1)
     a28:	00 00       	.word 0x0000
     a2a:	02 44       	mov.b	r4,@(r0,r2)
     a2c:	00 00       	.word 0x0000
     a2e:	0c 7c       	mov.b	@(r0,r7),r12
     a30:	00 00       	.word 0x0000
     a32:	0b 02       	stc	sr,r11
     a34:	00 00       	.word 0x0000
     a36:	10 e0       	mov.l	r14,@(0,r0)
     a38:	00 00       	.word 0x0000
     a3a:	02 44       	mov.b	r4,@(r0,r2)
     a3c:	00 00       	.word 0x0000
     a3e:	0c 7c       	mov.b	@(r0,r7),r12
     a40:	00 00       	.word 0x0000
     a42:	0b 02       	stc	sr,r11
     a44:	00 00       	.word 0x0000
     a46:	11 70       	mov.l	r7,@(0,r1)
     a48:	00 00       	.word 0x0000
     a4a:	02 44       	mov.b	r4,@(r0,r2)
     a4c:	00 00       	.word 0x0000
     a4e:	0c 7c       	mov.b	@(r0,r7),r12
     a50:	00 00       	.word 0x0000
     a52:	02 24       	mov.b	r2,@(r0,r2)
     a54:	00 00       	.word 0x0000
     a56:	10 94       	mov.l	r9,@(16,r0)
     a58:	00 00       	.word 0x0000
     a5a:	02 44       	mov.b	r4,@(r0,r2)
     a5c:	00 00       	.word 0x0000
     a5e:	0c 7c       	mov.b	@(r0,r7),r12
     a60:	00 00       	.word 0x0000
     a62:	02 24       	mov.b	r2,@(r0,r2)
     a64:	00 00       	.word 0x0000
     a66:	11 24       	mov.l	r2,@(16,r1)
     a68:	00 00       	.word 0x0000
     a6a:	02 44       	mov.b	r4,@(r0,r2)
     a6c:	00 00       	.word 0x0000
     a6e:	0c 7c       	mov.b	@(r0,r7),r12
     a70:	00 00       	.word 0x0000
     a72:	02 24       	mov.b	r2,@(r0,r2)
     a74:	00 00       	.word 0x0000
     a76:	10 e0       	mov.l	r14,@(0,r0)
     a78:	00 00       	.word 0x0000
     a7a:	02 44       	mov.b	r4,@(r0,r2)
     a7c:	00 00       	.word 0x0000
     a7e:	0c 7c       	mov.b	@(r0,r7),r12
     a80:	00 00       	.word 0x0000
     a82:	02 24       	mov.b	r2,@(r0,r2)

00000a84 <MsCalc_Light>:
     a84:	00 28       	clrmac	
     a86:	64 f3       	mov	r15,r4
     a88:	05 12       	stc	gbr,r5
     a8a:	75 4c       	add	#76,r5
     a8c:	05 4f       	mac.l	@r4+,@r5+
     a8e:	85 83       	mov.w	@(6,r8),r0
     a90:	e1 1f       	mov	#31,r1
     a92:	63 08       	swap.b	r0,r3
     a94:	05 4f       	mac.l	@r4+,@r5+
     a96:	43 09       	shlr2	r3
     a98:	23 19       	and	r1,r3
     a9a:	21 09       	and	r0,r1
     a9c:	05 4f       	mac.l	@r4+,@r5+
     a9e:	40 09       	shlr2	r0
     aa0:	40 09       	shlr2	r0
     aa2:	e2 1f       	mov	#31,r2
     aa4:	40 01       	shlr	r0
     aa6:	22 09       	and	r0,r2
     aa8:	05 0a       	sts	mach,r5
     aaa:	04 1a       	sts	macl,r4
     aac:	25 58       	tst	r5,r5
     aae:	8d 09       	bt.s	ac4 <Mslgbfr_0>
     ab0:	c6 19       	mov.l	@(100,gbr),r0
     ab2:	75 01       	add	#1,r5
     ab4:	25 58       	tst	r5,r5
     ab6:	89 07       	bt	ac8 <Mslgbfr_0a>
     ab8:	e4 ff       	mov	#-1,r4
     aba:	45 15       	cmp/pl	r5
     abc:	8d 08       	bt.s	ad0 <Mslgbfr_1>
     abe:	64 4c       	extu.b	r4,r4
     ac0:	a0 0a       	bra	ad8 <Mslgbfr_2>
     ac2:	00 09       	nop	

00000ac4 <Mslgbfr_0>:
     ac4:	e5 80       	mov	#-128,r5
     ac6:	65 5c       	extu.b	r5,r5

00000ac8 <Mslgbfr_0a>:
     ac8:	44 29       	shlr16	r4
     aca:	44 19       	shlr8	r4
     acc:	44 01       	shlr	r4
     ace:	24 5b       	or	r5,r4

00000ad0 <Mslgbfr_1>:
     ad0:	e5 f8       	mov	#-8,r5
     ad2:	24 59       	and	r5,r4
     ad4:	44 08       	shll2	r4
     ad6:	30 4c       	add	r4,r0

00000ad8 <Mslgbfr_2>:
     ad8:	e5 04       	mov	#4,r5
     ada:	45 18       	shll8	r5
     adc:	01 1c       	mov.b	@(r0,r1),r1
     ade:	30 5c       	add	r5,r0
     ae0:	02 2c       	mov.b	@(r0,r2),r2
     ae2:	30 5c       	add	r5,r0
     ae4:	00 3c       	mov.b	@(r0,r3),r0
     ae6:	cb 20       	or	#32,r0
     ae8:	60 08       	swap.b	r0,r0
     aea:	42 08       	shll2	r2
     aec:	42 00       	shll	r2
     aee:	30 2c       	add	r2,r0
     af0:	40 08       	shll2	r0
     af2:	21 0b       	or	r0,r1
     af4:	85 82       	mov.w	@(4,r8),r0
     af6:	41 28       	shll16	r1
     af8:	21 0d       	xtrct	r0,r1
     afa:	85 84       	mov.w	@(8,r8),r0
     afc:	1b 11       	mov.l	r1,@(4,r11)
     afe:	00 0b       	rts	
     b00:	81 be       	mov.w	r0,@(28,r11)

00000b02 <MsCalc_Light_PAL>:
     b02:	00 28       	clrmac	
     b04:	64 f3       	mov	r15,r4
     b06:	05 12       	stc	gbr,r5
     b08:	75 4c       	add	#76,r5
     b0a:	05 4f       	mac.l	@r4+,@r5+
     b0c:	05 4f       	mac.l	@r4+,@r5+
     b0e:	50 81       	mov.l	@(4,r8),r0
     b10:	05 4f       	mac.l	@r4+,@r5+
     b12:	e1 07       	mov	#7,r1
     b14:	05 0a       	sts	mach,r5
     b16:	04 1a       	sts	macl,r4
     b18:	25 58       	tst	r5,r5
     b1a:	8d 05       	bt.s	b28 <MslgbfrPL_1>
     b1c:	75 01       	add	#1,r5
     b1e:	25 58       	tst	r5,r5
     b20:	8d 03       	bt.s	b2a <MslgbfrPL_1a>
     b22:	45 11       	cmp/pz	r5
     b24:	8f 07       	bf.s	b36 <MslgbfrPL_2>
     b26:	e4 ff       	mov	#-1,r4

00000b28 <MslgbfrPL_1>:
     b28:	e5 08       	mov	#8,r5

00000b2a <MslgbfrPL_1a>:
     b2a:	44 04       	rotl	r4
     b2c:	44 04       	rotl	r4
     b2e:	44 04       	rotl	r4
     b30:	24 19       	and	r1,r4
     b32:	24 5b       	or	r5,r4
     b34:	30 4c       	add	r4,r0

00000b36 <MslgbfrPL_2>:
     b36:	00 0b       	rts	
     b38:	1b 01       	mov.l	r0,@(4,r11)

00000b3a <MsCalc_Light_Tex>:
     b3a:	85 81       	mov.w	@(2,r8),r0
     b3c:	51 f5       	mov.l	@(20,r15),r1
     b3e:	40 08       	shll2	r0
     b40:	30 0c       	add	r0,r0
     b42:	00 1e       	mov.l	@(r0,r1),r0
     b44:	00 28       	clrmac	
     b46:	1b 02       	mov.l	r0,@(8,r11)
     b48:	64 f3       	mov	r15,r4
     b4a:	05 12       	stc	gbr,r5
     b4c:	75 4c       	add	#76,r5
     b4e:	05 4f       	mac.l	@r4+,@r5+
     b50:	53 81       	mov.l	@(4,r8),r3
     b52:	05 4f       	mac.l	@r4+,@r5+
     b54:	60 39       	swap.w	r3,r0
     b56:	c9 38       	and	#56,r0
     b58:	05 4f       	mac.l	@r4+,@r5+
     b5a:	88 28       	cmp/eq	#40,r0
     b5c:	8b 19       	bf	b92 <Msclclgtx_9>
     b5e:	90 1c       	mov.w	b9a <IMM_GouraudRAM_8>,r0	! ffe0
     b60:	01 0a       	sts	mach,r1
     b62:	02 1a       	sts	macl,r2
     b64:	21 18       	tst	r1,r1
     b66:	8d 05       	bt.s	b74 <Msclclgtx_0>
     b68:	71 01       	add	#1,r1
     b6a:	21 18       	tst	r1,r1
     b6c:	8d 03       	bt.s	b76 <Msclclgtx_0a>
     b6e:	41 11       	cmp/pz	r1
     b70:	8f 07       	bf.s	b82 <Msclclgtx_1>
     b72:	e2 ff       	mov	#-1,r2

00000b74 <Msclclgtx_0>:
     b74:	e1 10       	mov	#16,r1

00000b76 <Msclclgtx_0a>:
     b76:	42 29       	shlr16	r2
     b78:	42 19       	shlr8	r2
     b7a:	42 09       	shlr2	r2
     b7c:	42 09       	shlr2	r2
     b7e:	22 1b       	or	r1,r2
     b80:	30 2c       	add	r2,r0

00000b82 <Msclclgtx_1>:
     b82:	e2 f8       	mov	#-8,r2
     b84:	81 be       	mov.w	r0,@(28,r11)
     b86:	60 39       	swap.w	r3,r0
     b88:	20 29       	and	r2,r0
     b8a:	cb 04       	or	#4,r0
     b8c:	60 09       	swap.w	r0,r0
     b8e:	00 0b       	rts	
     b90:	1b 01       	mov.l	r0,@(4,r11)

00000b92 <Msclclgtx_9>:
     b92:	85 84       	mov.w	@(8,r8),r0
     b94:	1b 31       	mov.l	r3,@(4,r11)
     b96:	00 0b       	rts	
     b98:	81 be       	mov.w	r0,@(28,r11)

00000b9a <IMM_GouraudRAM_8>:
     b9a:	ff e0       	fadd	fr14,fr15

00000b9c <MsClipCheck>:
     b9c:	c6 26       	mov.l	@(152,gbr),r0
     b9e:	2f 96       	mov.l	r9,@-r15
     ba0:	6d 0f       	exts.w	r0,r13
     ba2:	6c 09       	swap.w	r0,r12
     ba4:	50 11       	mov.l	@(4,r1),r0
     ba6:	e5 00       	mov	#0,r5
     ba8:	51 10       	mov.l	@(0,r1),r1
     baa:	6c cf       	exts.w	r12,r12
     bac:	40 01       	shlr	r0
     bae:	8f 0b       	bf.s	bc8 <Msclck_01>
     bb0:	35 5e       	addc	r5,r5
     bb2:	c5 47       	mov.w	@(142,gbr),r0
     bb4:	69 1f       	exts.w	r1,r9
     bb6:	39 dc       	add	r13,r9
     bb8:	39 02       	cmp/hs	r0,r9
     bba:	8d 3c       	bt.s	c36 <MsClipOut>
     bbc:	69 19       	swap.w	r1,r9
     bbe:	c5 46       	mov.w	@(140,gbr),r0
     bc0:	69 9f       	exts.w	r9,r9
     bc2:	39 cc       	add	r12,r9
     bc4:	39 02       	cmp/hs	r0,r9
     bc6:	8d 36       	bt.s	c36 <MsClipOut>

00000bc8 <Msclck_01>:
     bc8:	50 21       	mov.l	@(4,r2),r0
     bca:	52 20       	mov.l	@(0,r2),r2
     bcc:	40 01       	shlr	r0
     bce:	8f 0b       	bf.s	be8 <Msclck_02>
     bd0:	35 5e       	addc	r5,r5
     bd2:	c5 47       	mov.w	@(142,gbr),r0
     bd4:	69 2f       	exts.w	r2,r9
     bd6:	39 dc       	add	r13,r9
     bd8:	39 02       	cmp/hs	r0,r9
     bda:	8d 2c       	bt.s	c36 <MsClipOut>
     bdc:	69 29       	swap.w	r2,r9
     bde:	c5 46       	mov.w	@(140,gbr),r0
     be0:	69 9f       	exts.w	r9,r9
     be2:	39 cc       	add	r12,r9
     be4:	39 02       	cmp/hs	r0,r9
     be6:	8d 26       	bt.s	c36 <MsClipOut>

00000be8 <Msclck_02>:
     be8:	50 31       	mov.l	@(4,r3),r0
     bea:	53 30       	mov.l	@(0,r3),r3
     bec:	40 01       	shlr	r0
     bee:	8f 0b       	bf.s	c08 <Msclck_03>
     bf0:	35 5e       	addc	r5,r5
     bf2:	c5 47       	mov.w	@(142,gbr),r0
     bf4:	69 3f       	exts.w	r3,r9
     bf6:	39 dc       	add	r13,r9
     bf8:	39 02       	cmp/hs	r0,r9
     bfa:	8d 1c       	bt.s	c36 <MsClipOut>
     bfc:	69 39       	swap.w	r3,r9
     bfe:	c5 46       	mov.w	@(140,gbr),r0
     c00:	69 9f       	exts.w	r9,r9
     c02:	39 cc       	add	r12,r9
     c04:	39 02       	cmp/hs	r0,r9
     c06:	8d 16       	bt.s	c36 <MsClipOut>

00000c08 <Msclck_03>:
     c08:	50 41       	mov.l	@(4,r4),r0
     c0a:	54 40       	mov.l	@(0,r4),r4
     c0c:	40 01       	shlr	r0
     c0e:	8f 0b       	bf.s	c28 <Msclck_04>
     c10:	35 5e       	addc	r5,r5
     c12:	c5 47       	mov.w	@(142,gbr),r0
     c14:	69 4f       	exts.w	r4,r9
     c16:	39 dc       	add	r13,r9
     c18:	39 02       	cmp/hs	r0,r9
     c1a:	8d 0c       	bt.s	c36 <MsClipOut>
     c1c:	69 49       	swap.w	r4,r9
     c1e:	c5 46       	mov.w	@(140,gbr),r0
     c20:	69 9f       	exts.w	r9,r9
     c22:	39 cc       	add	r12,r9
     c24:	39 02       	cmp/hs	r0,r9
     c26:	8d 06       	bt.s	c36 <MsClipOut>

00000c28 <Msclck_04>:
     c28:	e5 00       	mov	#0,r5
     c2a:	45 08       	shll2	r5
     c2c:	c7 03       	mova	c3c <MsVertChangeTbl>,r0
     c2e:	00 5e       	mov.l	@(r0,r5),r0
     c30:	e5 01       	mov	#1,r5
     c32:	40 2b       	jmp	@r0
     c34:	69 f2       	mov.l	@r15,r9

00000c36 <MsClipOut>:
     c36:	ab 05       	bra	244 <ptpl_lp_29>
     c38:	7f 04       	add	#4,r15
	...

00000c3c <MsVertChangeTbl>:
	...

00000c7c <MsCalcDepthFlat>:
     c7c:	2f 26       	mov.l	r2,@-r15
     c7e:	2f 16       	mov.l	r1,@-r15
     c80:	d1 0f       	mov.l	cc0 <DepthArea>,r1	! 0 <_slPutPolygon>
     c82:	5d 10       	mov.l	@(0,r1),r13
     c84:	5c 11       	mov.l	@(4,r1),r12
     c86:	65 e3       	mov	r14,r5
     c88:	3d 53       	cmp/ge	r5,r13
     c8a:	8d 0c       	bt.s	ca6 <MsDpF_2>
     c8c:	e0 00       	mov	#0,r0
     c8e:	35 d8       	sub	r13,r5
     c90:	35 c3       	cmp/ge	r12,r5
     c92:	8d 08       	bt.s	ca6 <MsDpF_2>
     c94:	85 15       	mov.w	@(10,r1),r0
     c96:	85 14       	mov.w	@(8,r1),r0
     c98:	62 03       	mov	r0,r2
     c9a:	88 00       	cmp/eq	#0,r0
     c9c:	8d 03       	bt.s	ca6 <MsDpF_2>
     c9e:	60 53       	mov	r5,r0

00000ca0 <MsDpF_1>:
     ca0:	42 10       	dt	r2
     ca2:	8f fd       	bf.s	ca0 <MsDpF_1>
     ca4:	40 01       	shlr	r0

00000ca6 <MsDpF_2>:
     ca6:	65 03       	mov	r0,r5
     ca8:	85 16       	mov.w	@(12,r1),r0
     caa:	30 5c       	add	r5,r0
     cac:	81 84       	mov.w	r0,@(8,r8)
     cae:	85 82       	mov.w	@(4,r8),r0
     cb0:	cb 04       	or	#4,r0
     cb2:	81 82       	mov.w	r0,@(4,r8)
     cb4:	61 f6       	mov.l	@r15+,r1
     cb6:	62 f6       	mov.l	@r15+,r2
     cb8:	d0 02       	mov.l	cc4 <SetJmp>,r0	! 0 <_slPutPolygon>
     cba:	40 2b       	jmp	@r0
     cbc:	00 09       	nop	
	...

00000cc0 <DepthArea>:
     cc0:	00 00       	.word 0x0000
	...

00000cc4 <SetJmp>:
     cc4:	00 00       	.word 0x0000
	...

00000cc8 <ccpl_lp_02_00>:
     cc8:	d0 b4       	mov.l	f9c <C512>,r0	! 200
     cca:	e1 00       	mov	#0,r1

00000ccc <ccpl_lp_02_0>:
     ccc:	33 07       	cmp/gt	r0,r3
     cce:	8b 03       	bf	cd8 <ccpl_lp_02_1>
     cd0:	e1 01       	mov	#1,r1
     cd2:	43 21       	shar	r3
     cd4:	af fa       	bra	ccc <ccpl_lp_02_0>
     cd6:	45 21       	shar	r5

00000cd8 <ccpl_lp_02_1>:
     cd8:	35 07       	cmp/gt	r0,r5
     cda:	8b 03       	bf	ce4 <ccpl_lp_02_2>
     cdc:	e1 01       	mov	#1,r1
     cde:	43 21       	shar	r3
     ce0:	af fa       	bra	cd8 <ccpl_lp_02_1>
     ce2:	45 21       	shar	r5

00000ce4 <ccpl_lp_02_2>:
     ce4:	60 0b       	neg	r0,r0
     ce6:	33 03       	cmp/ge	r0,r3
     ce8:	89 03       	bt	cf2 <ccpl_lp_02_3>
     cea:	e1 01       	mov	#1,r1
     cec:	43 21       	shar	r3
     cee:	af f9       	bra	ce4 <ccpl_lp_02_2>
     cf0:	45 21       	shar	r5

00000cf2 <ccpl_lp_02_3>:
     cf2:	35 03       	cmp/ge	r0,r5
     cf4:	89 03       	bt	cfe <ccpl_lp_02_4>
     cf6:	e1 01       	mov	#1,r1
     cf8:	43 21       	shar	r3
     cfa:	af fa       	bra	cf2 <ccpl_lp_02_3>
     cfc:	45 21       	shar	r5

00000cfe <ccpl_lp_02_4>:
     cfe:	21 18       	tst	r1,r1
     d00:	8b 01       	bf	d06 <ccpl_lp_02_4a>
     d02:	a1 12       	bra	f2a <ccpl_lp_02_e>
     d04:	00 09       	nop	

00000d06 <ccpl_lp_02_4a>:
     d06:	60 33       	mov	r3,r0
     d08:	61 53       	mov	r5,r1
     d0a:	64 33       	mov	r3,r4
     d0c:	67 53       	mov	r5,r7
     d0e:	40 11       	cmp/pz	r0
     d10:	89 00       	bt	d14 <ccpl_lp_02_5>
     d12:	60 0b       	neg	r0,r0

00000d14 <ccpl_lp_02_5>:
     d14:	41 11       	cmp/pz	r1
     d16:	89 00       	bt	d1a <ccpl_lp_02_6>
     d18:	61 1b       	neg	r1,r1

00000d1a <ccpl_lp_02_6>:
     d1a:	31 03       	cmp/ge	r0,r1
     d1c:	8d 1d       	bt.s	d5a <ccpl_lp_02_7>
     d1e:	e0 04       	mov	#4,r0
     d20:	43 11       	cmp/pz	r3
     d22:	8b 0c       	bf	d3e <ccpl_lp_02_6c>
     d24:	d1 9d       	mov.l	f9c <C512>,r1	! 200

00000d26 <ccpl_lp_02_6a>:
     d26:	33 4c       	add	r4,r3
     d28:	33 17       	cmp/gt	r1,r3
     d2a:	8d 02       	bt.s	d32 <ccpl_lp_02_6b>
     d2c:	33 48       	sub	r4,r3
     d2e:	35 7c       	add	r7,r5
     d30:	33 4c       	add	r4,r3

00000d32 <ccpl_lp_02_6b>:
     d32:	47 21       	shar	r7
     d34:	40 10       	dt	r0
     d36:	8f f6       	bf.s	d26 <ccpl_lp_02_6a>
     d38:	44 21       	shar	r4
     d3a:	a0 f6       	bra	f2a <ccpl_lp_02_e>
     d3c:	00 09       	nop	

00000d3e <ccpl_lp_02_6c>:
     d3e:	d1 97       	mov.l	f9c <C512>,r1	! 200
     d40:	61 1b       	neg	r1,r1

00000d42 <ccpl_lp_02_6d>:
     d42:	33 4c       	add	r4,r3
     d44:	33 13       	cmp/ge	r1,r3
     d46:	8f 02       	bf.s	d4e <ccpl_lp_02_6e>
     d48:	33 48       	sub	r4,r3
     d4a:	35 7c       	add	r7,r5
     d4c:	33 4c       	add	r4,r3

00000d4e <ccpl_lp_02_6e>:
     d4e:	47 21       	shar	r7
     d50:	40 10       	dt	r0
     d52:	8f f6       	bf.s	d42 <ccpl_lp_02_6d>
     d54:	44 21       	shar	r4
     d56:	a0 e8       	bra	f2a <ccpl_lp_02_e>
     d58:	00 09       	nop	

00000d5a <ccpl_lp_02_7>:
     d5a:	45 11       	cmp/pz	r5
     d5c:	8b 0c       	bf	d78 <ccpl_lp_02_7c>
     d5e:	d1 8f       	mov.l	f9c <C512>,r1	! 200

00000d60 <ccpl_lp_02_7a>:
     d60:	35 7c       	add	r7,r5
     d62:	35 17       	cmp/gt	r1,r5
     d64:	8d 02       	bt.s	d6c <ccpl_lp_02_7b>
     d66:	35 78       	sub	r7,r5
     d68:	33 4c       	add	r4,r3
     d6a:	35 7c       	add	r7,r5

00000d6c <ccpl_lp_02_7b>:
     d6c:	44 21       	shar	r4
     d6e:	40 10       	dt	r0
     d70:	8f f6       	bf.s	d60 <ccpl_lp_02_7a>
     d72:	47 21       	shar	r7
     d74:	a0 d9       	bra	f2a <ccpl_lp_02_e>
     d76:	00 09       	nop	

00000d78 <ccpl_lp_02_7c>:
     d78:	d1 88       	mov.l	f9c <C512>,r1	! 200
     d7a:	61 1b       	neg	r1,r1

00000d7c <ccpl_lp_02_7d>:
     d7c:	35 7c       	add	r7,r5
     d7e:	35 13       	cmp/ge	r1,r5
     d80:	8f 02       	bf.s	d88 <ccpl_lp_02_7e>
     d82:	35 78       	sub	r7,r5
     d84:	33 4c       	add	r4,r3
     d86:	35 7c       	add	r7,r5

00000d88 <ccpl_lp_02_7e>:
     d88:	44 21       	shar	r4
     d8a:	40 10       	dt	r0
     d8c:	8f f6       	bf.s	d7c <ccpl_lp_02_7d>
     d8e:	47 21       	shar	r7
     d90:	a0 cb       	bra	f2a <ccpl_lp_02_e>
     d92:	00 09       	nop	

00000d94 <ccpl_lp_03_00>:
     d94:	d0 81       	mov.l	f9c <C512>,r0	! 200
     d96:	e1 00       	mov	#0,r1

00000d98 <ccpl_lp_03_0>:
     d98:	32 07       	cmp/gt	r0,r2
     d9a:	8b 03       	bf	da4 <ccpl_lp_03_1>
     d9c:	e1 01       	mov	#1,r1
     d9e:	42 21       	shar	r2
     da0:	af fa       	bra	d98 <ccpl_lp_03_0>
     da2:	45 21       	shar	r5

00000da4 <ccpl_lp_03_1>:
     da4:	35 07       	cmp/gt	r0,r5
     da6:	8b 03       	bf	db0 <ccpl_lp_03_2>
     da8:	e1 01       	mov	#1,r1
     daa:	42 21       	shar	r2
     dac:	af fa       	bra	da4 <ccpl_lp_03_1>
     dae:	45 21       	shar	r5

00000db0 <ccpl_lp_03_2>:
     db0:	60 0b       	neg	r0,r0
     db2:	32 03       	cmp/ge	r0,r2
     db4:	89 03       	bt	dbe <ccpl_lp_03_3>
     db6:	e1 01       	mov	#1,r1
     db8:	42 21       	shar	r2
     dba:	af f9       	bra	db0 <ccpl_lp_03_2>
     dbc:	45 21       	shar	r5

00000dbe <ccpl_lp_03_3>:
     dbe:	35 03       	cmp/ge	r0,r5
     dc0:	89 03       	bt	dca <ccpl_lp_03_4>
     dc2:	e1 01       	mov	#1,r1
     dc4:	42 21       	shar	r2
     dc6:	af fa       	bra	dbe <ccpl_lp_03_3>
     dc8:	45 21       	shar	r5

00000dca <ccpl_lp_03_4>:
     dca:	21 18       	tst	r1,r1
     dcc:	8b 01       	bf	dd2 <ccpl_lp_03_4a>
     dce:	a0 de       	bra	f8e <ccpl_lp_03_e>
     dd0:	00 09       	nop	

00000dd2 <ccpl_lp_03_4a>:
     dd2:	60 23       	mov	r2,r0
     dd4:	61 53       	mov	r5,r1
     dd6:	64 23       	mov	r2,r4
     dd8:	67 53       	mov	r5,r7
     dda:	40 11       	cmp/pz	r0
     ddc:	89 00       	bt	de0 <ccpl_lp_03_5>
     dde:	60 0b       	neg	r0,r0

00000de0 <ccpl_lp_03_5>:
     de0:	41 11       	cmp/pz	r1
     de2:	89 00       	bt	de6 <ccpl_lp_03_6>
     de4:	61 1b       	neg	r1,r1

00000de6 <ccpl_lp_03_6>:
     de6:	31 03       	cmp/ge	r0,r1
     de8:	8d 1d       	bt.s	e26 <ccpl_lp_03_7>
     dea:	e0 04       	mov	#4,r0
     dec:	42 11       	cmp/pz	r2
     dee:	8b 0c       	bf	e0a <ccpl_lp_03_6c>
     df0:	d1 6a       	mov.l	f9c <C512>,r1	! 200

00000df2 <ccpl_lp_03_6a>:
     df2:	32 4c       	add	r4,r2
     df4:	32 17       	cmp/gt	r1,r2
     df6:	8d 02       	bt.s	dfe <ccpl_lp_03_6b>
     df8:	32 48       	sub	r4,r2
     dfa:	35 7c       	add	r7,r5
     dfc:	32 4c       	add	r4,r2

00000dfe <ccpl_lp_03_6b>:
     dfe:	47 21       	shar	r7
     e00:	40 10       	dt	r0
     e02:	8f f6       	bf.s	df2 <ccpl_lp_03_6a>
     e04:	44 21       	shar	r4
     e06:	a0 c2       	bra	f8e <ccpl_lp_03_e>
     e08:	00 09       	nop	

00000e0a <ccpl_lp_03_6c>:
     e0a:	d1 64       	mov.l	f9c <C512>,r1	! 200
     e0c:	61 1b       	neg	r1,r1

00000e0e <ccpl_lp_03_6d>:
     e0e:	32 4c       	add	r4,r2
     e10:	32 13       	cmp/ge	r1,r2
     e12:	8f 02       	bf.s	e1a <ccpl_lp_03_6e>
     e14:	32 48       	sub	r4,r2
     e16:	35 7c       	add	r7,r5
     e18:	32 4c       	add	r4,r2

00000e1a <ccpl_lp_03_6e>:
     e1a:	47 21       	shar	r7
     e1c:	40 10       	dt	r0
     e1e:	8f f6       	bf.s	e0e <ccpl_lp_03_6d>
     e20:	44 21       	shar	r4
     e22:	a0 b4       	bra	f8e <ccpl_lp_03_e>
     e24:	00 09       	nop	

00000e26 <ccpl_lp_03_7>:
     e26:	45 11       	cmp/pz	r5
     e28:	8b 0c       	bf	e44 <ccpl_lp_03_7c>
     e2a:	d1 5c       	mov.l	f9c <C512>,r1	! 200

00000e2c <ccpl_lp_03_7a>:
     e2c:	35 7c       	add	r7,r5
     e2e:	35 17       	cmp/gt	r1,r5
     e30:	8d 02       	bt.s	e38 <ccpl_lp_03_7b>
     e32:	35 78       	sub	r7,r5
     e34:	32 4c       	add	r4,r2
     e36:	35 7c       	add	r7,r5

00000e38 <ccpl_lp_03_7b>:
     e38:	44 21       	shar	r4
     e3a:	40 10       	dt	r0
     e3c:	8f f6       	bf.s	e2c <ccpl_lp_03_7a>
     e3e:	47 21       	shar	r7
     e40:	a0 a5       	bra	f8e <ccpl_lp_03_e>
     e42:	00 09       	nop	

00000e44 <ccpl_lp_03_7c>:
     e44:	d1 55       	mov.l	f9c <C512>,r1	! 200
     e46:	61 1b       	neg	r1,r1

00000e48 <ccpl_lp_03_7d>:
     e48:	35 7c       	add	r7,r5
     e4a:	35 13       	cmp/ge	r1,r5
     e4c:	8f 02       	bf.s	e54 <ccpl_lp_03_7e>
     e4e:	35 78       	sub	r7,r5
     e50:	32 4c       	add	r4,r2
     e52:	35 7c       	add	r7,r5

00000e54 <ccpl_lp_03_7e>:
     e54:	44 21       	shar	r4
     e56:	40 10       	dt	r0
     e58:	8f f6       	bf.s	e48 <ccpl_lp_03_7d>
     e5a:	47 21       	shar	r7
     e5c:	a0 97       	bra	f8e <ccpl_lp_03_e>
     e5e:	00 09       	nop	

00000e60 <CalcVertices>:
     e60:	29 98       	tst	r9,r9
     e62:	8f 01       	bf.s	e68 <clcvt_lp_000>
     e64:	76 20       	add	#32,r6
     e66:	a0 97       	bra	f98 <clcvt_lp_09>

00000e68 <clcvt_lp_000>:
     e68:	c6 1a       	mov.l	@(104,gbr),r0
     e6a:	62 93       	mov	r9,r2
     e6c:	42 08       	shll2	r2
     e6e:	61 23       	mov	r2,r1
     e70:	42 00       	shll	r2
     e72:	32 1c       	add	r1,r2
     e74:	41 08       	shll2	r1
     e76:	3b 1c       	add	r1,r11
     e78:	51 b3       	mov.l	@(12,r11),r1
     e7a:	ee ff       	mov	#-1,r14
     e7c:	4e 18       	shll8	r14
     e7e:	1e 10       	mov.l	r1,@(0,r14)
     e80:	61 09       	swap.w	r0,r1
     e82:	61 1f       	exts.w	r1,r1
     e84:	1e 14       	mov.l	r1,@(16,r14)
     e86:	63 0f       	exts.w	r0,r3
     e88:	1e 35       	mov.l	r3,@(20,r14)
     e8a:	3a 2c       	add	r2,r10
     e8c:	2f 76       	mov.l	r7,@-r15
     e8e:	7a f4       	add	#-12,r10
     e90:	2f 16       	mov.l	r1,@-r15
     e92:	68 03       	mov	r0,r8
     e94:	2f 36       	mov.l	r3,@-r15
     e96:	c4 ad       	mov.b	@(173,gbr),r0
     e98:	70 01       	add	#1,r0
     e9a:	48 01       	shlr	r8

00000e9c <clcvt_lp_00>:
     e9c:	40 10       	dt	r0
     e9e:	8f fd       	bf.s	e9c <clcvt_lp_00>
     ea0:	48 01       	shlr	r8
     ea2:	c6 21       	mov.l	@(132,gbr),r0
     ea4:	54 b1       	mov.l	@(4,r11),r4
     ea6:	6d 0d       	extu.w	r0,r13
     ea8:	6c 09       	swap.w	r0,r12
     eaa:	6c cd       	extu.w	r12,r12
     eac:	55 b2       	mov.l	@(8,r11),r5
     eae:	c6 e2       	mov.l	@(904,gbr),r0
     eb0:	3c 0c       	add	r0,r12
     eb2:	3d 0c       	add	r0,r13
     eb4:	3c 0c       	add	r0,r12
     eb6:	3d 0c       	add	r0,r13
     eb8:	60 b3       	mov	r11,r0
     eba:	c2 09       	mov.l	r0,@(36,gbr)
     ebc:	57 e7       	mov.l	@(28,r14),r7

00000ebe <clcvt_lp_01>:
     ebe:	00 28       	clrmac	
     ec0:	06 af       	mac.l	@r10+,@r6+
     ec2:	50 f1       	mov.l	@(4,r15),r0
     ec4:	06 af       	mac.l	@r10+,@r6+
     ec6:	51 61       	mov.l	@(4,r6),r1
     ec8:	06 af       	mac.l	@r10+,@r6+
     eca:	76 d4       	add	#-44,r6
     ecc:	7a f4       	add	#-12,r10
     ece:	02 0a       	sts	mach,r2
     ed0:	03 1a       	sts	macl,r3
     ed2:	1e 04       	mov.l	r0,@(16,r14)
     ed4:	23 2d       	xtrct	r2,r3
     ed6:	33 1c       	add	r1,r3
     ed8:	33 83       	cmp/ge	r8,r3
     eda:	8d 01       	bt.s	ee0 <clcvt_lp_02>
     edc:	50 f0       	mov.l	@(0,r15),r0
     ede:	63 83       	mov	r8,r3

00000ee0 <clcvt_lp_02>:
     ee0:	1e 30       	mov.l	r3,@(0,r14)
     ee2:	7b f0       	add	#-16,r11
     ee4:	1e 05       	mov.l	r0,@(20,r14)
     ee6:	37 4d       	dmuls.l	r4,r7
     ee8:	c5 48       	mov.w	@(144,gbr),r0
     eea:	44 01       	shlr	r4
     eec:	1b 33       	mov.l	r3,@(12,r11)
     eee:	03 0a       	sts	mach,r3
     ef0:	37 5d       	dmuls.l	r5,r7
     ef2:	30 3c       	add	r3,r0
     ef4:	1b 56       	mov.l	r5,@(24,r11)
     ef6:	61 03       	mov	r0,r1
     ef8:	c6 e2       	mov.l	@(904,gbr),r0
     efa:	30 1c       	add	r1,r0
     efc:	30 c2       	cmp/hs	r12,r0
     efe:	34 4e       	addc	r4,r4
     f00:	05 0a       	sts	mach,r5
     f02:	c5 49       	mov.w	@(146,gbr),r0
     f04:	00 28       	clrmac	
     f06:	06 af       	mac.l	@r10+,@r6+
     f08:	30 5c       	add	r5,r0
     f0a:	61 03       	mov	r0,r1
     f0c:	c6 e2       	mov.l	@(904,gbr),r0
     f0e:	30 1c       	add	r1,r0
     f10:	30 d2       	cmp/hs	r13,r0
     f12:	06 af       	mac.l	@r10+,@r6+
     f14:	00 29       	movt	r0
     f16:	24 0b       	or	r0,r4
     f18:	06 af       	mac.l	@r10+,@r6+
     f1a:	1b 45       	mov.l	r4,@(20,r11)
     f1c:	62 66       	mov.l	@r6+,r2
     f1e:	c6 de       	mov.l	@(888,gbr),r0
     f20:	24 09       	and	r0,r4
     f22:	44 21       	shar	r4
     f24:	8b 01       	bf	f2a <ccpl_lp_02_e>
     f26:	ae cf       	bra	cc8 <ccpl_lp_02_00>
     f28:	00 09       	nop	

00000f2a <ccpl_lp_02_e>:
     f2a:	45 28       	shll16	r5
     f2c:	7a f4       	add	#-12,r10
     f2e:	01 0a       	sts	mach,r1
     f30:	04 1a       	sts	macl,r4
     f32:	00 28       	clrmac	
     f34:	06 af       	mac.l	@r10+,@r6+
     f36:	25 3d       	xtrct	r3,r5
     f38:	1b 54       	mov.l	r5,@(16,r11)
     f3a:	06 af       	mac.l	@r10+,@r6+
     f3c:	24 1d       	xtrct	r1,r4
     f3e:	34 2c       	add	r2,r4
     f40:	06 af       	mac.l	@r10+,@r6+
     f42:	62 62       	mov.l	@r6,r2
     f44:	76 04       	add	#4,r6
     f46:	7a e8       	add	#-24,r10
     f48:	01 0a       	sts	mach,r1
     f4a:	05 1a       	sts	macl,r5
     f4c:	57 e7       	mov.l	@(28,r14),r7
     f4e:	25 1d       	xtrct	r1,r5
     f50:	49 10       	dt	r9
     f52:	8f b4       	bf.s	ebe <clcvt_lp_01>
     f54:	35 2c       	add	r2,r5
     f56:	37 4d       	dmuls.l	r4,r7
     f58:	c5 48       	mov.w	@(144,gbr),r0
     f5a:	44 01       	shlr	r4
     f5c:	1b 52       	mov.l	r5,@(8,r11)
     f5e:	02 0a       	sts	mach,r2
     f60:	37 5d       	dmuls.l	r5,r7
     f62:	30 2c       	add	r2,r0
     f64:	61 03       	mov	r0,r1
     f66:	c6 e2       	mov.l	@(904,gbr),r0
     f68:	30 1c       	add	r1,r0
     f6a:	30 c2       	cmp/hs	r12,r0
     f6c:	05 0a       	sts	mach,r5
     f6e:	c5 49       	mov.w	@(146,gbr),r0
     f70:	34 4e       	addc	r4,r4
     f72:	30 5c       	add	r5,r0
     f74:	61 03       	mov	r0,r1
     f76:	c6 e2       	mov.l	@(904,gbr),r0
     f78:	30 1c       	add	r1,r0
     f7a:	30 d2       	cmp/hs	r13,r0
     f7c:	00 29       	movt	r0
     f7e:	24 0b       	or	r0,r4
     f80:	1b 41       	mov.l	r4,@(4,r11)
     f82:	c6 de       	mov.l	@(888,gbr),r0
     f84:	24 09       	and	r0,r4
     f86:	44 21       	shar	r4
     f88:	8b 01       	bf	f8e <ccpl_lp_03_e>
     f8a:	af 03       	bra	d94 <ccpl_lp_03_00>
     f8c:	00 09       	nop	

00000f8e <ccpl_lp_03_e>:
     f8e:	45 28       	shll16	r5
     f90:	25 2d       	xtrct	r2,r5
     f92:	1b 50       	mov.l	r5,@(0,r11)
     f94:	7f 08       	add	#8,r15
     f96:	67 f6       	mov.l	@r15+,r7

00000f98 <clcvt_lp_09>:
     f98:	00 0b       	rts	
     f9a:	60 b3       	mov	r11,r0

00000f9c <C512>:
     f9c:	00 00       	.word 0x0000
     f9e:	02 00       	.word 0x0200

00000fa0 <IMM_CasheThrough>:
     fa0:	20 00       	mov.b	r0,@r0
	...

00000fa4 <MsSBase_MIN>:
     fa4:	85 16       	mov.w	@(12,r1),r0
     fa6:	42 08       	shll2	r2
     fa8:	63 75       	mov.w	@r7+,r3
     faa:	6e 0f       	exts.w	r0,r14
     fac:	64 75       	mov.w	@r7+,r4
     fae:	32 ac       	add	r10,r2
     fb0:	85 26       	mov.w	@(12,r2),r0
     fb2:	43 08       	shll2	r3
     fb4:	3e 07       	cmp/gt	r0,r14
     fb6:	8f 01       	bf.s	fbc <msbmn_0>
     fb8:	43 08       	shll2	r3
     fba:	6e 03       	mov	r0,r14

00000fbc <msbmn_0>:
     fbc:	33 ac       	add	r10,r3
     fbe:	44 08       	shll2	r4
     fc0:	85 36       	mov.w	@(12,r3),r0
     fc2:	44 08       	shll2	r4
     fc4:	3e 07       	cmp/gt	r0,r14
     fc6:	8f 01       	bf.s	fcc <msbmn_1>
     fc8:	34 ac       	add	r10,r4
     fca:	6e 03       	mov	r0,r14

00000fcc <msbmn_1>:
     fcc:	85 46       	mov.w	@(12,r4),r0
     fce:	5c f3       	mov.l	@(12,r15),r12
     fd0:	3e 07       	cmp/gt	r0,r14
     fd2:	8b 00       	bf	fd6 <msbmn_2>
     fd4:	6e 03       	mov	r0,r14

00000fd6 <msbmn_2>:
     fd6:	c5 38       	mov.w	@(112,gbr),r0
     fd8:	3e c8       	sub	r12,r14
     fda:	3e 06       	cmp/hi	r0,r14
     fdc:	8d 01       	bt.s	fe2 <msbmn_3>
     fde:	3e cc       	add	r12,r14
     fe0:	79 04       	add	#4,r9

00000fe2 <msbmn_3>:
     fe2:	60 96       	mov.l	@r9+,r0
     fe4:	40 2b       	jmp	@r0
     fe6:	00 09       	nop	

00000fe8 <MsSBase_CEN>:
     fe8:	63 75       	mov.w	@r7+,r3
     fea:	42 08       	shll2	r2
     fec:	5e 13       	mov.l	@(12,r1),r14
     fee:	32 ac       	add	r10,r2
     ff0:	64 75       	mov.w	@r7+,r4
     ff2:	50 23       	mov.l	@(12,r2),r0
     ff4:	43 08       	shll2	r3
     ff6:	3e 0c       	add	r0,r14
     ff8:	43 08       	shll2	r3
     ffa:	33 ac       	add	r10,r3
     ffc:	44 08       	shll2	r4
     ffe:	50 33       	mov.l	@(12,r3),r0
    1000:	44 08       	shll2	r4
    1002:	3e 0c       	add	r0,r14
    1004:	34 ac       	add	r10,r4
    1006:	50 43       	mov.l	@(12,r4),r0
    1008:	3e 0c       	add	r0,r14
    100a:	4e 29       	shlr16	r14
    100c:	6e ef       	exts.w	r14,r14
    100e:	4e 21       	shar	r14
    1010:	4e 21       	shar	r14
    1012:	5c f3       	mov.l	@(12,r15),r12
    1014:	c5 38       	mov.w	@(112,gbr),r0
    1016:	3e c8       	sub	r12,r14
    1018:	3e 06       	cmp/hi	r0,r14
    101a:	8d 01       	bt.s	1020 <srbs_c0>
    101c:	3e cc       	add	r12,r14
    101e:	79 04       	add	#4,r9

00001020 <srbs_c0>:
    1020:	60 96       	mov.l	@r9+,r0
    1022:	40 2b       	jmp	@r0
    1024:	00 09       	nop	
	...

00001028 <MsSBase_MAX>:
    1028:	63 75       	mov.w	@r7+,r3
    102a:	42 08       	shll2	r2
    102c:	85 16       	mov.w	@(12,r1),r0
    102e:	32 ac       	add	r10,r2
    1030:	64 75       	mov.w	@r7+,r4
    1032:	6e 0f       	exts.w	r0,r14
    1034:	85 26       	mov.w	@(12,r2),r0
    1036:	43 08       	shll2	r3
    1038:	43 08       	shll2	r3
    103a:	33 ac       	add	r10,r3
    103c:	3e 03       	cmp/ge	r0,r14
    103e:	8d 01       	bt.s	1044 <msbmx_0>
    1040:	44 08       	shll2	r4
    1042:	6e 03       	mov	r0,r14

00001044 <msbmx_0>:
    1044:	85 36       	mov.w	@(12,r3),r0
    1046:	44 08       	shll2	r4
    1048:	3e 03       	cmp/ge	r0,r14
    104a:	8d 01       	bt.s	1050 <msbmx_1>
    104c:	34 ac       	add	r10,r4
    104e:	6e 03       	mov	r0,r14

00001050 <msbmx_1>:
    1050:	85 46       	mov.w	@(12,r4),r0
    1052:	5c f3       	mov.l	@(12,r15),r12
    1054:	3e 03       	cmp/ge	r0,r14
    1056:	89 00       	bt	105a <msbmx_2>
    1058:	6e 03       	mov	r0,r14

0000105a <msbmx_2>:
    105a:	c5 38       	mov.w	@(112,gbr),r0
    105c:	3e c8       	sub	r12,r14
    105e:	3e 06       	cmp/hi	r0,r14
    1060:	8d 01       	bt.s	1066 <msbmx_3>
    1062:	3e cc       	add	r12,r14
    1064:	79 04       	add	#4,r9

00001066 <msbmx_3>:
    1066:	60 96       	mov.l	@r9+,r0
    1068:	40 2b       	jmp	@r0
    106a:	00 09       	nop	

0000106c <MsSBase_BFR>:
    106c:	c5 38       	mov.w	@(112,gbr),r0
    106e:	42 08       	shll2	r2
    1070:	3e 06       	cmp/hi	r0,r14
    1072:	8d 0b       	bt.s	108c <msrbs_b0>
    1074:	32 ac       	add	r10,r2
    1076:	79 04       	add	#4,r9
    1078:	63 75       	mov.w	@r7+,r3
    107a:	43 08       	shll2	r3
    107c:	64 75       	mov.w	@r7+,r4
    107e:	43 08       	shll2	r3
    1080:	33 ac       	add	r10,r3
    1082:	44 08       	shll2	r4
    1084:	60 96       	mov.l	@r9+,r0
    1086:	44 08       	shll2	r4
    1088:	40 2b       	jmp	@r0
    108a:	34 ac       	add	r10,r4

0000108c <msrbs_b0>:
    108c:	60 92       	mov.l	@r9,r0
    108e:	40 2b       	jmp	@r0
    1090:	77 04       	add	#4,r7
	...

00001094 <MsSBase_MIN_N>:
    1094:	5e 13       	mov.l	@(12,r1),r14
    1096:	42 08       	shll2	r2
    1098:	63 75       	mov.w	@r7+,r3
    109a:	64 75       	mov.w	@r7+,r4
    109c:	32 ac       	add	r10,r2
    109e:	50 23       	mov.l	@(12,r2),r0
    10a0:	43 08       	shll2	r3
    10a2:	3e 07       	cmp/gt	r0,r14
    10a4:	8f 01       	bf.s	10aa <msbmn_n0>
    10a6:	43 08       	shll2	r3
    10a8:	6e 03       	mov	r0,r14

000010aa <msbmn_n0>:
    10aa:	33 ac       	add	r10,r3
    10ac:	44 08       	shll2	r4
    10ae:	50 33       	mov.l	@(12,r3),r0
    10b0:	44 08       	shll2	r4
    10b2:	3e 07       	cmp/gt	r0,r14
    10b4:	8f 01       	bf.s	10ba <msbmn_n1>
    10b6:	34 ac       	add	r10,r4
    10b8:	6e 03       	mov	r0,r14

000010ba <msbmn_n1>:
    10ba:	50 43       	mov.l	@(12,r4),r0
    10bc:	5c f3       	mov.l	@(12,r15),r12
    10be:	3e 07       	cmp/gt	r0,r14
    10c0:	8b 00       	bf	10c4 <msbmn_n2>
    10c2:	6e 03       	mov	r0,r14

000010c4 <msbmn_n2>:
    10c4:	c5 38       	mov.w	@(112,gbr),r0
    10c6:	4c 28       	shll16	r12
    10c8:	40 28       	shll16	r0
    10ca:	30 cc       	add	r12,r0
    10cc:	3e 06       	cmp/hi	r0,r14
    10ce:	8d 04       	bt.s	10da <msbmn_n3>
    10d0:	4c 01       	shlr	r12
    10d2:	3e c7       	cmp/gt	r12,r14
    10d4:	8b 01       	bf	10da <msbmn_n3>
    10d6:	a0 5e       	bra	1196 <MsSBase_NEAR>
    10d8:	4e 29       	shlr16	r14

000010da <msbmn_n3>:
    10da:	60 96       	mov.l	@r9+,r0
    10dc:	40 2b       	jmp	@r0
    10de:	00 09       	nop	

000010e0 <MsSBase_CEN_N>:
    10e0:	63 75       	mov.w	@r7+,r3
    10e2:	42 08       	shll2	r2
    10e4:	5e 13       	mov.l	@(12,r1),r14
    10e6:	32 ac       	add	r10,r2
    10e8:	64 75       	mov.w	@r7+,r4
    10ea:	50 23       	mov.l	@(12,r2),r0
    10ec:	43 08       	shll2	r3
    10ee:	3e 0c       	add	r0,r14
    10f0:	43 08       	shll2	r3
    10f2:	33 ac       	add	r10,r3
    10f4:	44 08       	shll2	r4
    10f6:	50 33       	mov.l	@(12,r3),r0
    10f8:	44 08       	shll2	r4
    10fa:	3e 0c       	add	r0,r14
    10fc:	34 ac       	add	r10,r4
    10fe:	50 43       	mov.l	@(12,r4),r0
    1100:	3e 0c       	add	r0,r14
    1102:	4e 21       	shar	r14
    1104:	4e 21       	shar	r14
    1106:	5c f3       	mov.l	@(12,r15),r12
    1108:	c5 38       	mov.w	@(112,gbr),r0
    110a:	4c 28       	shll16	r12
    110c:	40 28       	shll16	r0
    110e:	30 cc       	add	r12,r0
    1110:	3e 06       	cmp/hi	r0,r14
    1112:	8d 04       	bt.s	111e <srbs_cn0>
    1114:	4c 01       	shlr	r12
    1116:	3e c7       	cmp/gt	r12,r14
    1118:	8b 01       	bf	111e <srbs_cn0>
    111a:	a0 3c       	bra	1196 <MsSBase_NEAR>
    111c:	4e 29       	shlr16	r14

0000111e <srbs_cn0>:
    111e:	60 96       	mov.l	@r9+,r0
    1120:	40 2b       	jmp	@r0
    1122:	00 09       	nop	

00001124 <MsSBase_MAX_N>:
    1124:	63 75       	mov.w	@r7+,r3
    1126:	42 08       	shll2	r2
    1128:	5e 13       	mov.l	@(12,r1),r14
    112a:	32 ac       	add	r10,r2
    112c:	64 75       	mov.w	@r7+,r4
    112e:	50 23       	mov.l	@(12,r2),r0
    1130:	43 08       	shll2	r3
    1132:	43 08       	shll2	r3
    1134:	33 ac       	add	r10,r3
    1136:	3e 03       	cmp/ge	r0,r14
    1138:	8d 01       	bt.s	113e <msbmx_n0>
    113a:	44 08       	shll2	r4
    113c:	6e 03       	mov	r0,r14

0000113e <msbmx_n0>:
    113e:	50 33       	mov.l	@(12,r3),r0
    1140:	44 08       	shll2	r4
    1142:	3e 03       	cmp/ge	r0,r14
    1144:	8d 01       	bt.s	114a <msbmx_n1>
    1146:	34 ac       	add	r10,r4
    1148:	6e 03       	mov	r0,r14

0000114a <msbmx_n1>:
    114a:	50 43       	mov.l	@(12,r4),r0
    114c:	5c f3       	mov.l	@(12,r15),r12
    114e:	3e 03       	cmp/ge	r0,r14
    1150:	89 00       	bt	1154 <msbmx_n2>
    1152:	6e 03       	mov	r0,r14

00001154 <msbmx_n2>:
    1154:	c5 38       	mov.w	@(112,gbr),r0
    1156:	4c 28       	shll16	r12
    1158:	40 28       	shll16	r0
    115a:	30 cc       	add	r12,r0
    115c:	3e 06       	cmp/hi	r0,r14
    115e:	8d 04       	bt.s	116a <msbmx_n3>
    1160:	4c 01       	shlr	r12
    1162:	3e c7       	cmp/gt	r12,r14
    1164:	8b 01       	bf	116a <msbmx_n3>
    1166:	a0 16       	bra	1196 <MsSBase_NEAR>
    1168:	4e 29       	shlr16	r14

0000116a <msbmx_n3>:
    116a:	60 96       	mov.l	@r9+,r0
    116c:	40 2b       	jmp	@r0
    116e:	00 09       	nop	

00001170 <MsSBase_BFR_N>:
    1170:	c5 38       	mov.w	@(112,gbr),r0
    1172:	42 08       	shll2	r2
    1174:	3e 06       	cmp/hi	r0,r14
    1176:	8d 0b       	bt.s	1190 <msrbs_bn0>
    1178:	32 ac       	add	r10,r2
    117a:	79 04       	add	#4,r9
    117c:	63 75       	mov.w	@r7+,r3
    117e:	43 08       	shll2	r3
    1180:	64 75       	mov.w	@r7+,r4
    1182:	43 08       	shll2	r3
    1184:	33 ac       	add	r10,r3
    1186:	44 08       	shll2	r4
    1188:	60 96       	mov.l	@r9+,r0
    118a:	44 08       	shll2	r4
    118c:	40 2b       	jmp	@r0
    118e:	34 ac       	add	r10,r4

00001190 <msrbs_bn0>:
    1190:	60 92       	mov.l	@r9,r0
    1192:	40 2b       	jmp	@r0
    1194:	77 04       	add	#4,r7

00001196 <MsSBase_NEAR>:
    1196:	50 11       	mov.l	@(4,r1),r0
    1198:	40 21       	shar	r0
    119a:	8f 08       	bf.s	11ae <msb_near11>
    119c:	50 21       	mov.l	@(4,r2),r0
    119e:	40 21       	shar	r0
    11a0:	8f 05       	bf.s	11ae <msb_near11>
    11a2:	50 31       	mov.l	@(4,r3),r0
    11a4:	40 21       	shar	r0
    11a6:	8f 02       	bf.s	11ae <msb_near11>
    11a8:	50 41       	mov.l	@(4,r4),r0
    11aa:	40 21       	shar	r0
    11ac:	89 2f       	bt	120e <msnear_01>

000011ae <msb_near11>:
    11ae:	c6 de       	mov.l	@(888,gbr),r0
    11b0:	40 05       	rotr	r0
    11b2:	8d 2a       	bt.s	120a <msnear_02>
    11b4:	2f e6       	mov.l	r14,@-r15
    11b6:	9e 2d       	mov.w	1214 <mC1024M>,r14	! fc00
    11b8:	95 2d       	mov.w	1216 <mC1023>,r5	! 3ff
    11ba:	85 10       	mov.w	@(0,r1),r0
    11bc:	30 57       	cmp/gt	r5,r0
    11be:	8d 25       	bt.s	120c <msnear_00>
    11c0:	30 e3       	cmp/ge	r14,r0
    11c2:	8f 23       	bf.s	120c <msnear_00>
    11c4:	85 11       	mov.w	@(2,r1),r0
    11c6:	30 57       	cmp/gt	r5,r0
    11c8:	8d 20       	bt.s	120c <msnear_00>
    11ca:	30 e3       	cmp/ge	r14,r0
    11cc:	8f 1e       	bf.s	120c <msnear_00>
    11ce:	85 20       	mov.w	@(0,r2),r0
    11d0:	30 57       	cmp/gt	r5,r0
    11d2:	8d 1b       	bt.s	120c <msnear_00>
    11d4:	30 e3       	cmp/ge	r14,r0
    11d6:	8f 19       	bf.s	120c <msnear_00>
    11d8:	85 21       	mov.w	@(2,r2),r0
    11da:	30 57       	cmp/gt	r5,r0
    11dc:	8d 16       	bt.s	120c <msnear_00>
    11de:	30 e3       	cmp/ge	r14,r0
    11e0:	8f 14       	bf.s	120c <msnear_00>
    11e2:	85 30       	mov.w	@(0,r3),r0
    11e4:	30 57       	cmp/gt	r5,r0
    11e6:	8d 11       	bt.s	120c <msnear_00>
    11e8:	30 e3       	cmp/ge	r14,r0
    11ea:	8f 0f       	bf.s	120c <msnear_00>
    11ec:	85 31       	mov.w	@(2,r3),r0
    11ee:	30 57       	cmp/gt	r5,r0
    11f0:	8d 0c       	bt.s	120c <msnear_00>
    11f2:	30 e3       	cmp/ge	r14,r0
    11f4:	8f 0a       	bf.s	120c <msnear_00>
    11f6:	85 40       	mov.w	@(0,r4),r0
    11f8:	30 57       	cmp/gt	r5,r0
    11fa:	8d 07       	bt.s	120c <msnear_00>
    11fc:	30 e3       	cmp/ge	r14,r0
    11fe:	8f 05       	bf.s	120c <msnear_00>
    1200:	85 41       	mov.w	@(2,r4),r0
    1202:	30 57       	cmp/gt	r5,r0
    1204:	8d 02       	bt.s	120c <msnear_00>
    1206:	30 e3       	cmp/ge	r14,r0
    1208:	8b 00       	bf	120c <msnear_00>

0000120a <msnear_02>:
    120a:	79 04       	add	#4,r9

0000120c <msnear_00>:
    120c:	6e f6       	mov.l	@r15+,r14

0000120e <msnear_01>:
    120e:	60 96       	mov.l	@r9+,r0
    1210:	40 2b       	jmp	@r0
    1212:	00 09       	nop	

00001214 <mC1024M>:
    1214:	fc 00       	fadd	fr0,fr12

00001216 <mC1023>:
    1216:	03 ff       	mac.l	@r15+,@r3+
