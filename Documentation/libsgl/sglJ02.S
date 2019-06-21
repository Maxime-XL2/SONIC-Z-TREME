
sglJ02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_sbMakePolygon>:
       0:	4f 22       	sts.l	pr,@-r15
       2:	6a 46       	mov.l	@r4+,r10
       4:	40 08       	shll2	r0
       6:	40 08       	shll2	r0
       8:	30 ac       	add	r10,r0
       a:	c2 0a       	mov.l	r0,@(40,gbr)
       c:	e1 a4       	mov	#-92,r1
       e:	41 08       	shll2	r1
      10:	e0 11       	mov	#17,r0
      12:	80 12       	mov.b	r0,@(2,r1)
      14:	00 09       	nop	
      16:	00 09       	nop	
      18:	00 09       	nop	
      1a:	00 09       	nop	
      1c:	00 09       	nop	
      1e:	00 09       	nop	
      20:	c7 d2       	mova	36c <Matrix_buf>,r0
      22:	65 43       	mov	r4,r5
      24:	75 0c       	add	#12,r5
      26:	66 03       	mov	r0,r6
      28:	50 50       	mov.l	@(0,r5),r0
      2a:	51 51       	mov.l	@(4,r5),r1
      2c:	52 52       	mov.l	@(8,r5),r2
      2e:	16 00       	mov.l	r0,@(0,r6)
      30:	16 11       	mov.l	r1,@(4,r6)
      32:	16 22       	mov.l	r2,@(8,r6)
      34:	50 54       	mov.l	@(16,r5),r0
      36:	51 55       	mov.l	@(20,r5),r1
      38:	52 56       	mov.l	@(24,r5),r2
      3a:	16 04       	mov.l	r0,@(16,r6)
      3c:	16 15       	mov.l	r1,@(20,r6)
      3e:	16 26       	mov.l	r2,@(24,r6)
      40:	50 58       	mov.l	@(32,r5),r0
      42:	51 59       	mov.l	@(36,r5),r1
      44:	52 5a       	mov.l	@(40,r5),r2
      46:	16 08       	mov.l	r0,@(32,r6)
      48:	16 19       	mov.l	r1,@(36,r6)
      4a:	16 2a       	mov.l	r2,@(40,r6)
      4c:	a1 a8       	bra	3a0 <ccpl_lp_10>
      4e:	76 00       	add	#0,r6

00000050 <ccpl_lp_02_00>:
      50:	d0 c5       	mov.l	368 <C512>,r0	! 200
      52:	e1 00       	mov	#0,r1

00000054 <ccpl_lp_02_0>:
      54:	33 07       	cmp/gt	r0,r3
      56:	8b 03       	bf	60 <ccpl_lp_02_1>
      58:	e1 01       	mov	#1,r1
      5a:	43 21       	shar	r3
      5c:	af fa       	bra	54 <ccpl_lp_02_0>
      5e:	45 21       	shar	r5

00000060 <ccpl_lp_02_1>:
      60:	35 07       	cmp/gt	r0,r5
      62:	8b 03       	bf	6c <ccpl_lp_02_2>
      64:	e1 01       	mov	#1,r1
      66:	43 21       	shar	r3
      68:	af fa       	bra	60 <ccpl_lp_02_1>
      6a:	45 21       	shar	r5

0000006c <ccpl_lp_02_2>:
      6c:	60 0b       	neg	r0,r0
      6e:	33 03       	cmp/ge	r0,r3
      70:	89 03       	bt	7a <ccpl_lp_02_3>
      72:	e1 01       	mov	#1,r1
      74:	43 21       	shar	r3
      76:	af f9       	bra	6c <ccpl_lp_02_2>
      78:	45 21       	shar	r5

0000007a <ccpl_lp_02_3>:
      7a:	35 03       	cmp/ge	r0,r5
      7c:	89 03       	bt	86 <ccpl_lp_02_4>
      7e:	e1 01       	mov	#1,r1
      80:	43 21       	shar	r3
      82:	af fa       	bra	7a <ccpl_lp_02_3>
      84:	45 21       	shar	r5

00000086 <ccpl_lp_02_4>:
      86:	21 18       	tst	r1,r1
      88:	8b 01       	bf	8e <ccpl_lp_02_4a>
      8a:	a1 31       	bra	2f0 <ccpl_lp_02_e>
      8c:	00 09       	nop	

0000008e <ccpl_lp_02_4a>:
      8e:	60 33       	mov	r3,r0
      90:	61 53       	mov	r5,r1
      92:	64 33       	mov	r3,r4
      94:	67 53       	mov	r5,r7
      96:	40 11       	cmp/pz	r0
      98:	89 00       	bt	9c <ccpl_lp_02_5>
      9a:	60 0b       	neg	r0,r0

0000009c <ccpl_lp_02_5>:
      9c:	41 11       	cmp/pz	r1
      9e:	89 00       	bt	a2 <ccpl_lp_02_6>
      a0:	61 1b       	neg	r1,r1

000000a2 <ccpl_lp_02_6>:
      a2:	31 03       	cmp/ge	r0,r1
      a4:	8d 1d       	bt.s	e2 <ccpl_lp_02_7>
      a6:	e0 04       	mov	#4,r0
      a8:	43 11       	cmp/pz	r3
      aa:	8b 0c       	bf	c6 <ccpl_lp_02_6c>
      ac:	d1 ae       	mov.l	368 <C512>,r1	! 200

000000ae <ccpl_lp_02_6a>:
      ae:	33 4c       	add	r4,r3
      b0:	33 17       	cmp/gt	r1,r3
      b2:	8d 02       	bt.s	ba <ccpl_lp_02_6b>
      b4:	33 48       	sub	r4,r3
      b6:	35 7c       	add	r7,r5
      b8:	33 4c       	add	r4,r3

000000ba <ccpl_lp_02_6b>:
      ba:	47 21       	shar	r7
      bc:	40 10       	dt	r0
      be:	8f f6       	bf.s	ae <ccpl_lp_02_6a>
      c0:	44 21       	shar	r4
      c2:	a1 15       	bra	2f0 <ccpl_lp_02_e>
      c4:	00 09       	nop	

000000c6 <ccpl_lp_02_6c>:
      c6:	d1 a8       	mov.l	368 <C512>,r1	! 200
      c8:	61 1b       	neg	r1,r1

000000ca <ccpl_lp_02_6d>:
      ca:	33 4c       	add	r4,r3
      cc:	33 13       	cmp/ge	r1,r3
      ce:	8f 02       	bf.s	d6 <ccpl_lp_02_6e>
      d0:	33 48       	sub	r4,r3
      d2:	35 7c       	add	r7,r5
      d4:	33 4c       	add	r4,r3

000000d6 <ccpl_lp_02_6e>:
      d6:	47 21       	shar	r7
      d8:	40 10       	dt	r0
      da:	8f f6       	bf.s	ca <ccpl_lp_02_6d>
      dc:	44 21       	shar	r4
      de:	a1 07       	bra	2f0 <ccpl_lp_02_e>
      e0:	00 09       	nop	

000000e2 <ccpl_lp_02_7>:
      e2:	45 11       	cmp/pz	r5
      e4:	8b 0c       	bf	100 <ccpl_lp_02_7c>
      e6:	d1 a0       	mov.l	368 <C512>,r1	! 200

000000e8 <ccpl_lp_02_7a>:
      e8:	35 7c       	add	r7,r5
      ea:	35 17       	cmp/gt	r1,r5
      ec:	8d 02       	bt.s	f4 <ccpl_lp_02_7b>
      ee:	35 78       	sub	r7,r5
      f0:	33 4c       	add	r4,r3
      f2:	35 7c       	add	r7,r5

000000f4 <ccpl_lp_02_7b>:
      f4:	44 21       	shar	r4
      f6:	40 10       	dt	r0
      f8:	8f f6       	bf.s	e8 <ccpl_lp_02_7a>
      fa:	47 21       	shar	r7
      fc:	a0 f8       	bra	2f0 <ccpl_lp_02_e>
      fe:	00 09       	nop	

00000100 <ccpl_lp_02_7c>:
     100:	d1 99       	mov.l	368 <C512>,r1	! 200
     102:	61 1b       	neg	r1,r1

00000104 <ccpl_lp_02_7d>:
     104:	35 7c       	add	r7,r5
     106:	35 13       	cmp/ge	r1,r5
     108:	8f 02       	bf.s	110 <ccpl_lp_02_7e>
     10a:	35 78       	sub	r7,r5
     10c:	33 4c       	add	r4,r3
     10e:	35 7c       	add	r7,r5

00000110 <ccpl_lp_02_7e>:
     110:	44 21       	shar	r4
     112:	40 10       	dt	r0
     114:	8f f6       	bf.s	104 <ccpl_lp_02_7d>
     116:	47 21       	shar	r7
     118:	a0 ea       	bra	2f0 <ccpl_lp_02_e>
     11a:	00 09       	nop	

0000011c <ccpl_lp_03_00>:
     11c:	d0 92       	mov.l	368 <C512>,r0	! 200
     11e:	e1 00       	mov	#0,r1

00000120 <ccpl_lp_03_0>:
     120:	32 07       	cmp/gt	r0,r2
     122:	8b 03       	bf	12c <ccpl_lp_03_1>
     124:	e1 01       	mov	#1,r1
     126:	42 21       	shar	r2
     128:	af fa       	bra	120 <ccpl_lp_03_0>
     12a:	45 21       	shar	r5

0000012c <ccpl_lp_03_1>:
     12c:	35 07       	cmp/gt	r0,r5
     12e:	8b 03       	bf	138 <ccpl_lp_03_2>
     130:	e1 01       	mov	#1,r1
     132:	42 21       	shar	r2
     134:	af fa       	bra	12c <ccpl_lp_03_1>
     136:	45 21       	shar	r5

00000138 <ccpl_lp_03_2>:
     138:	60 0b       	neg	r0,r0
     13a:	32 03       	cmp/ge	r0,r2
     13c:	89 03       	bt	146 <ccpl_lp_03_3>
     13e:	e1 01       	mov	#1,r1
     140:	42 21       	shar	r2
     142:	af f9       	bra	138 <ccpl_lp_03_2>
     144:	45 21       	shar	r5

00000146 <ccpl_lp_03_3>:
     146:	35 03       	cmp/ge	r0,r5
     148:	89 03       	bt	152 <ccpl_lp_03_4>
     14a:	e1 01       	mov	#1,r1
     14c:	42 21       	shar	r2
     14e:	af fa       	bra	146 <ccpl_lp_03_3>
     150:	45 21       	shar	r5

00000152 <ccpl_lp_03_4>:
     152:	21 18       	tst	r1,r1
     154:	8b 01       	bf	15a <ccpl_lp_03_4a>
     156:	a0 fe       	bra	356 <ccpl_lp_03_e>
     158:	00 09       	nop	

0000015a <ccpl_lp_03_4a>:
     15a:	60 23       	mov	r2,r0
     15c:	61 53       	mov	r5,r1
     15e:	64 23       	mov	r2,r4
     160:	67 53       	mov	r5,r7
     162:	40 11       	cmp/pz	r0
     164:	89 00       	bt	168 <ccpl_lp_03_5>
     166:	60 0b       	neg	r0,r0

00000168 <ccpl_lp_03_5>:
     168:	41 11       	cmp/pz	r1
     16a:	89 00       	bt	16e <ccpl_lp_03_6>
     16c:	61 1b       	neg	r1,r1

0000016e <ccpl_lp_03_6>:
     16e:	31 03       	cmp/ge	r0,r1
     170:	8d 1d       	bt.s	1ae <ccpl_lp_03_7>
     172:	e0 04       	mov	#4,r0
     174:	42 11       	cmp/pz	r2
     176:	8b 0c       	bf	192 <ccpl_lp_03_6c>
     178:	d1 7b       	mov.l	368 <C512>,r1	! 200

0000017a <ccpl_lp_03_6a>:
     17a:	32 4c       	add	r4,r2
     17c:	32 17       	cmp/gt	r1,r2
     17e:	8d 02       	bt.s	186 <ccpl_lp_03_6b>
     180:	32 48       	sub	r4,r2
     182:	35 7c       	add	r7,r5
     184:	32 4c       	add	r4,r2

00000186 <ccpl_lp_03_6b>:
     186:	47 21       	shar	r7
     188:	40 10       	dt	r0
     18a:	8f f6       	bf.s	17a <ccpl_lp_03_6a>
     18c:	44 21       	shar	r4
     18e:	a0 e2       	bra	356 <ccpl_lp_03_e>
     190:	00 09       	nop	

00000192 <ccpl_lp_03_6c>:
     192:	d1 75       	mov.l	368 <C512>,r1	! 200
     194:	61 1b       	neg	r1,r1

00000196 <ccpl_lp_03_6d>:
     196:	32 4c       	add	r4,r2
     198:	32 13       	cmp/ge	r1,r2
     19a:	8f 02       	bf.s	1a2 <ccpl_lp_03_6e>
     19c:	32 48       	sub	r4,r2
     19e:	35 7c       	add	r7,r5
     1a0:	32 4c       	add	r4,r2

000001a2 <ccpl_lp_03_6e>:
     1a2:	47 21       	shar	r7
     1a4:	40 10       	dt	r0
     1a6:	8f f6       	bf.s	196 <ccpl_lp_03_6d>
     1a8:	44 21       	shar	r4
     1aa:	a0 d4       	bra	356 <ccpl_lp_03_e>
     1ac:	00 09       	nop	

000001ae <ccpl_lp_03_7>:
     1ae:	45 11       	cmp/pz	r5
     1b0:	8b 0c       	bf	1cc <ccpl_lp_03_7c>
     1b2:	d1 6d       	mov.l	368 <C512>,r1	! 200

000001b4 <ccpl_lp_03_7a>:
     1b4:	35 7c       	add	r7,r5
     1b6:	35 17       	cmp/gt	r1,r5
     1b8:	8d 02       	bt.s	1c0 <ccpl_lp_03_7b>
     1ba:	35 78       	sub	r7,r5
     1bc:	32 4c       	add	r4,r2
     1be:	35 7c       	add	r7,r5

000001c0 <ccpl_lp_03_7b>:
     1c0:	44 21       	shar	r4
     1c2:	40 10       	dt	r0
     1c4:	8f f6       	bf.s	1b4 <ccpl_lp_03_7a>
     1c6:	47 21       	shar	r7
     1c8:	a0 c5       	bra	356 <ccpl_lp_03_e>
     1ca:	00 09       	nop	

000001cc <ccpl_lp_03_7c>:
     1cc:	d1 66       	mov.l	368 <C512>,r1	! 200
     1ce:	61 1b       	neg	r1,r1

000001d0 <ccpl_lp_03_7d>:
     1d0:	35 7c       	add	r7,r5
     1d2:	35 13       	cmp/ge	r1,r5
     1d4:	8f 02       	bf.s	1dc <ccpl_lp_03_7e>
     1d6:	35 78       	sub	r7,r5
     1d8:	32 4c       	add	r4,r2
     1da:	35 7c       	add	r7,r5

000001dc <ccpl_lp_03_7e>:
     1dc:	44 21       	shar	r4
     1de:	40 10       	dt	r0
     1e0:	8f f6       	bf.s	1d0 <ccpl_lp_03_7d>
     1e2:	47 21       	shar	r7
     1e4:	a0 b7       	bra	356 <ccpl_lp_03_e>
     1e6:	00 09       	nop	

000001e8 <_sbCalcPolygon>:
     1e8:	4f 22       	sts.l	pr,@-r15
     1ea:	69 03       	mov	r0,r9
     1ec:	c6 0a       	mov.l	@(40,gbr),r0
     1ee:	62 93       	mov	r9,r2
     1f0:	42 08       	shll2	r2
     1f2:	6b 23       	mov	r2,r11
     1f4:	32 bc       	add	r11,r2
     1f6:	32 bc       	add	r11,r2
     1f8:	4b 08       	shll2	r11
     1fa:	3b 0c       	add	r0,r11
     1fc:	51 b3       	mov.l	@(12,r11),r1
     1fe:	ee ff       	mov	#-1,r14
     200:	c6 1b       	mov.l	@(108,gbr),r0
     202:	4e 18       	shll8	r14
     204:	1e 10       	mov.l	r1,@(0,r14)
     206:	65 09       	swap.w	r0,r5
     208:	65 5f       	exts.w	r5,r5
     20a:	1e 54       	mov.l	r5,@(16,r14)
     20c:	67 0f       	exts.w	r0,r7
     20e:	1e 75       	mov.l	r7,@(20,r14)
     210:	68 03       	mov	r0,r8
     212:	6a 46       	mov.l	@r4+,r10
     214:	72 f4       	add	#-12,r2
     216:	2f 46       	mov.l	r4,@-r15
     218:	3a 2c       	add	r2,r10
     21a:	74 0c       	add	#12,r4
     21c:	c7 53       	mova	36c <Matrix_buf>,r0
     21e:	66 03       	mov	r0,r6
     220:	50 40       	mov.l	@(0,r4),r0
     222:	51 41       	mov.l	@(4,r4),r1
     224:	52 42       	mov.l	@(8,r4),r2
     226:	16 00       	mov.l	r0,@(0,r6)
     228:	16 11       	mov.l	r1,@(4,r6)
     22a:	16 22       	mov.l	r2,@(8,r6)
     22c:	50 44       	mov.l	@(16,r4),r0
     22e:	51 45       	mov.l	@(20,r4),r1
     230:	52 46       	mov.l	@(24,r4),r2
     232:	16 04       	mov.l	r0,@(16,r6)
     234:	16 15       	mov.l	r1,@(20,r6)
     236:	16 26       	mov.l	r2,@(24,r6)
     238:	50 48       	mov.l	@(32,r4),r0
     23a:	51 49       	mov.l	@(36,r4),r1
     23c:	52 4a       	mov.l	@(40,r4),r2
     23e:	16 08       	mov.l	r0,@(32,r6)
     240:	16 19       	mov.l	r1,@(36,r6)
     242:	16 2a       	mov.l	r2,@(40,r6)
     244:	50 43       	mov.l	@(12,r4),r0
     246:	51 47       	mov.l	@(28,r4),r1
     248:	52 4b       	mov.l	@(44,r4),r2
     24a:	16 03       	mov.l	r0,@(12,r6)
     24c:	16 17       	mov.l	r1,@(28,r6)
     24e:	16 2b       	mov.l	r2,@(44,r6)
     250:	29 98       	tst	r9,r9
     252:	8f 02       	bf.s	25a <ccpl_lp_000>
     254:	76 20       	add	#32,r6
     256:	a0 81       	bra	35c <ccpl_lp_09>
     258:	00 09       	nop	

0000025a <ccpl_lp_000>:
     25a:	2f 56       	mov.l	r5,@-r15
     25c:	60 b3       	mov	r11,r0
     25e:	c2 0a       	mov.l	r0,@(40,gbr)
     260:	c4 ad       	mov.b	@(173,gbr),r0
     262:	70 01       	add	#1,r0
     264:	48 01       	shlr	r8

00000266 <ccpl_lp_00>:
     266:	40 10       	dt	r0
     268:	8f fd       	bf.s	266 <ccpl_lp_00>
     26a:	48 01       	shlr	r8
     26c:	c6 cc       	mov.l	@(816,gbr),r0
     26e:	2f 76       	mov.l	r7,@-r15
     270:	6d 0d       	extu.w	r0,r13
     272:	54 b1       	mov.l	@(4,r11),r4
     274:	6c 09       	swap.w	r0,r12
     276:	55 b2       	mov.l	@(8,r11),r5
     278:	6c cd       	extu.w	r12,r12
     27a:	c6 e3       	mov.l	@(908,gbr),r0
     27c:	3c 0c       	add	r0,r12
     27e:	3d 0c       	add	r0,r13
     280:	3c 0c       	add	r0,r12
     282:	3d 0c       	add	r0,r13
     284:	57 e7       	mov.l	@(28,r14),r7

00000286 <ccpl_lp_01>:
     286:	00 28       	clrmac	
     288:	06 af       	mac.l	@r10+,@r6+
     28a:	50 f1       	mov.l	@(4,r15),r0
     28c:	06 af       	mac.l	@r10+,@r6+
     28e:	51 61       	mov.l	@(4,r6),r1
     290:	06 af       	mac.l	@r10+,@r6+
     292:	76 d4       	add	#-44,r6
     294:	7a f4       	add	#-12,r10
     296:	02 0a       	sts	mach,r2
     298:	03 1a       	sts	macl,r3
     29a:	1e 04       	mov.l	r0,@(16,r14)
     29c:	23 2d       	xtrct	r2,r3
     29e:	33 1c       	add	r1,r3
     2a0:	33 83       	cmp/ge	r8,r3
     2a2:	8d 01       	bt.s	2a8 <ccpl_lp_02>
     2a4:	50 f0       	mov.l	@(0,r15),r0
     2a6:	63 83       	mov	r8,r3

000002a8 <ccpl_lp_02>:
     2a8:	1e 30       	mov.l	r3,@(0,r14)
     2aa:	7b f0       	add	#-16,r11
     2ac:	1e 05       	mov.l	r0,@(20,r14)
     2ae:	37 4d       	dmuls.l	r4,r7
     2b0:	c5 4a       	mov.w	@(148,gbr),r0
     2b2:	44 01       	shlr	r4
     2b4:	1b 33       	mov.l	r3,@(12,r11)
     2b6:	03 0a       	sts	mach,r3
     2b8:	37 5d       	dmuls.l	r5,r7
     2ba:	30 3c       	add	r3,r0
     2bc:	1b 56       	mov.l	r5,@(24,r11)
     2be:	61 03       	mov	r0,r1
     2c0:	c6 e3       	mov.l	@(908,gbr),r0
     2c2:	30 1c       	add	r1,r0
     2c4:	30 c2       	cmp/hs	r12,r0
     2c6:	34 4e       	addc	r4,r4
     2c8:	05 0a       	sts	mach,r5
     2ca:	c5 4b       	mov.w	@(150,gbr),r0
     2cc:	00 28       	clrmac	
     2ce:	06 af       	mac.l	@r10+,@r6+
     2d0:	30 5c       	add	r5,r0
     2d2:	61 03       	mov	r0,r1
     2d4:	c6 e3       	mov.l	@(908,gbr),r0
     2d6:	30 1c       	add	r1,r0
     2d8:	30 d2       	cmp/hs	r13,r0
     2da:	06 af       	mac.l	@r10+,@r6+
     2dc:	00 29       	movt	r0
     2de:	24 0b       	or	r0,r4
     2e0:	06 af       	mac.l	@r10+,@r6+
     2e2:	1b 45       	mov.l	r4,@(20,r11)
     2e4:	c6 df       	mov.l	@(892,gbr),r0
     2e6:	24 09       	and	r0,r4
     2e8:	44 21       	shar	r4
     2ea:	8b 01       	bf	2f0 <ccpl_lp_02_e>
     2ec:	ae b0       	bra	50 <ccpl_lp_02_00>
     2ee:	00 09       	nop	

000002f0 <ccpl_lp_02_e>:
     2f0:	45 28       	shll16	r5
     2f2:	62 66       	mov.l	@r6+,r2
     2f4:	7a f4       	add	#-12,r10
     2f6:	01 0a       	sts	mach,r1
     2f8:	04 1a       	sts	macl,r4
     2fa:	00 28       	clrmac	
     2fc:	06 af       	mac.l	@r10+,@r6+
     2fe:	25 3d       	xtrct	r3,r5
     300:	1b 54       	mov.l	r5,@(16,r11)
     302:	06 af       	mac.l	@r10+,@r6+
     304:	24 1d       	xtrct	r1,r4
     306:	34 2c       	add	r2,r4
     308:	06 af       	mac.l	@r10+,@r6+
     30a:	62 62       	mov.l	@r6,r2
     30c:	76 04       	add	#4,r6
     30e:	7a e8       	add	#-24,r10
     310:	01 0a       	sts	mach,r1
     312:	05 1a       	sts	macl,r5
     314:	57 e7       	mov.l	@(28,r14),r7
     316:	25 1d       	xtrct	r1,r5
     318:	49 10       	dt	r9
     31a:	8f b4       	bf.s	286 <ccpl_lp_01>
     31c:	35 2c       	add	r2,r5
     31e:	37 4d       	dmuls.l	r4,r7
     320:	c5 4a       	mov.w	@(148,gbr),r0
     322:	44 01       	shlr	r4
     324:	1b 52       	mov.l	r5,@(8,r11)
     326:	02 0a       	sts	mach,r2
     328:	37 5d       	dmuls.l	r5,r7
     32a:	30 2c       	add	r2,r0
     32c:	61 03       	mov	r0,r1
     32e:	c6 e3       	mov.l	@(908,gbr),r0
     330:	30 1c       	add	r1,r0
     332:	30 c2       	cmp/hs	r12,r0
     334:	05 0a       	sts	mach,r5
     336:	c5 4b       	mov.w	@(150,gbr),r0
     338:	34 4e       	addc	r4,r4
     33a:	30 5c       	add	r5,r0
     33c:	61 03       	mov	r0,r1
     33e:	c6 e3       	mov.l	@(908,gbr),r0
     340:	30 1c       	add	r1,r0
     342:	30 d2       	cmp/hs	r13,r0
     344:	00 29       	movt	r0
     346:	24 0b       	or	r0,r4
     348:	1b 41       	mov.l	r4,@(4,r11)
     34a:	c6 df       	mov.l	@(892,gbr),r0
     34c:	24 09       	and	r0,r4
     34e:	44 21       	shar	r4
     350:	8b 01       	bf	356 <ccpl_lp_03_e>
     352:	ae e3       	bra	11c <ccpl_lp_03_00>
     354:	00 09       	nop	

00000356 <ccpl_lp_03_e>:
     356:	45 28       	shll16	r5
     358:	25 2d       	xtrct	r2,r5
     35a:	1b 50       	mov.l	r5,@(0,r11)

0000035c <ccpl_lp_09>:
     35c:	6a b3       	mov	r11,r10
     35e:	7f 08       	add	#8,r15
     360:	64 f6       	mov.l	@r15+,r4
     362:	a0 1d       	bra	3a0 <ccpl_lp_10>
     364:	76 e0       	add	#-32,r6
	...

00000368 <C512>:
     368:	00 00       	.word 0x0000
     36a:	02 00       	.word 0x0200

0000036c <Matrix_buf>:
	...

0000039c <IMM_CasheThrough2>:
     39c:	20 00       	mov.b	r0,@r0
	...

000003a0 <ccpl_lp_10>:
     3a0:	c4 a9       	mov.b	@(169,gbr),r0
     3a2:	c8 01       	tst	#1,r0
     3a4:	8f 01       	bf.s	3aa <ccpl_lp_11>
     3a6:	e1 20       	mov	#32,r1
     3a8:	e1 10       	mov	#16,r1

000003aa <ccpl_lp_11>:
     3aa:	20 1b       	or	r1,r0
     3ac:	c0 a9       	mov.b	r0,@(169,gbr)
     3ae:	c6 0d       	mov.l	@(52,gbr),r0
     3b0:	63 46       	mov.l	@r4+,r3
     3b2:	67 46       	mov.l	@r4+,r7
     3b4:	68 46       	mov.l	@r4+,r8
     3b6:	6b 03       	mov	r0,r11
     3b8:	c6 0f       	mov.l	@(60,gbr),r0
     3ba:	2f 46       	mov.l	r4,@-r15
     3bc:	70 04       	add	#4,r0
     3be:	2f 06       	mov.l	r0,@-r15
     3c0:	2f 36       	mov.l	r3,@-r15
     3c2:	c6 1b       	mov.l	@(108,gbr),r0
     3c4:	ee ff       	mov	#-1,r14
     3c6:	61 03       	mov	r0,r1
     3c8:	c4 ad       	mov.b	@(173,gbr),r0
     3ca:	41 29       	shlr16	r1

000003cc <ccpl_lp_12>:
     3cc:	40 10       	dt	r0
     3ce:	8f fd       	bf.s	3cc <ccpl_lp_12>
     3d0:	41 01       	shlr	r1
     3d2:	2f 16       	mov.l	r1,@-r15
     3d4:	7f f4       	add	#-12,r15
     3d6:	c7 2b       	mova	484 <ccpl_lp_28>,r0
     3d8:	40 2a       	lds	r0,pr

000003da <ccpl_lp_20>:
     3da:	00 28       	clrmac	
     3dc:	06 7f       	mac.l	@r7+,@r6+
     3de:	85 74       	mov.w	@(8,r7),r0
     3e0:	65 f3       	mov	r15,r5
     3e2:	06 7f       	mac.l	@r7+,@r6+
     3e4:	61 0f       	exts.w	r0,r1
     3e6:	41 08       	shll2	r1
     3e8:	06 7f       	mac.l	@r7+,@r6+
     3ea:	76 04       	add	#4,r6
     3ec:	77 f4       	add	#-12,r7
     3ee:	41 08       	shll2	r1
     3f0:	00 0a       	sts	mach,r0
     3f2:	0d 1a       	sts	macl,r13
     3f4:	00 28       	clrmac	
     3f6:	06 7f       	mac.l	@r7+,@r6+
     3f8:	2d 0d       	xtrct	r0,r13
     3fa:	15 d0       	mov.l	r13,@(0,r5)
     3fc:	06 7f       	mac.l	@r7+,@r6+
     3fe:	31 ac       	add	r10,r1
     400:	e4 04       	mov	#4,r4
     402:	06 7f       	mac.l	@r7+,@r6+
     404:	76 04       	add	#4,r6
     406:	77 f4       	add	#-12,r7
     408:	34 1c       	add	r1,r4
     40a:	00 0a       	sts	mach,r0
     40c:	02 1a       	sts	macl,r2
     40e:	00 28       	clrmac	
     410:	06 7f       	mac.l	@r7+,@r6+
     412:	22 0d       	xtrct	r0,r2
     414:	15 21       	mov.l	r2,@(4,r5)
     416:	06 7f       	mac.l	@r7+,@r6+
     418:	6c 81       	mov.w	@r8,r12
     41a:	e9 7f       	mov	#127,r9
     41c:	06 7f       	mac.l	@r7+,@r6+
     41e:	76 d4       	add	#-44,r6
     420:	29 c9       	and	r12,r9
     422:	49 08       	shll2	r9
     424:	00 0a       	sts	mach,r0
     426:	03 1a       	sts	macl,r3
     428:	00 28       	clrmac	
     42a:	05 4f       	mac.l	@r4+,@r5+
     42c:	23 0d       	xtrct	r0,r3
     42e:	c7 bc       	mova	720 <SlSBase_tbl>,r0
     430:	05 4f       	mac.l	@r4+,@r5+
     432:	25 32       	mov.l	r3,@r5
     434:	49 08       	shll2	r9
     436:	05 4f       	mac.l	@r4+,@r5+
     438:	39 0c       	add	r0,r9
     43a:	85 85       	mov.w	@(10,r8),r0
     43c:	77 02       	add	#2,r7
     43e:	04 0a       	sts	mach,r4
     440:	81 b0       	mov.w	r0,@(0,r11)
     442:	c6 e1       	mov.l	@(900,gbr),r0
     444:	34 03       	cmp/ge	r0,r4
     446:	8d 04       	bt.s	452 <ccpl_lp_21>
     448:	60 c8       	swap.b	r12,r0
     44a:	60 96       	mov.l	@r9+,r0
     44c:	62 75       	mov.w	@r7+,r2
     44e:	40 2b       	jmp	@r0
     450:	42 08       	shll2	r2

00000452 <ccpl_lp_21>:
     452:	c8 01       	tst	#1,r0
     454:	8d 09       	bt.s	46a <ccpl_lp_22>
     456:	63 3b       	neg	r3,r3
     458:	25 36       	mov.l	r3,@-r5
     45a:	62 2b       	neg	r2,r2
     45c:	25 26       	mov.l	r2,@-r5
     45e:	6d db       	neg	r13,r13
     460:	25 d6       	mov.l	r13,@-r5
     462:	60 96       	mov.l	@r9+,r0
     464:	62 75       	mov.w	@r7+,r2
     466:	40 2b       	jmp	@r0
     468:	42 08       	shll2	r2

0000046a <ccpl_lp_22>:
     46a:	a0 15       	bra	498 <ccpl_lp_29>
     46c:	77 06       	add	#6,r7
	...

00000470 <ccpl_lp_26>:
     470:	85 81       	mov.w	@(2,r8),r0
     472:	55 f5       	mov.l	@(20,r15),r5
     474:	40 08       	shll2	r0
     476:	30 0c       	add	r0,r0
     478:	00 5e       	mov.l	@(r0,r5),r0
     47a:	1b 02       	mov.l	r0,@(8,r11)

0000047c <ccpl_lp_27>:
     47c:	85 84       	mov.w	@(8,r8),r0
     47e:	55 81       	mov.l	@(4,r8),r5
     480:	81 be       	mov.w	r0,@(28,r11)
     482:	1b 51       	mov.l	r5,@(4,r11)

00000484 <ccpl_lp_28>:
     484:	60 e3       	mov	r14,r0
     486:	81 bf       	mov.w	r0,@(30,r11)
     488:	c6 0e       	mov.l	@(56,gbr),r0
     48a:	61 e8       	swap.b	r14,r1
     48c:	61 1c       	extu.b	r1,r1
     48e:	41 08       	shll2	r1
     490:	02 1e       	mov.l	@(r0,r1),r2
     492:	01 b6       	mov.l	r11,@(r0,r1)
     494:	1b 28       	mov.l	r2,@(32,r11)
     496:	7b 24       	add	#36,r11

00000498 <ccpl_lp_29>:
     498:	50 f4       	mov.l	@(16,r15),r0
     49a:	78 0c       	add	#12,r8
     49c:	40 10       	dt	r0
     49e:	8f 9c       	bf.s	3da <ccpl_lp_20>
     4a0:	1f 04       	mov.l	r0,@(16,r15)
     4a2:	7f 18       	add	#24,r15
     4a4:	64 f6       	mov.l	@r15+,r4
     4a6:	4f 26       	lds.l	@r15+,pr
     4a8:	74 30       	add	#48,r4
     4aa:	60 b3       	mov	r11,r0
     4ac:	00 0b       	rts	
     4ae:	c2 0d       	mov.l	r0,@(52,gbr)

000004b0 <SlSBase_CEN>:
     4b0:	63 75       	mov.w	@r7+,r3
     4b2:	42 08       	shll2	r2
     4b4:	5e 13       	mov.l	@(12,r1),r14
     4b6:	32 ac       	add	r10,r2
     4b8:	64 75       	mov.w	@r7+,r4
     4ba:	50 23       	mov.l	@(12,r2),r0
     4bc:	43 08       	shll2	r3
     4be:	3e 0c       	add	r0,r14
     4c0:	43 08       	shll2	r3
     4c2:	33 ac       	add	r10,r3
     4c4:	44 08       	shll2	r4
     4c6:	50 33       	mov.l	@(12,r3),r0
     4c8:	44 08       	shll2	r4
     4ca:	3e 0c       	add	r0,r14
     4cc:	34 ac       	add	r10,r4
     4ce:	50 43       	mov.l	@(12,r4),r0
     4d0:	3e 0c       	add	r0,r14
     4d2:	4e 29       	shlr16	r14
     4d4:	6e ef       	exts.w	r14,r14
     4d6:	4e 21       	shar	r14
     4d8:	4e 21       	shar	r14
     4da:	55 f3       	mov.l	@(12,r15),r5
     4dc:	c5 50       	mov.w	@(160,gbr),r0
     4de:	3e 58       	sub	r5,r14
     4e0:	3e 06       	cmp/hi	r0,r14
     4e2:	8d d9       	bt.s	498 <ccpl_lp_29>
     4e4:	3e 5c       	add	r5,r14
     4e6:	60 96       	mov.l	@r9+,r0
     4e8:	40 2b       	jmp	@r0
     4ea:	00 09       	nop	

000004ec <SlSBase_MIN>:
     4ec:	85 16       	mov.w	@(12,r1),r0
     4ee:	42 08       	shll2	r2
     4f0:	63 75       	mov.w	@r7+,r3
     4f2:	6e 0f       	exts.w	r0,r14
     4f4:	64 75       	mov.w	@r7+,r4
     4f6:	32 ac       	add	r10,r2
     4f8:	85 26       	mov.w	@(12,r2),r0
     4fa:	43 08       	shll2	r3
     4fc:	3e 07       	cmp/gt	r0,r14
     4fe:	8f 01       	bf.s	504 <ssbmn_0>
     500:	43 08       	shll2	r3
     502:	6e 03       	mov	r0,r14

00000504 <ssbmn_0>:
     504:	33 ac       	add	r10,r3
     506:	44 08       	shll2	r4
     508:	85 36       	mov.w	@(12,r3),r0
     50a:	44 08       	shll2	r4
     50c:	3e 07       	cmp/gt	r0,r14
     50e:	8f 01       	bf.s	514 <ssbmn_1>
     510:	34 ac       	add	r10,r4
     512:	6e 03       	mov	r0,r14

00000514 <ssbmn_1>:
     514:	85 46       	mov.w	@(12,r4),r0
     516:	55 f3       	mov.l	@(12,r15),r5
     518:	3e 07       	cmp/gt	r0,r14
     51a:	8b 00       	bf	51e <ssbmn_2>
     51c:	6e 03       	mov	r0,r14

0000051e <ssbmn_2>:
     51e:	c5 50       	mov.w	@(160,gbr),r0
     520:	3e 58       	sub	r5,r14
     522:	3e 06       	cmp/hi	r0,r14
     524:	8d b8       	bt.s	498 <ccpl_lp_29>
     526:	3e 5c       	add	r5,r14
     528:	60 96       	mov.l	@r9+,r0
     52a:	40 2b       	jmp	@r0
     52c:	00 09       	nop	
	...

00000530 <SlSBase_MAX>:
     530:	63 75       	mov.w	@r7+,r3
     532:	42 08       	shll2	r2
     534:	85 16       	mov.w	@(12,r1),r0
     536:	32 ac       	add	r10,r2
     538:	64 75       	mov.w	@r7+,r4
     53a:	6e 0f       	exts.w	r0,r14
     53c:	85 26       	mov.w	@(12,r2),r0
     53e:	43 08       	shll2	r3
     540:	43 08       	shll2	r3
     542:	33 ac       	add	r10,r3
     544:	3e 03       	cmp/ge	r0,r14
     546:	8d 01       	bt.s	54c <ssbmx_0>
     548:	44 08       	shll2	r4
     54a:	6e 03       	mov	r0,r14

0000054c <ssbmx_0>:
     54c:	85 36       	mov.w	@(12,r3),r0
     54e:	44 08       	shll2	r4
     550:	3e 03       	cmp/ge	r0,r14
     552:	8d 01       	bt.s	558 <ssbmx_1>
     554:	34 ac       	add	r10,r4
     556:	6e 03       	mov	r0,r14

00000558 <ssbmx_1>:
     558:	85 46       	mov.w	@(12,r4),r0
     55a:	55 f3       	mov.l	@(12,r15),r5
     55c:	3e 03       	cmp/ge	r0,r14
     55e:	89 00       	bt	562 <ssbmx_2>
     560:	6e 03       	mov	r0,r14

00000562 <ssbmx_2>:
     562:	c5 50       	mov.w	@(160,gbr),r0
     564:	3e 58       	sub	r5,r14
     566:	3e 06       	cmp/hi	r0,r14
     568:	8d 96       	bt.s	498 <ccpl_lp_29>
     56a:	3e 5c       	add	r5,r14
     56c:	60 96       	mov.l	@r9+,r0
     56e:	40 2b       	jmp	@r0
     570:	00 09       	nop	
	...

00000574 <SlSBase_BFR>:
     574:	c5 50       	mov.w	@(160,gbr),r0
     576:	42 08       	shll2	r2
     578:	3e 06       	cmp/hi	r0,r14
     57a:	8d 0a       	bt.s	592 <ssrbs_b0>
     57c:	32 ac       	add	r10,r2
     57e:	63 75       	mov.w	@r7+,r3
     580:	43 08       	shll2	r3
     582:	64 75       	mov.w	@r7+,r4
     584:	43 08       	shll2	r3
     586:	33 ac       	add	r10,r3
     588:	44 08       	shll2	r4
     58a:	60 96       	mov.l	@r9+,r0
     58c:	44 08       	shll2	r4
     58e:	40 2b       	jmp	@r0
     590:	34 ac       	add	r10,r4

00000592 <ssrbs_b0>:
     592:	af 81       	bra	498 <ccpl_lp_29>
     594:	77 04       	add	#4,r7
	...

00000598 <SlSBase_CEN_N>:
     598:	63 75       	mov.w	@r7+,r3
     59a:	42 08       	shll2	r2
     59c:	5e 13       	mov.l	@(12,r1),r14
     59e:	32 ac       	add	r10,r2
     5a0:	64 75       	mov.w	@r7+,r4
     5a2:	50 23       	mov.l	@(12,r2),r0
     5a4:	43 08       	shll2	r3
     5a6:	3e 0c       	add	r0,r14
     5a8:	43 08       	shll2	r3
     5aa:	33 ac       	add	r10,r3
     5ac:	44 08       	shll2	r4
     5ae:	50 33       	mov.l	@(12,r3),r0
     5b0:	44 08       	shll2	r4
     5b2:	3e 0c       	add	r0,r14
     5b4:	34 ac       	add	r10,r4
     5b6:	50 43       	mov.l	@(12,r4),r0
     5b8:	3e 0c       	add	r0,r14
     5ba:	4e 21       	shar	r14
     5bc:	4e 21       	shar	r14
     5be:	55 f3       	mov.l	@(12,r15),r5
     5c0:	c5 50       	mov.w	@(160,gbr),r0
     5c2:	45 28       	shll16	r5
     5c4:	40 28       	shll16	r0
     5c6:	30 5c       	add	r5,r0
     5c8:	3e 06       	cmp/hi	r0,r14
     5ca:	8d 66       	bt.s	69a <ssnear_00>
     5cc:	45 01       	shlr	r5
     5ce:	3e 57       	cmp/gt	r5,r14
     5d0:	8b 63       	bf	69a <ssnear_00>
     5d2:	a0 64       	bra	69e <SlSBase_NEAR>
     5d4:	4e 29       	shlr16	r14
     5d6:	60 96       	mov.l	@r9+,r0
     5d8:	40 2b       	jmp	@r0
     5da:	00 09       	nop	

000005dc <SlSBase_MIN_N>:
     5dc:	5e 13       	mov.l	@(12,r1),r14
     5de:	42 08       	shll2	r2
     5e0:	63 75       	mov.w	@r7+,r3
     5e2:	64 75       	mov.w	@r7+,r4
     5e4:	32 ac       	add	r10,r2
     5e6:	50 23       	mov.l	@(12,r2),r0
     5e8:	43 08       	shll2	r3
     5ea:	3e 07       	cmp/gt	r0,r14
     5ec:	8f 01       	bf.s	5f2 <ssbmn_n0>
     5ee:	43 08       	shll2	r3
     5f0:	6e 03       	mov	r0,r14

000005f2 <ssbmn_n0>:
     5f2:	33 ac       	add	r10,r3
     5f4:	44 08       	shll2	r4
     5f6:	50 33       	mov.l	@(12,r3),r0
     5f8:	44 08       	shll2	r4
     5fa:	3e 07       	cmp/gt	r0,r14
     5fc:	8f 01       	bf.s	602 <ssbmn_n1>
     5fe:	34 ac       	add	r10,r4
     600:	6e 03       	mov	r0,r14

00000602 <ssbmn_n1>:
     602:	50 43       	mov.l	@(12,r4),r0
     604:	55 f3       	mov.l	@(12,r15),r5
     606:	3e 07       	cmp/gt	r0,r14
     608:	8b 00       	bf	60c <ssbmn_n2>
     60a:	6e 03       	mov	r0,r14

0000060c <ssbmn_n2>:
     60c:	c5 50       	mov.w	@(160,gbr),r0
     60e:	45 28       	shll16	r5
     610:	40 28       	shll16	r0
     612:	30 5c       	add	r5,r0
     614:	3e 06       	cmp/hi	r0,r14
     616:	8d 40       	bt.s	69a <ssnear_00>
     618:	45 01       	shlr	r5
     61a:	3e 57       	cmp/gt	r5,r14
     61c:	8b 3d       	bf	69a <ssnear_00>
     61e:	a0 3e       	bra	69e <SlSBase_NEAR>
     620:	4e 29       	shlr16	r14
     622:	60 96       	mov.l	@r9+,r0
     624:	40 2b       	jmp	@r0
     626:	00 09       	nop	

00000628 <SlSBase_MAX_N>:
     628:	63 75       	mov.w	@r7+,r3
     62a:	42 08       	shll2	r2
     62c:	5e 13       	mov.l	@(12,r1),r14
     62e:	32 ac       	add	r10,r2
     630:	64 75       	mov.w	@r7+,r4
     632:	50 23       	mov.l	@(12,r2),r0
     634:	43 08       	shll2	r3
     636:	43 08       	shll2	r3
     638:	33 ac       	add	r10,r3
     63a:	3e 03       	cmp/ge	r0,r14
     63c:	8d 01       	bt.s	642 <ssbmx_n0>
     63e:	44 08       	shll2	r4
     640:	6e 03       	mov	r0,r14

00000642 <ssbmx_n0>:
     642:	50 33       	mov.l	@(12,r3),r0
     644:	44 08       	shll2	r4
     646:	3e 03       	cmp/ge	r0,r14
     648:	8d 01       	bt.s	64e <ssbmx_n1>
     64a:	34 ac       	add	r10,r4
     64c:	6e 03       	mov	r0,r14

0000064e <ssbmx_n1>:
     64e:	50 43       	mov.l	@(12,r4),r0
     650:	55 f3       	mov.l	@(12,r15),r5
     652:	3e 03       	cmp/ge	r0,r14
     654:	89 00       	bt	658 <ssbmx_n2>
     656:	6e 03       	mov	r0,r14

00000658 <ssbmx_n2>:
     658:	c5 50       	mov.w	@(160,gbr),r0
     65a:	45 28       	shll16	r5
     65c:	40 28       	shll16	r0
     65e:	30 5c       	add	r5,r0
     660:	3e 06       	cmp/hi	r0,r14
     662:	8d 1a       	bt.s	69a <ssnear_00>
     664:	45 01       	shlr	r5
     666:	3e 57       	cmp/gt	r5,r14
     668:	8b 17       	bf	69a <ssnear_00>
     66a:	a0 18       	bra	69e <SlSBase_NEAR>
     66c:	4e 29       	shlr16	r14
     66e:	60 96       	mov.l	@r9+,r0
     670:	40 2b       	jmp	@r0
     672:	00 09       	nop	

00000674 <SlSBase_BFR_N>:
     674:	c5 50       	mov.w	@(160,gbr),r0
     676:	42 08       	shll2	r2
     678:	3e 06       	cmp/hi	r0,r14
     67a:	8d 0a       	bt.s	692 <ssrbs_nb0>
     67c:	32 ac       	add	r10,r2
     67e:	63 75       	mov.w	@r7+,r3
     680:	43 08       	shll2	r3
     682:	64 75       	mov.w	@r7+,r4
     684:	43 08       	shll2	r3
     686:	33 ac       	add	r10,r3
     688:	44 08       	shll2	r4
     68a:	60 96       	mov.l	@r9+,r0
     68c:	44 08       	shll2	r4
     68e:	40 2b       	jmp	@r0
     690:	34 ac       	add	r10,r4

00000692 <ssrbs_nb0>:
     692:	af 01       	bra	498 <ccpl_lp_29>
     694:	77 04       	add	#4,r7
	...

00000698 <ssnear_000>:
     698:	6e f6       	mov.l	@r15+,r14

0000069a <ssnear_00>:
     69a:	ae fd       	bra	498 <ccpl_lp_29>
     69c:	00 09       	nop	

0000069e <SlSBase_NEAR>:
     69e:	50 11       	mov.l	@(4,r1),r0
     6a0:	40 21       	shar	r0
     6a2:	8f 08       	bf.s	6b6 <ssb_near11>
     6a4:	50 21       	mov.l	@(4,r2),r0
     6a6:	40 21       	shar	r0
     6a8:	8f 05       	bf.s	6b6 <ssb_near11>
     6aa:	50 31       	mov.l	@(4,r3),r0
     6ac:	40 21       	shar	r0
     6ae:	8f 02       	bf.s	6b6 <ssb_near11>
     6b0:	50 41       	mov.l	@(4,r4),r0
     6b2:	40 21       	shar	r0
     6b4:	89 f1       	bt	69a <ssnear_00>

000006b6 <ssb_near11>:
     6b6:	c6 df       	mov.l	@(892,gbr),r0
     6b8:	40 05       	rotr	r0
     6ba:	89 2b       	bt	714 <ssb_near12>
     6bc:	2f e6       	mov.l	r14,@-r15
     6be:	9e 2d       	mov.w	71c <sC1024M>,r14	! fc00
     6c0:	95 2d       	mov.w	71e <sC1023>,r5	! 3ff
     6c2:	85 10       	mov.w	@(0,r1),r0
     6c4:	30 57       	cmp/gt	r5,r0
     6c6:	8d e7       	bt.s	698 <ssnear_000>
     6c8:	30 e3       	cmp/ge	r14,r0
     6ca:	8f e5       	bf.s	698 <ssnear_000>
     6cc:	85 11       	mov.w	@(2,r1),r0
     6ce:	30 57       	cmp/gt	r5,r0
     6d0:	8d e2       	bt.s	698 <ssnear_000>
     6d2:	30 e3       	cmp/ge	r14,r0
     6d4:	8f e0       	bf.s	698 <ssnear_000>
     6d6:	85 20       	mov.w	@(0,r2),r0
     6d8:	30 57       	cmp/gt	r5,r0
     6da:	8d dd       	bt.s	698 <ssnear_000>
     6dc:	30 e3       	cmp/ge	r14,r0
     6de:	8f db       	bf.s	698 <ssnear_000>
     6e0:	85 21       	mov.w	@(2,r2),r0
     6e2:	30 57       	cmp/gt	r5,r0
     6e4:	8d d8       	bt.s	698 <ssnear_000>
     6e6:	30 e3       	cmp/ge	r14,r0
     6e8:	8f d6       	bf.s	698 <ssnear_000>
     6ea:	85 30       	mov.w	@(0,r3),r0
     6ec:	30 57       	cmp/gt	r5,r0
     6ee:	8d d3       	bt.s	698 <ssnear_000>
     6f0:	30 e3       	cmp/ge	r14,r0
     6f2:	8f d1       	bf.s	698 <ssnear_000>
     6f4:	85 31       	mov.w	@(2,r3),r0
     6f6:	30 57       	cmp/gt	r5,r0
     6f8:	8d ce       	bt.s	698 <ssnear_000>
     6fa:	30 e3       	cmp/ge	r14,r0
     6fc:	8f cc       	bf.s	698 <ssnear_000>
     6fe:	85 40       	mov.w	@(0,r4),r0
     700:	30 57       	cmp/gt	r5,r0
     702:	8d c9       	bt.s	698 <ssnear_000>
     704:	30 e3       	cmp/ge	r14,r0
     706:	8f c7       	bf.s	698 <ssnear_000>
     708:	85 41       	mov.w	@(2,r4),r0
     70a:	30 57       	cmp/gt	r5,r0
     70c:	8d c4       	bt.s	698 <ssnear_000>
     70e:	30 e3       	cmp/ge	r14,r0
     710:	8b c2       	bf	698 <ssnear_000>
     712:	6e f6       	mov.l	@r15+,r14

00000714 <ssb_near12>:
     714:	60 96       	mov.l	@r9+,r0
     716:	40 2b       	jmp	@r0
     718:	00 09       	nop	
	...

0000071c <sC1024M>:
     71c:	fc 00       	fadd	fr0,fr12

0000071e <sC1023>:
     71e:	03 ff       	mac.l	@r15+,@r3+

00000720 <SlSBase_tbl>:
     720:	00 00       	.word 0x0000
     722:	05 74       	mov.b	r7,@(r0,r5)
     724:	00 00       	.word 0x0000
     726:	0f 2c       	mov.b	@(r0,r2),r15
     728:	00 00       	.word 0x0000
     72a:	04 84       	mov.b	r8,@(r0,r4)
     72c:	00 00       	.word 0x0000
     72e:	00 00       	.word 0x0000
     730:	00 00       	.word 0x0000
     732:	04 ec       	mov.b	@(r0,r14),r4
     734:	00 00       	.word 0x0000
     736:	0f 2c       	mov.b	@(r0,r2),r15
     738:	00 00       	.word 0x0000
     73a:	04 84       	mov.b	r8,@(r0,r4)
     73c:	00 00       	.word 0x0000
     73e:	00 00       	.word 0x0000
     740:	00 00       	.word 0x0000
     742:	05 30       	.word 0x0530
     744:	00 00       	.word 0x0000
     746:	0f 2c       	mov.b	@(r0,r2),r15
     748:	00 00       	.word 0x0000
     74a:	04 84       	mov.b	r8,@(r0,r4)
     74c:	00 00       	.word 0x0000
     74e:	00 00       	.word 0x0000
     750:	00 00       	.word 0x0000
     752:	04 b0       	.word 0x04b0
     754:	00 00       	.word 0x0000
     756:	0f 2c       	mov.b	@(r0,r2),r15
     758:	00 00       	.word 0x0000
     75a:	04 84       	mov.b	r8,@(r0,r4)
     75c:	00 00       	.word 0x0000
     75e:	00 00       	.word 0x0000
     760:	00 00       	.word 0x0000
     762:	05 74       	mov.b	r7,@(r0,r5)
     764:	00 00       	.word 0x0000
     766:	0f 20       	.word 0x0f20
     768:	00 00       	.word 0x0000
     76a:	04 84       	mov.b	r8,@(r0,r4)
     76c:	00 00       	.word 0x0000
     76e:	00 00       	.word 0x0000
     770:	00 00       	.word 0x0000
     772:	04 ec       	mov.b	@(r0,r14),r4
     774:	00 00       	.word 0x0000
     776:	0f 20       	.word 0x0f20
     778:	00 00       	.word 0x0000
     77a:	04 84       	mov.b	r8,@(r0,r4)
     77c:	00 00       	.word 0x0000
     77e:	00 00       	.word 0x0000
     780:	00 00       	.word 0x0000
     782:	05 30       	.word 0x0530
     784:	00 00       	.word 0x0000
     786:	0f 20       	.word 0x0f20
     788:	00 00       	.word 0x0000
     78a:	04 84       	mov.b	r8,@(r0,r4)
     78c:	00 00       	.word 0x0000
     78e:	00 00       	.word 0x0000
     790:	00 00       	.word 0x0000
     792:	04 b0       	.word 0x04b0
     794:	00 00       	.word 0x0000
     796:	0f 20       	.word 0x0f20
     798:	00 00       	.word 0x0000
     79a:	04 84       	mov.b	r8,@(r0,r4)
     79c:	00 00       	.word 0x0000
     79e:	00 00       	.word 0x0000
     7a0:	00 00       	.word 0x0000
     7a2:	05 74       	mov.b	r7,@(r0,r5)
     7a4:	00 00       	.word 0x0000
     7a6:	0f 34       	mov.b	r3,@(r0,r15)
     7a8:	00 00       	.word 0x0000
     7aa:	10 38       	mov.l	r3,@(32,r0)
     7ac:	00 00       	.word 0x0000
     7ae:	00 00       	.word 0x0000
     7b0:	00 00       	.word 0x0000
     7b2:	04 ec       	mov.b	@(r0,r14),r4
     7b4:	00 00       	.word 0x0000
     7b6:	0f 34       	mov.b	r3,@(r0,r15)
     7b8:	00 00       	.word 0x0000
     7ba:	10 38       	mov.l	r3,@(32,r0)
     7bc:	00 00       	.word 0x0000
     7be:	00 00       	.word 0x0000
     7c0:	00 00       	.word 0x0000
     7c2:	05 30       	.word 0x0530
     7c4:	00 00       	.word 0x0000
     7c6:	0f 34       	mov.b	r3,@(r0,r15)
     7c8:	00 00       	.word 0x0000
     7ca:	10 38       	mov.l	r3,@(32,r0)
     7cc:	00 00       	.word 0x0000
     7ce:	00 00       	.word 0x0000
     7d0:	00 00       	.word 0x0000
     7d2:	04 b0       	.word 0x04b0
     7d4:	00 00       	.word 0x0000
     7d6:	0f 34       	mov.b	r3,@(r0,r15)
     7d8:	00 00       	.word 0x0000
     7da:	10 38       	mov.l	r3,@(32,r0)
     7dc:	00 00       	.word 0x0000
     7de:	00 00       	.word 0x0000
     7e0:	00 00       	.word 0x0000
     7e2:	05 74       	mov.b	r7,@(r0,r5)
     7e4:	00 00       	.word 0x0000
     7e6:	0f 34       	mov.b	r3,@(r0,r15)
     7e8:	00 00       	.word 0x0000
     7ea:	10 ee       	mov.l	r14,@(56,r0)
     7ec:	00 00       	.word 0x0000
     7ee:	00 00       	.word 0x0000
     7f0:	00 00       	.word 0x0000
     7f2:	04 ec       	mov.b	@(r0,r14),r4
     7f4:	00 00       	.word 0x0000
     7f6:	0f 34       	mov.b	r3,@(r0,r15)
     7f8:	00 00       	.word 0x0000
     7fa:	10 ee       	mov.l	r14,@(56,r0)
     7fc:	00 00       	.word 0x0000
     7fe:	00 00       	.word 0x0000
     800:	00 00       	.word 0x0000
     802:	05 30       	.word 0x0530
     804:	00 00       	.word 0x0000
     806:	0f 34       	mov.b	r3,@(r0,r15)
     808:	00 00       	.word 0x0000
     80a:	10 ee       	mov.l	r14,@(56,r0)
     80c:	00 00       	.word 0x0000
     80e:	00 00       	.word 0x0000
     810:	00 00       	.word 0x0000
     812:	04 b0       	.word 0x04b0
     814:	00 00       	.word 0x0000
     816:	0f 34       	mov.b	r3,@(r0,r15)
     818:	00 00       	.word 0x0000
     81a:	10 ee       	mov.l	r14,@(56,r0)
     81c:	00 00       	.word 0x0000
     81e:	00 00       	.word 0x0000
     820:	00 00       	.word 0x0000
     822:	05 74       	mov.b	r7,@(r0,r5)
     824:	00 00       	.word 0x0000
     826:	12 6c       	mov.l	r6,@(48,r2)
     828:	00 00       	.word 0x0000
     82a:	04 7c       	mov.b	@(r0,r7),r4
     82c:	00 00       	.word 0x0000
     82e:	00 00       	.word 0x0000
     830:	00 00       	.word 0x0000
     832:	04 ec       	mov.b	@(r0,r14),r4
     834:	00 00       	.word 0x0000
     836:	12 6c       	mov.l	r6,@(48,r2)
     838:	00 00       	.word 0x0000
     83a:	04 7c       	mov.b	@(r0,r7),r4
     83c:	00 00       	.word 0x0000
     83e:	00 00       	.word 0x0000
     840:	00 00       	.word 0x0000
     842:	05 30       	.word 0x0530
     844:	00 00       	.word 0x0000
     846:	12 6c       	mov.l	r6,@(48,r2)
     848:	00 00       	.word 0x0000
     84a:	04 7c       	mov.b	@(r0,r7),r4
     84c:	00 00       	.word 0x0000
     84e:	00 00       	.word 0x0000
     850:	00 00       	.word 0x0000
     852:	04 b0       	.word 0x04b0
     854:	00 00       	.word 0x0000
     856:	12 6c       	mov.l	r6,@(48,r2)
     858:	00 00       	.word 0x0000
     85a:	04 7c       	mov.b	@(r0,r7),r4
     85c:	00 00       	.word 0x0000
     85e:	00 00       	.word 0x0000
     860:	00 00       	.word 0x0000
     862:	05 74       	mov.b	r7,@(r0,r5)
     864:	00 00       	.word 0x0000
     866:	12 6c       	mov.l	r6,@(48,r2)
     868:	00 00       	.word 0x0000
     86a:	04 70       	.word 0x0470
     86c:	00 00       	.word 0x0000
     86e:	00 00       	.word 0x0000
     870:	00 00       	.word 0x0000
     872:	04 ec       	mov.b	@(r0,r14),r4
     874:	00 00       	.word 0x0000
     876:	12 6c       	mov.l	r6,@(48,r2)
     878:	00 00       	.word 0x0000
     87a:	04 70       	.word 0x0470
     87c:	00 00       	.word 0x0000
     87e:	00 00       	.word 0x0000
     880:	00 00       	.word 0x0000
     882:	05 30       	.word 0x0530
     884:	00 00       	.word 0x0000
     886:	12 6c       	mov.l	r6,@(48,r2)
     888:	00 00       	.word 0x0000
     88a:	04 70       	.word 0x0470
     88c:	00 00       	.word 0x0000
     88e:	00 00       	.word 0x0000
     890:	00 00       	.word 0x0000
     892:	04 b0       	.word 0x04b0
     894:	00 00       	.word 0x0000
     896:	12 6c       	mov.l	r6,@(48,r2)
     898:	00 00       	.word 0x0000
     89a:	04 70       	.word 0x0470
     89c:	00 00       	.word 0x0000
     89e:	00 00       	.word 0x0000
     8a0:	00 00       	.word 0x0000
     8a2:	05 74       	mov.b	r7,@(r0,r5)
     8a4:	00 00       	.word 0x0000
     8a6:	12 6c       	mov.l	r6,@(48,r2)
     8a8:	00 00       	.word 0x0000
     8aa:	10 38       	mov.l	r3,@(32,r0)
     8ac:	00 00       	.word 0x0000
     8ae:	00 00       	.word 0x0000
     8b0:	00 00       	.word 0x0000
     8b2:	04 ec       	mov.b	@(r0,r14),r4
     8b4:	00 00       	.word 0x0000
     8b6:	12 6c       	mov.l	r6,@(48,r2)
     8b8:	00 00       	.word 0x0000
     8ba:	10 38       	mov.l	r3,@(32,r0)
     8bc:	00 00       	.word 0x0000
     8be:	00 00       	.word 0x0000
     8c0:	00 00       	.word 0x0000
     8c2:	05 30       	.word 0x0530
     8c4:	00 00       	.word 0x0000
     8c6:	12 6c       	mov.l	r6,@(48,r2)
     8c8:	00 00       	.word 0x0000
     8ca:	10 38       	mov.l	r3,@(32,r0)
     8cc:	00 00       	.word 0x0000
     8ce:	00 00       	.word 0x0000
     8d0:	00 00       	.word 0x0000
     8d2:	04 b0       	.word 0x04b0
     8d4:	00 00       	.word 0x0000
     8d6:	12 6c       	mov.l	r6,@(48,r2)
     8d8:	00 00       	.word 0x0000
     8da:	10 38       	mov.l	r3,@(32,r0)
     8dc:	00 00       	.word 0x0000
     8de:	00 00       	.word 0x0000
     8e0:	00 00       	.word 0x0000
     8e2:	05 74       	mov.b	r7,@(r0,r5)
     8e4:	00 00       	.word 0x0000
     8e6:	12 6c       	mov.l	r6,@(48,r2)
     8e8:	00 00       	.word 0x0000
     8ea:	10 ee       	mov.l	r14,@(56,r0)
     8ec:	00 00       	.word 0x0000
     8ee:	00 00       	.word 0x0000
     8f0:	00 00       	.word 0x0000
     8f2:	04 ec       	mov.b	@(r0,r14),r4
     8f4:	00 00       	.word 0x0000
     8f6:	12 6c       	mov.l	r6,@(48,r2)
     8f8:	00 00       	.word 0x0000
     8fa:	10 ee       	mov.l	r14,@(56,r0)
     8fc:	00 00       	.word 0x0000
     8fe:	00 00       	.word 0x0000
     900:	00 00       	.word 0x0000
     902:	05 30       	.word 0x0530
     904:	00 00       	.word 0x0000
     906:	12 6c       	mov.l	r6,@(48,r2)
     908:	00 00       	.word 0x0000
     90a:	10 ee       	mov.l	r14,@(56,r0)
     90c:	00 00       	.word 0x0000
     90e:	00 00       	.word 0x0000
     910:	00 00       	.word 0x0000
     912:	04 b0       	.word 0x04b0
     914:	00 00       	.word 0x0000
     916:	12 6c       	mov.l	r6,@(48,r2)
     918:	00 00       	.word 0x0000
     91a:	10 ee       	mov.l	r14,@(56,r0)
     91c:	00 00       	.word 0x0000
     91e:	00 00       	.word 0x0000
     920:	00 00       	.word 0x0000
     922:	05 74       	mov.b	r7,@(r0,r5)
     924:	00 00       	.word 0x0000
     926:	0f 2c       	mov.b	@(r0,r2),r15
     928:	00 00       	.word 0x0000
     92a:	04 84       	mov.b	r8,@(r0,r4)
     92c:	00 00       	.word 0x0000
     92e:	00 00       	.word 0x0000
     930:	00 00       	.word 0x0000
     932:	04 ec       	mov.b	@(r0,r14),r4
     934:	00 00       	.word 0x0000
     936:	0f 2c       	mov.b	@(r0,r2),r15
     938:	00 00       	.word 0x0000
     93a:	04 84       	mov.b	r8,@(r0,r4)
     93c:	00 00       	.word 0x0000
     93e:	00 00       	.word 0x0000
     940:	00 00       	.word 0x0000
     942:	05 30       	.word 0x0530
     944:	00 00       	.word 0x0000
     946:	0f 2c       	mov.b	@(r0,r2),r15
     948:	00 00       	.word 0x0000
     94a:	04 84       	mov.b	r8,@(r0,r4)
     94c:	00 00       	.word 0x0000
     94e:	00 00       	.word 0x0000
     950:	00 00       	.word 0x0000
     952:	04 b0       	.word 0x04b0
     954:	00 00       	.word 0x0000
     956:	0f 2c       	mov.b	@(r0,r2),r15
     958:	00 00       	.word 0x0000
     95a:	04 84       	mov.b	r8,@(r0,r4)
     95c:	00 00       	.word 0x0000
     95e:	00 00       	.word 0x0000
     960:	00 00       	.word 0x0000
     962:	05 74       	mov.b	r7,@(r0,r5)
     964:	00 00       	.word 0x0000
     966:	0f 20       	.word 0x0f20
     968:	00 00       	.word 0x0000
     96a:	04 84       	mov.b	r8,@(r0,r4)
     96c:	00 00       	.word 0x0000
     96e:	00 00       	.word 0x0000
     970:	00 00       	.word 0x0000
     972:	04 ec       	mov.b	@(r0,r14),r4
     974:	00 00       	.word 0x0000
     976:	0f 20       	.word 0x0f20
     978:	00 00       	.word 0x0000
     97a:	04 84       	mov.b	r8,@(r0,r4)
     97c:	00 00       	.word 0x0000
     97e:	00 00       	.word 0x0000
     980:	00 00       	.word 0x0000
     982:	05 30       	.word 0x0530
     984:	00 00       	.word 0x0000
     986:	0f 20       	.word 0x0f20
     988:	00 00       	.word 0x0000
     98a:	04 84       	mov.b	r8,@(r0,r4)
     98c:	00 00       	.word 0x0000
     98e:	00 00       	.word 0x0000
     990:	00 00       	.word 0x0000
     992:	04 b0       	.word 0x04b0
     994:	00 00       	.word 0x0000
     996:	0f 20       	.word 0x0f20
     998:	00 00       	.word 0x0000
     99a:	04 84       	mov.b	r8,@(r0,r4)
     99c:	00 00       	.word 0x0000
     99e:	00 00       	.word 0x0000
     9a0:	00 00       	.word 0x0000
     9a2:	05 74       	mov.b	r7,@(r0,r5)
     9a4:	00 00       	.word 0x0000
     9a6:	0f 34       	mov.b	r3,@(r0,r15)
     9a8:	00 00       	.word 0x0000
     9aa:	10 b6       	mov.l	r11,@(24,r0)
     9ac:	00 00       	.word 0x0000
     9ae:	00 00       	.word 0x0000
     9b0:	00 00       	.word 0x0000
     9b2:	04 ec       	mov.b	@(r0,r14),r4
     9b4:	00 00       	.word 0x0000
     9b6:	0f 34       	mov.b	r3,@(r0,r15)
     9b8:	00 00       	.word 0x0000
     9ba:	10 b6       	mov.l	r11,@(24,r0)
     9bc:	00 00       	.word 0x0000
     9be:	00 00       	.word 0x0000
     9c0:	00 00       	.word 0x0000
     9c2:	05 30       	.word 0x0530
     9c4:	00 00       	.word 0x0000
     9c6:	0f 34       	mov.b	r3,@(r0,r15)
     9c8:	00 00       	.word 0x0000
     9ca:	10 b6       	mov.l	r11,@(24,r0)
     9cc:	00 00       	.word 0x0000
     9ce:	00 00       	.word 0x0000
     9d0:	00 00       	.word 0x0000
     9d2:	04 b0       	.word 0x04b0
     9d4:	00 00       	.word 0x0000
     9d6:	0f 34       	mov.b	r3,@(r0,r15)
     9d8:	00 00       	.word 0x0000
     9da:	10 b6       	mov.l	r11,@(24,r0)
     9dc:	00 00       	.word 0x0000
     9de:	00 00       	.word 0x0000
     9e0:	00 00       	.word 0x0000
     9e2:	05 74       	mov.b	r7,@(r0,r5)
     9e4:	00 00       	.word 0x0000
     9e6:	0f 20       	.word 0x0f20
     9e8:	00 00       	.word 0x0000
     9ea:	04 84       	mov.b	r8,@(r0,r4)
     9ec:	00 00       	.word 0x0000
     9ee:	00 00       	.word 0x0000
     9f0:	00 00       	.word 0x0000
     9f2:	04 ec       	mov.b	@(r0,r14),r4
     9f4:	00 00       	.word 0x0000
     9f6:	0f 20       	.word 0x0f20
     9f8:	00 00       	.word 0x0000
     9fa:	04 84       	mov.b	r8,@(r0,r4)
     9fc:	00 00       	.word 0x0000
     9fe:	00 00       	.word 0x0000
     a00:	00 00       	.word 0x0000
     a02:	05 30       	.word 0x0530
     a04:	00 00       	.word 0x0000
     a06:	0f 20       	.word 0x0f20
     a08:	00 00       	.word 0x0000
     a0a:	04 84       	mov.b	r8,@(r0,r4)
     a0c:	00 00       	.word 0x0000
     a0e:	00 00       	.word 0x0000
     a10:	00 00       	.word 0x0000
     a12:	04 b0       	.word 0x04b0
     a14:	00 00       	.word 0x0000
     a16:	0f 20       	.word 0x0f20
     a18:	00 00       	.word 0x0000
     a1a:	04 84       	mov.b	r8,@(r0,r4)
     a1c:	00 00       	.word 0x0000
     a1e:	00 00       	.word 0x0000
     a20:	00 00       	.word 0x0000
     a22:	05 74       	mov.b	r7,@(r0,r5)
     a24:	00 00       	.word 0x0000
     a26:	12 6c       	mov.l	r6,@(48,r2)
     a28:	00 00       	.word 0x0000
     a2a:	04 7c       	mov.b	@(r0,r7),r4
     a2c:	00 00       	.word 0x0000
     a2e:	00 00       	.word 0x0000
     a30:	00 00       	.word 0x0000
     a32:	04 ec       	mov.b	@(r0,r14),r4
     a34:	00 00       	.word 0x0000
     a36:	12 6c       	mov.l	r6,@(48,r2)
     a38:	00 00       	.word 0x0000
     a3a:	04 7c       	mov.b	@(r0,r7),r4
     a3c:	00 00       	.word 0x0000
     a3e:	00 00       	.word 0x0000
     a40:	00 00       	.word 0x0000
     a42:	05 30       	.word 0x0530
     a44:	00 00       	.word 0x0000
     a46:	12 6c       	mov.l	r6,@(48,r2)
     a48:	00 00       	.word 0x0000
     a4a:	04 7c       	mov.b	@(r0,r7),r4
     a4c:	00 00       	.word 0x0000
     a4e:	00 00       	.word 0x0000
     a50:	00 00       	.word 0x0000
     a52:	04 b0       	.word 0x04b0
     a54:	00 00       	.word 0x0000
     a56:	12 6c       	mov.l	r6,@(48,r2)
     a58:	00 00       	.word 0x0000
     a5a:	04 7c       	mov.b	@(r0,r7),r4
     a5c:	00 00       	.word 0x0000
     a5e:	00 00       	.word 0x0000
     a60:	00 00       	.word 0x0000
     a62:	05 74       	mov.b	r7,@(r0,r5)
     a64:	00 00       	.word 0x0000
     a66:	12 6c       	mov.l	r6,@(48,r2)
     a68:	00 00       	.word 0x0000
     a6a:	04 70       	.word 0x0470
     a6c:	00 00       	.word 0x0000
     a6e:	00 00       	.word 0x0000
     a70:	00 00       	.word 0x0000
     a72:	04 ec       	mov.b	@(r0,r14),r4
     a74:	00 00       	.word 0x0000
     a76:	12 6c       	mov.l	r6,@(48,r2)
     a78:	00 00       	.word 0x0000
     a7a:	04 70       	.word 0x0470
     a7c:	00 00       	.word 0x0000
     a7e:	00 00       	.word 0x0000
     a80:	00 00       	.word 0x0000
     a82:	05 30       	.word 0x0530
     a84:	00 00       	.word 0x0000
     a86:	12 6c       	mov.l	r6,@(48,r2)
     a88:	00 00       	.word 0x0000
     a8a:	04 70       	.word 0x0470
     a8c:	00 00       	.word 0x0000
     a8e:	00 00       	.word 0x0000
     a90:	00 00       	.word 0x0000
     a92:	04 b0       	.word 0x04b0
     a94:	00 00       	.word 0x0000
     a96:	12 6c       	mov.l	r6,@(48,r2)
     a98:	00 00       	.word 0x0000
     a9a:	04 70       	.word 0x0470
     a9c:	00 00       	.word 0x0000
     a9e:	00 00       	.word 0x0000
     aa0:	00 00       	.word 0x0000
     aa2:	05 74       	mov.b	r7,@(r0,r5)
     aa4:	00 00       	.word 0x0000
     aa6:	12 6c       	mov.l	r6,@(48,r2)
     aa8:	00 00       	.word 0x0000
     aaa:	10 b6       	mov.l	r11,@(24,r0)
     aac:	00 00       	.word 0x0000
     aae:	00 00       	.word 0x0000
     ab0:	00 00       	.word 0x0000
     ab2:	04 ec       	mov.b	@(r0,r14),r4
     ab4:	00 00       	.word 0x0000
     ab6:	12 6c       	mov.l	r6,@(48,r2)
     ab8:	00 00       	.word 0x0000
     aba:	10 b6       	mov.l	r11,@(24,r0)
     abc:	00 00       	.word 0x0000
     abe:	00 00       	.word 0x0000
     ac0:	00 00       	.word 0x0000
     ac2:	05 30       	.word 0x0530
     ac4:	00 00       	.word 0x0000
     ac6:	12 6c       	mov.l	r6,@(48,r2)
     ac8:	00 00       	.word 0x0000
     aca:	10 b6       	mov.l	r11,@(24,r0)
     acc:	00 00       	.word 0x0000
     ace:	00 00       	.word 0x0000
     ad0:	00 00       	.word 0x0000
     ad2:	04 b0       	.word 0x04b0
     ad4:	00 00       	.word 0x0000
     ad6:	12 6c       	mov.l	r6,@(48,r2)
     ad8:	00 00       	.word 0x0000
     ada:	10 b6       	mov.l	r11,@(24,r0)
     adc:	00 00       	.word 0x0000
     ade:	00 00       	.word 0x0000
     ae0:	00 00       	.word 0x0000
     ae2:	05 74       	mov.b	r7,@(r0,r5)
     ae4:	00 00       	.word 0x0000
     ae6:	12 6c       	mov.l	r6,@(48,r2)
     ae8:	00 00       	.word 0x0000
     aea:	04 70       	.word 0x0470
     aec:	00 00       	.word 0x0000
     aee:	00 00       	.word 0x0000
     af0:	00 00       	.word 0x0000
     af2:	04 ec       	mov.b	@(r0,r14),r4
     af4:	00 00       	.word 0x0000
     af6:	12 6c       	mov.l	r6,@(48,r2)
     af8:	00 00       	.word 0x0000
     afa:	04 70       	.word 0x0470
     afc:	00 00       	.word 0x0000
     afe:	00 00       	.word 0x0000
     b00:	00 00       	.word 0x0000
     b02:	05 30       	.word 0x0530
     b04:	00 00       	.word 0x0000
     b06:	12 6c       	mov.l	r6,@(48,r2)
     b08:	00 00       	.word 0x0000
     b0a:	04 70       	.word 0x0470
     b0c:	00 00       	.word 0x0000
     b0e:	00 00       	.word 0x0000
     b10:	00 00       	.word 0x0000
     b12:	04 b0       	.word 0x04b0
     b14:	00 00       	.word 0x0000
     b16:	12 6c       	mov.l	r6,@(48,r2)
     b18:	00 00       	.word 0x0000
     b1a:	04 70       	.word 0x0470
     b1c:	00 00       	.word 0x0000
     b1e:	00 00       	.word 0x0000
     b20:	00 00       	.word 0x0000
     b22:	06 74       	mov.b	r7,@(r0,r6)
     b24:	00 00       	.word 0x0000
     b26:	0f 2c       	mov.b	@(r0,r2),r15
     b28:	00 00       	.word 0x0000
     b2a:	04 84       	mov.b	r8,@(r0,r4)
     b2c:	00 00       	.word 0x0000
     b2e:	00 00       	.word 0x0000
     b30:	00 00       	.word 0x0000
     b32:	05 dc       	mov.b	@(r0,r13),r5
     b34:	00 00       	.word 0x0000
     b36:	0f 2c       	mov.b	@(r0,r2),r15
     b38:	00 00       	.word 0x0000
     b3a:	04 84       	mov.b	r8,@(r0,r4)
     b3c:	00 00       	.word 0x0000
     b3e:	00 00       	.word 0x0000
     b40:	00 00       	.word 0x0000
     b42:	06 28       	.word 0x0628
     b44:	00 00       	.word 0x0000
     b46:	0f 2c       	mov.b	@(r0,r2),r15
     b48:	00 00       	.word 0x0000
     b4a:	04 84       	mov.b	r8,@(r0,r4)
     b4c:	00 00       	.word 0x0000
     b4e:	00 00       	.word 0x0000
     b50:	00 00       	.word 0x0000
     b52:	05 98       	.word 0x0598
     b54:	00 00       	.word 0x0000
     b56:	0f 2c       	mov.b	@(r0,r2),r15
     b58:	00 00       	.word 0x0000
     b5a:	04 84       	mov.b	r8,@(r0,r4)
     b5c:	00 00       	.word 0x0000
     b5e:	00 00       	.word 0x0000
     b60:	00 00       	.word 0x0000
     b62:	06 74       	mov.b	r7,@(r0,r6)
     b64:	00 00       	.word 0x0000
     b66:	0f 20       	.word 0x0f20
     b68:	00 00       	.word 0x0000
     b6a:	04 84       	mov.b	r8,@(r0,r4)
     b6c:	00 00       	.word 0x0000
     b6e:	00 00       	.word 0x0000
     b70:	00 00       	.word 0x0000
     b72:	05 dc       	mov.b	@(r0,r13),r5
     b74:	00 00       	.word 0x0000
     b76:	0f 20       	.word 0x0f20
     b78:	00 00       	.word 0x0000
     b7a:	04 84       	mov.b	r8,@(r0,r4)
     b7c:	00 00       	.word 0x0000
     b7e:	00 00       	.word 0x0000
     b80:	00 00       	.word 0x0000
     b82:	06 28       	.word 0x0628
     b84:	00 00       	.word 0x0000
     b86:	0f 20       	.word 0x0f20
     b88:	00 00       	.word 0x0000
     b8a:	04 84       	mov.b	r8,@(r0,r4)
     b8c:	00 00       	.word 0x0000
     b8e:	00 00       	.word 0x0000
     b90:	00 00       	.word 0x0000
     b92:	05 98       	.word 0x0598
     b94:	00 00       	.word 0x0000
     b96:	0f 20       	.word 0x0f20
     b98:	00 00       	.word 0x0000
     b9a:	04 84       	mov.b	r8,@(r0,r4)
     b9c:	00 00       	.word 0x0000
     b9e:	00 00       	.word 0x0000
     ba0:	00 00       	.word 0x0000
     ba2:	06 74       	mov.b	r7,@(r0,r6)
     ba4:	00 00       	.word 0x0000
     ba6:	0f 34       	mov.b	r3,@(r0,r15)
     ba8:	00 00       	.word 0x0000
     baa:	10 38       	mov.l	r3,@(32,r0)
     bac:	00 00       	.word 0x0000
     bae:	00 00       	.word 0x0000
     bb0:	00 00       	.word 0x0000
     bb2:	05 dc       	mov.b	@(r0,r13),r5
     bb4:	00 00       	.word 0x0000
     bb6:	0f 34       	mov.b	r3,@(r0,r15)
     bb8:	00 00       	.word 0x0000
     bba:	10 38       	mov.l	r3,@(32,r0)
     bbc:	00 00       	.word 0x0000
     bbe:	00 00       	.word 0x0000
     bc0:	00 00       	.word 0x0000
     bc2:	06 28       	.word 0x0628
     bc4:	00 00       	.word 0x0000
     bc6:	0f 34       	mov.b	r3,@(r0,r15)
     bc8:	00 00       	.word 0x0000
     bca:	10 38       	mov.l	r3,@(32,r0)
     bcc:	00 00       	.word 0x0000
     bce:	00 00       	.word 0x0000
     bd0:	00 00       	.word 0x0000
     bd2:	05 98       	.word 0x0598
     bd4:	00 00       	.word 0x0000
     bd6:	0f 34       	mov.b	r3,@(r0,r15)
     bd8:	00 00       	.word 0x0000
     bda:	10 38       	mov.l	r3,@(32,r0)
     bdc:	00 00       	.word 0x0000
     bde:	00 00       	.word 0x0000
     be0:	00 00       	.word 0x0000
     be2:	06 74       	mov.b	r7,@(r0,r6)
     be4:	00 00       	.word 0x0000
     be6:	0f 34       	mov.b	r3,@(r0,r15)
     be8:	00 00       	.word 0x0000
     bea:	10 ee       	mov.l	r14,@(56,r0)
     bec:	00 00       	.word 0x0000
     bee:	00 00       	.word 0x0000
     bf0:	00 00       	.word 0x0000
     bf2:	05 dc       	mov.b	@(r0,r13),r5
     bf4:	00 00       	.word 0x0000
     bf6:	0f 34       	mov.b	r3,@(r0,r15)
     bf8:	00 00       	.word 0x0000
     bfa:	10 ee       	mov.l	r14,@(56,r0)
     bfc:	00 00       	.word 0x0000
     bfe:	00 00       	.word 0x0000
     c00:	00 00       	.word 0x0000
     c02:	06 28       	.word 0x0628
     c04:	00 00       	.word 0x0000
     c06:	0f 34       	mov.b	r3,@(r0,r15)
     c08:	00 00       	.word 0x0000
     c0a:	10 ee       	mov.l	r14,@(56,r0)
     c0c:	00 00       	.word 0x0000
     c0e:	00 00       	.word 0x0000
     c10:	00 00       	.word 0x0000
     c12:	05 98       	.word 0x0598
     c14:	00 00       	.word 0x0000
     c16:	0f 34       	mov.b	r3,@(r0,r15)
     c18:	00 00       	.word 0x0000
     c1a:	10 ee       	mov.l	r14,@(56,r0)
     c1c:	00 00       	.word 0x0000
     c1e:	00 00       	.word 0x0000
     c20:	00 00       	.word 0x0000
     c22:	06 74       	mov.b	r7,@(r0,r6)
     c24:	00 00       	.word 0x0000
     c26:	12 6c       	mov.l	r6,@(48,r2)
     c28:	00 00       	.word 0x0000
     c2a:	04 7c       	mov.b	@(r0,r7),r4
     c2c:	00 00       	.word 0x0000
     c2e:	00 00       	.word 0x0000
     c30:	00 00       	.word 0x0000
     c32:	05 dc       	mov.b	@(r0,r13),r5
     c34:	00 00       	.word 0x0000
     c36:	12 6c       	mov.l	r6,@(48,r2)
     c38:	00 00       	.word 0x0000
     c3a:	04 7c       	mov.b	@(r0,r7),r4
     c3c:	00 00       	.word 0x0000
     c3e:	00 00       	.word 0x0000
     c40:	00 00       	.word 0x0000
     c42:	06 28       	.word 0x0628
     c44:	00 00       	.word 0x0000
     c46:	12 6c       	mov.l	r6,@(48,r2)
     c48:	00 00       	.word 0x0000
     c4a:	04 7c       	mov.b	@(r0,r7),r4
     c4c:	00 00       	.word 0x0000
     c4e:	00 00       	.word 0x0000
     c50:	00 00       	.word 0x0000
     c52:	05 98       	.word 0x0598
     c54:	00 00       	.word 0x0000
     c56:	12 6c       	mov.l	r6,@(48,r2)
     c58:	00 00       	.word 0x0000
     c5a:	04 7c       	mov.b	@(r0,r7),r4
     c5c:	00 00       	.word 0x0000
     c5e:	00 00       	.word 0x0000
     c60:	00 00       	.word 0x0000
     c62:	06 74       	mov.b	r7,@(r0,r6)
     c64:	00 00       	.word 0x0000
     c66:	12 6c       	mov.l	r6,@(48,r2)
     c68:	00 00       	.word 0x0000
     c6a:	04 70       	.word 0x0470
     c6c:	00 00       	.word 0x0000
     c6e:	00 00       	.word 0x0000
     c70:	00 00       	.word 0x0000
     c72:	05 dc       	mov.b	@(r0,r13),r5
     c74:	00 00       	.word 0x0000
     c76:	12 6c       	mov.l	r6,@(48,r2)
     c78:	00 00       	.word 0x0000
     c7a:	04 70       	.word 0x0470
     c7c:	00 00       	.word 0x0000
     c7e:	00 00       	.word 0x0000
     c80:	00 00       	.word 0x0000
     c82:	06 28       	.word 0x0628
     c84:	00 00       	.word 0x0000
     c86:	12 6c       	mov.l	r6,@(48,r2)
     c88:	00 00       	.word 0x0000
     c8a:	04 70       	.word 0x0470
     c8c:	00 00       	.word 0x0000
     c8e:	00 00       	.word 0x0000
     c90:	00 00       	.word 0x0000
     c92:	05 98       	.word 0x0598
     c94:	00 00       	.word 0x0000
     c96:	12 6c       	mov.l	r6,@(48,r2)
     c98:	00 00       	.word 0x0000
     c9a:	04 70       	.word 0x0470
     c9c:	00 00       	.word 0x0000
     c9e:	00 00       	.word 0x0000
     ca0:	00 00       	.word 0x0000
     ca2:	06 74       	mov.b	r7,@(r0,r6)
     ca4:	00 00       	.word 0x0000
     ca6:	12 6c       	mov.l	r6,@(48,r2)
     ca8:	00 00       	.word 0x0000
     caa:	10 38       	mov.l	r3,@(32,r0)
     cac:	00 00       	.word 0x0000
     cae:	00 00       	.word 0x0000
     cb0:	00 00       	.word 0x0000
     cb2:	05 dc       	mov.b	@(r0,r13),r5
     cb4:	00 00       	.word 0x0000
     cb6:	12 6c       	mov.l	r6,@(48,r2)
     cb8:	00 00       	.word 0x0000
     cba:	10 38       	mov.l	r3,@(32,r0)
     cbc:	00 00       	.word 0x0000
     cbe:	00 00       	.word 0x0000
     cc0:	00 00       	.word 0x0000
     cc2:	06 28       	.word 0x0628
     cc4:	00 00       	.word 0x0000
     cc6:	12 6c       	mov.l	r6,@(48,r2)
     cc8:	00 00       	.word 0x0000
     cca:	10 38       	mov.l	r3,@(32,r0)
     ccc:	00 00       	.word 0x0000
     cce:	00 00       	.word 0x0000
     cd0:	00 00       	.word 0x0000
     cd2:	05 98       	.word 0x0598
     cd4:	00 00       	.word 0x0000
     cd6:	12 6c       	mov.l	r6,@(48,r2)
     cd8:	00 00       	.word 0x0000
     cda:	10 38       	mov.l	r3,@(32,r0)
     cdc:	00 00       	.word 0x0000
     cde:	00 00       	.word 0x0000
     ce0:	00 00       	.word 0x0000
     ce2:	06 74       	mov.b	r7,@(r0,r6)
     ce4:	00 00       	.word 0x0000
     ce6:	12 6c       	mov.l	r6,@(48,r2)
     ce8:	00 00       	.word 0x0000
     cea:	10 ee       	mov.l	r14,@(56,r0)
     cec:	00 00       	.word 0x0000
     cee:	00 00       	.word 0x0000
     cf0:	00 00       	.word 0x0000
     cf2:	05 dc       	mov.b	@(r0,r13),r5
     cf4:	00 00       	.word 0x0000
     cf6:	12 6c       	mov.l	r6,@(48,r2)
     cf8:	00 00       	.word 0x0000
     cfa:	10 ee       	mov.l	r14,@(56,r0)
     cfc:	00 00       	.word 0x0000
     cfe:	00 00       	.word 0x0000
     d00:	00 00       	.word 0x0000
     d02:	06 28       	.word 0x0628
     d04:	00 00       	.word 0x0000
     d06:	12 6c       	mov.l	r6,@(48,r2)
     d08:	00 00       	.word 0x0000
     d0a:	10 ee       	mov.l	r14,@(56,r0)
     d0c:	00 00       	.word 0x0000
     d0e:	00 00       	.word 0x0000
     d10:	00 00       	.word 0x0000
     d12:	05 98       	.word 0x0598
     d14:	00 00       	.word 0x0000
     d16:	12 6c       	mov.l	r6,@(48,r2)
     d18:	00 00       	.word 0x0000
     d1a:	10 ee       	mov.l	r14,@(56,r0)
     d1c:	00 00       	.word 0x0000
     d1e:	00 00       	.word 0x0000
     d20:	00 00       	.word 0x0000
     d22:	06 74       	mov.b	r7,@(r0,r6)
     d24:	00 00       	.word 0x0000
     d26:	0f 2c       	mov.b	@(r0,r2),r15
     d28:	00 00       	.word 0x0000
     d2a:	04 84       	mov.b	r8,@(r0,r4)
     d2c:	00 00       	.word 0x0000
     d2e:	00 00       	.word 0x0000
     d30:	00 00       	.word 0x0000
     d32:	05 dc       	mov.b	@(r0,r13),r5
     d34:	00 00       	.word 0x0000
     d36:	0f 2c       	mov.b	@(r0,r2),r15
     d38:	00 00       	.word 0x0000
     d3a:	04 84       	mov.b	r8,@(r0,r4)
     d3c:	00 00       	.word 0x0000
     d3e:	00 00       	.word 0x0000
     d40:	00 00       	.word 0x0000
     d42:	06 28       	.word 0x0628
     d44:	00 00       	.word 0x0000
     d46:	0f 2c       	mov.b	@(r0,r2),r15
     d48:	00 00       	.word 0x0000
     d4a:	04 84       	mov.b	r8,@(r0,r4)
     d4c:	00 00       	.word 0x0000
     d4e:	00 00       	.word 0x0000
     d50:	00 00       	.word 0x0000
     d52:	05 98       	.word 0x0598
     d54:	00 00       	.word 0x0000
     d56:	0f 2c       	mov.b	@(r0,r2),r15
     d58:	00 00       	.word 0x0000
     d5a:	04 84       	mov.b	r8,@(r0,r4)
     d5c:	00 00       	.word 0x0000
     d5e:	00 00       	.word 0x0000
     d60:	00 00       	.word 0x0000
     d62:	06 74       	mov.b	r7,@(r0,r6)
     d64:	00 00       	.word 0x0000
     d66:	0f 20       	.word 0x0f20
     d68:	00 00       	.word 0x0000
     d6a:	04 84       	mov.b	r8,@(r0,r4)
     d6c:	00 00       	.word 0x0000
     d6e:	00 00       	.word 0x0000
     d70:	00 00       	.word 0x0000
     d72:	05 dc       	mov.b	@(r0,r13),r5
     d74:	00 00       	.word 0x0000
     d76:	0f 20       	.word 0x0f20
     d78:	00 00       	.word 0x0000
     d7a:	04 84       	mov.b	r8,@(r0,r4)
     d7c:	00 00       	.word 0x0000
     d7e:	00 00       	.word 0x0000
     d80:	00 00       	.word 0x0000
     d82:	06 28       	.word 0x0628
     d84:	00 00       	.word 0x0000
     d86:	0f 20       	.word 0x0f20
     d88:	00 00       	.word 0x0000
     d8a:	04 84       	mov.b	r8,@(r0,r4)
     d8c:	00 00       	.word 0x0000
     d8e:	00 00       	.word 0x0000
     d90:	00 00       	.word 0x0000
     d92:	05 98       	.word 0x0598
     d94:	00 00       	.word 0x0000
     d96:	0f 20       	.word 0x0f20
     d98:	00 00       	.word 0x0000
     d9a:	04 84       	mov.b	r8,@(r0,r4)
     d9c:	00 00       	.word 0x0000
     d9e:	00 00       	.word 0x0000
     da0:	00 00       	.word 0x0000
     da2:	06 74       	mov.b	r7,@(r0,r6)
     da4:	00 00       	.word 0x0000
     da6:	0f 34       	mov.b	r3,@(r0,r15)
     da8:	00 00       	.word 0x0000
     daa:	10 b6       	mov.l	r11,@(24,r0)
     dac:	00 00       	.word 0x0000
     dae:	00 00       	.word 0x0000
     db0:	00 00       	.word 0x0000
     db2:	05 dc       	mov.b	@(r0,r13),r5
     db4:	00 00       	.word 0x0000
     db6:	0f 34       	mov.b	r3,@(r0,r15)
     db8:	00 00       	.word 0x0000
     dba:	10 b6       	mov.l	r11,@(24,r0)
     dbc:	00 00       	.word 0x0000
     dbe:	00 00       	.word 0x0000
     dc0:	00 00       	.word 0x0000
     dc2:	06 28       	.word 0x0628
     dc4:	00 00       	.word 0x0000
     dc6:	0f 34       	mov.b	r3,@(r0,r15)
     dc8:	00 00       	.word 0x0000
     dca:	10 b6       	mov.l	r11,@(24,r0)
     dcc:	00 00       	.word 0x0000
     dce:	00 00       	.word 0x0000
     dd0:	00 00       	.word 0x0000
     dd2:	05 98       	.word 0x0598
     dd4:	00 00       	.word 0x0000
     dd6:	0f 34       	mov.b	r3,@(r0,r15)
     dd8:	00 00       	.word 0x0000
     dda:	10 b6       	mov.l	r11,@(24,r0)
     ddc:	00 00       	.word 0x0000
     dde:	00 00       	.word 0x0000
     de0:	00 00       	.word 0x0000
     de2:	06 74       	mov.b	r7,@(r0,r6)
     de4:	00 00       	.word 0x0000
     de6:	0f 20       	.word 0x0f20
     de8:	00 00       	.word 0x0000
     dea:	04 84       	mov.b	r8,@(r0,r4)
     dec:	00 00       	.word 0x0000
     dee:	00 00       	.word 0x0000
     df0:	00 00       	.word 0x0000
     df2:	05 dc       	mov.b	@(r0,r13),r5
     df4:	00 00       	.word 0x0000
     df6:	0f 20       	.word 0x0f20
     df8:	00 00       	.word 0x0000
     dfa:	04 84       	mov.b	r8,@(r0,r4)
     dfc:	00 00       	.word 0x0000
     dfe:	00 00       	.word 0x0000
     e00:	00 00       	.word 0x0000
     e02:	06 28       	.word 0x0628
     e04:	00 00       	.word 0x0000
     e06:	0f 20       	.word 0x0f20
     e08:	00 00       	.word 0x0000
     e0a:	04 84       	mov.b	r8,@(r0,r4)
     e0c:	00 00       	.word 0x0000
     e0e:	00 00       	.word 0x0000
     e10:	00 00       	.word 0x0000
     e12:	05 98       	.word 0x0598
     e14:	00 00       	.word 0x0000
     e16:	0f 20       	.word 0x0f20
     e18:	00 00       	.word 0x0000
     e1a:	04 84       	mov.b	r8,@(r0,r4)
     e1c:	00 00       	.word 0x0000
     e1e:	00 00       	.word 0x0000
     e20:	00 00       	.word 0x0000
     e22:	06 74       	mov.b	r7,@(r0,r6)
     e24:	00 00       	.word 0x0000
     e26:	12 6c       	mov.l	r6,@(48,r2)
     e28:	00 00       	.word 0x0000
     e2a:	04 7c       	mov.b	@(r0,r7),r4
     e2c:	00 00       	.word 0x0000
     e2e:	00 00       	.word 0x0000
     e30:	00 00       	.word 0x0000
     e32:	05 dc       	mov.b	@(r0,r13),r5
     e34:	00 00       	.word 0x0000
     e36:	12 6c       	mov.l	r6,@(48,r2)
     e38:	00 00       	.word 0x0000
     e3a:	04 7c       	mov.b	@(r0,r7),r4
     e3c:	00 00       	.word 0x0000
     e3e:	00 00       	.word 0x0000
     e40:	00 00       	.word 0x0000
     e42:	06 28       	.word 0x0628
     e44:	00 00       	.word 0x0000
     e46:	12 6c       	mov.l	r6,@(48,r2)
     e48:	00 00       	.word 0x0000
     e4a:	04 7c       	mov.b	@(r0,r7),r4
     e4c:	00 00       	.word 0x0000
     e4e:	00 00       	.word 0x0000
     e50:	00 00       	.word 0x0000
     e52:	05 98       	.word 0x0598
     e54:	00 00       	.word 0x0000
     e56:	12 6c       	mov.l	r6,@(48,r2)
     e58:	00 00       	.word 0x0000
     e5a:	04 7c       	mov.b	@(r0,r7),r4
     e5c:	00 00       	.word 0x0000
     e5e:	00 00       	.word 0x0000
     e60:	00 00       	.word 0x0000
     e62:	06 74       	mov.b	r7,@(r0,r6)
     e64:	00 00       	.word 0x0000
     e66:	12 6c       	mov.l	r6,@(48,r2)
     e68:	00 00       	.word 0x0000
     e6a:	04 70       	.word 0x0470
     e6c:	00 00       	.word 0x0000
     e6e:	00 00       	.word 0x0000
     e70:	00 00       	.word 0x0000
     e72:	05 dc       	mov.b	@(r0,r13),r5
     e74:	00 00       	.word 0x0000
     e76:	12 6c       	mov.l	r6,@(48,r2)
     e78:	00 00       	.word 0x0000
     e7a:	04 70       	.word 0x0470
     e7c:	00 00       	.word 0x0000
     e7e:	00 00       	.word 0x0000
     e80:	00 00       	.word 0x0000
     e82:	06 28       	.word 0x0628
     e84:	00 00       	.word 0x0000
     e86:	12 6c       	mov.l	r6,@(48,r2)
     e88:	00 00       	.word 0x0000
     e8a:	04 70       	.word 0x0470
     e8c:	00 00       	.word 0x0000
     e8e:	00 00       	.word 0x0000
     e90:	00 00       	.word 0x0000
     e92:	05 98       	.word 0x0598
     e94:	00 00       	.word 0x0000
     e96:	12 6c       	mov.l	r6,@(48,r2)
     e98:	00 00       	.word 0x0000
     e9a:	04 70       	.word 0x0470
     e9c:	00 00       	.word 0x0000
     e9e:	00 00       	.word 0x0000
     ea0:	00 00       	.word 0x0000
     ea2:	06 74       	mov.b	r7,@(r0,r6)
     ea4:	00 00       	.word 0x0000
     ea6:	12 6c       	mov.l	r6,@(48,r2)
     ea8:	00 00       	.word 0x0000
     eaa:	10 b6       	mov.l	r11,@(24,r0)
     eac:	00 00       	.word 0x0000
     eae:	00 00       	.word 0x0000
     eb0:	00 00       	.word 0x0000
     eb2:	05 dc       	mov.b	@(r0,r13),r5
     eb4:	00 00       	.word 0x0000
     eb6:	12 6c       	mov.l	r6,@(48,r2)
     eb8:	00 00       	.word 0x0000
     eba:	10 b6       	mov.l	r11,@(24,r0)
     ebc:	00 00       	.word 0x0000
     ebe:	00 00       	.word 0x0000
     ec0:	00 00       	.word 0x0000
     ec2:	06 28       	.word 0x0628
     ec4:	00 00       	.word 0x0000
     ec6:	12 6c       	mov.l	r6,@(48,r2)
     ec8:	00 00       	.word 0x0000
     eca:	10 b6       	mov.l	r11,@(24,r0)
     ecc:	00 00       	.word 0x0000
     ece:	00 00       	.word 0x0000
     ed0:	00 00       	.word 0x0000
     ed2:	05 98       	.word 0x0598
     ed4:	00 00       	.word 0x0000
     ed6:	12 6c       	mov.l	r6,@(48,r2)
     ed8:	00 00       	.word 0x0000
     eda:	10 b6       	mov.l	r11,@(24,r0)
     edc:	00 00       	.word 0x0000
     ede:	00 00       	.word 0x0000
     ee0:	00 00       	.word 0x0000
     ee2:	06 74       	mov.b	r7,@(r0,r6)
     ee4:	00 00       	.word 0x0000
     ee6:	12 6c       	mov.l	r6,@(48,r2)
     ee8:	00 00       	.word 0x0000
     eea:	04 70       	.word 0x0470
     eec:	00 00       	.word 0x0000
     eee:	00 00       	.word 0x0000
     ef0:	00 00       	.word 0x0000
     ef2:	05 dc       	mov.b	@(r0,r13),r5
     ef4:	00 00       	.word 0x0000
     ef6:	12 6c       	mov.l	r6,@(48,r2)
     ef8:	00 00       	.word 0x0000
     efa:	04 70       	.word 0x0470
     efc:	00 00       	.word 0x0000
     efe:	00 00       	.word 0x0000
     f00:	00 00       	.word 0x0000
     f02:	06 28       	.word 0x0628
     f04:	00 00       	.word 0x0000
     f06:	12 6c       	mov.l	r6,@(48,r2)
     f08:	00 00       	.word 0x0000
     f0a:	04 70       	.word 0x0470
     f0c:	00 00       	.word 0x0000
     f0e:	00 00       	.word 0x0000
     f10:	00 00       	.word 0x0000
     f12:	05 98       	.word 0x0598
     f14:	00 00       	.word 0x0000
     f16:	12 6c       	mov.l	r6,@(48,r2)
     f18:	00 00       	.word 0x0000
     f1a:	04 70       	.word 0x0470
     f1c:	00 00       	.word 0x0000
	...

00000f20 <SetTexture>:
     f20:	85 81       	mov.w	@(2,r8),r0
     f22:	55 f5       	mov.l	@(20,r15),r5
     f24:	40 08       	shll2	r0
     f26:	30 0c       	add	r0,r0
     f28:	00 5e       	mov.l	@(r0,r5),r0
     f2a:	1b 02       	mov.l	r0,@(8,r11)

00000f2c <SetPolygon>:
     f2c:	85 84       	mov.w	@(8,r8),r0
     f2e:	55 81       	mov.l	@(4,r8),r5
     f30:	81 be       	mov.w	r0,@(28,r11)
     f32:	1b 51       	mov.l	r5,@(4,r11)

00000f34 <SetPosition>:
     f34:	45 29       	shlr16	r5
     f36:	45 09       	shlr2	r5
     f38:	45 01       	shlr	r5
     f3a:	8b 02       	bf	f42 <SetPosition2>
     f3c:	51 10       	mov.l	@(0,r1),r1
     f3e:	a0 51       	bra	fe4 <stpl_00>
     f40:	55 20       	mov.l	@(0,r2),r5

00000f42 <SetPosition2>:
     f42:	50 11       	mov.l	@(4,r1),r0
     f44:	51 10       	mov.l	@(0,r1),r1
     f46:	c8 01       	tst	#1,r0
     f48:	8d 4c       	bt.s	fe4 <stpl_00>
     f4a:	55 20       	mov.l	@(0,r2),r5
     f4c:	50 21       	mov.l	@(4,r2),r0
     f4e:	62 53       	mov	r5,r2
     f50:	c8 01       	tst	#1,r0
     f52:	8d 52       	bt.s	ffa <stpl_01>
     f54:	55 30       	mov.l	@(0,r3),r5
     f56:	50 31       	mov.l	@(4,r3),r0
     f58:	63 53       	mov	r5,r3
     f5a:	c8 01       	tst	#1,r0
     f5c:	8d 58       	bt.s	1010 <stpl_02>
     f5e:	55 40       	mov.l	@(0,r4),r5
     f60:	50 41       	mov.l	@(4,r4),r0
     f62:	64 53       	mov	r5,r4
     f64:	c8 01       	tst	#1,r0
     f66:	8d 5e       	bt.s	1026 <stpl_03>
     f68:	e5 01       	mov	#1,r5
     f6a:	2f 96       	mov.l	r9,@-r15

00000f6c <stvtc_4>:
     f6c:	45 28       	shll16	r5
     f6e:	45 01       	shlr	r5
     f70:	69 49       	swap.w	r4,r9
     f72:	29 58       	tst	r5,r9
     f74:	3d da       	subc	r13,r13
     f76:	6d d7       	not	r13,r13
     f78:	2d 9a       	xor	r9,r13
     f7a:	24 58       	tst	r5,r4
     f7c:	39 9a       	subc	r9,r9
     f7e:	69 97       	not	r9,r9
     f80:	29 4a       	xor	r4,r9
     f82:	3d 9c       	add	r9,r13
     f84:	6d dd       	extu.w	r13,r13
     f86:	c7 28       	mova	1028 <stpl_13>,r0
     f88:	69 39       	swap.w	r3,r9
     f8a:	29 58       	tst	r5,r9
     f8c:	3c ca       	subc	r12,r12
     f8e:	6c c7       	not	r12,r12
     f90:	2c 9a       	xor	r9,r12
     f92:	23 58       	tst	r5,r3
     f94:	39 9a       	subc	r9,r9
     f96:	69 97       	not	r9,r9
     f98:	29 3a       	xor	r3,r9
     f9a:	3c 9c       	add	r9,r12
     f9c:	6c cd       	extu.w	r12,r12
     f9e:	3c d7       	cmp/gt	r13,r12
     fa0:	8d 02       	bt.s	fa8 <stpl_20>
     fa2:	69 29       	swap.w	r2,r9
     fa4:	6d c3       	mov	r12,r13
     fa6:	c7 1b       	mova	1014 <stpl_12>,r0

00000fa8 <stpl_20>:
     fa8:	29 58       	tst	r5,r9
     faa:	3c ca       	subc	r12,r12
     fac:	6c c7       	not	r12,r12
     fae:	2c 9a       	xor	r9,r12
     fb0:	22 58       	tst	r5,r2
     fb2:	39 9a       	subc	r9,r9
     fb4:	69 97       	not	r9,r9
     fb6:	29 2a       	xor	r2,r9
     fb8:	3c 9c       	add	r9,r12
     fba:	6c cd       	extu.w	r12,r12
     fbc:	3c d7       	cmp/gt	r13,r12
     fbe:	8d 02       	bt.s	fc6 <stpl_21>
     fc0:	69 19       	swap.w	r1,r9
     fc2:	6d c3       	mov	r12,r13
     fc4:	c7 0e       	mova	1000 <stpl_11>,r0

00000fc6 <stpl_21>:
     fc6:	29 58       	tst	r5,r9
     fc8:	3c ca       	subc	r12,r12
     fca:	6c c7       	not	r12,r12
     fcc:	2c 9a       	xor	r9,r12
     fce:	21 58       	tst	r5,r1
     fd0:	39 9a       	subc	r9,r9
     fd2:	69 97       	not	r9,r9
     fd4:	29 1a       	xor	r1,r9
     fd6:	3c 9c       	add	r9,r12
     fd8:	6c cd       	extu.w	r12,r12
     fda:	3d c3       	cmp/ge	r12,r13
     fdc:	8d 05       	bt.s	fea <stpl_10>
     fde:	69 f6       	mov.l	@r15+,r9
     fe0:	40 2b       	jmp	@r0
     fe2:	65 96       	mov.l	@r9+,r5

00000fe4 <stpl_00>:
     fe4:	53 30       	mov.l	@(0,r3),r3
     fe6:	62 53       	mov	r5,r2
     fe8:	54 40       	mov.l	@(0,r4),r4

00000fea <stpl_10>:
     fea:	65 96       	mov.l	@r9+,r5
     fec:	1b 13       	mov.l	r1,@(12,r11)
     fee:	1b 24       	mov.l	r2,@(16,r11)
     ff0:	1b 35       	mov.l	r3,@(20,r11)
     ff2:	45 2b       	jmp	@r5
     ff4:	1b 46       	mov.l	r4,@(24,r11)
     ff6:	00 00       	.word 0x0000
     ff8:	00 09       	nop	

00000ffa <stpl_01>:
     ffa:	54 40       	mov.l	@(0,r4),r4
     ffc:	63 53       	mov	r5,r3
     ffe:	65 96       	mov.l	@r9+,r5

00001000 <stpl_11>:
    1000:	85 b0       	mov.w	@(0,r11),r0
    1002:	1b 14       	mov.l	r1,@(16,r11)
    1004:	ca 10       	xor	#16,r0
    1006:	81 b0       	mov.w	r0,@(0,r11)
    1008:	1b 23       	mov.l	r2,@(12,r11)
    100a:	1b 36       	mov.l	r3,@(24,r11)
    100c:	45 2b       	jmp	@r5
    100e:	1b 45       	mov.l	r4,@(20,r11)

00001010 <stpl_02>:
    1010:	64 53       	mov	r5,r4
    1012:	65 96       	mov.l	@r9+,r5

00001014 <stpl_12>:
    1014:	85 b0       	mov.w	@(0,r11),r0
    1016:	1b 15       	mov.l	r1,@(20,r11)
    1018:	ca 30       	xor	#48,r0
    101a:	81 b0       	mov.w	r0,@(0,r11)
    101c:	1b 26       	mov.l	r2,@(24,r11)
    101e:	1b 33       	mov.l	r3,@(12,r11)
    1020:	45 2b       	jmp	@r5
    1022:	1b 44       	mov.l	r4,@(16,r11)

00001024 <stvtc_3>:
    1024:	7f 04       	add	#4,r15

00001026 <stpl_03>:
    1026:	65 96       	mov.l	@r9+,r5

00001028 <stpl_13>:
    1028:	85 b0       	mov.w	@(0,r11),r0
    102a:	1b 16       	mov.l	r1,@(24,r11)
    102c:	ca 20       	xor	#32,r0
    102e:	81 b0       	mov.w	r0,@(0,r11)
    1030:	1b 25       	mov.l	r2,@(20,r11)
    1032:	1b 34       	mov.l	r3,@(16,r11)
    1034:	45 2b       	jmp	@r5
    1036:	1b 43       	mov.l	r4,@(12,r11)

00001038 <SlCalc_Light>:
    1038:	00 28       	clrmac	
    103a:	05 12       	stc	gbr,r5
    103c:	64 f3       	mov	r15,r4
    103e:	75 58       	add	#88,r5
    1040:	05 4f       	mac.l	@r4+,@r5+
    1042:	85 83       	mov.w	@(6,r8),r0
    1044:	e1 1f       	mov	#31,r1
    1046:	63 08       	swap.b	r0,r3
    1048:	05 4f       	mac.l	@r4+,@r5+
    104a:	43 09       	shlr2	r3
    104c:	23 19       	and	r1,r3
    104e:	21 09       	and	r0,r1
    1050:	05 4f       	mac.l	@r4+,@r5+
    1052:	40 09       	shlr2	r0
    1054:	40 09       	shlr2	r0
    1056:	e2 1f       	mov	#31,r2
    1058:	40 01       	shlr	r0
    105a:	22 09       	and	r0,r2
    105c:	05 0a       	sts	mach,r5
    105e:	04 1a       	sts	macl,r4
    1060:	25 58       	tst	r5,r5
    1062:	8d 09       	bt.s	1078 <Sllgbfr_0>
    1064:	c6 19       	mov.l	@(100,gbr),r0
    1066:	75 01       	add	#1,r5
    1068:	25 58       	tst	r5,r5
    106a:	89 07       	bt	107c <Sllgbfr_0a>
    106c:	e4 ff       	mov	#-1,r4
    106e:	45 15       	cmp/pl	r5
    1070:	8d 08       	bt.s	1084 <Sllgbfr_1>
    1072:	64 4c       	extu.b	r4,r4
    1074:	a0 0a       	bra	108c <Sllgbfr_2>
    1076:	00 09       	nop	

00001078 <Sllgbfr_0>:
    1078:	e5 80       	mov	#-128,r5
    107a:	65 5c       	extu.b	r5,r5

0000107c <Sllgbfr_0a>:
    107c:	44 29       	shlr16	r4
    107e:	44 19       	shlr8	r4
    1080:	44 01       	shlr	r4
    1082:	24 5b       	or	r5,r4

00001084 <Sllgbfr_1>:
    1084:	e5 f8       	mov	#-8,r5
    1086:	24 59       	and	r5,r4
    1088:	44 08       	shll2	r4
    108a:	30 4c       	add	r4,r0

0000108c <Sllgbfr_2>:
    108c:	e5 04       	mov	#4,r5
    108e:	45 18       	shll8	r5
    1090:	01 1c       	mov.b	@(r0,r1),r1
    1092:	30 5c       	add	r5,r0
    1094:	02 2c       	mov.b	@(r0,r2),r2
    1096:	30 5c       	add	r5,r0
    1098:	00 3c       	mov.b	@(r0,r3),r0
    109a:	cb 20       	or	#32,r0
    109c:	60 08       	swap.b	r0,r0
    109e:	42 08       	shll2	r2
    10a0:	42 00       	shll	r2
    10a2:	30 2c       	add	r2,r0
    10a4:	40 08       	shll2	r0
    10a6:	21 0b       	or	r0,r1
    10a8:	85 82       	mov.w	@(4,r8),r0
    10aa:	41 28       	shll16	r1
    10ac:	21 0d       	xtrct	r0,r1
    10ae:	85 84       	mov.w	@(8,r8),r0
    10b0:	1b 11       	mov.l	r1,@(4,r11)
    10b2:	00 0b       	rts	
    10b4:	81 be       	mov.w	r0,@(28,r11)

000010b6 <SlCalc_Light_PAL>:
    10b6:	00 28       	clrmac	
    10b8:	64 f3       	mov	r15,r4
    10ba:	05 12       	stc	gbr,r5
    10bc:	75 58       	add	#88,r5
    10be:	05 4f       	mac.l	@r4+,@r5+
    10c0:	05 4f       	mac.l	@r4+,@r5+
    10c2:	50 81       	mov.l	@(4,r8),r0
    10c4:	05 4f       	mac.l	@r4+,@r5+
    10c6:	e1 07       	mov	#7,r1
    10c8:	05 0a       	sts	mach,r5
    10ca:	04 1a       	sts	macl,r4
    10cc:	25 58       	tst	r5,r5
    10ce:	8d 05       	bt.s	10dc <SllgbfrPL_1>
    10d0:	75 01       	add	#1,r5
    10d2:	25 58       	tst	r5,r5
    10d4:	8d 03       	bt.s	10de <SllgbfrPL_1a>
    10d6:	45 11       	cmp/pz	r5
    10d8:	8f 07       	bf.s	10ea <SllgbfrPL_2>
    10da:	e4 ff       	mov	#-1,r4

000010dc <SllgbfrPL_1>:
    10dc:	e5 08       	mov	#8,r5

000010de <SllgbfrPL_1a>:
    10de:	44 04       	rotl	r4
    10e0:	44 04       	rotl	r4
    10e2:	44 04       	rotl	r4
    10e4:	24 19       	and	r1,r4
    10e6:	24 5b       	or	r5,r4
    10e8:	30 4c       	add	r4,r0

000010ea <SllgbfrPL_2>:
    10ea:	00 0b       	rts	
    10ec:	1b 01       	mov.l	r0,@(4,r11)

000010ee <SlCalc_Light_Tex>:
    10ee:	85 81       	mov.w	@(2,r8),r0
    10f0:	51 f5       	mov.l	@(20,r15),r1
    10f2:	40 08       	shll2	r0
    10f4:	30 0c       	add	r0,r0
    10f6:	00 1e       	mov.l	@(r0,r1),r0
    10f8:	00 28       	clrmac	
    10fa:	1b 02       	mov.l	r0,@(8,r11)
    10fc:	05 12       	stc	gbr,r5
    10fe:	64 f3       	mov	r15,r4
    1100:	75 58       	add	#88,r5
    1102:	05 4f       	mac.l	@r4+,@r5+
    1104:	53 81       	mov.l	@(4,r8),r3
    1106:	05 4f       	mac.l	@r4+,@r5+
    1108:	60 39       	swap.w	r3,r0
    110a:	c9 38       	and	#56,r0
    110c:	05 4f       	mac.l	@r4+,@r5+
    110e:	88 08       	cmp/eq	#8,r0
    1110:	89 01       	bt	1116 <Slclclgtx_00>
    1112:	88 28       	cmp/eq	#40,r0
    1114:	8b 19       	bf	114a <Slclclgtx_9>

00001116 <Slclclgtx_00>:
    1116:	90 1c       	mov.w	1152 <IMM_GouraudRAM_8s>,r0	! ffe0
    1118:	01 0a       	sts	mach,r1
    111a:	02 1a       	sts	macl,r2
    111c:	21 18       	tst	r1,r1
    111e:	8d 05       	bt.s	112c <Slclclgtx_0>
    1120:	71 01       	add	#1,r1
    1122:	21 18       	tst	r1,r1
    1124:	8d 03       	bt.s	112e <Slclclgtx_0a>
    1126:	41 11       	cmp/pz	r1
    1128:	8f 07       	bf.s	113a <Slclclgtx_1>
    112a:	e2 ff       	mov	#-1,r2

0000112c <Slclclgtx_0>:
    112c:	e1 10       	mov	#16,r1

0000112e <Slclclgtx_0a>:
    112e:	42 29       	shlr16	r2
    1130:	42 19       	shlr8	r2
    1132:	42 09       	shlr2	r2
    1134:	42 09       	shlr2	r2
    1136:	22 1b       	or	r1,r2
    1138:	30 2c       	add	r2,r0

0000113a <Slclclgtx_1>:
    113a:	e2 f8       	mov	#-8,r2
    113c:	81 be       	mov.w	r0,@(28,r11)
    113e:	60 39       	swap.w	r3,r0
    1140:	20 29       	and	r2,r0
    1142:	cb 04       	or	#4,r0
    1144:	60 09       	swap.w	r0,r0
    1146:	00 0b       	rts	
    1148:	1b 01       	mov.l	r0,@(4,r11)

0000114a <Slclclgtx_9>:
    114a:	85 84       	mov.w	@(8,r8),r0
    114c:	1b 31       	mov.l	r3,@(4,r11)
    114e:	00 0b       	rts	
    1150:	81 be       	mov.w	r0,@(28,r11)

00001152 <IMM_GouraudRAM_8s>:
    1152:	ff e0       	fadd	fr14,fr15

00001154 <SlClipCheck>:
    1154:	c6 27       	mov.l	@(156,gbr),r0
    1156:	2f 96       	mov.l	r9,@-r15
    1158:	6d 0f       	exts.w	r0,r13
    115a:	6c 09       	swap.w	r0,r12
    115c:	50 11       	mov.l	@(4,r1),r0
    115e:	e5 00       	mov	#0,r5
    1160:	51 10       	mov.l	@(0,r1),r1
    1162:	6c cf       	exts.w	r12,r12
    1164:	40 01       	shlr	r0
    1166:	8f 0b       	bf.s	1180 <Slclck_01>
    1168:	35 5e       	addc	r5,r5
    116a:	c5 47       	mov.w	@(142,gbr),r0
    116c:	69 1f       	exts.w	r1,r9
    116e:	39 dc       	add	r13,r9
    1170:	39 02       	cmp/hs	r0,r9
    1172:	8d 3c       	bt.s	11ee <SlClipOut>
    1174:	69 19       	swap.w	r1,r9
    1176:	c5 46       	mov.w	@(140,gbr),r0
    1178:	69 9f       	exts.w	r9,r9
    117a:	39 cc       	add	r12,r9
    117c:	39 02       	cmp/hs	r0,r9
    117e:	8d 36       	bt.s	11ee <SlClipOut>

00001180 <Slclck_01>:
    1180:	50 21       	mov.l	@(4,r2),r0
    1182:	52 20       	mov.l	@(0,r2),r2
    1184:	40 01       	shlr	r0
    1186:	8f 0b       	bf.s	11a0 <Slclck_02>
    1188:	35 5e       	addc	r5,r5
    118a:	c5 47       	mov.w	@(142,gbr),r0
    118c:	69 2f       	exts.w	r2,r9
    118e:	39 dc       	add	r13,r9
    1190:	39 02       	cmp/hs	r0,r9
    1192:	8d 2c       	bt.s	11ee <SlClipOut>
    1194:	69 29       	swap.w	r2,r9
    1196:	c5 46       	mov.w	@(140,gbr),r0
    1198:	69 9f       	exts.w	r9,r9
    119a:	39 cc       	add	r12,r9
    119c:	39 02       	cmp/hs	r0,r9
    119e:	8d 26       	bt.s	11ee <SlClipOut>

000011a0 <Slclck_02>:
    11a0:	50 31       	mov.l	@(4,r3),r0
    11a2:	53 30       	mov.l	@(0,r3),r3
    11a4:	40 01       	shlr	r0
    11a6:	8f 0b       	bf.s	11c0 <Slclck_03>
    11a8:	35 5e       	addc	r5,r5
    11aa:	c5 47       	mov.w	@(142,gbr),r0
    11ac:	69 3f       	exts.w	r3,r9
    11ae:	39 dc       	add	r13,r9
    11b0:	39 02       	cmp/hs	r0,r9
    11b2:	8d 1c       	bt.s	11ee <SlClipOut>
    11b4:	69 39       	swap.w	r3,r9
    11b6:	c5 46       	mov.w	@(140,gbr),r0
    11b8:	69 9f       	exts.w	r9,r9
    11ba:	39 cc       	add	r12,r9
    11bc:	39 02       	cmp/hs	r0,r9
    11be:	8d 16       	bt.s	11ee <SlClipOut>

000011c0 <Slclck_03>:
    11c0:	50 41       	mov.l	@(4,r4),r0
    11c2:	54 40       	mov.l	@(0,r4),r4
    11c4:	40 01       	shlr	r0
    11c6:	8f 0b       	bf.s	11e0 <Slclck_04>
    11c8:	35 5e       	addc	r5,r5
    11ca:	c5 47       	mov.w	@(142,gbr),r0
    11cc:	69 4f       	exts.w	r4,r9
    11ce:	39 dc       	add	r13,r9
    11d0:	39 02       	cmp/hs	r0,r9
    11d2:	8d 0c       	bt.s	11ee <SlClipOut>
    11d4:	69 49       	swap.w	r4,r9
    11d6:	c5 46       	mov.w	@(140,gbr),r0
    11d8:	69 9f       	exts.w	r9,r9
    11da:	39 cc       	add	r12,r9
    11dc:	39 02       	cmp/hs	r0,r9
    11de:	8d 06       	bt.s	11ee <SlClipOut>

000011e0 <Slclck_04>:
    11e0:	e5 00       	mov	#0,r5
    11e2:	45 08       	shll2	r5
    11e4:	c7 03       	mova	11f4 <SlVertChangeTbl>,r0
    11e6:	00 5e       	mov.l	@(r0,r5),r0
    11e8:	e5 01       	mov	#1,r5
    11ea:	40 2b       	jmp	@r0
    11ec:	69 f2       	mov.l	@r15,r9

000011ee <SlClipOut>:
    11ee:	a9 53       	bra	498 <ccpl_lp_29>
    11f0:	7f 04       	add	#4,r15
	...

000011f4 <SlVertChangeTbl>:
    11f4:	00 00       	.word 0x0000
    11f6:	12 5c       	mov.l	r5,@(48,r2)
    11f8:	00 00       	.word 0x0000
    11fa:	12 5c       	mov.l	r5,@(48,r2)
    11fc:	00 00       	.word 0x0000
    11fe:	12 5c       	mov.l	r5,@(48,r2)
    1200:	00 00       	.word 0x0000
    1202:	12 5c       	mov.l	r5,@(48,r2)
    1204:	00 00       	.word 0x0000
    1206:	12 5c       	mov.l	r5,@(48,r2)
    1208:	00 00       	.word 0x0000
    120a:	12 5c       	mov.l	r5,@(48,r2)
    120c:	00 00       	.word 0x0000
    120e:	12 5c       	mov.l	r5,@(48,r2)
    1210:	00 00       	.word 0x0000
    1212:	12 5c       	mov.l	r5,@(48,r2)
    1214:	00 00       	.word 0x0000
    1216:	12 34       	mov.l	r3,@(16,r2)
    1218:	00 00       	.word 0x0000
    121a:	12 34       	mov.l	r3,@(16,r2)
    121c:	00 00       	.word 0x0000
    121e:	12 34       	mov.l	r3,@(16,r2)
    1220:	00 00       	.word 0x0000
    1222:	12 34       	mov.l	r3,@(16,r2)
    1224:	00 00       	.word 0x0000
    1226:	12 48       	mov.l	r4,@(32,r2)
    1228:	00 00       	.word 0x0000
    122a:	12 48       	mov.l	r4,@(32,r2)
    122c:	00 00       	.word 0x0000
    122e:	10 24       	mov.l	r2,@(16,r0)
    1230:	00 00       	.word 0x0000
    1232:	0f 6c       	mov.b	@(r0,r6),r15

00001234 <stvtc_1>:
    1234:	65 96       	mov.l	@r9+,r5
    1236:	7f 04       	add	#4,r15
    1238:	85 b0       	mov.w	@(0,r11),r0
    123a:	1b 14       	mov.l	r1,@(16,r11)
    123c:	ca 10       	xor	#16,r0
    123e:	81 b0       	mov.w	r0,@(0,r11)
    1240:	1b 23       	mov.l	r2,@(12,r11)
    1242:	1b 36       	mov.l	r3,@(24,r11)
    1244:	45 2b       	jmp	@r5
    1246:	1b 45       	mov.l	r4,@(20,r11)

00001248 <stvtc_2>:
    1248:	65 96       	mov.l	@r9+,r5
    124a:	7f 04       	add	#4,r15
    124c:	85 b0       	mov.w	@(0,r11),r0
    124e:	1b 15       	mov.l	r1,@(20,r11)
    1250:	ca 30       	xor	#48,r0
    1252:	81 b0       	mov.w	r0,@(0,r11)
    1254:	1b 26       	mov.l	r2,@(24,r11)
    1256:	1b 33       	mov.l	r3,@(12,r11)
    1258:	45 2b       	jmp	@r5
    125a:	1b 44       	mov.l	r4,@(16,r11)

0000125c <stvtc_0>:
    125c:	65 96       	mov.l	@r9+,r5
    125e:	7f 04       	add	#4,r15
    1260:	1b 46       	mov.l	r4,@(24,r11)
    1262:	1b 35       	mov.l	r3,@(20,r11)
    1264:	1b 24       	mov.l	r2,@(16,r11)
    1266:	45 2b       	jmp	@r5
    1268:	1b 13       	mov.l	r1,@(12,r11)
	...

0000126c <SlCalcDepthFlat>:
    126c:	2f 26       	mov.l	r2,@-r15
    126e:	2f 16       	mov.l	r1,@-r15
    1270:	d1 0f       	mov.l	12b0 <DepthArea>,r1	! 0 <_sbMakePolygon>
    1272:	5d 10       	mov.l	@(0,r1),r13
    1274:	5c 11       	mov.l	@(4,r1),r12
    1276:	65 e3       	mov	r14,r5
    1278:	3d 53       	cmp/ge	r5,r13
    127a:	8d 0c       	bt.s	1296 <SlDpF_2>
    127c:	e0 00       	mov	#0,r0
    127e:	35 d8       	sub	r13,r5
    1280:	35 c3       	cmp/ge	r12,r5
    1282:	8d 08       	bt.s	1296 <SlDpF_2>
    1284:	85 15       	mov.w	@(10,r1),r0
    1286:	85 14       	mov.w	@(8,r1),r0
    1288:	62 03       	mov	r0,r2
    128a:	88 00       	cmp/eq	#0,r0
    128c:	8d 03       	bt.s	1296 <SlDpF_2>
    128e:	60 53       	mov	r5,r0

00001290 <SlDpF_1>:
    1290:	42 10       	dt	r2
    1292:	8f fd       	bf.s	1290 <SlDpF_1>
    1294:	40 01       	shlr	r0

00001296 <SlDpF_2>:
    1296:	65 03       	mov	r0,r5
    1298:	85 16       	mov.w	@(12,r1),r0
    129a:	30 5c       	add	r5,r0
    129c:	81 84       	mov.w	r0,@(8,r8)
    129e:	85 82       	mov.w	@(4,r8),r0
    12a0:	cb 04       	or	#4,r0
    12a2:	81 82       	mov.w	r0,@(4,r8)
    12a4:	61 f6       	mov.l	@r15+,r1
    12a6:	62 f6       	mov.l	@r15+,r2
    12a8:	d0 02       	mov.l	12b4 <SetJmp>,r0	! f34 <SetPosition>
    12aa:	40 2b       	jmp	@r0
    12ac:	00 09       	nop	
	...

000012b0 <DepthArea>:
    12b0:	00 00       	.word 0x0000
	...

000012b4 <SetJmp>:
    12b4:	00 00       	.word 0x0000
    12b6:	0f 34       	mov.b	r3,@(r0,r15)
