
sglA01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSin>:
       0:	60 48       	swap.b	r4,r0
       2:	40 09       	shlr2	r0
       4:	c9 38       	and	#56,r0
       6:	62 03       	mov	r0,r2
       8:	c7 20       	mova	8c <_sin_index_tbl>,r0
       a:	32 0c       	add	r0,r2
       c:	84 26       	mov.b	@(6,r2),r0
       e:	91 3b       	mov.w	88 <IMM_3ffe>,r1	! 3ffe
      10:	24 0a       	xor	r0,r4
      12:	60 26       	mov.l	@r2+,r0
      14:	24 19       	and	r1,r4
      16:	00 4d       	mov.w	@(r0,r4),r0
      18:	61 24       	mov.b	@r2+,r1
      1a:	62 20       	mov.b	@r2,r2
      1c:	60 0d       	extu.w	r0,r0
      1e:	20 1a       	xor	r1,r0
      20:	00 0b       	rts	
      22:	30 2c       	add	r2,r0

00000024 <_slCos>:
      24:	60 48       	swap.b	r4,r0
      26:	40 09       	shlr2	r0
      28:	c9 38       	and	#56,r0
      2a:	62 03       	mov	r0,r2
      2c:	c7 1b       	mova	9c <_cos_index_tbl>,r0
      2e:	32 0c       	add	r0,r2
      30:	84 26       	mov.b	@(6,r2),r0
      32:	91 29       	mov.w	88 <IMM_3ffe>,r1	! 3ffe
      34:	24 0a       	xor	r0,r4
      36:	60 26       	mov.l	@r2+,r0
      38:	24 19       	and	r1,r4
      3a:	00 4d       	mov.w	@(r0,r4),r0
      3c:	61 24       	mov.b	@r2+,r1
      3e:	62 20       	mov.b	@r2,r2
      40:	60 0d       	extu.w	r0,r0
      42:	20 1a       	xor	r1,r0
      44:	00 0b       	rts	
      46:	30 2c       	add	r2,r0

00000048 <GetSinCos>:
      48:	60 48       	swap.b	r4,r0
      4a:	40 09       	shlr2	r0
      4c:	c9 38       	and	#56,r0
      4e:	62 03       	mov	r0,r2
      50:	c7 22       	mova	dc <_sin_cos_index_tbl>,r0
      52:	32 0c       	add	r0,r2
      54:	65 43       	mov	r4,r5
      56:	61 24       	mov.b	@r2+,r1
      58:	60 24       	mov.b	@r2+,r0
      5a:	24 1a       	xor	r1,r4
      5c:	91 14       	mov.w	88 <IMM_3ffe>,r1	! 3ffe
      5e:	25 0a       	xor	r0,r5
      60:	60 24       	mov.b	@r2+,r0
      62:	24 19       	and	r1,r4
      64:	25 19       	and	r1,r5
      66:	61 24       	mov.b	@r2+,r1
      68:	34 0c       	add	r0,r4
      6a:	c7 2c       	mova	11c <_sin_tbl>,r0
      6c:	35 1c       	add	r1,r5
      6e:	04 4d       	mov.w	@(r0,r4),r4
      70:	05 5d       	mov.w	@(r0,r5),r5
      72:	60 24       	mov.b	@r2+,r0
      74:	61 24       	mov.b	@r2+,r1
      76:	64 4d       	extu.w	r4,r4
      78:	65 5d       	extu.w	r5,r5
      7a:	24 0a       	xor	r0,r4
      7c:	60 24       	mov.b	@r2+,r0
      7e:	25 1a       	xor	r1,r5
      80:	61 24       	mov.b	@r2+,r1
      82:	34 0c       	add	r0,r4
      84:	00 0b       	rts	
      86:	35 1c       	add	r1,r5

00000088 <IMM_3ffe>:
      88:	3f fe       	addc	r15,r15
	...

0000008c <_sin_index_tbl>:
      8c:	00 00       	.word 0x0000
      8e:	01 1c       	mov.b	@(r0,r1),r1
      90:	00 00       	.word 0x0000
      92:	00 00       	.word 0x0000
      94:	00 00       	.word 0x0000
      96:	01 1c       	mov.b	@(r0,r1),r1
      98:	00 01       	.word 0x0001
	...

0000009c <_cos_index_tbl>:
      9c:	00 00       	.word 0x0000
      9e:	01 1e       	mov.l	@(r0,r1),r1
      a0:	00 01       	.word 0x0001
      a2:	ff 00       	fadd	fr0,fr15
      a4:	00 00       	.word 0x0000
      a6:	01 1e       	mov.l	@(r0,r1),r1
      a8:	00 00       	.word 0x0000
      aa:	ff 00       	fadd	fr0,fr15
      ac:	00 00       	.word 0x0000
      ae:	01 1c       	mov.b	@(r0,r1),r1
      b0:	ff 01       	fsub	fr0,fr15
      b2:	00 00       	.word 0x0000
      b4:	00 00       	.word 0x0000
      b6:	01 1c       	mov.b	@(r0,r1),r1
      b8:	ff 00       	fadd	fr0,fr15
      ba:	00 00       	.word 0x0000
      bc:	00 00       	.word 0x0000
      be:	01 1e       	mov.l	@(r0,r1),r1
      c0:	ff 00       	fadd	fr0,fr15
      c2:	ff 00       	fadd	fr0,fr15
      c4:	00 00       	.word 0x0000
      c6:	01 1e       	mov.l	@(r0,r1),r1
      c8:	ff 01       	fsub	fr0,fr15
      ca:	ff 00       	fadd	fr0,fr15
      cc:	00 00       	.word 0x0000
      ce:	01 1c       	mov.b	@(r0,r1),r1
      d0:	00 00       	.word 0x0000
      d2:	00 00       	.word 0x0000
      d4:	00 00       	.word 0x0000
      d6:	01 1e       	mov.l	@(r0,r1),r1
      d8:	00 01       	.word 0x0001
	...

000000dc <_sin_cos_index_tbl>:
      dc:	00 ff       	mac.l	@r15+,@r0+
      de:	00 02       	stc	sr,r0
      e0:	00 00       	.word 0x0000
      e2:	00 01       	.word 0x0001
      e4:	00 ff       	mac.l	@r15+,@r0+
      e6:	00 02       	stc	sr,r0
      e8:	00 00       	.word 0x0000
      ea:	01 00       	.word 0x0100
      ec:	ff 00       	fadd	fr0,fr15
      ee:	02 00       	.word 0x0200
      f0:	00 ff       	mac.l	@r15+,@r0+
      f2:	01 01       	.word 0x0101
      f4:	ff 00       	fadd	fr0,fr15
      f6:	02 00       	.word 0x0200
      f8:	00 ff       	mac.l	@r15+,@r0+
      fa:	00 00       	.word 0x0000
      fc:	00 ff       	mac.l	@r15+,@r0+
      fe:	00 02       	stc	sr,r0
     100:	ff ff       	.word 0xffff
     102:	01 00       	.word 0x0100
     104:	00 ff       	mac.l	@r15+,@r0+
     106:	00 02       	stc	sr,r0
     108:	ff ff       	.word 0xffff
     10a:	00 01       	.word 0x0001
     10c:	ff 00       	fadd	fr0,fr15
     10e:	02 00       	.word 0x0200
     110:	ff 00       	fadd	fr0,fr15
     112:	00 00       	.word 0x0000
     114:	ff 00       	fadd	fr0,fr15
     116:	02 02       	stc	sr,r2
     118:	ff 00       	fadd	fr0,fr15
     11a:	01 01       	.word 0x0101

0000011c <_sin_tbl>:
     11c:	00 00       	.word 0x0000
     11e:	00 0c       	mov.b	@(r0,r0),r0
     120:	00 19       	div0u	
     122:	00 25       	mov.w	r2,@(r0,r0)
     124:	00 32       	stc	ssr,r0
     126:	00 3e       	mov.l	@(r0,r3),r0
     128:	00 4b       	.word 0x004b
     12a:	00 57       	mul.l	r5,r0
     12c:	00 64       	mov.b	r6,@(r0,r0)
     12e:	00 71       	.word 0x0071
     130:	00 7d       	mov.w	@(r0,r7),r0
     132:	00 8a       	.word 0x008a
     134:	00 96       	mov.l	r9,@(r0,r0)
     136:	00 a3       	ocbp	@r0
     138:	00 af       	mac.l	@r10+,@r0+
     13a:	00 bc       	mov.b	@(r0,r11),r0
     13c:	00 c9       	.word 0x00c9
     13e:	00 d5       	mov.w	r13,@(r0,r0)
     140:	00 e2       	stc	r6_bank,r0
     142:	00 ee       	mov.l	@(r0,r14),r0
     144:	00 fb       	.word 0x00fb
     146:	01 07       	mul.l	r0,r1
     148:	01 14       	mov.b	r1,@(r0,r1)
     14a:	01 21       	.word 0x0121
     14c:	01 2d       	mov.w	@(r0,r2),r1
     14e:	01 3a       	stc	sgr,r1
     150:	01 46       	mov.l	r4,@(r0,r1)
     152:	01 53       	.word 0x0153
     154:	01 5f       	mac.l	@r5+,@r1+
     156:	01 6c       	mov.b	@(r0,r6),r1
     158:	01 78       	.word 0x0178
     15a:	01 85       	mov.w	r8,@(r0,r1)
     15c:	01 92       	stc	r1_bank,r1
     15e:	01 9e       	mov.l	@(r0,r9),r1
     160:	01 ab       	.word 0x01ab
     162:	01 b7       	mul.l	r11,r1
     164:	01 c4       	mov.b	r12,@(r0,r1)
     166:	01 d0       	.word 0x01d0
     168:	01 dd       	mov.w	@(r0,r13),r1
     16a:	01 ea       	.word 0x01ea
     16c:	01 f6       	mov.l	r15,@(r0,r1)
     16e:	02 03       	bsrf	r2
     170:	02 0f       	mac.l	@r0+,@r2+
     172:	02 1c       	mov.b	@(r0,r1),r2
     174:	02 28       	.word 0x0228
     176:	02 35       	mov.w	r3,@(r0,r2)
     178:	02 42       	stc	spc,r2
     17a:	02 4e       	mov.l	@(r0,r4),r2
     17c:	02 5b       	.word 0x025b
     17e:	02 67       	mul.l	r6,r2
     180:	02 74       	mov.b	r7,@(r0,r2)
     182:	02 80       	.word 0x0280
     184:	02 8d       	mov.w	@(r0,r8),r2
     186:	02 9a       	.word 0x029a
     188:	02 a6       	mov.l	r10,@(r0,r2)
     18a:	02 b3       	ocbwb	@r2
     18c:	02 bf       	mac.l	@r11+,@r2+
     18e:	02 cc       	mov.b	@(r0,r12),r2
     190:	02 d8       	.word 0x02d8
     192:	02 e5       	mov.w	r14,@(r0,r2)
     194:	02 f1       	.word 0x02f1
     196:	02 fe       	mov.l	@(r0,r15),r2
     198:	03 0b       	.word 0x030b
     19a:	03 17       	mul.l	r1,r3
     19c:	03 24       	mov.b	r2,@(r0,r3)
     19e:	03 30       	.word 0x0330
     1a0:	03 3d       	mov.w	@(r0,r3),r3
     1a2:	03 49       	.word 0x0349
     1a4:	03 56       	mov.l	r5,@(r0,r3)
     1a6:	03 63       	.word 0x0363
     1a8:	03 6f       	mac.l	@r6+,@r3+
     1aa:	03 7c       	mov.b	@(r0,r7),r3
     1ac:	03 88       	.word 0x0388
     1ae:	03 95       	mov.w	r9,@(r0,r3)
     1b0:	03 a1       	.word 0x03a1
     1b2:	03 ae       	mov.l	@(r0,r10),r3
     1b4:	03 bb       	.word 0x03bb
     1b6:	03 c7       	mul.l	r12,r3
     1b8:	03 d4       	mov.b	r13,@(r0,r3)
     1ba:	03 e0       	.word 0x03e0
     1bc:	03 ed       	mov.w	@(r0,r14),r3
     1be:	03 f9       	.word 0x03f9
     1c0:	04 06       	mov.l	r0,@(r0,r4)
     1c2:	04 12       	stc	gbr,r4
     1c4:	04 1f       	mac.l	@r1+,@r4+
     1c6:	04 2c       	mov.b	@(r0,r2),r4
     1c8:	04 38       	.word 0x0438
     1ca:	04 45       	mov.w	r4,@(r0,r4)
     1cc:	04 51       	.word 0x0451
     1ce:	04 5e       	mov.l	@(r0,r5),r4
     1d0:	04 6a       	sts	fpscr,r4
     1d2:	04 77       	mul.l	r7,r4
     1d4:	04 84       	mov.b	r8,@(r0,r4)
     1d6:	04 90       	.word 0x0490
     1d8:	04 9d       	mov.w	@(r0,r9),r4
     1da:	04 a9       	.word 0x04a9
     1dc:	04 b6       	mov.l	r11,@(r0,r4)
     1de:	04 c2       	stc	r4_bank,r4
     1e0:	04 cf       	mac.l	@r12+,@r4+
     1e2:	04 db       	.word 0x04db
     1e4:	04 e8       	.word 0x04e8
     1e6:	04 f5       	mov.w	r15,@(r0,r4)
     1e8:	05 01       	.word 0x0501
     1ea:	05 0e       	mov.l	@(r0,r0),r5
     1ec:	05 1a       	sts	macl,r5
     1ee:	05 27       	mul.l	r2,r5
     1f0:	05 33       	.word 0x0533
     1f2:	05 40       	.word 0x0540
     1f4:	05 4d       	mov.w	@(r0,r4),r5
     1f6:	05 59       	.word 0x0559
     1f8:	05 66       	mov.l	r6,@(r0,r5)
     1fa:	05 72       	stc	r7_bank,r5
     1fc:	05 7f       	mac.l	@r7+,@r5+
     1fe:	05 8b       	.word 0x058b
     200:	05 98       	.word 0x0598
     202:	05 a5       	mov.w	r10,@(r0,r5)
     204:	05 b1       	.word 0x05b1
     206:	05 be       	mov.l	@(r0,r11),r5
     208:	05 ca       	.word 0x05ca
     20a:	05 d7       	mul.l	r13,r5
     20c:	05 e3       	.word 0x05e3
     20e:	05 f0       	.word 0x05f0
     210:	05 fc       	mov.b	@(r0,r15),r5
     212:	06 09       	.word 0x0609
     214:	06 16       	mov.l	r1,@(r0,r6)
     216:	06 22       	stc	vbr,r6
     218:	06 2f       	mac.l	@r2+,@r6+
     21a:	06 3b       	.word 0x063b
     21c:	06 48       	.word 0x0648
     21e:	06 54       	mov.b	r5,@(r0,r6)
     220:	06 61       	.word 0x0661
     222:	06 6e       	mov.l	@(r0,r6),r6
     224:	06 7a       	.word 0x067a
     226:	06 87       	mul.l	r8,r6
     228:	06 93       	ocbi	@r6
     22a:	06 a0       	.word 0x06a0
     22c:	06 ac       	mov.b	@(r0,r10),r6
     22e:	06 b9       	.word 0x06b9
     230:	06 c5       	mov.w	r12,@(r0,r6)
     232:	06 d2       	stc	r5_bank,r6
     234:	06 df       	mac.l	@r13+,@r6+
     236:	06 eb       	.word 0x06eb
     238:	06 f8       	.word 0x06f8
     23a:	07 04       	mov.b	r0,@(r0,r7)
     23c:	07 11       	.word 0x0711
     23e:	07 1d       	mov.w	@(r0,r1),r7
     240:	07 2a       	sts	pr,r7
     242:	07 37       	mul.l	r3,r7
     244:	07 43       	.word 0x0743
     246:	07 50       	.word 0x0750
     248:	07 5c       	mov.b	@(r0,r5),r7
     24a:	07 69       	.word 0x0769
     24c:	07 75       	mov.w	r7,@(r0,r7)
     24e:	07 82       	stc	r0_bank,r7
     250:	07 8e       	mov.l	@(r0,r8),r7
     252:	07 9b       	.word 0x079b
     254:	07 a8       	.word 0x07a8
     256:	07 b4       	mov.b	r11,@(r0,r7)
     258:	07 c1       	.word 0x07c1
     25a:	07 cd       	mov.w	@(r0,r12),r7
     25c:	07 da       	.word 0x07da
     25e:	07 e6       	mov.l	r14,@(r0,r7)
     260:	07 f3       	.word 0x07f3
     262:	07 ff       	mac.l	@r15+,@r7+
     264:	08 0c       	mov.b	@(r0,r0),r8
     266:	08 19       	.word 0x0819
     268:	08 25       	mov.w	r2,@(r0,r8)
     26a:	08 32       	stc	ssr,r8
     26c:	08 3e       	mov.l	@(r0,r3),r8
     26e:	08 4b       	.word 0x084b
     270:	08 57       	mul.l	r5,r8
     272:	08 64       	mov.b	r6,@(r0,r8)
     274:	08 71       	.word 0x0871
     276:	08 7d       	mov.w	@(r0,r7),r8
     278:	08 8a       	.word 0x088a
     27a:	08 96       	mov.l	r9,@(r0,r8)
     27c:	08 a3       	ocbp	@r8
     27e:	08 af       	mac.l	@r10+,@r8+
     280:	08 bc       	mov.b	@(r0,r11),r8
     282:	08 c8       	.word 0x08c8
     284:	08 d5       	mov.w	r13,@(r0,r8)
     286:	08 e2       	stc	r6_bank,r8
     288:	08 ee       	mov.l	@(r0,r14),r8
     28a:	08 fb       	.word 0x08fb
     28c:	09 07       	mul.l	r0,r9
     28e:	09 14       	mov.b	r1,@(r0,r9)
     290:	09 20       	.word 0x0920
     292:	09 2d       	mov.w	@(r0,r2),r9
     294:	09 39       	.word 0x0939
     296:	09 46       	mov.l	r4,@(r0,r9)
     298:	09 53       	.word 0x0953
     29a:	09 5f       	mac.l	@r5+,@r9+
     29c:	09 6c       	mov.b	@(r0,r6),r9
     29e:	09 78       	.word 0x0978
     2a0:	09 85       	mov.w	r8,@(r0,r9)
     2a2:	09 91       	.word 0x0991
     2a4:	09 9e       	mov.l	@(r0,r9),r9
     2a6:	09 aa       	.word 0x09aa
     2a8:	09 b7       	mul.l	r11,r9
     2aa:	09 c4       	mov.b	r12,@(r0,r9)
     2ac:	09 d0       	.word 0x09d0
     2ae:	09 dd       	mov.w	@(r0,r13),r9
     2b0:	09 e9       	.word 0x09e9
     2b2:	09 f6       	mov.l	r15,@(r0,r9)
     2b4:	0a 02       	stc	sr,r10
     2b6:	0a 0f       	mac.l	@r0+,@r10+
     2b8:	0a 1b       	.word 0x0a1b
     2ba:	0a 28       	.word 0x0a28
     2bc:	0a 35       	mov.w	r3,@(r0,r10)
     2be:	0a 41       	.word 0x0a41
     2c0:	0a 4e       	mov.l	@(r0,r4),r10
     2c2:	0a 5a       	sts	fpul,r10
     2c4:	0a 67       	mul.l	r6,r10
     2c6:	0a 73       	.word 0x0a73
     2c8:	0a 80       	.word 0x0a80
     2ca:	0a 8d       	mov.w	@(r0,r8),r10
     2cc:	0a 99       	.word 0x0a99
     2ce:	0a a6       	mov.l	r10,@(r0,r10)
     2d0:	0a b2       	stc	r3_bank,r10
     2d2:	0a bf       	mac.l	@r11+,@r10+
     2d4:	0a cb       	.word 0x0acb
     2d6:	0a d8       	.word 0x0ad8
     2d8:	0a e4       	mov.b	r14,@(r0,r10)
     2da:	0a f1       	.word 0x0af1
     2dc:	0a fe       	mov.l	@(r0,r15),r10
     2de:	0b 0a       	sts	mach,r11
     2e0:	0b 17       	mul.l	r1,r11
     2e2:	0b 23       	braf	r11
     2e4:	0b 30       	.word 0x0b30
     2e6:	0b 3c       	mov.b	@(r0,r3),r11
     2e8:	0b 49       	.word 0x0b49
     2ea:	0b 55       	mov.w	r5,@(r0,r11)
     2ec:	0b 62       	stc	r6_bank,r11
     2ee:	0b 6e       	mov.l	@(r0,r6),r11
     2f0:	0b 7b       	.word 0x0b7b
     2f2:	0b 88       	.word 0x0b88
     2f4:	0b 94       	mov.b	r9,@(r0,r11)
     2f6:	0b a1       	.word 0x0ba1
     2f8:	0b ad       	mov.w	@(r0,r10),r11
     2fa:	0b ba       	.word 0x0bba
     2fc:	0b c6       	mov.l	r12,@(r0,r11)
     2fe:	0b d3       	.word 0x0bd3
     300:	0b df       	mac.l	@r13+,@r11+
     302:	0b ec       	mov.b	@(r0,r14),r11
     304:	0b f9       	.word 0x0bf9
     306:	0c 05       	mov.w	r0,@(r0,r12)
     308:	0c 12       	stc	gbr,r12
     30a:	0c 1e       	mov.l	@(r0,r1),r12
     30c:	0c 2b       	.word 0x0c2b
     30e:	0c 37       	mul.l	r3,r12
     310:	0c 44       	mov.b	r4,@(r0,r12)
     312:	0c 50       	.word 0x0c50
     314:	0c 5d       	mov.w	@(r0,r5),r12
     316:	0c 6a       	sts	fpscr,r12
     318:	0c 76       	mov.l	r7,@(r0,r12)
     31a:	0c 83       	pref	@r12
     31c:	0c 8f       	mac.l	@r8+,@r12+
     31e:	0c 9c       	mov.b	@(r0,r9),r12
     320:	0c a8       	.word 0x0ca8
     322:	0c b5       	mov.w	r11,@(r0,r12)
     324:	0c c1       	.word 0x0cc1
     326:	0c ce       	mov.l	@(r0,r12),r12
     328:	0c db       	.word 0x0cdb
     32a:	0c e7       	mul.l	r14,r12
     32c:	0c f4       	mov.b	r15,@(r0,r12)
     32e:	0d 00       	.word 0x0d00
     330:	0d 0d       	mov.w	@(r0,r0),r13
     332:	0d 19       	.word 0x0d19
     334:	0d 26       	mov.l	r2,@(r0,r13)
     336:	0d 32       	stc	ssr,r13
     338:	0d 3f       	mac.l	@r3+,@r13+
     33a:	0d 4b       	.word 0x0d4b
     33c:	0d 58       	.word 0x0d58
     33e:	0d 65       	mov.w	r6,@(r0,r13)
     340:	0d 71       	.word 0x0d71
     342:	0d 7e       	mov.l	@(r0,r7),r13
     344:	0d 8a       	.word 0x0d8a
     346:	0d 97       	mul.l	r9,r13
     348:	0d a3       	ocbp	@r13
     34a:	0d b0       	.word 0x0db0
     34c:	0d bc       	mov.b	@(r0,r11),r13
     34e:	0d c9       	.word 0x0dc9
     350:	0d d5       	mov.w	r13,@(r0,r13)
     352:	0d e2       	stc	r6_bank,r13
     354:	0d ef       	mac.l	@r14+,@r13+
     356:	0d fb       	.word 0x0dfb
     358:	0e 08       	.word 0x0e08
     35a:	0e 14       	mov.b	r1,@(r0,r14)
     35c:	0e 21       	.word 0x0e21
     35e:	0e 2d       	mov.w	@(r0,r2),r14
     360:	0e 3a       	stc	sgr,r14
     362:	0e 46       	mov.l	r4,@(r0,r14)
     364:	0e 53       	.word 0x0e53
     366:	0e 60       	.word 0x0e60
     368:	0e 6c       	mov.b	@(r0,r6),r14
     36a:	0e 79       	.word 0x0e79
     36c:	0e 85       	mov.w	r8,@(r0,r14)
     36e:	0e 92       	stc	r1_bank,r14
     370:	0e 9e       	mov.l	@(r0,r9),r14
     372:	0e ab       	.word 0x0eab
     374:	0e b7       	mul.l	r11,r14
     376:	0e c4       	mov.b	r12,@(r0,r14)
     378:	0e d0       	.word 0x0ed0
     37a:	0e dd       	mov.w	@(r0,r13),r14
     37c:	0e ea       	.word 0x0eea
     37e:	0e f6       	mov.l	r15,@(r0,r14)
     380:	0f 03       	bsrf	r15
     382:	0f 0f       	mac.l	@r0+,@r15+
     384:	0f 1c       	mov.b	@(r0,r1),r15
     386:	0f 28       	.word 0x0f28
     388:	0f 35       	mov.w	r3,@(r0,r15)
     38a:	0f 41       	.word 0x0f41
     38c:	0f 4e       	mov.l	@(r0,r4),r15
     38e:	0f 5a       	sts	fpul,r15
     390:	0f 67       	mul.l	r6,r15
     392:	0f 74       	mov.b	r7,@(r0,r15)
     394:	0f 80       	.word 0x0f80
     396:	0f 8d       	mov.w	@(r0,r8),r15
     398:	0f 99       	.word 0x0f99
     39a:	0f a6       	mov.l	r10,@(r0,r15)
     39c:	0f b2       	stc	r3_bank,r15
     39e:	0f bf       	mac.l	@r11+,@r15+
     3a0:	0f cb       	.word 0x0fcb
     3a2:	0f d8       	.word 0x0fd8
     3a4:	0f e4       	mov.b	r14,@(r0,r15)
     3a6:	0f f1       	.word 0x0ff1
     3a8:	0f fd       	mov.w	@(r0,r15),r15
     3aa:	10 0a       	mov.l	r0,@(40,r0)
     3ac:	10 17       	mov.l	r1,@(28,r0)
     3ae:	10 23       	mov.l	r2,@(12,r0)
     3b0:	10 30       	mov.l	r3,@(0,r0)
     3b2:	10 3c       	mov.l	r3,@(48,r0)
     3b4:	10 49       	mov.l	r4,@(36,r0)
     3b6:	10 55       	mov.l	r5,@(20,r0)
     3b8:	10 62       	mov.l	r6,@(8,r0)
     3ba:	10 6e       	mov.l	r6,@(56,r0)
     3bc:	10 7b       	mov.l	r7,@(44,r0)
     3be:	10 87       	mov.l	r8,@(28,r0)
     3c0:	10 94       	mov.l	r9,@(16,r0)
     3c2:	10 a1       	mov.l	r10,@(4,r0)
     3c4:	10 ad       	mov.l	r10,@(52,r0)
     3c6:	10 ba       	mov.l	r11,@(40,r0)
     3c8:	10 c6       	mov.l	r12,@(24,r0)
     3ca:	10 d3       	mov.l	r13,@(12,r0)
     3cc:	10 df       	mov.l	r13,@(60,r0)
     3ce:	10 ec       	mov.l	r14,@(48,r0)
     3d0:	10 f8       	mov.l	r15,@(32,r0)
     3d2:	11 05       	mov.l	r0,@(20,r1)
     3d4:	11 11       	mov.l	r1,@(4,r1)
     3d6:	11 1e       	mov.l	r1,@(56,r1)
     3d8:	11 2a       	mov.l	r2,@(40,r1)
     3da:	11 37       	mov.l	r3,@(28,r1)
     3dc:	11 44       	mov.l	r4,@(16,r1)
     3de:	11 50       	mov.l	r5,@(0,r1)
     3e0:	11 5d       	mov.l	r5,@(52,r1)
     3e2:	11 69       	mov.l	r6,@(36,r1)
     3e4:	11 76       	mov.l	r7,@(24,r1)
     3e6:	11 82       	mov.l	r8,@(8,r1)
     3e8:	11 8f       	mov.l	r8,@(60,r1)
     3ea:	11 9b       	mov.l	r9,@(44,r1)
     3ec:	11 a8       	mov.l	r10,@(32,r1)
     3ee:	11 b4       	mov.l	r11,@(16,r1)
     3f0:	11 c1       	mov.l	r12,@(4,r1)
     3f2:	11 cd       	mov.l	r12,@(52,r1)
     3f4:	11 da       	mov.l	r13,@(40,r1)
     3f6:	11 e6       	mov.l	r14,@(24,r1)
     3f8:	11 f3       	mov.l	r15,@(12,r1)
     3fa:	12 00       	mov.l	r0,@(0,r2)
     3fc:	12 0c       	mov.l	r0,@(48,r2)
     3fe:	12 19       	mov.l	r1,@(36,r2)
     400:	12 25       	mov.l	r2,@(20,r2)
     402:	12 32       	mov.l	r3,@(8,r2)
     404:	12 3e       	mov.l	r3,@(56,r2)
     406:	12 4b       	mov.l	r4,@(44,r2)
     408:	12 57       	mov.l	r5,@(28,r2)
     40a:	12 64       	mov.l	r6,@(16,r2)
     40c:	12 70       	mov.l	r7,@(0,r2)
     40e:	12 7d       	mov.l	r7,@(52,r2)
     410:	12 89       	mov.l	r8,@(36,r2)
     412:	12 96       	mov.l	r9,@(24,r2)
     414:	12 a2       	mov.l	r10,@(8,r2)
     416:	12 af       	mov.l	r10,@(60,r2)
     418:	12 bc       	mov.l	r11,@(48,r2)
     41a:	12 c8       	mov.l	r12,@(32,r2)
     41c:	12 d5       	mov.l	r13,@(20,r2)
     41e:	12 e1       	mov.l	r14,@(4,r2)
     420:	12 ee       	mov.l	r14,@(56,r2)
     422:	12 fa       	mov.l	r15,@(40,r2)
     424:	13 07       	mov.l	r0,@(28,r3)
     426:	13 13       	mov.l	r1,@(12,r3)
     428:	13 20       	mov.l	r2,@(0,r3)
     42a:	13 2c       	mov.l	r2,@(48,r3)
     42c:	13 39       	mov.l	r3,@(36,r3)
     42e:	13 45       	mov.l	r4,@(20,r3)
     430:	13 52       	mov.l	r5,@(8,r3)
     432:	13 5e       	mov.l	r5,@(56,r3)
     434:	13 6b       	mov.l	r6,@(44,r3)
     436:	13 78       	mov.l	r7,@(32,r3)
     438:	13 84       	mov.l	r8,@(16,r3)
     43a:	13 91       	mov.l	r9,@(4,r3)
     43c:	13 9d       	mov.l	r9,@(52,r3)
     43e:	13 aa       	mov.l	r10,@(40,r3)
     440:	13 b6       	mov.l	r11,@(24,r3)
     442:	13 c3       	mov.l	r12,@(12,r3)
     444:	13 cf       	mov.l	r12,@(60,r3)
     446:	13 dc       	mov.l	r13,@(48,r3)
     448:	13 e8       	mov.l	r14,@(32,r3)
     44a:	13 f5       	mov.l	r15,@(20,r3)
     44c:	14 01       	mov.l	r0,@(4,r4)
     44e:	14 0e       	mov.l	r0,@(56,r4)
     450:	14 1a       	mov.l	r1,@(40,r4)
     452:	14 27       	mov.l	r2,@(28,r4)
     454:	14 33       	mov.l	r3,@(12,r4)
     456:	14 40       	mov.l	r4,@(0,r4)
     458:	14 4d       	mov.l	r4,@(52,r4)
     45a:	14 59       	mov.l	r5,@(36,r4)
     45c:	14 66       	mov.l	r6,@(24,r4)
     45e:	14 72       	mov.l	r7,@(8,r4)
     460:	14 7f       	mov.l	r7,@(60,r4)
     462:	14 8b       	mov.l	r8,@(44,r4)
     464:	14 98       	mov.l	r9,@(32,r4)
     466:	14 a4       	mov.l	r10,@(16,r4)
     468:	14 b1       	mov.l	r11,@(4,r4)
     46a:	14 bd       	mov.l	r11,@(52,r4)
     46c:	14 ca       	mov.l	r12,@(40,r4)
     46e:	14 d6       	mov.l	r13,@(24,r4)
     470:	14 e3       	mov.l	r14,@(12,r4)
     472:	14 ef       	mov.l	r14,@(60,r4)
     474:	14 fc       	mov.l	r15,@(48,r4)
     476:	15 08       	mov.l	r0,@(32,r5)
     478:	15 15       	mov.l	r1,@(20,r5)
     47a:	15 21       	mov.l	r2,@(4,r5)
     47c:	15 2e       	mov.l	r2,@(56,r5)
     47e:	15 3a       	mov.l	r3,@(40,r5)
     480:	15 47       	mov.l	r4,@(28,r5)
     482:	15 54       	mov.l	r5,@(16,r5)
     484:	15 60       	mov.l	r6,@(0,r5)
     486:	15 6d       	mov.l	r6,@(52,r5)
     488:	15 79       	mov.l	r7,@(36,r5)
     48a:	15 86       	mov.l	r8,@(24,r5)
     48c:	15 92       	mov.l	r9,@(8,r5)
     48e:	15 9f       	mov.l	r9,@(60,r5)
     490:	15 ab       	mov.l	r10,@(44,r5)
     492:	15 b8       	mov.l	r11,@(32,r5)
     494:	15 c4       	mov.l	r12,@(16,r5)
     496:	15 d1       	mov.l	r13,@(4,r5)
     498:	15 dd       	mov.l	r13,@(52,r5)
     49a:	15 ea       	mov.l	r14,@(40,r5)
     49c:	15 f6       	mov.l	r15,@(24,r5)
     49e:	16 03       	mov.l	r0,@(12,r6)
     4a0:	16 0f       	mov.l	r0,@(60,r6)
     4a2:	16 1c       	mov.l	r1,@(48,r6)
     4a4:	16 28       	mov.l	r2,@(32,r6)
     4a6:	16 35       	mov.l	r3,@(20,r6)
     4a8:	16 41       	mov.l	r4,@(4,r6)
     4aa:	16 4e       	mov.l	r4,@(56,r6)
     4ac:	16 5a       	mov.l	r5,@(40,r6)
     4ae:	16 67       	mov.l	r6,@(28,r6)
     4b0:	16 74       	mov.l	r7,@(16,r6)
     4b2:	16 80       	mov.l	r8,@(0,r6)
     4b4:	16 8d       	mov.l	r8,@(52,r6)
     4b6:	16 99       	mov.l	r9,@(36,r6)
     4b8:	16 a6       	mov.l	r10,@(24,r6)
     4ba:	16 b2       	mov.l	r11,@(8,r6)
     4bc:	16 bf       	mov.l	r11,@(60,r6)
     4be:	16 cb       	mov.l	r12,@(44,r6)
     4c0:	16 d8       	mov.l	r13,@(32,r6)
     4c2:	16 e4       	mov.l	r14,@(16,r6)
     4c4:	16 f1       	mov.l	r15,@(4,r6)
     4c6:	16 fd       	mov.l	r15,@(52,r6)
     4c8:	17 0a       	mov.l	r0,@(40,r7)
     4ca:	17 16       	mov.l	r1,@(24,r7)
     4cc:	17 23       	mov.l	r2,@(12,r7)
     4ce:	17 2f       	mov.l	r2,@(60,r7)
     4d0:	17 3c       	mov.l	r3,@(48,r7)
     4d2:	17 48       	mov.l	r4,@(32,r7)
     4d4:	17 55       	mov.l	r5,@(20,r7)
     4d6:	17 61       	mov.l	r6,@(4,r7)
     4d8:	17 6e       	mov.l	r6,@(56,r7)
     4da:	17 7a       	mov.l	r7,@(40,r7)
     4dc:	17 87       	mov.l	r8,@(28,r7)
     4de:	17 93       	mov.l	r9,@(12,r7)
     4e0:	17 a0       	mov.l	r10,@(0,r7)
     4e2:	17 ac       	mov.l	r10,@(48,r7)
     4e4:	17 b9       	mov.l	r11,@(36,r7)
     4e6:	17 c5       	mov.l	r12,@(20,r7)
     4e8:	17 d2       	mov.l	r13,@(8,r7)
     4ea:	17 de       	mov.l	r13,@(56,r7)
     4ec:	17 eb       	mov.l	r14,@(44,r7)
     4ee:	17 f7       	mov.l	r15,@(28,r7)
     4f0:	18 04       	mov.l	r0,@(16,r8)
     4f2:	18 10       	mov.l	r1,@(0,r8)
     4f4:	18 1d       	mov.l	r1,@(52,r8)
     4f6:	18 29       	mov.l	r2,@(36,r8)
     4f8:	18 36       	mov.l	r3,@(24,r8)
     4fa:	18 43       	mov.l	r4,@(12,r8)
     4fc:	18 4f       	mov.l	r4,@(60,r8)
     4fe:	18 5c       	mov.l	r5,@(48,r8)
     500:	18 68       	mov.l	r6,@(32,r8)
     502:	18 75       	mov.l	r7,@(20,r8)
     504:	18 81       	mov.l	r8,@(4,r8)
     506:	18 8e       	mov.l	r8,@(56,r8)
     508:	18 9a       	mov.l	r9,@(40,r8)
     50a:	18 a7       	mov.l	r10,@(28,r8)
     50c:	18 b3       	mov.l	r11,@(12,r8)
     50e:	18 c0       	mov.l	r12,@(0,r8)
     510:	18 cc       	mov.l	r12,@(48,r8)
     512:	18 d9       	mov.l	r13,@(36,r8)
     514:	18 e5       	mov.l	r14,@(20,r8)
     516:	18 f2       	mov.l	r15,@(8,r8)
     518:	18 fe       	mov.l	r15,@(56,r8)
     51a:	19 0b       	mov.l	r0,@(44,r9)
     51c:	19 17       	mov.l	r1,@(28,r9)
     51e:	19 24       	mov.l	r2,@(16,r9)
     520:	19 30       	mov.l	r3,@(0,r9)
     522:	19 3d       	mov.l	r3,@(52,r9)
     524:	19 49       	mov.l	r4,@(36,r9)
     526:	19 56       	mov.l	r5,@(24,r9)
     528:	19 62       	mov.l	r6,@(8,r9)
     52a:	19 6f       	mov.l	r6,@(60,r9)
     52c:	19 7b       	mov.l	r7,@(44,r9)
     52e:	19 88       	mov.l	r8,@(32,r9)
     530:	19 94       	mov.l	r9,@(16,r9)
     532:	19 a1       	mov.l	r10,@(4,r9)
     534:	19 ad       	mov.l	r10,@(52,r9)
     536:	19 ba       	mov.l	r11,@(40,r9)
     538:	19 c6       	mov.l	r12,@(24,r9)
     53a:	19 d3       	mov.l	r13,@(12,r9)
     53c:	19 df       	mov.l	r13,@(60,r9)
     53e:	19 ec       	mov.l	r14,@(48,r9)
     540:	19 f8       	mov.l	r15,@(32,r9)
     542:	1a 05       	mov.l	r0,@(20,r10)
     544:	1a 11       	mov.l	r1,@(4,r10)
     546:	1a 1e       	mov.l	r1,@(56,r10)
     548:	1a 2a       	mov.l	r2,@(40,r10)
     54a:	1a 37       	mov.l	r3,@(28,r10)
     54c:	1a 43       	mov.l	r4,@(12,r10)
     54e:	1a 50       	mov.l	r5,@(0,r10)
     550:	1a 5c       	mov.l	r5,@(48,r10)
     552:	1a 69       	mov.l	r6,@(36,r10)
     554:	1a 75       	mov.l	r7,@(20,r10)
     556:	1a 82       	mov.l	r8,@(8,r10)
     558:	1a 8e       	mov.l	r8,@(56,r10)
     55a:	1a 9b       	mov.l	r9,@(44,r10)
     55c:	1a a7       	mov.l	r10,@(28,r10)
     55e:	1a b4       	mov.l	r11,@(16,r10)
     560:	1a c0       	mov.l	r12,@(0,r10)
     562:	1a cd       	mov.l	r12,@(52,r10)
     564:	1a d9       	mov.l	r13,@(36,r10)
     566:	1a e6       	mov.l	r14,@(24,r10)
     568:	1a f2       	mov.l	r15,@(8,r10)
     56a:	1a ff       	mov.l	r15,@(60,r10)
     56c:	1b 0b       	mov.l	r0,@(44,r11)
     56e:	1b 18       	mov.l	r1,@(32,r11)
     570:	1b 24       	mov.l	r2,@(16,r11)
     572:	1b 31       	mov.l	r3,@(4,r11)
     574:	1b 3d       	mov.l	r3,@(52,r11)
     576:	1b 4a       	mov.l	r4,@(40,r11)
     578:	1b 56       	mov.l	r5,@(24,r11)
     57a:	1b 63       	mov.l	r6,@(12,r11)
     57c:	1b 6f       	mov.l	r6,@(60,r11)
     57e:	1b 7c       	mov.l	r7,@(48,r11)
     580:	1b 88       	mov.l	r8,@(32,r11)
     582:	1b 95       	mov.l	r9,@(20,r11)
     584:	1b a1       	mov.l	r10,@(4,r11)
     586:	1b ae       	mov.l	r10,@(56,r11)
     588:	1b ba       	mov.l	r11,@(40,r11)
     58a:	1b c7       	mov.l	r12,@(28,r11)
     58c:	1b d3       	mov.l	r13,@(12,r11)
     58e:	1b e0       	mov.l	r14,@(0,r11)
     590:	1b ec       	mov.l	r14,@(48,r11)
     592:	1b f9       	mov.l	r15,@(36,r11)
     594:	1c 05       	mov.l	r0,@(20,r12)
     596:	1c 12       	mov.l	r1,@(8,r12)
     598:	1c 1e       	mov.l	r1,@(56,r12)
     59a:	1c 2b       	mov.l	r2,@(44,r12)
     59c:	1c 37       	mov.l	r3,@(28,r12)
     59e:	1c 44       	mov.l	r4,@(16,r12)
     5a0:	1c 50       	mov.l	r5,@(0,r12)
     5a2:	1c 5c       	mov.l	r5,@(48,r12)
     5a4:	1c 69       	mov.l	r6,@(36,r12)
     5a6:	1c 75       	mov.l	r7,@(20,r12)
     5a8:	1c 82       	mov.l	r8,@(8,r12)
     5aa:	1c 8e       	mov.l	r8,@(56,r12)
     5ac:	1c 9b       	mov.l	r9,@(44,r12)
     5ae:	1c a7       	mov.l	r10,@(28,r12)
     5b0:	1c b4       	mov.l	r11,@(16,r12)
     5b2:	1c c0       	mov.l	r12,@(0,r12)
     5b4:	1c cd       	mov.l	r12,@(52,r12)
     5b6:	1c d9       	mov.l	r13,@(36,r12)
     5b8:	1c e6       	mov.l	r14,@(24,r12)
     5ba:	1c f2       	mov.l	r15,@(8,r12)
     5bc:	1c ff       	mov.l	r15,@(60,r12)
     5be:	1d 0b       	mov.l	r0,@(44,r13)
     5c0:	1d 18       	mov.l	r1,@(32,r13)
     5c2:	1d 24       	mov.l	r2,@(16,r13)
     5c4:	1d 31       	mov.l	r3,@(4,r13)
     5c6:	1d 3d       	mov.l	r3,@(52,r13)
     5c8:	1d 4a       	mov.l	r4,@(40,r13)
     5ca:	1d 56       	mov.l	r5,@(24,r13)
     5cc:	1d 63       	mov.l	r6,@(12,r13)
     5ce:	1d 6f       	mov.l	r6,@(60,r13)
     5d0:	1d 7c       	mov.l	r7,@(48,r13)
     5d2:	1d 88       	mov.l	r8,@(32,r13)
     5d4:	1d 95       	mov.l	r9,@(20,r13)
     5d6:	1d a1       	mov.l	r10,@(4,r13)
     5d8:	1d ae       	mov.l	r10,@(56,r13)
     5da:	1d ba       	mov.l	r11,@(40,r13)
     5dc:	1d c7       	mov.l	r12,@(28,r13)
     5de:	1d d3       	mov.l	r13,@(12,r13)
     5e0:	1d e0       	mov.l	r14,@(0,r13)
     5e2:	1d ec       	mov.l	r14,@(48,r13)
     5e4:	1d f8       	mov.l	r15,@(32,r13)
     5e6:	1e 05       	mov.l	r0,@(20,r14)
     5e8:	1e 11       	mov.l	r1,@(4,r14)
     5ea:	1e 1e       	mov.l	r1,@(56,r14)
     5ec:	1e 2a       	mov.l	r2,@(40,r14)
     5ee:	1e 37       	mov.l	r3,@(28,r14)
     5f0:	1e 43       	mov.l	r4,@(12,r14)
     5f2:	1e 50       	mov.l	r5,@(0,r14)
     5f4:	1e 5c       	mov.l	r5,@(48,r14)
     5f6:	1e 69       	mov.l	r6,@(36,r14)
     5f8:	1e 75       	mov.l	r7,@(20,r14)
     5fa:	1e 82       	mov.l	r8,@(8,r14)
     5fc:	1e 8e       	mov.l	r8,@(56,r14)
     5fe:	1e 9b       	mov.l	r9,@(44,r14)
     600:	1e a7       	mov.l	r10,@(28,r14)
     602:	1e b4       	mov.l	r11,@(16,r14)
     604:	1e c0       	mov.l	r12,@(0,r14)
     606:	1e cd       	mov.l	r12,@(52,r14)
     608:	1e d9       	mov.l	r13,@(36,r14)
     60a:	1e e6       	mov.l	r14,@(24,r14)
     60c:	1e f2       	mov.l	r15,@(8,r14)
     60e:	1e fe       	mov.l	r15,@(56,r14)
     610:	1f 0b       	mov.l	r0,@(44,r15)
     612:	1f 17       	mov.l	r1,@(28,r15)
     614:	1f 24       	mov.l	r2,@(16,r15)
     616:	1f 30       	mov.l	r3,@(0,r15)
     618:	1f 3d       	mov.l	r3,@(52,r15)
     61a:	1f 49       	mov.l	r4,@(36,r15)
     61c:	1f 56       	mov.l	r5,@(24,r15)
     61e:	1f 62       	mov.l	r6,@(8,r15)
     620:	1f 6f       	mov.l	r6,@(60,r15)
     622:	1f 7b       	mov.l	r7,@(44,r15)
     624:	1f 88       	mov.l	r8,@(32,r15)
     626:	1f 94       	mov.l	r9,@(16,r15)
     628:	1f a1       	mov.l	r10,@(4,r15)
     62a:	1f ad       	mov.l	r10,@(52,r15)
     62c:	1f ba       	mov.l	r11,@(40,r15)
     62e:	1f c6       	mov.l	r12,@(24,r15)
     630:	1f d3       	mov.l	r13,@(12,r15)
     632:	1f df       	mov.l	r13,@(60,r15)
     634:	1f eb       	mov.l	r14,@(44,r15)
     636:	1f f8       	mov.l	r15,@(32,r15)
     638:	20 04       	mov.b	r0,@-r0
     63a:	20 11       	mov.w	r1,@r0
     63c:	20 1d       	xtrct	r1,r0
     63e:	20 2a       	xor	r2,r0
     640:	20 36       	mov.l	r3,@-r0
     642:	20 43       	.word 0x2043
     644:	20 4f       	muls.w	r4,r0
     646:	20 5c       	cmp/str	r5,r0
     648:	20 68       	tst	r6,r0
     64a:	20 75       	mov.w	r7,@-r0
     64c:	20 81       	mov.w	r8,@r0
     64e:	20 8e       	mulu.w	r8,r0
     650:	20 9a       	xor	r9,r0
     652:	20 a6       	mov.l	r10,@-r0
     654:	20 b3       	.word 0x20b3
     656:	20 bf       	muls.w	r11,r0
     658:	20 cc       	cmp/str	r12,r0
     65a:	20 d8       	tst	r13,r0
     65c:	20 e5       	mov.w	r14,@-r0
     65e:	20 f1       	mov.w	r15,@r0
     660:	20 fe       	mulu.w	r15,r0
     662:	21 0a       	xor	r0,r1
     664:	21 17       	div0s	r1,r1
     666:	21 23       	.word 0x2123
     668:	21 30       	mov.b	r3,@r1
     66a:	21 3c       	cmp/str	r3,r1
     66c:	21 48       	tst	r4,r1
     66e:	21 55       	mov.w	r5,@-r1
     670:	21 61       	mov.w	r6,@r1
     672:	21 6e       	mulu.w	r6,r1
     674:	21 7a       	xor	r7,r1
     676:	21 87       	div0s	r8,r1
     678:	21 93       	.word 0x2193
     67a:	21 a0       	mov.b	r10,@r1
     67c:	21 ac       	cmp/str	r10,r1
     67e:	21 b9       	and	r11,r1
     680:	21 c5       	mov.w	r12,@-r1
     682:	21 d1       	mov.w	r13,@r1
     684:	21 de       	mulu.w	r13,r1
     686:	21 ea       	xor	r14,r1
     688:	21 f7       	div0s	r15,r1
     68a:	22 03       	.word 0x2203
     68c:	22 10       	mov.b	r1,@r2
     68e:	22 1c       	cmp/str	r1,r2
     690:	22 29       	and	r2,r2
     692:	22 35       	mov.w	r3,@-r2
     694:	22 42       	mov.l	r4,@r2
     696:	22 4e       	mulu.w	r4,r2
     698:	22 5a       	xor	r5,r2
     69a:	22 67       	div0s	r6,r2
     69c:	22 73       	.word 0x2273
     69e:	22 80       	mov.b	r8,@r2
     6a0:	22 8c       	cmp/str	r8,r2
     6a2:	22 99       	and	r9,r2
     6a4:	22 a5       	mov.w	r10,@-r2
     6a6:	22 b2       	mov.l	r11,@r2
     6a8:	22 be       	mulu.w	r11,r2
     6aa:	22 cb       	or	r12,r2
     6ac:	22 d7       	div0s	r13,r2
     6ae:	22 e3       	.word 0x22e3
     6b0:	22 f0       	mov.b	r15,@r2
     6b2:	22 fc       	cmp/str	r15,r2
     6b4:	23 09       	and	r0,r3
     6b6:	23 15       	mov.w	r1,@-r3
     6b8:	23 22       	mov.l	r2,@r3
     6ba:	23 2e       	mulu.w	r2,r3
     6bc:	23 3b       	or	r3,r3
     6be:	23 47       	div0s	r4,r3
     6c0:	23 53       	.word 0x2353
     6c2:	23 60       	mov.b	r6,@r3
     6c4:	23 6c       	cmp/str	r6,r3
     6c6:	23 79       	and	r7,r3
     6c8:	23 85       	mov.w	r8,@-r3
     6ca:	23 92       	mov.l	r9,@r3
     6cc:	23 9e       	mulu.w	r9,r3
     6ce:	23 ab       	or	r10,r3
     6d0:	23 b7       	div0s	r11,r3
     6d2:	23 c3       	.word 0x23c3
     6d4:	23 d0       	mov.b	r13,@r3
     6d6:	23 dc       	cmp/str	r13,r3
     6d8:	23 e9       	and	r14,r3
     6da:	23 f5       	mov.w	r15,@-r3
     6dc:	24 02       	mov.l	r0,@r4
     6de:	24 0e       	mulu.w	r0,r4
     6e0:	24 1b       	or	r1,r4
     6e2:	24 27       	div0s	r2,r4
     6e4:	24 33       	.word 0x2433
     6e6:	24 40       	mov.b	r4,@r4
     6e8:	24 4c       	cmp/str	r4,r4
     6ea:	24 59       	and	r5,r4
     6ec:	24 65       	mov.w	r6,@-r4
     6ee:	24 72       	mov.l	r7,@r4
     6f0:	24 7e       	mulu.w	r7,r4
     6f2:	24 8b       	or	r8,r4
     6f4:	24 97       	div0s	r9,r4
     6f6:	24 a3       	.word 0x24a3
     6f8:	24 b0       	mov.b	r11,@r4
     6fa:	24 bc       	cmp/str	r11,r4
     6fc:	24 c9       	and	r12,r4
     6fe:	24 d5       	mov.w	r13,@-r4
     700:	24 e2       	mov.l	r14,@r4
     702:	24 ee       	mulu.w	r14,r4
     704:	24 fa       	xor	r15,r4
     706:	25 07       	div0s	r0,r5
     708:	25 13       	.word 0x2513
     70a:	25 20       	mov.b	r2,@r5
     70c:	25 2c       	cmp/str	r2,r5
     70e:	25 39       	and	r3,r5
     710:	25 45       	mov.w	r4,@-r5
     712:	25 51       	mov.w	r5,@r5
     714:	25 5e       	mulu.w	r5,r5
     716:	25 6a       	xor	r6,r5
     718:	25 77       	div0s	r7,r5
     71a:	25 83       	.word 0x2583
     71c:	25 90       	mov.b	r9,@r5
     71e:	25 9c       	cmp/str	r9,r5
     720:	25 a8       	tst	r10,r5
     722:	25 b5       	mov.w	r11,@-r5
     724:	25 c1       	mov.w	r12,@r5
     726:	25 ce       	mulu.w	r12,r5
     728:	25 da       	xor	r13,r5
     72a:	25 e7       	div0s	r14,r5
     72c:	25 f3       	.word 0x25f3
     72e:	25 ff       	muls.w	r15,r5
     730:	26 0c       	cmp/str	r0,r6
     732:	26 18       	tst	r1,r6
     734:	26 25       	mov.w	r2,@-r6
     736:	26 31       	mov.w	r3,@r6
     738:	26 3e       	mulu.w	r3,r6
     73a:	26 4a       	xor	r4,r6
     73c:	26 56       	mov.l	r5,@-r6
     73e:	26 63       	.word 0x2663
     740:	26 6f       	muls.w	r6,r6
     742:	26 7c       	cmp/str	r7,r6
     744:	26 88       	tst	r8,r6
     746:	26 95       	mov.w	r9,@-r6
     748:	26 a1       	mov.w	r10,@r6
     74a:	26 ad       	xtrct	r10,r6
     74c:	26 ba       	xor	r11,r6
     74e:	26 c6       	mov.l	r12,@-r6
     750:	26 d3       	.word 0x26d3
     752:	26 df       	muls.w	r13,r6
     754:	26 ec       	cmp/str	r14,r6
     756:	26 f8       	tst	r15,r6
     758:	27 04       	mov.b	r0,@-r7
     75a:	27 11       	mov.w	r1,@r7
     75c:	27 1d       	xtrct	r1,r7
     75e:	27 2a       	xor	r2,r7
     760:	27 36       	mov.l	r3,@-r7
     762:	27 42       	mov.l	r4,@r7
     764:	27 4f       	muls.w	r4,r7
     766:	27 5b       	or	r5,r7
     768:	27 68       	tst	r6,r7
     76a:	27 74       	mov.b	r7,@-r7
     76c:	27 81       	mov.w	r8,@r7
     76e:	27 8d       	xtrct	r8,r7
     770:	27 99       	and	r9,r7
     772:	27 a6       	mov.l	r10,@-r7
     774:	27 b2       	mov.l	r11,@r7
     776:	27 bf       	muls.w	r11,r7
     778:	27 cb       	or	r12,r7
     77a:	27 d7       	div0s	r13,r7
     77c:	27 e4       	mov.b	r14,@-r7
     77e:	27 f0       	mov.b	r15,@r7
     780:	27 fd       	xtrct	r15,r7
     782:	28 09       	and	r0,r8
     784:	28 16       	mov.l	r1,@-r8
     786:	28 22       	mov.l	r2,@r8
     788:	28 2e       	mulu.w	r2,r8
     78a:	28 3b       	or	r3,r8
     78c:	28 47       	div0s	r4,r8
     78e:	28 54       	mov.b	r5,@-r8
     790:	28 60       	mov.b	r6,@r8
     792:	28 6c       	cmp/str	r6,r8
     794:	28 79       	and	r7,r8
     796:	28 85       	mov.w	r8,@-r8
     798:	28 92       	mov.l	r9,@r8
     79a:	28 9e       	mulu.w	r9,r8
     79c:	28 aa       	xor	r10,r8
     79e:	28 b7       	div0s	r11,r8
     7a0:	28 c3       	.word 0x28c3
     7a2:	28 d0       	mov.b	r13,@r8
     7a4:	28 dc       	cmp/str	r13,r8
     7a6:	28 e8       	tst	r14,r8
     7a8:	28 f5       	mov.w	r15,@-r8
     7aa:	29 01       	mov.w	r0,@r9
     7ac:	29 0e       	mulu.w	r0,r9
     7ae:	29 1a       	xor	r1,r9
     7b0:	29 26       	mov.l	r2,@-r9
     7b2:	29 33       	.word 0x2933
     7b4:	29 3f       	muls.w	r3,r9
     7b6:	29 4c       	cmp/str	r4,r9
     7b8:	29 58       	tst	r5,r9
     7ba:	29 64       	mov.b	r6,@-r9
     7bc:	29 71       	mov.w	r7,@r9
     7be:	29 7d       	xtrct	r7,r9
     7c0:	29 8a       	xor	r8,r9
     7c2:	29 96       	mov.l	r9,@-r9
     7c4:	29 a2       	mov.l	r10,@r9
     7c6:	29 af       	muls.w	r10,r9
     7c8:	29 bb       	or	r11,r9
     7ca:	29 c8       	tst	r12,r9
     7cc:	29 d4       	mov.b	r13,@-r9
     7ce:	29 e0       	mov.b	r14,@r9
     7d0:	29 ed       	xtrct	r14,r9
     7d2:	29 f9       	and	r15,r9
     7d4:	2a 06       	mov.l	r0,@-r10
     7d6:	2a 12       	mov.l	r1,@r10
     7d8:	2a 1e       	mulu.w	r1,r10
     7da:	2a 2b       	or	r2,r10
     7dc:	2a 37       	div0s	r3,r10
     7de:	2a 44       	mov.b	r4,@-r10
     7e0:	2a 50       	mov.b	r5,@r10
     7e2:	2a 5c       	cmp/str	r5,r10
     7e4:	2a 69       	and	r6,r10
     7e6:	2a 75       	mov.w	r7,@-r10
     7e8:	2a 82       	mov.l	r8,@r10
     7ea:	2a 8e       	mulu.w	r8,r10
     7ec:	2a 9a       	xor	r9,r10
     7ee:	2a a7       	div0s	r10,r10
     7f0:	2a b3       	.word 0x2ab3
     7f2:	2a c0       	mov.b	r12,@r10
     7f4:	2a cc       	cmp/str	r12,r10
     7f6:	2a d8       	tst	r13,r10
     7f8:	2a e5       	mov.w	r14,@-r10
     7fa:	2a f1       	mov.w	r15,@r10
     7fc:	2a fe       	mulu.w	r15,r10
     7fe:	2b 0a       	xor	r0,r11
     800:	2b 16       	mov.l	r1,@-r11
     802:	2b 23       	.word 0x2b23
     804:	2b 2f       	muls.w	r2,r11
     806:	2b 3b       	or	r3,r11
     808:	2b 48       	tst	r4,r11
     80a:	2b 54       	mov.b	r5,@-r11
     80c:	2b 61       	mov.w	r6,@r11
     80e:	2b 6d       	xtrct	r6,r11
     810:	2b 79       	and	r7,r11
     812:	2b 86       	mov.l	r8,@-r11
     814:	2b 92       	mov.l	r9,@r11
     816:	2b 9f       	muls.w	r9,r11
     818:	2b ab       	or	r10,r11
     81a:	2b b7       	div0s	r11,r11
     81c:	2b c4       	mov.b	r12,@-r11
     81e:	2b d0       	mov.b	r13,@r11
     820:	2b dc       	cmp/str	r13,r11
     822:	2b e9       	and	r14,r11
     824:	2b f5       	mov.w	r15,@-r11
     826:	2c 02       	mov.l	r0,@r12
     828:	2c 0e       	mulu.w	r0,r12
     82a:	2c 1a       	xor	r1,r12
     82c:	2c 27       	div0s	r2,r12
     82e:	2c 33       	.word 0x2c33
     830:	2c 3f       	muls.w	r3,r12
     832:	2c 4c       	cmp/str	r4,r12
     834:	2c 58       	tst	r5,r12
     836:	2c 65       	mov.w	r6,@-r12
     838:	2c 71       	mov.w	r7,@r12
     83a:	2c 7d       	xtrct	r7,r12
     83c:	2c 8a       	xor	r8,r12
     83e:	2c 96       	mov.l	r9,@-r12
     840:	2c a2       	mov.l	r10,@r12
     842:	2c af       	muls.w	r10,r12
     844:	2c bb       	or	r11,r12
     846:	2c c8       	tst	r12,r12
     848:	2c d4       	mov.b	r13,@-r12
     84a:	2c e0       	mov.b	r14,@r12
     84c:	2c ed       	xtrct	r14,r12
     84e:	2c f9       	and	r15,r12
     850:	2d 05       	mov.w	r0,@-r13
     852:	2d 12       	mov.l	r1,@r13
     854:	2d 1e       	mulu.w	r1,r13
     856:	2d 2b       	or	r2,r13
     858:	2d 37       	div0s	r3,r13
     85a:	2d 43       	.word 0x2d43
     85c:	2d 50       	mov.b	r5,@r13
     85e:	2d 5c       	cmp/str	r5,r13
     860:	2d 68       	tst	r6,r13
     862:	2d 75       	mov.w	r7,@-r13
     864:	2d 81       	mov.w	r8,@r13
     866:	2d 8d       	xtrct	r8,r13
     868:	2d 9a       	xor	r9,r13
     86a:	2d a6       	mov.l	r10,@-r13
     86c:	2d b3       	.word 0x2db3
     86e:	2d bf       	muls.w	r11,r13
     870:	2d cb       	or	r12,r13
     872:	2d d8       	tst	r13,r13
     874:	2d e4       	mov.b	r14,@-r13
     876:	2d f0       	mov.b	r15,@r13
     878:	2d fd       	xtrct	r15,r13
     87a:	2e 09       	and	r0,r14
     87c:	2e 15       	mov.w	r1,@-r14
     87e:	2e 22       	mov.l	r2,@r14
     880:	2e 2e       	mulu.w	r2,r14
     882:	2e 3b       	or	r3,r14
     884:	2e 47       	div0s	r4,r14
     886:	2e 53       	.word 0x2e53
     888:	2e 60       	mov.b	r6,@r14
     88a:	2e 6c       	cmp/str	r6,r14
     88c:	2e 78       	tst	r7,r14
     88e:	2e 85       	mov.w	r8,@-r14
     890:	2e 91       	mov.w	r9,@r14
     892:	2e 9d       	xtrct	r9,r14
     894:	2e aa       	xor	r10,r14
     896:	2e b6       	mov.l	r11,@-r14
     898:	2e c2       	mov.l	r12,@r14
     89a:	2e cf       	muls.w	r12,r14
     89c:	2e db       	or	r13,r14
     89e:	2e e8       	tst	r14,r14
     8a0:	2e f4       	mov.b	r15,@-r14
     8a2:	2f 00       	mov.b	r0,@r15
     8a4:	2f 0d       	xtrct	r0,r15
     8a6:	2f 19       	and	r1,r15
     8a8:	2f 25       	mov.w	r2,@-r15
     8aa:	2f 32       	mov.l	r3,@r15
     8ac:	2f 3e       	mulu.w	r3,r15
     8ae:	2f 4a       	xor	r4,r15
     8b0:	2f 57       	div0s	r5,r15
     8b2:	2f 63       	.word 0x2f63
     8b4:	2f 6f       	muls.w	r6,r15
     8b6:	2f 7c       	cmp/str	r7,r15
     8b8:	2f 88       	tst	r8,r15
     8ba:	2f 94       	mov.b	r9,@-r15
     8bc:	2f a1       	mov.w	r10,@r15
     8be:	2f ad       	xtrct	r10,r15
     8c0:	2f ba       	xor	r11,r15
     8c2:	2f c6       	mov.l	r12,@-r15
     8c4:	2f d2       	mov.l	r13,@r15
     8c6:	2f df       	muls.w	r13,r15
     8c8:	2f eb       	or	r14,r15
     8ca:	2f f7       	div0s	r15,r15
     8cc:	30 04       	div1	r0,r0
     8ce:	30 10       	cmp/eq	r1,r0
     8d0:	30 1c       	add	r1,r0
     8d2:	30 29       	.word 0x3029
     8d4:	30 35       	dmulu.l	r3,r0
     8d6:	30 41       	.word 0x3041
     8d8:	30 4e       	addc	r4,r0
     8da:	30 5a       	subc	r5,r0
     8dc:	30 66       	cmp/hi	r6,r0
     8de:	30 73       	cmp/ge	r7,r0
     8e0:	30 7f       	addv	r7,r0
     8e2:	30 8b       	subv	r8,r0
     8e4:	30 98       	sub	r9,r0
     8e6:	30 a4       	div1	r10,r0
     8e8:	30 b0       	cmp/eq	r11,r0
     8ea:	30 bd       	dmuls.l	r11,r0
     8ec:	30 c9       	.word 0x30c9
     8ee:	30 d5       	dmulu.l	r13,r0
     8f0:	30 e2       	cmp/hs	r14,r0
     8f2:	30 ee       	addc	r14,r0
     8f4:	30 fa       	subc	r15,r0
     8f6:	31 07       	cmp/gt	r0,r1
     8f8:	31 13       	cmp/ge	r1,r1
     8fa:	31 1f       	addv	r1,r1
     8fc:	31 2c       	add	r2,r1
     8fe:	31 38       	sub	r3,r1
     900:	31 44       	div1	r4,r1
     902:	31 51       	.word 0x3151
     904:	31 5d       	dmuls.l	r5,r1
     906:	31 69       	.word 0x3169
     908:	31 76       	cmp/hi	r7,r1
     90a:	31 82       	cmp/hs	r8,r1
     90c:	31 8e       	addc	r8,r1
     90e:	31 9b       	subv	r9,r1
     910:	31 a7       	cmp/gt	r10,r1
     912:	31 b3       	cmp/ge	r11,r1
     914:	31 c0       	cmp/eq	r12,r1
     916:	31 cc       	add	r12,r1
     918:	31 d8       	sub	r13,r1
     91a:	31 e5       	dmulu.l	r14,r1
     91c:	31 f1       	.word 0x31f1
     91e:	31 fd       	dmuls.l	r15,r1
     920:	32 0a       	subc	r0,r2
     922:	32 16       	cmp/hi	r1,r2
     924:	32 22       	cmp/hs	r2,r2
     926:	32 2f       	addv	r2,r2
     928:	32 3b       	subv	r3,r2
     92a:	32 47       	cmp/gt	r4,r2
     92c:	32 54       	div1	r5,r2
     92e:	32 60       	cmp/eq	r6,r2
     930:	32 6c       	add	r6,r2
     932:	32 78       	sub	r7,r2
     934:	32 85       	dmulu.l	r8,r2
     936:	32 91       	.word 0x3291
     938:	32 9d       	dmuls.l	r9,r2
     93a:	32 aa       	subc	r10,r2
     93c:	32 b6       	cmp/hi	r11,r2
     93e:	32 c2       	cmp/hs	r12,r2
     940:	32 cf       	addv	r12,r2
     942:	32 db       	subv	r13,r2
     944:	32 e7       	cmp/gt	r14,r2
     946:	32 f4       	div1	r15,r2
     948:	33 00       	cmp/eq	r0,r3
     94a:	33 0c       	add	r0,r3
     94c:	33 19       	.word 0x3319
     94e:	33 25       	dmulu.l	r2,r3
     950:	33 31       	.word 0x3331
     952:	33 3e       	addc	r3,r3
     954:	33 4a       	subc	r4,r3
     956:	33 56       	cmp/hi	r5,r3
     958:	33 62       	cmp/hs	r6,r3
     95a:	33 6f       	addv	r6,r3
     95c:	33 7b       	subv	r7,r3
     95e:	33 87       	cmp/gt	r8,r3
     960:	33 94       	div1	r9,r3
     962:	33 a0       	cmp/eq	r10,r3
     964:	33 ac       	add	r10,r3
     966:	33 b9       	.word 0x33b9
     968:	33 c5       	dmulu.l	r12,r3
     96a:	33 d1       	.word 0x33d1
     96c:	33 de       	addc	r13,r3
     96e:	33 ea       	subc	r14,r3
     970:	33 f6       	cmp/hi	r15,r3
     972:	34 02       	cmp/hs	r0,r4
     974:	34 0f       	addv	r0,r4
     976:	34 1b       	subv	r1,r4
     978:	34 27       	cmp/gt	r2,r4
     97a:	34 34       	div1	r3,r4
     97c:	34 40       	cmp/eq	r4,r4
     97e:	34 4c       	add	r4,r4
     980:	34 59       	.word 0x3459
     982:	34 65       	dmulu.l	r6,r4
     984:	34 71       	.word 0x3471
     986:	34 7d       	dmuls.l	r7,r4
     988:	34 8a       	subc	r8,r4
     98a:	34 96       	cmp/hi	r9,r4
     98c:	34 a2       	cmp/hs	r10,r4
     98e:	34 af       	addv	r10,r4
     990:	34 bb       	subv	r11,r4
     992:	34 c7       	cmp/gt	r12,r4
     994:	34 d4       	div1	r13,r4
     996:	34 e0       	cmp/eq	r14,r4
     998:	34 ec       	add	r14,r4
     99a:	34 f8       	sub	r15,r4
     99c:	35 05       	dmulu.l	r0,r5
     99e:	35 11       	.word 0x3511
     9a0:	35 1d       	dmuls.l	r1,r5
     9a2:	35 2a       	subc	r2,r5
     9a4:	35 36       	cmp/hi	r3,r5
     9a6:	35 42       	cmp/hs	r4,r5
     9a8:	35 4f       	addv	r4,r5
     9aa:	35 5b       	subv	r5,r5
     9ac:	35 67       	cmp/gt	r6,r5
     9ae:	35 73       	cmp/ge	r7,r5
     9b0:	35 80       	cmp/eq	r8,r5
     9b2:	35 8c       	add	r8,r5
     9b4:	35 98       	sub	r9,r5
     9b6:	35 a5       	dmulu.l	r10,r5
     9b8:	35 b1       	.word 0x35b1
     9ba:	35 bd       	dmuls.l	r11,r5
     9bc:	35 c9       	.word 0x35c9
     9be:	35 d6       	cmp/hi	r13,r5
     9c0:	35 e2       	cmp/hs	r14,r5
     9c2:	35 ee       	addc	r14,r5
     9c4:	35 fb       	subv	r15,r5
     9c6:	36 07       	cmp/gt	r0,r6
     9c8:	36 13       	cmp/ge	r1,r6
     9ca:	36 1f       	addv	r1,r6
     9cc:	36 2c       	add	r2,r6
     9ce:	36 38       	sub	r3,r6
     9d0:	36 44       	div1	r4,r6
     9d2:	36 51       	.word 0x3651
     9d4:	36 5d       	dmuls.l	r5,r6
     9d6:	36 69       	.word 0x3669
     9d8:	36 75       	dmulu.l	r7,r6
     9da:	36 82       	cmp/hs	r8,r6
     9dc:	36 8e       	addc	r8,r6
     9de:	36 9a       	subc	r9,r6
     9e0:	36 a6       	cmp/hi	r10,r6
     9e2:	36 b3       	cmp/ge	r11,r6
     9e4:	36 bf       	addv	r11,r6
     9e6:	36 cb       	subv	r12,r6
     9e8:	36 d8       	sub	r13,r6
     9ea:	36 e4       	div1	r14,r6
     9ec:	36 f0       	cmp/eq	r15,r6
     9ee:	36 fc       	add	r15,r6
     9f0:	37 09       	.word 0x3709
     9f2:	37 15       	dmulu.l	r1,r7
     9f4:	37 21       	.word 0x3721
     9f6:	37 2d       	dmuls.l	r2,r7
     9f8:	37 3a       	subc	r3,r7
     9fa:	37 46       	cmp/hi	r4,r7
     9fc:	37 52       	cmp/hs	r5,r7
     9fe:	37 5f       	addv	r5,r7
     a00:	37 6b       	subv	r6,r7
     a02:	37 77       	cmp/gt	r7,r7
     a04:	37 83       	cmp/ge	r8,r7
     a06:	37 90       	cmp/eq	r9,r7
     a08:	37 9c       	add	r9,r7
     a0a:	37 a8       	sub	r10,r7
     a0c:	37 b4       	div1	r11,r7
     a0e:	37 c1       	.word 0x37c1
     a10:	37 cd       	dmuls.l	r12,r7
     a12:	37 d9       	.word 0x37d9
     a14:	37 e5       	dmulu.l	r14,r7
     a16:	37 f2       	cmp/hs	r15,r7
     a18:	37 fe       	addc	r15,r7
     a1a:	38 0a       	subc	r0,r8
     a1c:	38 17       	cmp/gt	r1,r8
     a1e:	38 23       	cmp/ge	r2,r8
     a20:	38 2f       	addv	r2,r8
     a22:	38 3b       	subv	r3,r8
     a24:	38 48       	sub	r4,r8
     a26:	38 54       	div1	r5,r8
     a28:	38 60       	cmp/eq	r6,r8
     a2a:	38 6c       	add	r6,r8
     a2c:	38 79       	.word 0x3879
     a2e:	38 85       	dmulu.l	r8,r8
     a30:	38 91       	.word 0x3891
     a32:	38 9d       	dmuls.l	r9,r8
     a34:	38 aa       	subc	r10,r8
     a36:	38 b6       	cmp/hi	r11,r8
     a38:	38 c2       	cmp/hs	r12,r8
     a3a:	38 ce       	addc	r12,r8
     a3c:	38 db       	subv	r13,r8
     a3e:	38 e7       	cmp/gt	r14,r8
     a40:	38 f3       	cmp/ge	r15,r8
     a42:	38 ff       	addv	r15,r8
     a44:	39 0c       	add	r0,r9
     a46:	39 18       	sub	r1,r9
     a48:	39 24       	div1	r2,r9
     a4a:	39 30       	cmp/eq	r3,r9
     a4c:	39 3d       	dmuls.l	r3,r9
     a4e:	39 49       	.word 0x3949
     a50:	39 55       	dmulu.l	r5,r9
     a52:	39 61       	.word 0x3961
     a54:	39 6e       	addc	r6,r9
     a56:	39 7a       	subc	r7,r9
     a58:	39 86       	cmp/hi	r8,r9
     a5a:	39 92       	cmp/hs	r9,r9
     a5c:	39 9f       	addv	r9,r9
     a5e:	39 ab       	subv	r10,r9
     a60:	39 b7       	cmp/gt	r11,r9
     a62:	39 c3       	cmp/ge	r12,r9
     a64:	39 d0       	cmp/eq	r13,r9
     a66:	39 dc       	add	r13,r9
     a68:	39 e8       	sub	r14,r9
     a6a:	39 f4       	div1	r15,r9
     a6c:	3a 01       	.word 0x3a01
     a6e:	3a 0d       	dmuls.l	r0,r10
     a70:	3a 19       	.word 0x3a19
     a72:	3a 25       	dmulu.l	r2,r10
     a74:	3a 31       	.word 0x3a31
     a76:	3a 3e       	addc	r3,r10
     a78:	3a 4a       	subc	r4,r10
     a7a:	3a 56       	cmp/hi	r5,r10
     a7c:	3a 62       	cmp/hs	r6,r10
     a7e:	3a 6f       	addv	r6,r10
     a80:	3a 7b       	subv	r7,r10
     a82:	3a 87       	cmp/gt	r8,r10
     a84:	3a 93       	cmp/ge	r9,r10
     a86:	3a a0       	cmp/eq	r10,r10
     a88:	3a ac       	add	r10,r10
     a8a:	3a b8       	sub	r11,r10
     a8c:	3a c4       	div1	r12,r10
     a8e:	3a d1       	.word 0x3ad1
     a90:	3a dd       	dmuls.l	r13,r10
     a92:	3a e9       	.word 0x3ae9
     a94:	3a f5       	dmulu.l	r15,r10
     a96:	3b 01       	.word 0x3b01
     a98:	3b 0e       	addc	r0,r11
     a9a:	3b 1a       	subc	r1,r11
     a9c:	3b 26       	cmp/hi	r2,r11
     a9e:	3b 32       	cmp/hs	r3,r11
     aa0:	3b 3f       	addv	r3,r11
     aa2:	3b 4b       	subv	r4,r11
     aa4:	3b 57       	cmp/gt	r5,r11
     aa6:	3b 63       	cmp/ge	r6,r11
     aa8:	3b 6f       	addv	r6,r11
     aaa:	3b 7c       	add	r7,r11
     aac:	3b 88       	sub	r8,r11
     aae:	3b 94       	div1	r9,r11
     ab0:	3b a0       	cmp/eq	r10,r11
     ab2:	3b ad       	dmuls.l	r10,r11
     ab4:	3b b9       	.word 0x3bb9
     ab6:	3b c5       	dmulu.l	r12,r11
     ab8:	3b d1       	.word 0x3bd1
     aba:	3b dd       	dmuls.l	r13,r11
     abc:	3b ea       	subc	r14,r11
     abe:	3b f6       	cmp/hi	r15,r11
     ac0:	3c 02       	cmp/hs	r0,r12
     ac2:	3c 0e       	addc	r0,r12
     ac4:	3c 1b       	subv	r1,r12
     ac6:	3c 27       	cmp/gt	r2,r12
     ac8:	3c 33       	cmp/ge	r3,r12
     aca:	3c 3f       	addv	r3,r12
     acc:	3c 4b       	subv	r4,r12
     ace:	3c 58       	sub	r5,r12
     ad0:	3c 64       	div1	r6,r12
     ad2:	3c 70       	cmp/eq	r7,r12
     ad4:	3c 7c       	add	r7,r12
     ad6:	3c 88       	sub	r8,r12
     ad8:	3c 95       	dmulu.l	r9,r12
     ada:	3c a1       	.word 0x3ca1
     adc:	3c ad       	dmuls.l	r10,r12
     ade:	3c b9       	.word 0x3cb9
     ae0:	3c c5       	dmulu.l	r12,r12
     ae2:	3c d2       	cmp/hs	r13,r12
     ae4:	3c de       	addc	r13,r12
     ae6:	3c ea       	subc	r14,r12
     ae8:	3c f6       	cmp/hi	r15,r12
     aea:	3d 03       	cmp/ge	r0,r13
     aec:	3d 0f       	addv	r0,r13
     aee:	3d 1b       	subv	r1,r13
     af0:	3d 27       	cmp/gt	r2,r13
     af2:	3d 33       	cmp/ge	r3,r13
     af4:	3d 40       	cmp/eq	r4,r13
     af6:	3d 4c       	add	r4,r13
     af8:	3d 58       	sub	r5,r13
     afa:	3d 64       	div1	r6,r13
     afc:	3d 70       	cmp/eq	r7,r13
     afe:	3d 7d       	dmuls.l	r7,r13
     b00:	3d 89       	.word 0x3d89
     b02:	3d 95       	dmulu.l	r9,r13
     b04:	3d a1       	.word 0x3da1
     b06:	3d ad       	dmuls.l	r10,r13
     b08:	3d ba       	subc	r11,r13
     b0a:	3d c6       	cmp/hi	r12,r13
     b0c:	3d d2       	cmp/hs	r13,r13
     b0e:	3d de       	addc	r13,r13
     b10:	3d ea       	subc	r14,r13
     b12:	3d f6       	cmp/hi	r15,r13
     b14:	3e 03       	cmp/ge	r0,r14
     b16:	3e 0f       	addv	r0,r14
     b18:	3e 1b       	subv	r1,r14
     b1a:	3e 27       	cmp/gt	r2,r14
     b1c:	3e 33       	cmp/ge	r3,r14
     b1e:	3e 40       	cmp/eq	r4,r14
     b20:	3e 4c       	add	r4,r14
     b22:	3e 58       	sub	r5,r14
     b24:	3e 64       	div1	r6,r14
     b26:	3e 70       	cmp/eq	r7,r14
     b28:	3e 7d       	dmuls.l	r7,r14
     b2a:	3e 89       	.word 0x3e89
     b2c:	3e 95       	dmulu.l	r9,r14
     b2e:	3e a1       	.word 0x3ea1
     b30:	3e ad       	dmuls.l	r10,r14
     b32:	3e ba       	subc	r11,r14
     b34:	3e c6       	cmp/hi	r12,r14
     b36:	3e d2       	cmp/hs	r13,r14
     b38:	3e de       	addc	r13,r14
     b3a:	3e ea       	subc	r14,r14
     b3c:	3e f6       	cmp/hi	r15,r14
     b3e:	3f 03       	cmp/ge	r0,r15
     b40:	3f 0f       	addv	r0,r15
     b42:	3f 1b       	subv	r1,r15
     b44:	3f 27       	cmp/gt	r2,r15
     b46:	3f 33       	cmp/ge	r3,r15
     b48:	3f 3f       	addv	r3,r15
     b4a:	3f 4c       	add	r4,r15
     b4c:	3f 58       	sub	r5,r15
     b4e:	3f 64       	div1	r6,r15
     b50:	3f 70       	cmp/eq	r7,r15
     b52:	3f 7c       	add	r7,r15
     b54:	3f 89       	.word 0x3f89
     b56:	3f 95       	dmulu.l	r9,r15
     b58:	3f a1       	.word 0x3fa1
     b5a:	3f ad       	dmuls.l	r10,r15
     b5c:	3f b9       	.word 0x3fb9
     b5e:	3f c5       	dmulu.l	r12,r15
     b60:	3f d2       	cmp/hs	r13,r15
     b62:	3f de       	addc	r13,r15
     b64:	3f ea       	subc	r14,r15
     b66:	3f f6       	cmp/hi	r15,r15
     b68:	40 02       	sts.l	mach,@-r0
     b6a:	40 0e       	ldc	r0,sr
     b6c:	40 1b       	tas.b	@r0
     b6e:	40 27       	ldc.l	@r0+,vbr
     b70:	40 33       	stc.l	ssr,@-r0
     b72:	40 3f       	mac.w	@r3+,@r0+
     b74:	40 4b       	.word 0x404b
     b76:	40 57       	ldc.l	@r0+,r5_bank
     b78:	40 64       	.word 0x4064
     b7a:	40 70       	.word 0x4070
     b7c:	40 7c       	shad	r7,r0
     b7e:	40 88       	.word 0x4088
     b80:	40 94       	.word 0x4094
     b82:	40 a0       	.word 0x40a0
     b84:	40 ad       	shld	r10,r0
     b86:	40 b9       	.word 0x40b9
     b88:	40 c5       	.word 0x40c5
     b8a:	40 d1       	.word 0x40d1
     b8c:	40 dd       	shld	r13,r0
     b8e:	40 e9       	.word 0x40e9
     b90:	40 f5       	.word 0x40f5
     b92:	41 02       	sts.l	mach,@-r1
     b94:	41 0e       	ldc	r1,sr
     b96:	41 1a       	lds	r1,macl
     b98:	41 26       	lds.l	@r1+,pr
     b9a:	41 32       	stc.l	sgr,@-r1
     b9c:	41 3e       	ldc	r1,ssr
     b9e:	41 4b       	.word 0x414b
     ba0:	41 57       	ldc.l	@r1+,r5_bank
     ba2:	41 63       	stc.l	r6_bank,@-r1
     ba4:	41 6f       	mac.w	@r6+,@r1+
     ba6:	41 7b       	.word 0x417b
     ba8:	41 87       	ldc.l	@r1+,r0_bank
     baa:	41 93       	stc.l	r1_bank,@-r1
     bac:	41 a0       	.word 0x41a0
     bae:	41 ac       	shad	r10,r1
     bb0:	41 b8       	.word 0x41b8
     bb2:	41 c4       	.word 0x41c4
     bb4:	41 d0       	.word 0x41d0
     bb6:	41 dc       	shad	r13,r1
     bb8:	41 e8       	.word 0x41e8
     bba:	41 f5       	.word 0x41f5
     bbc:	42 01       	shlr	r2
     bbe:	42 0d       	shld	r0,r2
     bc0:	42 19       	shlr8	r2
     bc2:	42 25       	rotcr	r2
     bc4:	42 31       	.word 0x4231
     bc6:	42 3d       	shld	r3,r2
     bc8:	42 4a       	.word 0x424a
     bca:	42 56       	lds.l	@r2+,fpul
     bcc:	42 62       	sts.l	fpscr,@-r2
     bce:	42 6e       	ldc	r2,r6_bank
     bd0:	42 7a       	.word 0x427a
     bd2:	42 86       	.word 0x4286
     bd4:	42 92       	.word 0x4292
     bd6:	42 9f       	mac.w	@r9+,@r2+
     bd8:	42 ab       	.word 0x42ab
     bda:	42 b7       	ldc.l	@r2+,r3_bank
     bdc:	42 c3       	stc.l	r4_bank,@-r2
     bde:	42 cf       	mac.w	@r12+,@r2+
     be0:	42 db       	.word 0x42db
     be2:	42 e7       	ldc.l	@r2+,r6_bank
     be4:	42 f3       	stc.l	r7_bank,@-r2
     be6:	43 00       	shll	r3
     be8:	43 0c       	shad	r0,r3
     bea:	43 18       	shll8	r3
     bec:	43 24       	rotcl	r3
     bee:	43 30       	.word 0x4330
     bf0:	43 3c       	shad	r3,r3
     bf2:	43 48       	.word 0x4348
     bf4:	43 54       	.word 0x4354
     bf6:	43 61       	.word 0x4361
     bf8:	43 6d       	shld	r6,r3
     bfa:	43 79       	.word 0x4379
     bfc:	43 85       	.word 0x4385
     bfe:	43 91       	.word 0x4391
     c00:	43 9d       	shld	r9,r3
     c02:	43 a9       	.word 0x43a9
     c04:	43 b5       	.word 0x43b5
     c06:	43 c2       	.word 0x43c2
     c08:	43 ce       	ldc	r3,r4_bank
     c0a:	43 da       	.word 0x43da
     c0c:	43 e6       	.word 0x43e6
     c0e:	43 f2       	stc.l	dbr,@-r3
     c10:	43 fe       	ldc	r3,r7_bank
     c12:	44 0a       	lds	r4,mach
     c14:	44 16       	lds.l	@r4+,macl
     c16:	44 22       	sts.l	pr,@-r4
     c18:	44 2f       	mac.w	@r2+,@r4+
     c1a:	44 3b       	.word 0x443b
     c1c:	44 47       	ldc.l	@r4+,spc
     c1e:	44 53       	stc.l	r5_bank,@-r4
     c20:	44 5f       	mac.w	@r5+,@r4+
     c22:	44 6b       	.word 0x446b
     c24:	44 77       	ldc.l	@r4+,r7_bank
     c26:	44 83       	stc.l	r0_bank,@-r4
     c28:	44 8f       	mac.w	@r8+,@r4+
     c2a:	44 9c       	shad	r9,r4
     c2c:	44 a8       	.word 0x44a8
     c2e:	44 b4       	.word 0x44b4
     c30:	44 c0       	.word 0x44c0
     c32:	44 cc       	shad	r12,r4
     c34:	44 d8       	.word 0x44d8
     c36:	44 e4       	.word 0x44e4
     c38:	44 f0       	.word 0x44f0
     c3a:	44 fc       	shad	r15,r4
     c3c:	45 08       	shll2	r5
     c3e:	45 15       	cmp/pl	r5
     c40:	45 21       	shar	r5
     c42:	45 2d       	shld	r2,r5
     c44:	45 39       	.word 0x4539
     c46:	45 45       	.word 0x4545
     c48:	45 51       	.word 0x4551
     c4a:	45 5d       	shld	r5,r5
     c4c:	45 69       	.word 0x4569
     c4e:	45 75       	.word 0x4575
     c50:	45 81       	.word 0x4581
     c52:	45 8e       	ldc	r5,r0_bank
     c54:	45 9a       	.word 0x459a
     c56:	45 a6       	.word 0x45a6
     c58:	45 b2       	.word 0x45b2
     c5a:	45 be       	ldc	r5,r3_bank
     c5c:	45 ca       	.word 0x45ca
     c5e:	45 d6       	.word 0x45d6
     c60:	45 e2       	.word 0x45e2
     c62:	45 ee       	ldc	r5,r6_bank
     c64:	45 fa       	ldc	r5,dbr
     c66:	46 06       	lds.l	@r6+,mach
     c68:	46 13       	stc.l	gbr,@-r6
     c6a:	46 1f       	mac.w	@r1+,@r6+
     c6c:	46 2b       	jmp	@r6
     c6e:	46 37       	ldc.l	@r6+,ssr
     c70:	46 43       	stc.l	spc,@-r6
     c72:	46 4f       	mac.w	@r4+,@r6+
     c74:	46 5b       	.word 0x465b
     c76:	46 67       	ldc.l	@r6+,r6_bank
     c78:	46 73       	stc.l	r7_bank,@-r6
     c7a:	46 7f       	mac.w	@r7+,@r6+
     c7c:	46 8b       	.word 0x468b
     c7e:	46 97       	ldc.l	@r6+,r1_bank
     c80:	46 a4       	.word 0x46a4
     c82:	46 b0       	.word 0x46b0
     c84:	46 bc       	shad	r11,r6
     c86:	46 c8       	.word 0x46c8
     c88:	46 d4       	.word 0x46d4
     c8a:	46 e0       	.word 0x46e0
     c8c:	46 ec       	shad	r14,r6
     c8e:	46 f8       	.word 0x46f8
     c90:	47 04       	rotl	r7
     c92:	47 10       	dt	r7
     c94:	47 1c       	shad	r1,r7
     c96:	47 28       	shll16	r7
     c98:	47 34       	.word 0x4734
     c9a:	47 40       	.word 0x4740
     c9c:	47 4d       	shld	r4,r7
     c9e:	47 59       	.word 0x4759
     ca0:	47 65       	.word 0x4765
     ca2:	47 71       	.word 0x4771
     ca4:	47 7d       	shld	r7,r7
     ca6:	47 89       	.word 0x4789
     ca8:	47 95       	.word 0x4795
     caa:	47 a1       	.word 0x47a1
     cac:	47 ad       	shld	r10,r7
     cae:	47 b9       	.word 0x47b9
     cb0:	47 c5       	.word 0x47c5
     cb2:	47 d1       	.word 0x47d1
     cb4:	47 dd       	shld	r13,r7
     cb6:	47 e9       	.word 0x47e9
     cb8:	47 f5       	.word 0x47f5
     cba:	48 02       	sts.l	mach,@-r8
     cbc:	48 0e       	ldc	r8,sr
     cbe:	48 1a       	lds	r8,macl
     cc0:	48 26       	lds.l	@r8+,pr
     cc2:	48 32       	stc.l	sgr,@-r8
     cc4:	48 3e       	ldc	r8,ssr
     cc6:	48 4a       	.word 0x484a
     cc8:	48 56       	lds.l	@r8+,fpul
     cca:	48 62       	sts.l	fpscr,@-r8
     ccc:	48 6e       	ldc	r8,r6_bank
     cce:	48 7a       	.word 0x487a
     cd0:	48 86       	.word 0x4886
     cd2:	48 92       	.word 0x4892
     cd4:	48 9e       	ldc	r8,r1_bank
     cd6:	48 aa       	.word 0x48aa
     cd8:	48 b6       	.word 0x48b6
     cda:	48 c2       	.word 0x48c2
     cdc:	48 ce       	ldc	r8,r4_bank
     cde:	48 da       	.word 0x48da
     ce0:	48 e7       	ldc.l	@r8+,r6_bank
     ce2:	48 f3       	stc.l	r7_bank,@-r8
     ce4:	48 ff       	mac.w	@r15+,@r8+
     ce6:	49 0b       	jsr	@r9
     ce8:	49 17       	ldc.l	@r9+,gbr
     cea:	49 23       	stc.l	vbr,@-r9
     cec:	49 2f       	mac.w	@r2+,@r9+
     cee:	49 3b       	.word 0x493b
     cf0:	49 47       	ldc.l	@r9+,spc
     cf2:	49 53       	stc.l	r5_bank,@-r9
     cf4:	49 5f       	mac.w	@r5+,@r9+
     cf6:	49 6b       	.word 0x496b
     cf8:	49 77       	ldc.l	@r9+,r7_bank
     cfa:	49 83       	stc.l	r0_bank,@-r9
     cfc:	49 8f       	mac.w	@r8+,@r9+
     cfe:	49 9b       	.word 0x499b
     d00:	49 a7       	ldc.l	@r9+,r2_bank
     d02:	49 b3       	stc.l	r3_bank,@-r9
     d04:	49 bf       	mac.w	@r11+,@r9+
     d06:	49 cb       	.word 0x49cb
     d08:	49 d7       	ldc.l	@r9+,r5_bank
     d0a:	49 e3       	stc.l	r6_bank,@-r9
     d0c:	49 ef       	mac.w	@r14+,@r9+
     d0e:	49 fb       	.word 0x49fb
     d10:	4a 07       	ldc.l	@r10+,sr
     d12:	4a 13       	stc.l	gbr,@-r10
     d14:	4a 1f       	mac.w	@r1+,@r10+
     d16:	4a 2c       	shad	r2,r10
     d18:	4a 38       	.word 0x4a38
     d1a:	4a 44       	.word 0x4a44
     d1c:	4a 50       	.word 0x4a50
     d1e:	4a 5c       	shad	r5,r10
     d20:	4a 68       	.word 0x4a68
     d22:	4a 74       	.word 0x4a74
     d24:	4a 80       	.word 0x4a80
     d26:	4a 8c       	shad	r8,r10
     d28:	4a 98       	.word 0x4a98
     d2a:	4a a4       	.word 0x4aa4
     d2c:	4a b0       	.word 0x4ab0
     d2e:	4a bc       	shad	r11,r10
     d30:	4a c8       	.word 0x4ac8
     d32:	4a d4       	.word 0x4ad4
     d34:	4a e0       	.word 0x4ae0
     d36:	4a ec       	shad	r14,r10
     d38:	4a f8       	.word 0x4af8
     d3a:	4b 04       	rotl	r11
     d3c:	4b 10       	dt	r11
     d3e:	4b 1c       	shad	r1,r11
     d40:	4b 28       	shll16	r11
     d42:	4b 34       	.word 0x4b34
     d44:	4b 40       	.word 0x4b40
     d46:	4b 4c       	shad	r4,r11
     d48:	4b 58       	.word 0x4b58
     d4a:	4b 64       	.word 0x4b64
     d4c:	4b 70       	.word 0x4b70
     d4e:	4b 7c       	shad	r7,r11
     d50:	4b 88       	.word 0x4b88
     d52:	4b 94       	.word 0x4b94
     d54:	4b a0       	.word 0x4ba0
     d56:	4b ac       	shad	r10,r11
     d58:	4b b8       	.word 0x4bb8
     d5a:	4b c4       	.word 0x4bc4
     d5c:	4b d0       	.word 0x4bd0
     d5e:	4b dc       	shad	r13,r11
     d60:	4b e8       	.word 0x4be8
     d62:	4b f4       	.word 0x4bf4
     d64:	4c 00       	shll	r12
     d66:	4c 0c       	shad	r0,r12
     d68:	4c 18       	shll8	r12
     d6a:	4c 24       	rotcl	r12
     d6c:	4c 30       	.word 0x4c30
     d6e:	4c 3c       	shad	r3,r12
     d70:	4c 48       	.word 0x4c48
     d72:	4c 54       	.word 0x4c54
     d74:	4c 60       	.word 0x4c60
     d76:	4c 6c       	shad	r6,r12
     d78:	4c 78       	.word 0x4c78
     d7a:	4c 84       	.word 0x4c84
     d7c:	4c 90       	.word 0x4c90
     d7e:	4c 9c       	shad	r9,r12
     d80:	4c a8       	.word 0x4ca8
     d82:	4c b4       	.word 0x4cb4
     d84:	4c c0       	.word 0x4cc0
     d86:	4c cc       	shad	r12,r12
     d88:	4c d8       	.word 0x4cd8
     d8a:	4c e4       	.word 0x4ce4
     d8c:	4c f0       	.word 0x4cf0
     d8e:	4c fc       	shad	r15,r12
     d90:	4d 08       	shll2	r13
     d92:	4d 14       	.word 0x4d14
     d94:	4d 20       	shal	r13
     d96:	4d 2c       	shad	r2,r13
     d98:	4d 38       	.word 0x4d38
     d9a:	4d 44       	.word 0x4d44
     d9c:	4d 50       	.word 0x4d50
     d9e:	4d 5c       	shad	r5,r13
     da0:	4d 68       	.word 0x4d68
     da2:	4d 74       	.word 0x4d74
     da4:	4d 80       	.word 0x4d80
     da6:	4d 8c       	shad	r8,r13
     da8:	4d 98       	.word 0x4d98
     daa:	4d a4       	.word 0x4da4
     dac:	4d b0       	.word 0x4db0
     dae:	4d bc       	shad	r11,r13
     db0:	4d c8       	.word 0x4dc8
     db2:	4d d3       	stc.l	r5_bank,@-r13
     db4:	4d df       	mac.w	@r13+,@r13+
     db6:	4d eb       	.word 0x4deb
     db8:	4d f7       	ldc.l	@r13+,r7_bank
     dba:	4e 03       	stc.l	sr,@-r14
     dbc:	4e 0f       	mac.w	@r0+,@r14+
     dbe:	4e 1b       	tas.b	@r14
     dc0:	4e 27       	ldc.l	@r14+,vbr
     dc2:	4e 33       	stc.l	ssr,@-r14
     dc4:	4e 3f       	mac.w	@r3+,@r14+
     dc6:	4e 4b       	.word 0x4e4b
     dc8:	4e 57       	ldc.l	@r14+,r5_bank
     dca:	4e 63       	stc.l	r6_bank,@-r14
     dcc:	4e 6f       	mac.w	@r6+,@r14+
     dce:	4e 7b       	.word 0x4e7b
     dd0:	4e 87       	ldc.l	@r14+,r0_bank
     dd2:	4e 93       	stc.l	r1_bank,@-r14
     dd4:	4e 9f       	mac.w	@r9+,@r14+
     dd6:	4e ab       	.word 0x4eab
     dd8:	4e b7       	ldc.l	@r14+,r3_bank
     dda:	4e c3       	stc.l	r4_bank,@-r14
     ddc:	4e cf       	mac.w	@r12+,@r14+
     dde:	4e db       	.word 0x4edb
     de0:	4e e7       	ldc.l	@r14+,r6_bank
     de2:	4e f3       	stc.l	r7_bank,@-r14
     de4:	4e ff       	mac.w	@r15+,@r14+
     de6:	4f 0b       	jsr	@r15
     de8:	4f 16       	lds.l	@r15+,macl
     dea:	4f 22       	sts.l	pr,@-r15
     dec:	4f 2e       	ldc	r15,vbr
     dee:	4f 3a       	ldc	r15,sgr
     df0:	4f 46       	.word 0x4f46
     df2:	4f 52       	sts.l	fpul,@-r15
     df4:	4f 5e       	ldc	r15,r5_bank
     df6:	4f 6a       	lds	r15,fpscr
     df8:	4f 76       	.word 0x4f76
     dfa:	4f 82       	.word 0x4f82
     dfc:	4f 8e       	ldc	r15,r0_bank
     dfe:	4f 9a       	.word 0x4f9a
     e00:	4f a6       	.word 0x4fa6
     e02:	4f b2       	.word 0x4fb2
     e04:	4f be       	ldc	r15,r3_bank
     e06:	4f ca       	.word 0x4fca
     e08:	4f d6       	.word 0x4fd6
     e0a:	4f e2       	.word 0x4fe2
     e0c:	4f ed       	shld	r14,r15
     e0e:	4f f9       	.word 0x4ff9
     e10:	50 05       	mov.l	@(20,r0),r0
     e12:	50 11       	mov.l	@(4,r1),r0
     e14:	50 1d       	mov.l	@(52,r1),r0
     e16:	50 29       	mov.l	@(36,r2),r0
     e18:	50 35       	mov.l	@(20,r3),r0
     e1a:	50 41       	mov.l	@(4,r4),r0
     e1c:	50 4d       	mov.l	@(52,r4),r0
     e1e:	50 59       	mov.l	@(36,r5),r0
     e20:	50 65       	mov.l	@(20,r6),r0
     e22:	50 71       	mov.l	@(4,r7),r0
     e24:	50 7d       	mov.l	@(52,r7),r0
     e26:	50 89       	mov.l	@(36,r8),r0
     e28:	50 95       	mov.l	@(20,r9),r0
     e2a:	50 a0       	mov.l	@(0,r10),r0
     e2c:	50 ac       	mov.l	@(48,r10),r0
     e2e:	50 b8       	mov.l	@(32,r11),r0
     e30:	50 c4       	mov.l	@(16,r12),r0
     e32:	50 d0       	mov.l	@(0,r13),r0
     e34:	50 dc       	mov.l	@(48,r13),r0
     e36:	50 e8       	mov.l	@(32,r14),r0
     e38:	50 f4       	mov.l	@(16,r15),r0
     e3a:	51 00       	mov.l	@(0,r0),r1
     e3c:	51 0c       	mov.l	@(48,r0),r1
     e3e:	51 18       	mov.l	@(32,r1),r1
     e40:	51 24       	mov.l	@(16,r2),r1
     e42:	51 30       	mov.l	@(0,r3),r1
     e44:	51 3b       	mov.l	@(44,r3),r1
     e46:	51 47       	mov.l	@(28,r4),r1
     e48:	51 53       	mov.l	@(12,r5),r1
     e4a:	51 5f       	mov.l	@(60,r5),r1
     e4c:	51 6b       	mov.l	@(44,r6),r1
     e4e:	51 77       	mov.l	@(28,r7),r1
     e50:	51 83       	mov.l	@(12,r8),r1
     e52:	51 8f       	mov.l	@(60,r8),r1
     e54:	51 9b       	mov.l	@(44,r9),r1
     e56:	51 a7       	mov.l	@(28,r10),r1
     e58:	51 b3       	mov.l	@(12,r11),r1
     e5a:	51 be       	mov.l	@(56,r11),r1
     e5c:	51 ca       	mov.l	@(40,r12),r1
     e5e:	51 d6       	mov.l	@(24,r13),r1
     e60:	51 e2       	mov.l	@(8,r14),r1
     e62:	51 ee       	mov.l	@(56,r14),r1
     e64:	51 fa       	mov.l	@(40,r15),r1
     e66:	52 06       	mov.l	@(24,r0),r2
     e68:	52 12       	mov.l	@(8,r1),r2
     e6a:	52 1e       	mov.l	@(56,r1),r2
     e6c:	52 2a       	mov.l	@(40,r2),r2
     e6e:	52 36       	mov.l	@(24,r3),r2
     e70:	52 41       	mov.l	@(4,r4),r2
     e72:	52 4d       	mov.l	@(52,r4),r2
     e74:	52 59       	mov.l	@(36,r5),r2
     e76:	52 65       	mov.l	@(20,r6),r2
     e78:	52 71       	mov.l	@(4,r7),r2
     e7a:	52 7d       	mov.l	@(52,r7),r2
     e7c:	52 89       	mov.l	@(36,r8),r2
     e7e:	52 95       	mov.l	@(20,r9),r2
     e80:	52 a1       	mov.l	@(4,r10),r2
     e82:	52 ac       	mov.l	@(48,r10),r2
     e84:	52 b8       	mov.l	@(32,r11),r2
     e86:	52 c4       	mov.l	@(16,r12),r2
     e88:	52 d0       	mov.l	@(0,r13),r2
     e8a:	52 dc       	mov.l	@(48,r13),r2
     e8c:	52 e8       	mov.l	@(32,r14),r2
     e8e:	52 f4       	mov.l	@(16,r15),r2
     e90:	53 00       	mov.l	@(0,r0),r3
     e92:	53 0c       	mov.l	@(48,r0),r3
     e94:	53 17       	mov.l	@(28,r1),r3
     e96:	53 23       	mov.l	@(12,r2),r3
     e98:	53 2f       	mov.l	@(60,r2),r3
     e9a:	53 3b       	mov.l	@(44,r3),r3
     e9c:	53 47       	mov.l	@(28,r4),r3
     e9e:	53 53       	mov.l	@(12,r5),r3
     ea0:	53 5f       	mov.l	@(60,r5),r3
     ea2:	53 6b       	mov.l	@(44,r6),r3
     ea4:	53 77       	mov.l	@(28,r7),r3
     ea6:	53 82       	mov.l	@(8,r8),r3
     ea8:	53 8e       	mov.l	@(56,r8),r3
     eaa:	53 9a       	mov.l	@(40,r9),r3
     eac:	53 a6       	mov.l	@(24,r10),r3
     eae:	53 b2       	mov.l	@(8,r11),r3
     eb0:	53 be       	mov.l	@(56,r11),r3
     eb2:	53 ca       	mov.l	@(40,r12),r3
     eb4:	53 d6       	mov.l	@(24,r13),r3
     eb6:	53 e1       	mov.l	@(4,r14),r3
     eb8:	53 ed       	mov.l	@(52,r14),r3
     eba:	53 f9       	mov.l	@(36,r15),r3
     ebc:	54 05       	mov.l	@(20,r0),r4
     ebe:	54 11       	mov.l	@(4,r1),r4
     ec0:	54 1d       	mov.l	@(52,r1),r4
     ec2:	54 29       	mov.l	@(36,r2),r4
     ec4:	54 35       	mov.l	@(20,r3),r4
     ec6:	54 40       	mov.l	@(0,r4),r4
     ec8:	54 4c       	mov.l	@(48,r4),r4
     eca:	54 58       	mov.l	@(32,r5),r4
     ecc:	54 64       	mov.l	@(16,r6),r4
     ece:	54 70       	mov.l	@(0,r7),r4
     ed0:	54 7c       	mov.l	@(48,r7),r4
     ed2:	54 88       	mov.l	@(32,r8),r4
     ed4:	54 93       	mov.l	@(12,r9),r4
     ed6:	54 9f       	mov.l	@(60,r9),r4
     ed8:	54 ab       	mov.l	@(44,r10),r4
     eda:	54 b7       	mov.l	@(28,r11),r4
     edc:	54 c3       	mov.l	@(12,r12),r4
     ede:	54 cf       	mov.l	@(60,r12),r4
     ee0:	54 db       	mov.l	@(44,r13),r4
     ee2:	54 e6       	mov.l	@(24,r14),r4
     ee4:	54 f2       	mov.l	@(8,r15),r4
     ee6:	54 fe       	mov.l	@(56,r15),r4
     ee8:	55 0a       	mov.l	@(40,r0),r5
     eea:	55 16       	mov.l	@(24,r1),r5
     eec:	55 22       	mov.l	@(8,r2),r5
     eee:	55 2e       	mov.l	@(56,r2),r5
     ef0:	55 39       	mov.l	@(36,r3),r5
     ef2:	55 45       	mov.l	@(20,r4),r5
     ef4:	55 51       	mov.l	@(4,r5),r5
     ef6:	55 5d       	mov.l	@(52,r5),r5
     ef8:	55 69       	mov.l	@(36,r6),r5
     efa:	55 75       	mov.l	@(20,r7),r5
     efc:	55 81       	mov.l	@(4,r8),r5
     efe:	55 8c       	mov.l	@(48,r8),r5
     f00:	55 98       	mov.l	@(32,r9),r5
     f02:	55 a4       	mov.l	@(16,r10),r5
     f04:	55 b0       	mov.l	@(0,r11),r5
     f06:	55 bc       	mov.l	@(48,r11),r5
     f08:	55 c8       	mov.l	@(32,r12),r5
     f0a:	55 d3       	mov.l	@(12,r13),r5
     f0c:	55 df       	mov.l	@(60,r13),r5
     f0e:	55 eb       	mov.l	@(44,r14),r5
     f10:	55 f7       	mov.l	@(28,r15),r5
     f12:	56 03       	mov.l	@(12,r0),r6
     f14:	56 0f       	mov.l	@(60,r0),r6
     f16:	56 1a       	mov.l	@(40,r1),r6
     f18:	56 26       	mov.l	@(24,r2),r6
     f1a:	56 32       	mov.l	@(8,r3),r6
     f1c:	56 3e       	mov.l	@(56,r3),r6
     f1e:	56 4a       	mov.l	@(40,r4),r6
     f20:	56 56       	mov.l	@(24,r5),r6
     f22:	56 61       	mov.l	@(4,r6),r6
     f24:	56 6d       	mov.l	@(52,r6),r6
     f26:	56 79       	mov.l	@(36,r7),r6
     f28:	56 85       	mov.l	@(20,r8),r6
     f2a:	56 91       	mov.l	@(4,r9),r6
     f2c:	56 9d       	mov.l	@(52,r9),r6
     f2e:	56 a8       	mov.l	@(32,r10),r6
     f30:	56 b4       	mov.l	@(16,r11),r6
     f32:	56 c0       	mov.l	@(0,r12),r6
     f34:	56 cc       	mov.l	@(48,r12),r6
     f36:	56 d8       	mov.l	@(32,r13),r6
     f38:	56 e3       	mov.l	@(12,r14),r6
     f3a:	56 ef       	mov.l	@(60,r14),r6
     f3c:	56 fb       	mov.l	@(44,r15),r6
     f3e:	57 07       	mov.l	@(28,r0),r7
     f40:	57 13       	mov.l	@(12,r1),r7
     f42:	57 1f       	mov.l	@(60,r1),r7
     f44:	57 2a       	mov.l	@(40,r2),r7
     f46:	57 36       	mov.l	@(24,r3),r7
     f48:	57 42       	mov.l	@(8,r4),r7
     f4a:	57 4e       	mov.l	@(56,r4),r7
     f4c:	57 5a       	mov.l	@(40,r5),r7
     f4e:	57 65       	mov.l	@(20,r6),r7
     f50:	57 71       	mov.l	@(4,r7),r7
     f52:	57 7d       	mov.l	@(52,r7),r7
     f54:	57 89       	mov.l	@(36,r8),r7
     f56:	57 95       	mov.l	@(20,r9),r7
     f58:	57 a0       	mov.l	@(0,r10),r7
     f5a:	57 ac       	mov.l	@(48,r10),r7
     f5c:	57 b8       	mov.l	@(32,r11),r7
     f5e:	57 c4       	mov.l	@(16,r12),r7
     f60:	57 d0       	mov.l	@(0,r13),r7
     f62:	57 dc       	mov.l	@(48,r13),r7
     f64:	57 e7       	mov.l	@(28,r14),r7
     f66:	57 f3       	mov.l	@(12,r15),r7
     f68:	57 ff       	mov.l	@(60,r15),r7
     f6a:	58 0b       	mov.l	@(44,r0),r8
     f6c:	58 17       	mov.l	@(28,r1),r8
     f6e:	58 22       	mov.l	@(8,r2),r8
     f70:	58 2e       	mov.l	@(56,r2),r8
     f72:	58 3a       	mov.l	@(40,r3),r8
     f74:	58 46       	mov.l	@(24,r4),r8
     f76:	58 52       	mov.l	@(8,r5),r8
     f78:	58 5d       	mov.l	@(52,r5),r8
     f7a:	58 69       	mov.l	@(36,r6),r8
     f7c:	58 75       	mov.l	@(20,r7),r8
     f7e:	58 81       	mov.l	@(4,r8),r8
     f80:	58 8c       	mov.l	@(48,r8),r8
     f82:	58 98       	mov.l	@(32,r9),r8
     f84:	58 a4       	mov.l	@(16,r10),r8
     f86:	58 b0       	mov.l	@(0,r11),r8
     f88:	58 bc       	mov.l	@(48,r11),r8
     f8a:	58 c7       	mov.l	@(28,r12),r8
     f8c:	58 d3       	mov.l	@(12,r13),r8
     f8e:	58 df       	mov.l	@(60,r13),r8
     f90:	58 eb       	mov.l	@(44,r14),r8
     f92:	58 f7       	mov.l	@(28,r15),r8
     f94:	59 02       	mov.l	@(8,r0),r9
     f96:	59 0e       	mov.l	@(56,r0),r9
     f98:	59 1a       	mov.l	@(40,r1),r9
     f9a:	59 26       	mov.l	@(24,r2),r9
     f9c:	59 31       	mov.l	@(4,r3),r9
     f9e:	59 3d       	mov.l	@(52,r3),r9
     fa0:	59 49       	mov.l	@(36,r4),r9
     fa2:	59 55       	mov.l	@(20,r5),r9
     fa4:	59 61       	mov.l	@(4,r6),r9
     fa6:	59 6c       	mov.l	@(48,r6),r9
     fa8:	59 78       	mov.l	@(32,r7),r9
     faa:	59 84       	mov.l	@(16,r8),r9
     fac:	59 90       	mov.l	@(0,r9),r9
     fae:	59 9b       	mov.l	@(44,r9),r9
     fb0:	59 a7       	mov.l	@(28,r10),r9
     fb2:	59 b3       	mov.l	@(12,r11),r9
     fb4:	59 bf       	mov.l	@(60,r11),r9
     fb6:	59 cb       	mov.l	@(44,r12),r9
     fb8:	59 d6       	mov.l	@(24,r13),r9
     fba:	59 e2       	mov.l	@(8,r14),r9
     fbc:	59 ee       	mov.l	@(56,r14),r9
     fbe:	59 fa       	mov.l	@(40,r15),r9
     fc0:	5a 05       	mov.l	@(20,r0),r10
     fc2:	5a 11       	mov.l	@(4,r1),r10
     fc4:	5a 1d       	mov.l	@(52,r1),r10
     fc6:	5a 29       	mov.l	@(36,r2),r10
     fc8:	5a 34       	mov.l	@(16,r3),r10
     fca:	5a 40       	mov.l	@(0,r4),r10
     fcc:	5a 4c       	mov.l	@(48,r4),r10
     fce:	5a 58       	mov.l	@(32,r5),r10
     fd0:	5a 63       	mov.l	@(12,r6),r10
     fd2:	5a 6f       	mov.l	@(60,r6),r10
     fd4:	5a 7b       	mov.l	@(44,r7),r10
     fd6:	5a 87       	mov.l	@(28,r8),r10
     fd8:	5a 92       	mov.l	@(8,r9),r10
     fda:	5a 9e       	mov.l	@(56,r9),r10
     fdc:	5a aa       	mov.l	@(40,r10),r10
     fde:	5a b6       	mov.l	@(24,r11),r10
     fe0:	5a c1       	mov.l	@(4,r12),r10
     fe2:	5a cd       	mov.l	@(52,r12),r10
     fe4:	5a d9       	mov.l	@(36,r13),r10
     fe6:	5a e5       	mov.l	@(20,r14),r10
     fe8:	5a f0       	mov.l	@(0,r15),r10
     fea:	5a fc       	mov.l	@(48,r15),r10
     fec:	5b 08       	mov.l	@(32,r0),r11
     fee:	5b 14       	mov.l	@(16,r1),r11
     ff0:	5b 1f       	mov.l	@(60,r1),r11
     ff2:	5b 2b       	mov.l	@(44,r2),r11
     ff4:	5b 37       	mov.l	@(28,r3),r11
     ff6:	5b 43       	mov.l	@(12,r4),r11
     ff8:	5b 4e       	mov.l	@(56,r4),r11
     ffa:	5b 5a       	mov.l	@(40,r5),r11
     ffc:	5b 66       	mov.l	@(24,r6),r11
     ffe:	5b 72       	mov.l	@(8,r7),r11
    1000:	5b 7d       	mov.l	@(52,r7),r11
    1002:	5b 89       	mov.l	@(36,r8),r11
    1004:	5b 95       	mov.l	@(20,r9),r11
    1006:	5b a1       	mov.l	@(4,r10),r11
    1008:	5b ac       	mov.l	@(48,r10),r11
    100a:	5b b8       	mov.l	@(32,r11),r11
    100c:	5b c4       	mov.l	@(16,r12),r11
    100e:	5b cf       	mov.l	@(60,r12),r11
    1010:	5b db       	mov.l	@(44,r13),r11
    1012:	5b e7       	mov.l	@(28,r14),r11
    1014:	5b f3       	mov.l	@(12,r15),r11
    1016:	5b fe       	mov.l	@(56,r15),r11
    1018:	5c 0a       	mov.l	@(40,r0),r12
    101a:	5c 16       	mov.l	@(24,r1),r12
    101c:	5c 22       	mov.l	@(8,r2),r12
    101e:	5c 2d       	mov.l	@(52,r2),r12
    1020:	5c 39       	mov.l	@(36,r3),r12
    1022:	5c 45       	mov.l	@(20,r4),r12
    1024:	5c 50       	mov.l	@(0,r5),r12
    1026:	5c 5c       	mov.l	@(48,r5),r12
    1028:	5c 68       	mov.l	@(32,r6),r12
    102a:	5c 74       	mov.l	@(16,r7),r12
    102c:	5c 7f       	mov.l	@(60,r7),r12
    102e:	5c 8b       	mov.l	@(44,r8),r12
    1030:	5c 97       	mov.l	@(28,r9),r12
    1032:	5c a2       	mov.l	@(8,r10),r12
    1034:	5c ae       	mov.l	@(56,r10),r12
    1036:	5c ba       	mov.l	@(40,r11),r12
    1038:	5c c6       	mov.l	@(24,r12),r12
    103a:	5c d1       	mov.l	@(4,r13),r12
    103c:	5c dd       	mov.l	@(52,r13),r12
    103e:	5c e9       	mov.l	@(36,r14),r12
    1040:	5c f4       	mov.l	@(16,r15),r12
    1042:	5d 00       	mov.l	@(0,r0),r13
    1044:	5d 0c       	mov.l	@(48,r0),r13
    1046:	5d 18       	mov.l	@(32,r1),r13
    1048:	5d 23       	mov.l	@(12,r2),r13
    104a:	5d 2f       	mov.l	@(60,r2),r13
    104c:	5d 3b       	mov.l	@(44,r3),r13
    104e:	5d 46       	mov.l	@(24,r4),r13
    1050:	5d 52       	mov.l	@(8,r5),r13
    1052:	5d 5e       	mov.l	@(56,r5),r13
    1054:	5d 6a       	mov.l	@(40,r6),r13
    1056:	5d 75       	mov.l	@(20,r7),r13
    1058:	5d 81       	mov.l	@(4,r8),r13
    105a:	5d 8d       	mov.l	@(52,r8),r13
    105c:	5d 98       	mov.l	@(32,r9),r13
    105e:	5d a4       	mov.l	@(16,r10),r13
    1060:	5d b0       	mov.l	@(0,r11),r13
    1062:	5d bb       	mov.l	@(44,r11),r13
    1064:	5d c7       	mov.l	@(28,r12),r13
    1066:	5d d3       	mov.l	@(12,r13),r13
    1068:	5d de       	mov.l	@(56,r13),r13
    106a:	5d ea       	mov.l	@(40,r14),r13
    106c:	5d f6       	mov.l	@(24,r15),r13
    106e:	5e 02       	mov.l	@(8,r0),r14
    1070:	5e 0d       	mov.l	@(52,r0),r14
    1072:	5e 19       	mov.l	@(36,r1),r14
    1074:	5e 25       	mov.l	@(20,r2),r14
    1076:	5e 30       	mov.l	@(0,r3),r14
    1078:	5e 3c       	mov.l	@(48,r3),r14
    107a:	5e 48       	mov.l	@(32,r4),r14
    107c:	5e 53       	mov.l	@(12,r5),r14
    107e:	5e 5f       	mov.l	@(60,r5),r14
    1080:	5e 6b       	mov.l	@(44,r6),r14
    1082:	5e 76       	mov.l	@(24,r7),r14
    1084:	5e 82       	mov.l	@(8,r8),r14
    1086:	5e 8e       	mov.l	@(56,r8),r14
    1088:	5e 99       	mov.l	@(36,r9),r14
    108a:	5e a5       	mov.l	@(20,r10),r14
    108c:	5e b1       	mov.l	@(4,r11),r14
    108e:	5e bc       	mov.l	@(48,r11),r14
    1090:	5e c8       	mov.l	@(32,r12),r14
    1092:	5e d4       	mov.l	@(16,r13),r14
    1094:	5e df       	mov.l	@(60,r13),r14
    1096:	5e eb       	mov.l	@(44,r14),r14
    1098:	5e f7       	mov.l	@(28,r15),r14
    109a:	5f 02       	mov.l	@(8,r0),r15
    109c:	5f 0e       	mov.l	@(56,r0),r15
    109e:	5f 1a       	mov.l	@(40,r1),r15
    10a0:	5f 25       	mov.l	@(20,r2),r15
    10a2:	5f 31       	mov.l	@(4,r3),r15
    10a4:	5f 3d       	mov.l	@(52,r3),r15
    10a6:	5f 48       	mov.l	@(32,r4),r15
    10a8:	5f 54       	mov.l	@(16,r5),r15
    10aa:	5f 60       	mov.l	@(0,r6),r15
    10ac:	5f 6b       	mov.l	@(44,r6),r15
    10ae:	5f 77       	mov.l	@(28,r7),r15
    10b0:	5f 83       	mov.l	@(12,r8),r15
    10b2:	5f 8e       	mov.l	@(56,r8),r15
    10b4:	5f 9a       	mov.l	@(40,r9),r15
    10b6:	5f a6       	mov.l	@(24,r10),r15
    10b8:	5f b1       	mov.l	@(4,r11),r15
    10ba:	5f bd       	mov.l	@(52,r11),r15
    10bc:	5f c9       	mov.l	@(36,r12),r15
    10be:	5f d4       	mov.l	@(16,r13),r15
    10c0:	5f e0       	mov.l	@(0,r14),r15
    10c2:	5f ec       	mov.l	@(48,r14),r15
    10c4:	5f f7       	mov.l	@(28,r15),r15
    10c6:	60 03       	mov	r0,r0
    10c8:	60 0f       	exts.w	r0,r0
    10ca:	60 1a       	negc	r1,r0
    10cc:	60 26       	mov.l	@r2+,r0
    10ce:	60 32       	mov.l	@r3,r0
    10d0:	60 3d       	extu.w	r3,r0
    10d2:	60 49       	swap.w	r4,r0
    10d4:	60 54       	mov.b	@r5+,r0
    10d6:	60 60       	mov.b	@r6,r0
    10d8:	60 6c       	extu.b	r6,r0
    10da:	60 77       	not	r7,r0
    10dc:	60 83       	mov	r8,r0
    10de:	60 8f       	exts.w	r8,r0
    10e0:	60 9a       	negc	r9,r0
    10e2:	60 a6       	mov.l	@r10+,r0
    10e4:	60 b2       	mov.l	@r11,r0
    10e6:	60 bd       	extu.w	r11,r0
    10e8:	60 c9       	swap.w	r12,r0
    10ea:	60 d5       	mov.w	@r13+,r0
    10ec:	60 e0       	mov.b	@r14,r0
    10ee:	60 ec       	extu.b	r14,r0
    10f0:	60 f7       	not	r15,r0
    10f2:	61 03       	mov	r0,r1
    10f4:	61 0f       	exts.w	r0,r1
    10f6:	61 1a       	negc	r1,r1
    10f8:	61 26       	mov.l	@r2+,r1
    10fa:	61 32       	mov.l	@r3,r1
    10fc:	61 3d       	extu.w	r3,r1
    10fe:	61 49       	swap.w	r4,r1
    1100:	61 54       	mov.b	@r5+,r1
    1102:	61 60       	mov.b	@r6,r1
    1104:	61 6c       	extu.b	r6,r1
    1106:	61 77       	not	r7,r1
    1108:	61 83       	mov	r8,r1
    110a:	61 8f       	exts.w	r8,r1
    110c:	61 9a       	negc	r9,r1
    110e:	61 a6       	mov.l	@r10+,r1
    1110:	61 b1       	mov.w	@r11,r1
    1112:	61 bd       	extu.w	r11,r1
    1114:	61 c9       	swap.w	r12,r1
    1116:	61 d4       	mov.b	@r13+,r1
    1118:	61 e0       	mov.b	@r14,r1
    111a:	61 eb       	neg	r14,r1
    111c:	61 f7       	not	r15,r1
    111e:	62 03       	mov	r0,r2
    1120:	62 0e       	exts.b	r0,r2
    1122:	62 1a       	negc	r1,r2
    1124:	62 25       	mov.w	@r2+,r2
    1126:	62 31       	mov.w	@r3,r2
    1128:	62 3d       	extu.w	r3,r2
    112a:	62 48       	swap.b	r4,r2
    112c:	62 54       	mov.b	@r5+,r2
    112e:	62 5f       	exts.w	r5,r2
    1130:	62 6b       	neg	r6,r2
    1132:	62 77       	not	r7,r2
    1134:	62 82       	mov.l	@r8,r2
    1136:	62 8e       	exts.b	r8,r2
    1138:	62 99       	swap.w	r9,r2
    113a:	62 a5       	mov.w	@r10+,r2
    113c:	62 b1       	mov.w	@r11,r2
    113e:	62 bc       	extu.b	r11,r2
    1140:	62 c8       	swap.b	r12,r2
    1142:	62 d3       	mov	r13,r2
    1144:	62 df       	exts.w	r13,r2
    1146:	62 eb       	neg	r14,r2
    1148:	62 f6       	mov.l	@r15+,r2
    114a:	63 02       	mov.l	@r0,r3
    114c:	63 0d       	extu.w	r0,r3
    114e:	63 19       	swap.w	r1,r3
    1150:	63 25       	mov.w	@r2+,r3
    1152:	63 30       	mov.b	@r3,r3
    1154:	63 3c       	extu.b	r3,r3
    1156:	63 47       	not	r4,r3
    1158:	63 53       	mov	r5,r3
    115a:	63 5f       	exts.w	r5,r3
    115c:	63 6a       	negc	r6,r3
    115e:	63 76       	mov.l	@r7+,r3
    1160:	63 81       	mov.w	@r8,r3
    1162:	63 8d       	extu.w	r8,r3
    1164:	63 98       	swap.b	r9,r3
    1166:	63 a4       	mov.b	@r10+,r3
    1168:	63 b0       	mov.b	@r11,r3
    116a:	63 bb       	neg	r11,r3
    116c:	63 c7       	not	r12,r3
    116e:	63 d2       	mov.l	@r13,r3
    1170:	63 de       	exts.b	r13,r3
    1172:	63 e9       	swap.w	r14,r3
    1174:	63 f5       	mov.w	@r15+,r3
    1176:	64 01       	mov.w	@r0,r4
    1178:	64 0c       	extu.b	r0,r4
    117a:	64 18       	swap.b	r1,r4
    117c:	64 23       	mov	r2,r4
    117e:	64 2f       	exts.w	r2,r4
    1180:	64 3a       	negc	r3,r4
    1182:	64 46       	mov.l	@r4+,r4
    1184:	64 51       	mov.w	@r5,r4
    1186:	64 5d       	extu.w	r5,r4
    1188:	64 69       	swap.w	r6,r4
    118a:	64 74       	mov.b	@r7+,r4
    118c:	64 80       	mov.b	@r8,r4
    118e:	64 8b       	neg	r8,r4
    1190:	64 97       	not	r9,r4
    1192:	64 a2       	mov.l	@r10,r4
    1194:	64 ae       	exts.b	r10,r4
    1196:	64 ba       	negc	r11,r4
    1198:	64 c5       	mov.w	@r12+,r4
    119a:	64 d1       	mov.w	@r13,r4
    119c:	64 dc       	extu.b	r13,r4
    119e:	64 e8       	swap.b	r14,r4
    11a0:	64 f3       	mov	r15,r4
    11a2:	64 ff       	exts.w	r15,r4
    11a4:	65 0a       	negc	r0,r5
    11a6:	65 16       	mov.l	@r1+,r5
    11a8:	65 21       	mov.w	@r2,r5
    11aa:	65 2d       	extu.w	r2,r5
    11ac:	65 39       	swap.w	r3,r5
    11ae:	65 44       	mov.b	@r4+,r5
    11b0:	65 50       	mov.b	@r5,r5
    11b2:	65 5b       	neg	r5,r5
    11b4:	65 67       	not	r6,r5
    11b6:	65 72       	mov.l	@r7,r5
    11b8:	65 7e       	exts.b	r7,r5
    11ba:	65 89       	swap.w	r8,r5
    11bc:	65 95       	mov.w	@r9+,r5
    11be:	65 a0       	mov.b	@r10,r5
    11c0:	65 ac       	extu.b	r10,r5
    11c2:	65 b7       	not	r11,r5
    11c4:	65 c3       	mov	r12,r5
    11c6:	65 cf       	exts.w	r12,r5
    11c8:	65 da       	negc	r13,r5
    11ca:	65 e6       	mov.l	@r14+,r5
    11cc:	65 f1       	mov.w	@r15,r5
    11ce:	65 fd       	extu.w	r15,r5
    11d0:	66 08       	swap.b	r0,r6
    11d2:	66 14       	mov.b	@r1+,r6
    11d4:	66 1f       	exts.w	r1,r6
    11d6:	66 2b       	neg	r2,r6
    11d8:	66 36       	mov.l	@r3+,r6
    11da:	66 42       	mov.l	@r4,r6
    11dc:	66 4d       	extu.w	r4,r6
    11de:	66 59       	swap.w	r5,r6
    11e0:	66 64       	mov.b	@r6+,r6
    11e2:	66 70       	mov.b	@r7,r6
    11e4:	66 7b       	neg	r7,r6
    11e6:	66 87       	not	r8,r6
    11e8:	66 92       	mov.l	@r9,r6
    11ea:	66 9e       	exts.b	r9,r6
    11ec:	66 a9       	swap.w	r10,r6
    11ee:	66 b5       	mov.w	@r11+,r6
    11f0:	66 c0       	mov.b	@r12,r6
    11f2:	66 cc       	extu.b	r12,r6
    11f4:	66 d7       	not	r13,r6
    11f6:	66 e3       	mov	r14,r6
    11f8:	66 ee       	exts.b	r14,r6
    11fa:	66 fa       	negc	r15,r6
    11fc:	67 05       	mov.w	@r0+,r7
    11fe:	67 11       	mov.w	@r1,r7
    1200:	67 1c       	extu.b	r1,r7
    1202:	67 28       	swap.b	r2,r7
    1204:	67 33       	mov	r3,r7
    1206:	67 3f       	exts.w	r3,r7
    1208:	67 4a       	negc	r4,r7
    120a:	67 56       	mov.l	@r5+,r7
    120c:	67 61       	mov.w	@r6,r7
    120e:	67 6d       	extu.w	r6,r7
    1210:	67 78       	swap.b	r7,r7
    1212:	67 84       	mov.b	@r8+,r7
    1214:	67 8f       	exts.w	r8,r7
    1216:	67 9b       	neg	r9,r7
    1218:	67 a6       	mov.l	@r10+,r7
    121a:	67 b2       	mov.l	@r11,r7
    121c:	67 bd       	extu.w	r11,r7
    121e:	67 c9       	swap.w	r12,r7
    1220:	67 d4       	mov.b	@r13+,r7
    1222:	67 e0       	mov.b	@r14,r7
    1224:	67 eb       	neg	r14,r7
    1226:	67 f7       	not	r15,r7
    1228:	68 02       	mov.l	@r0,r8
    122a:	68 0e       	exts.b	r0,r8
    122c:	68 19       	swap.w	r1,r8
    122e:	68 25       	mov.w	@r2+,r8
    1230:	68 30       	mov.b	@r3,r8
    1232:	68 3c       	extu.b	r3,r8
    1234:	68 47       	not	r4,r8
    1236:	68 53       	mov	r5,r8
    1238:	68 5e       	exts.b	r5,r8
    123a:	68 6a       	negc	r6,r8
    123c:	68 75       	mov.w	@r7+,r8
    123e:	68 81       	mov.w	@r8,r8
    1240:	68 8c       	extu.b	r8,r8
    1242:	68 97       	not	r9,r8
    1244:	68 a3       	mov	r10,r8
    1246:	68 ae       	exts.b	r10,r8
    1248:	68 ba       	negc	r11,r8
    124a:	68 c5       	mov.w	@r12+,r8
    124c:	68 d1       	mov.w	@r13,r8
    124e:	68 dc       	extu.b	r13,r8
    1250:	68 e8       	swap.b	r14,r8
    1252:	68 f3       	mov	r15,r8
    1254:	68 ff       	exts.w	r15,r8
    1256:	69 0a       	negc	r0,r9
    1258:	69 16       	mov.l	@r1+,r9
    125a:	69 21       	mov.w	@r2,r9
    125c:	69 2d       	extu.w	r2,r9
    125e:	69 38       	swap.b	r3,r9
    1260:	69 43       	mov	r4,r9
    1262:	69 4f       	exts.w	r4,r9
    1264:	69 5a       	negc	r5,r9
    1266:	69 66       	mov.l	@r6+,r9
    1268:	69 71       	mov.w	@r7,r9
    126a:	69 7d       	extu.w	r7,r9
    126c:	69 88       	swap.b	r8,r9
    126e:	69 94       	mov.b	@r9+,r9
    1270:	69 9f       	exts.w	r9,r9
    1272:	69 aa       	negc	r10,r9
    1274:	69 b6       	mov.l	@r11+,r9
    1276:	69 c1       	mov.w	@r12,r9
    1278:	69 cd       	extu.w	r12,r9
    127a:	69 d8       	swap.b	r13,r9
    127c:	69 e4       	mov.b	@r14+,r9
    127e:	69 ef       	exts.w	r14,r9
    1280:	69 fb       	neg	r15,r9
    1282:	6a 06       	mov.l	@r0+,r10
    1284:	6a 11       	mov.w	@r1,r10
    1286:	6a 1d       	extu.w	r1,r10
    1288:	6a 28       	swap.b	r2,r10
    128a:	6a 34       	mov.b	@r3+,r10
    128c:	6a 3f       	exts.w	r3,r10
    128e:	6a 4b       	neg	r4,r10
    1290:	6a 56       	mov.l	@r5+,r10
    1292:	6a 61       	mov.w	@r6,r10
    1294:	6a 6d       	extu.w	r6,r10
    1296:	6a 78       	swap.b	r7,r10
    1298:	6a 84       	mov.b	@r8+,r10
    129a:	6a 8f       	exts.w	r8,r10
    129c:	6a 9b       	neg	r9,r10
    129e:	6a a6       	mov.l	@r10+,r10
    12a0:	6a b1       	mov.w	@r11,r10
    12a2:	6a bd       	extu.w	r11,r10
    12a4:	6a c8       	swap.b	r12,r10
    12a6:	6a d4       	mov.b	@r13+,r10
    12a8:	6a df       	exts.w	r13,r10
    12aa:	6a eb       	neg	r14,r10
    12ac:	6a f6       	mov.l	@r15+,r10
    12ae:	6b 01       	mov.w	@r0,r11
    12b0:	6b 0d       	extu.w	r0,r11
    12b2:	6b 18       	swap.b	r1,r11
    12b4:	6b 24       	mov.b	@r2+,r11
    12b6:	6b 2f       	exts.w	r2,r11
    12b8:	6b 3a       	negc	r3,r11
    12ba:	6b 46       	mov.l	@r4+,r11
    12bc:	6b 51       	mov.w	@r5,r11
    12be:	6b 5d       	extu.w	r5,r11
    12c0:	6b 68       	swap.b	r6,r11
    12c2:	6b 74       	mov.b	@r7+,r11
    12c4:	6b 7f       	exts.w	r7,r11
    12c6:	6b 8a       	negc	r8,r11
    12c8:	6b 96       	mov.l	@r9+,r11
    12ca:	6b a1       	mov.w	@r10,r11
    12cc:	6b ad       	extu.w	r10,r11
    12ce:	6b b8       	swap.b	r11,r11
    12d0:	6b c3       	mov	r12,r11
    12d2:	6b cf       	exts.w	r12,r11
    12d4:	6b da       	negc	r13,r11
    12d6:	6b e6       	mov.l	@r14+,r11
    12d8:	6b f1       	mov.w	@r15,r11
    12da:	6b fc       	extu.b	r15,r11
    12dc:	6c 08       	swap.b	r0,r12
    12de:	6c 13       	mov	r1,r12
    12e0:	6c 1e       	exts.b	r1,r12
    12e2:	6c 2a       	negc	r2,r12
    12e4:	6c 35       	mov.w	@r3+,r12
    12e6:	6c 41       	mov.w	@r4,r12
    12e8:	6c 4c       	extu.b	r4,r12
    12ea:	6c 57       	not	r5,r12
    12ec:	6c 63       	mov	r6,r12
    12ee:	6c 6e       	exts.b	r6,r12
    12f0:	6c 7a       	negc	r7,r12
    12f2:	6c 85       	mov.w	@r8+,r12
    12f4:	6c 90       	mov.b	@r9,r12
    12f6:	6c 9c       	extu.b	r9,r12
    12f8:	6c a7       	not	r10,r12
    12fa:	6c b2       	mov.l	@r11,r12
    12fc:	6c be       	exts.b	r11,r12
    12fe:	6c c9       	swap.w	r12,r12
    1300:	6c d5       	mov.w	@r13+,r12
    1302:	6c e0       	mov.b	@r14,r12
    1304:	6c eb       	neg	r14,r12
    1306:	6c f7       	not	r15,r12
    1308:	6d 02       	mov.l	@r0,r13
    130a:	6d 0d       	extu.w	r0,r13
    130c:	6d 19       	swap.w	r1,r13
    130e:	6d 24       	mov.b	@r2+,r13
    1310:	6d 30       	mov.b	@r3,r13
    1312:	6d 3b       	neg	r3,r13
    1314:	6d 46       	mov.l	@r4+,r13
    1316:	6d 52       	mov.l	@r5,r13
    1318:	6d 5d       	extu.w	r5,r13
    131a:	6d 68       	swap.b	r6,r13
    131c:	6d 74       	mov.b	@r7+,r13
    131e:	6d 7f       	exts.w	r7,r13
    1320:	6d 8a       	negc	r8,r13
    1322:	6d 96       	mov.l	@r9+,r13
    1324:	6d a1       	mov.w	@r10,r13
    1326:	6d ad       	extu.w	r10,r13
    1328:	6d b8       	swap.b	r11,r13
    132a:	6d c3       	mov	r12,r13
    132c:	6d cf       	exts.w	r12,r13
    132e:	6d da       	negc	r13,r13
    1330:	6d e5       	mov.w	@r14+,r13
    1332:	6d f1       	mov.w	@r15,r13
    1334:	6d fc       	extu.b	r15,r13
    1336:	6e 07       	not	r0,r14
    1338:	6e 13       	mov	r1,r14
    133a:	6e 1e       	exts.b	r1,r14
    133c:	6e 29       	swap.w	r2,r14
    133e:	6e 35       	mov.w	@r3+,r14
    1340:	6e 40       	mov.b	@r4,r14
    1342:	6e 4b       	neg	r4,r14
    1344:	6e 57       	not	r5,r14
    1346:	6e 62       	mov.l	@r6,r14
    1348:	6e 6d       	extu.w	r6,r14
    134a:	6e 79       	swap.w	r7,r14
    134c:	6e 84       	mov.b	@r8+,r14
    134e:	6e 8f       	exts.w	r8,r14
    1350:	6e 9b       	neg	r9,r14
    1352:	6e a6       	mov.l	@r10+,r14
    1354:	6e b1       	mov.w	@r11,r14
    1356:	6e bd       	extu.w	r11,r14
    1358:	6e c8       	swap.b	r12,r14
    135a:	6e d3       	mov	r13,r14
    135c:	6e df       	exts.w	r13,r14
    135e:	6e ea       	negc	r14,r14
    1360:	6e f5       	mov.w	@r15+,r14
    1362:	6f 01       	mov.w	@r0,r15
    1364:	6f 0c       	extu.b	r0,r15
    1366:	6f 17       	not	r1,r15
    1368:	6f 23       	mov	r2,r15
    136a:	6f 2e       	exts.b	r2,r15
    136c:	6f 39       	swap.w	r3,r15
    136e:	6f 45       	mov.w	@r4+,r15
    1370:	6f 50       	mov.b	@r5,r15
    1372:	6f 5b       	neg	r5,r15
    1374:	6f 67       	not	r6,r15
    1376:	6f 72       	mov.l	@r7,r15
    1378:	6f 7d       	extu.w	r7,r15
    137a:	6f 89       	swap.w	r8,r15
    137c:	6f 94       	mov.b	@r9+,r15
    137e:	6f 9f       	exts.w	r9,r15
    1380:	6f aa       	negc	r10,r15
    1382:	6f b6       	mov.l	@r11+,r15
    1384:	6f c1       	mov.w	@r12,r15
    1386:	6f cc       	extu.b	r12,r15
    1388:	6f d8       	swap.b	r13,r15
    138a:	6f e3       	mov	r14,r15
    138c:	6f ee       	exts.b	r14,r15
    138e:	6f fa       	negc	r15,r15
    1390:	70 05       	add	#5,r0
    1392:	70 10       	add	#16,r0
    1394:	70 1b       	add	#27,r0
    1396:	70 27       	add	#39,r0
    1398:	70 32       	add	#50,r0
    139a:	70 3d       	add	#61,r0
    139c:	70 49       	add	#73,r0
    139e:	70 54       	add	#84,r0
    13a0:	70 5f       	add	#95,r0
    13a2:	70 6b       	add	#107,r0
    13a4:	70 76       	add	#118,r0
    13a6:	70 81       	add	#-127,r0
    13a8:	70 8c       	add	#-116,r0
    13aa:	70 98       	add	#-104,r0
    13ac:	70 a3       	add	#-93,r0
    13ae:	70 ae       	add	#-82,r0
    13b0:	70 ba       	add	#-70,r0
    13b2:	70 c5       	add	#-59,r0
    13b4:	70 d0       	add	#-48,r0
    13b6:	70 db       	add	#-37,r0
    13b8:	70 e7       	add	#-25,r0
    13ba:	70 f2       	add	#-14,r0
    13bc:	70 fd       	add	#-3,r0
    13be:	71 08       	add	#8,r1
    13c0:	71 14       	add	#20,r1
    13c2:	71 1f       	add	#31,r1
    13c4:	71 2a       	add	#42,r1
    13c6:	71 36       	add	#54,r1
    13c8:	71 41       	add	#65,r1
    13ca:	71 4c       	add	#76,r1
    13cc:	71 57       	add	#87,r1
    13ce:	71 63       	add	#99,r1
    13d0:	71 6e       	add	#110,r1
    13d2:	71 79       	add	#121,r1
    13d4:	71 84       	add	#-124,r1
    13d6:	71 90       	add	#-112,r1
    13d8:	71 9b       	add	#-101,r1
    13da:	71 a6       	add	#-90,r1
    13dc:	71 b1       	add	#-79,r1
    13de:	71 bd       	add	#-67,r1
    13e0:	71 c8       	add	#-56,r1
    13e2:	71 d3       	add	#-45,r1
    13e4:	71 df       	add	#-33,r1
    13e6:	71 ea       	add	#-22,r1
    13e8:	71 f5       	add	#-11,r1
    13ea:	72 00       	add	#0,r2
    13ec:	72 0c       	add	#12,r2
    13ee:	72 17       	add	#23,r2
    13f0:	72 22       	add	#34,r2
    13f2:	72 2d       	add	#45,r2
    13f4:	72 39       	add	#57,r2
    13f6:	72 44       	add	#68,r2
    13f8:	72 4f       	add	#79,r2
    13fa:	72 5a       	add	#90,r2
    13fc:	72 65       	add	#101,r2
    13fe:	72 71       	add	#113,r2
    1400:	72 7c       	add	#124,r2
    1402:	72 87       	add	#-121,r2
    1404:	72 92       	add	#-110,r2
    1406:	72 9e       	add	#-98,r2
    1408:	72 a9       	add	#-87,r2
    140a:	72 b4       	add	#-76,r2
    140c:	72 bf       	add	#-65,r2
    140e:	72 cb       	add	#-53,r2
    1410:	72 d6       	add	#-42,r2
    1412:	72 e1       	add	#-31,r2
    1414:	72 ec       	add	#-20,r2
    1416:	72 f8       	add	#-8,r2
    1418:	73 03       	add	#3,r3
    141a:	73 0e       	add	#14,r3
    141c:	73 19       	add	#25,r3
    141e:	73 24       	add	#36,r3
    1420:	73 30       	add	#48,r3
    1422:	73 3b       	add	#59,r3
    1424:	73 46       	add	#70,r3
    1426:	73 51       	add	#81,r3
    1428:	73 5d       	add	#93,r3
    142a:	73 68       	add	#104,r3
    142c:	73 73       	add	#115,r3
    142e:	73 7e       	add	#126,r3
    1430:	73 89       	add	#-119,r3
    1432:	73 95       	add	#-107,r3
    1434:	73 a0       	add	#-96,r3
    1436:	73 ab       	add	#-85,r3
    1438:	73 b6       	add	#-74,r3
    143a:	73 c1       	add	#-63,r3
    143c:	73 cd       	add	#-51,r3
    143e:	73 d8       	add	#-40,r3
    1440:	73 e3       	add	#-29,r3
    1442:	73 ee       	add	#-18,r3
    1444:	73 fa       	add	#-6,r3
    1446:	74 05       	add	#5,r4
    1448:	74 10       	add	#16,r4
    144a:	74 1b       	add	#27,r4
    144c:	74 26       	add	#38,r4
    144e:	74 32       	add	#50,r4
    1450:	74 3d       	add	#61,r4
    1452:	74 48       	add	#72,r4
    1454:	74 53       	add	#83,r4
    1456:	74 5e       	add	#94,r4
    1458:	74 69       	add	#105,r4
    145a:	74 75       	add	#117,r4
    145c:	74 80       	add	#-128,r4
    145e:	74 8b       	add	#-117,r4
    1460:	74 96       	add	#-106,r4
    1462:	74 a1       	add	#-95,r4
    1464:	74 ad       	add	#-83,r4
    1466:	74 b8       	add	#-72,r4
    1468:	74 c3       	add	#-61,r4
    146a:	74 ce       	add	#-50,r4
    146c:	74 d9       	add	#-39,r4
    146e:	74 e5       	add	#-27,r4
    1470:	74 f0       	add	#-16,r4
    1472:	74 fb       	add	#-5,r4
    1474:	75 06       	add	#6,r5
    1476:	75 11       	add	#17,r5
    1478:	75 1c       	add	#28,r5
    147a:	75 28       	add	#40,r5
    147c:	75 33       	add	#51,r5
    147e:	75 3e       	add	#62,r5
    1480:	75 49       	add	#73,r5
    1482:	75 54       	add	#84,r5
    1484:	75 5f       	add	#95,r5
    1486:	75 6b       	add	#107,r5
    1488:	75 76       	add	#118,r5
    148a:	75 81       	add	#-127,r5
    148c:	75 8c       	add	#-116,r5
    148e:	75 97       	add	#-105,r5
    1490:	75 a2       	add	#-94,r5
    1492:	75 ae       	add	#-82,r5
    1494:	75 b9       	add	#-71,r5
    1496:	75 c4       	add	#-60,r5
    1498:	75 cf       	add	#-49,r5
    149a:	75 da       	add	#-38,r5
    149c:	75 e5       	add	#-27,r5
    149e:	75 f1       	add	#-15,r5
    14a0:	75 fc       	add	#-4,r5
    14a2:	76 07       	add	#7,r6
    14a4:	76 12       	add	#18,r6
    14a6:	76 1d       	add	#29,r6
    14a8:	76 28       	add	#40,r6
    14aa:	76 33       	add	#51,r6
    14ac:	76 3f       	add	#63,r6
    14ae:	76 4a       	add	#74,r6
    14b0:	76 55       	add	#85,r6
    14b2:	76 60       	add	#96,r6
    14b4:	76 6b       	add	#107,r6
    14b6:	76 76       	add	#118,r6
    14b8:	76 81       	add	#-127,r6
    14ba:	76 8d       	add	#-115,r6
    14bc:	76 98       	add	#-104,r6
    14be:	76 a3       	add	#-93,r6
    14c0:	76 ae       	add	#-82,r6
    14c2:	76 b9       	add	#-71,r6
    14c4:	76 c4       	add	#-60,r6
    14c6:	76 cf       	add	#-49,r6
    14c8:	76 da       	add	#-38,r6
    14ca:	76 e6       	add	#-26,r6
    14cc:	76 f1       	add	#-15,r6
    14ce:	76 fc       	add	#-4,r6
    14d0:	77 07       	add	#7,r7
    14d2:	77 12       	add	#18,r7
    14d4:	77 1d       	add	#29,r7
    14d6:	77 28       	add	#40,r7
    14d8:	77 33       	add	#51,r7
    14da:	77 3f       	add	#63,r7
    14dc:	77 4a       	add	#74,r7
    14de:	77 55       	add	#85,r7
    14e0:	77 60       	add	#96,r7
    14e2:	77 6b       	add	#107,r7
    14e4:	77 76       	add	#118,r7
    14e6:	77 81       	add	#-127,r7
    14e8:	77 8c       	add	#-116,r7
    14ea:	77 98       	add	#-104,r7
    14ec:	77 a3       	add	#-93,r7
    14ee:	77 ae       	add	#-82,r7
    14f0:	77 b9       	add	#-71,r7
    14f2:	77 c4       	add	#-60,r7
    14f4:	77 cf       	add	#-49,r7
    14f6:	77 da       	add	#-38,r7
    14f8:	77 e5       	add	#-27,r7
    14fa:	77 f0       	add	#-16,r7
    14fc:	77 fb       	add	#-5,r7
    14fe:	78 07       	add	#7,r8
    1500:	78 12       	add	#18,r8
    1502:	78 1d       	add	#29,r8
    1504:	78 28       	add	#40,r8
    1506:	78 33       	add	#51,r8
    1508:	78 3e       	add	#62,r8
    150a:	78 49       	add	#73,r8
    150c:	78 54       	add	#84,r8
    150e:	78 5f       	add	#95,r8
    1510:	78 6a       	add	#106,r8
    1512:	78 76       	add	#118,r8
    1514:	78 81       	add	#-127,r8
    1516:	78 8c       	add	#-116,r8
    1518:	78 97       	add	#-105,r8
    151a:	78 a2       	add	#-94,r8
    151c:	78 ad       	add	#-83,r8
    151e:	78 b8       	add	#-72,r8
    1520:	78 c3       	add	#-61,r8
    1522:	78 ce       	add	#-50,r8
    1524:	78 d9       	add	#-39,r8
    1526:	78 e4       	add	#-28,r8
    1528:	78 ef       	add	#-17,r8
    152a:	78 fb       	add	#-5,r8
    152c:	79 06       	add	#6,r9
    152e:	79 11       	add	#17,r9
    1530:	79 1c       	add	#28,r9
    1532:	79 27       	add	#39,r9
    1534:	79 32       	add	#50,r9
    1536:	79 3d       	add	#61,r9
    1538:	79 48       	add	#72,r9
    153a:	79 53       	add	#83,r9
    153c:	79 5e       	add	#94,r9
    153e:	79 69       	add	#105,r9
    1540:	79 74       	add	#116,r9
    1542:	79 7f       	add	#127,r9
    1544:	79 8a       	add	#-118,r9
    1546:	79 95       	add	#-107,r9
    1548:	79 a0       	add	#-96,r9
    154a:	79 ac       	add	#-84,r9
    154c:	79 b7       	add	#-73,r9
    154e:	79 c2       	add	#-62,r9
    1550:	79 cd       	add	#-51,r9
    1552:	79 d8       	add	#-40,r9
    1554:	79 e3       	add	#-29,r9
    1556:	79 ee       	add	#-18,r9
    1558:	79 f9       	add	#-7,r9
    155a:	7a 04       	add	#4,r10
    155c:	7a 0f       	add	#15,r10
    155e:	7a 1a       	add	#26,r10
    1560:	7a 25       	add	#37,r10
    1562:	7a 30       	add	#48,r10
    1564:	7a 3b       	add	#59,r10
    1566:	7a 46       	add	#70,r10
    1568:	7a 51       	add	#81,r10
    156a:	7a 5c       	add	#92,r10
    156c:	7a 67       	add	#103,r10
    156e:	7a 72       	add	#114,r10
    1570:	7a 7d       	add	#125,r10
    1572:	7a 88       	add	#-120,r10
    1574:	7a 93       	add	#-109,r10
    1576:	7a 9f       	add	#-97,r10
    1578:	7a aa       	add	#-86,r10
    157a:	7a b5       	add	#-75,r10
    157c:	7a c0       	add	#-64,r10
    157e:	7a cb       	add	#-53,r10
    1580:	7a d6       	add	#-42,r10
    1582:	7a e1       	add	#-31,r10
    1584:	7a ec       	add	#-20,r10
    1586:	7a f7       	add	#-9,r10
    1588:	7b 02       	add	#2,r11
    158a:	7b 0d       	add	#13,r11
    158c:	7b 18       	add	#24,r11
    158e:	7b 23       	add	#35,r11
    1590:	7b 2e       	add	#46,r11
    1592:	7b 39       	add	#57,r11
    1594:	7b 44       	add	#68,r11
    1596:	7b 4f       	add	#79,r11
    1598:	7b 5a       	add	#90,r11
    159a:	7b 65       	add	#101,r11
    159c:	7b 70       	add	#112,r11
    159e:	7b 7b       	add	#123,r11
    15a0:	7b 86       	add	#-122,r11
    15a2:	7b 91       	add	#-111,r11
    15a4:	7b 9c       	add	#-100,r11
    15a6:	7b a7       	add	#-89,r11
    15a8:	7b b2       	add	#-78,r11
    15aa:	7b bd       	add	#-67,r11
    15ac:	7b c8       	add	#-56,r11
    15ae:	7b d3       	add	#-45,r11
    15b0:	7b de       	add	#-34,r11
    15b2:	7b e9       	add	#-23,r11
    15b4:	7b f4       	add	#-12,r11
    15b6:	7b ff       	add	#-1,r11
    15b8:	7c 0a       	add	#10,r12
    15ba:	7c 15       	add	#21,r12
    15bc:	7c 20       	add	#32,r12
    15be:	7c 2b       	add	#43,r12
    15c0:	7c 36       	add	#54,r12
    15c2:	7c 41       	add	#65,r12
    15c4:	7c 4c       	add	#76,r12
    15c6:	7c 57       	add	#87,r12
    15c8:	7c 62       	add	#98,r12
    15ca:	7c 6d       	add	#109,r12
    15cc:	7c 78       	add	#120,r12
    15ce:	7c 83       	add	#-125,r12
    15d0:	7c 8e       	add	#-114,r12
    15d2:	7c 99       	add	#-103,r12
    15d4:	7c a4       	add	#-92,r12
    15d6:	7c af       	add	#-81,r12
    15d8:	7c ba       	add	#-70,r12
    15da:	7c c5       	add	#-59,r12
    15dc:	7c d0       	add	#-48,r12
    15de:	7c db       	add	#-37,r12
    15e0:	7c e6       	add	#-26,r12
    15e2:	7c f0       	add	#-16,r12
    15e4:	7c fb       	add	#-5,r12
    15e6:	7d 06       	add	#6,r13
    15e8:	7d 11       	add	#17,r13
    15ea:	7d 1c       	add	#28,r13
    15ec:	7d 27       	add	#39,r13
    15ee:	7d 32       	add	#50,r13
    15f0:	7d 3d       	add	#61,r13
    15f2:	7d 48       	add	#72,r13
    15f4:	7d 53       	add	#83,r13
    15f6:	7d 5e       	add	#94,r13
    15f8:	7d 69       	add	#105,r13
    15fa:	7d 74       	add	#116,r13
    15fc:	7d 7f       	add	#127,r13
    15fe:	7d 8a       	add	#-118,r13
    1600:	7d 95       	add	#-107,r13
    1602:	7d a0       	add	#-96,r13
    1604:	7d ab       	add	#-85,r13
    1606:	7d b6       	add	#-74,r13
    1608:	7d c1       	add	#-63,r13
    160a:	7d cc       	add	#-52,r13
    160c:	7d d7       	add	#-41,r13
    160e:	7d e2       	add	#-30,r13
    1610:	7d ec       	add	#-20,r13
    1612:	7d f7       	add	#-9,r13
    1614:	7e 02       	add	#2,r14
    1616:	7e 0d       	add	#13,r14
    1618:	7e 18       	add	#24,r14
    161a:	7e 23       	add	#35,r14
    161c:	7e 2e       	add	#46,r14
    161e:	7e 39       	add	#57,r14
    1620:	7e 44       	add	#68,r14
    1622:	7e 4f       	add	#79,r14
    1624:	7e 5a       	add	#90,r14
    1626:	7e 65       	add	#101,r14
    1628:	7e 70       	add	#112,r14
    162a:	7e 7b       	add	#123,r14
    162c:	7e 86       	add	#-122,r14
    162e:	7e 90       	add	#-112,r14
    1630:	7e 9b       	add	#-101,r14
    1632:	7e a6       	add	#-90,r14
    1634:	7e b1       	add	#-79,r14
    1636:	7e bc       	add	#-68,r14
    1638:	7e c7       	add	#-57,r14
    163a:	7e d2       	add	#-46,r14
    163c:	7e dd       	add	#-35,r14
    163e:	7e e8       	add	#-24,r14
    1640:	7e f3       	add	#-13,r14
    1642:	7e fe       	add	#-2,r14
    1644:	7f 09       	add	#9,r15
    1646:	7f 13       	add	#19,r15
    1648:	7f 1e       	add	#30,r15
    164a:	7f 29       	add	#41,r15
    164c:	7f 34       	add	#52,r15
    164e:	7f 3f       	add	#63,r15
    1650:	7f 4a       	add	#74,r15
    1652:	7f 55       	add	#85,r15
    1654:	7f 60       	add	#96,r15
    1656:	7f 6b       	add	#107,r15
    1658:	7f 76       	add	#118,r15
    165a:	7f 80       	add	#-128,r15
    165c:	7f 8b       	add	#-117,r15
    165e:	7f 96       	add	#-106,r15
    1660:	7f a1       	add	#-95,r15
    1662:	7f ac       	add	#-84,r15
    1664:	7f b7       	add	#-73,r15
    1666:	7f c2       	add	#-62,r15
    1668:	7f cd       	add	#-51,r15
    166a:	7f d8       	add	#-40,r15
    166c:	7f e2       	add	#-30,r15
    166e:	7f ed       	add	#-19,r15
    1670:	7f f8       	add	#-8,r15
    1672:	80 03       	mov.b	r0,@(3,r0)
    1674:	80 0e       	mov.b	r0,@(14,r0)
    1676:	80 19       	mov.b	r0,@(9,r1)
    1678:	80 24       	mov.b	r0,@(4,r2)
    167a:	80 2f       	mov.b	r0,@(15,r2)
    167c:	80 3a       	mov.b	r0,@(10,r3)
    167e:	80 44       	mov.b	r0,@(4,r4)
    1680:	80 4f       	mov.b	r0,@(15,r4)
    1682:	80 5a       	mov.b	r0,@(10,r5)
    1684:	80 65       	mov.b	r0,@(5,r6)
    1686:	80 70       	mov.b	r0,@(0,r7)
    1688:	80 7b       	mov.b	r0,@(11,r7)
    168a:	80 86       	mov.b	r0,@(6,r8)
    168c:	80 90       	mov.b	r0,@(0,r9)
    168e:	80 9b       	mov.b	r0,@(11,r9)
    1690:	80 a6       	mov.b	r0,@(6,r10)
    1692:	80 b1       	mov.b	r0,@(1,r11)
    1694:	80 bc       	mov.b	r0,@(12,r11)
    1696:	80 c7       	mov.b	r0,@(7,r12)
    1698:	80 d2       	mov.b	r0,@(2,r13)
    169a:	80 dd       	mov.b	r0,@(13,r13)
    169c:	80 e7       	mov.b	r0,@(7,r14)
    169e:	80 f2       	mov.b	r0,@(2,r15)
    16a0:	80 fd       	mov.b	r0,@(13,r15)
    16a2:	81 08       	mov.w	r0,@(16,r0)
    16a4:	81 13       	mov.w	r0,@(6,r1)
    16a6:	81 1e       	mov.w	r0,@(28,r1)
    16a8:	81 29       	mov.w	r0,@(18,r2)
    16aa:	81 33       	mov.w	r0,@(6,r3)
    16ac:	81 3e       	mov.w	r0,@(28,r3)
    16ae:	81 49       	mov.w	r0,@(18,r4)
    16b0:	81 54       	mov.w	r0,@(8,r5)
    16b2:	81 5f       	mov.w	r0,@(30,r5)
    16b4:	81 6a       	mov.w	r0,@(20,r6)
    16b6:	81 74       	mov.w	r0,@(8,r7)
    16b8:	81 7f       	mov.w	r0,@(30,r7)
    16ba:	81 8a       	mov.w	r0,@(20,r8)
    16bc:	81 95       	mov.w	r0,@(10,r9)
    16be:	81 a0       	mov.w	r0,@(0,r10)
    16c0:	81 ab       	mov.w	r0,@(22,r10)
    16c2:	81 b5       	mov.w	r0,@(10,r11)
    16c4:	81 c0       	mov.w	r0,@(0,r12)
    16c6:	81 cb       	mov.w	r0,@(22,r12)
    16c8:	81 d6       	mov.w	r0,@(12,r13)
    16ca:	81 e1       	mov.w	r0,@(2,r14)
    16cc:	81 ec       	mov.w	r0,@(24,r14)
    16ce:	81 f6       	mov.w	r0,@(12,r15)
    16d0:	82 01       	.word 0x8201
    16d2:	82 0c       	.word 0x820c
    16d4:	82 17       	.word 0x8217
    16d6:	82 22       	.word 0x8222
    16d8:	82 2d       	.word 0x822d
    16da:	82 37       	.word 0x8237
    16dc:	82 42       	.word 0x8242
    16de:	82 4d       	.word 0x824d
    16e0:	82 58       	.word 0x8258
    16e2:	82 63       	.word 0x8263
    16e4:	82 6d       	.word 0x826d
    16e6:	82 78       	.word 0x8278
    16e8:	82 83       	.word 0x8283
    16ea:	82 8e       	.word 0x828e
    16ec:	82 99       	.word 0x8299
    16ee:	82 a4       	.word 0x82a4
    16f0:	82 ae       	.word 0x82ae
    16f2:	82 b9       	.word 0x82b9
    16f4:	82 c4       	.word 0x82c4
    16f6:	82 cf       	.word 0x82cf
    16f8:	82 da       	.word 0x82da
    16fa:	82 e4       	.word 0x82e4
    16fc:	82 ef       	.word 0x82ef
    16fe:	82 fa       	.word 0x82fa
    1700:	83 05       	.word 0x8305
    1702:	83 10       	.word 0x8310
    1704:	83 1a       	.word 0x831a
    1706:	83 25       	.word 0x8325
    1708:	83 30       	.word 0x8330
    170a:	83 3b       	.word 0x833b
    170c:	83 45       	.word 0x8345
    170e:	83 50       	.word 0x8350
    1710:	83 5b       	.word 0x835b
    1712:	83 66       	.word 0x8366
    1714:	83 71       	.word 0x8371
    1716:	83 7b       	.word 0x837b
    1718:	83 86       	.word 0x8386
    171a:	83 91       	.word 0x8391
    171c:	83 9c       	.word 0x839c
    171e:	83 a7       	.word 0x83a7
    1720:	83 b1       	.word 0x83b1
    1722:	83 bc       	.word 0x83bc
    1724:	83 c7       	.word 0x83c7
    1726:	83 d2       	.word 0x83d2
    1728:	83 dc       	.word 0x83dc
    172a:	83 e7       	.word 0x83e7
    172c:	83 f2       	.word 0x83f2
    172e:	83 fd       	.word 0x83fd
    1730:	84 07       	mov.b	@(7,r0),r0
    1732:	84 12       	mov.b	@(2,r1),r0
    1734:	84 1d       	mov.b	@(13,r1),r0
    1736:	84 28       	mov.b	@(8,r2),r0
    1738:	84 33       	mov.b	@(3,r3),r0
    173a:	84 3d       	mov.b	@(13,r3),r0
    173c:	84 48       	mov.b	@(8,r4),r0
    173e:	84 53       	mov.b	@(3,r5),r0
    1740:	84 5e       	mov.b	@(14,r5),r0
    1742:	84 68       	mov.b	@(8,r6),r0
    1744:	84 73       	mov.b	@(3,r7),r0
    1746:	84 7e       	mov.b	@(14,r7),r0
    1748:	84 89       	mov.b	@(9,r8),r0
    174a:	84 93       	mov.b	@(3,r9),r0
    174c:	84 9e       	mov.b	@(14,r9),r0
    174e:	84 a9       	mov.b	@(9,r10),r0
    1750:	84 b4       	mov.b	@(4,r11),r0
    1752:	84 be       	mov.b	@(14,r11),r0
    1754:	84 c9       	mov.b	@(9,r12),r0
    1756:	84 d4       	mov.b	@(4,r13),r0
    1758:	84 df       	mov.b	@(15,r13),r0
    175a:	84 e9       	mov.b	@(9,r14),r0
    175c:	84 f4       	mov.b	@(4,r15),r0
    175e:	84 ff       	mov.b	@(15,r15),r0
    1760:	85 09       	mov.w	@(18,r0),r0
    1762:	85 14       	mov.w	@(8,r1),r0
    1764:	85 1f       	mov.w	@(30,r1),r0
    1766:	85 2a       	mov.w	@(20,r2),r0
    1768:	85 34       	mov.w	@(8,r3),r0
    176a:	85 3f       	mov.w	@(30,r3),r0
    176c:	85 4a       	mov.w	@(20,r4),r0
    176e:	85 55       	mov.w	@(10,r5),r0
    1770:	85 5f       	mov.w	@(30,r5),r0
    1772:	85 6a       	mov.w	@(20,r6),r0
    1774:	85 75       	mov.w	@(10,r7),r0
    1776:	85 80       	mov.w	@(0,r8),r0
    1778:	85 8a       	mov.w	@(20,r8),r0
    177a:	85 95       	mov.w	@(10,r9),r0
    177c:	85 a0       	mov.w	@(0,r10),r0
    177e:	85 aa       	mov.w	@(20,r10),r0
    1780:	85 b5       	mov.w	@(10,r11),r0
    1782:	85 c0       	mov.w	@(0,r12),r0
    1784:	85 cb       	mov.w	@(22,r12),r0
    1786:	85 d5       	mov.w	@(10,r13),r0
    1788:	85 e0       	mov.w	@(0,r14),r0
    178a:	85 eb       	mov.w	@(22,r14),r0
    178c:	85 f5       	mov.w	@(10,r15),r0
    178e:	86 00       	.word 0x8600
    1790:	86 0b       	.word 0x860b
    1792:	86 16       	.word 0x8616
    1794:	86 20       	.word 0x8620
    1796:	86 2b       	.word 0x862b
    1798:	86 36       	.word 0x8636
    179a:	86 40       	.word 0x8640
    179c:	86 4b       	.word 0x864b
    179e:	86 56       	.word 0x8656
    17a0:	86 60       	.word 0x8660
    17a2:	86 6b       	.word 0x866b
    17a4:	86 76       	.word 0x8676
    17a6:	86 80       	.word 0x8680
    17a8:	86 8b       	.word 0x868b
    17aa:	86 96       	.word 0x8696
    17ac:	86 a1       	.word 0x86a1
    17ae:	86 ab       	.word 0x86ab
    17b0:	86 b6       	.word 0x86b6
    17b2:	86 c1       	.word 0x86c1
    17b4:	86 cb       	.word 0x86cb
    17b6:	86 d6       	.word 0x86d6
    17b8:	86 e1       	.word 0x86e1
    17ba:	86 eb       	.word 0x86eb
    17bc:	86 f6       	.word 0x86f6
    17be:	87 01       	.word 0x8701
    17c0:	87 0b       	.word 0x870b
    17c2:	87 16       	.word 0x8716
    17c4:	87 21       	.word 0x8721
    17c6:	87 2b       	.word 0x872b
    17c8:	87 36       	.word 0x8736
    17ca:	87 41       	.word 0x8741
    17cc:	87 4b       	.word 0x874b
    17ce:	87 56       	.word 0x8756
    17d0:	87 61       	.word 0x8761
    17d2:	87 6b       	.word 0x876b
    17d4:	87 76       	.word 0x8776
    17d6:	87 81       	.word 0x8781
    17d8:	87 8b       	.word 0x878b
    17da:	87 96       	.word 0x8796
    17dc:	87 a1       	.word 0x87a1
    17de:	87 ab       	.word 0x87ab
    17e0:	87 b6       	.word 0x87b6
    17e2:	87 c1       	.word 0x87c1
    17e4:	87 cb       	.word 0x87cb
    17e6:	87 d6       	.word 0x87d6
    17e8:	87 e1       	.word 0x87e1
    17ea:	87 eb       	.word 0x87eb
    17ec:	87 f6       	.word 0x87f6
    17ee:	88 01       	cmp/eq	#1,r0
    17f0:	88 0b       	cmp/eq	#11,r0
    17f2:	88 16       	cmp/eq	#22,r0
    17f4:	88 21       	cmp/eq	#33,r0
    17f6:	88 2b       	cmp/eq	#43,r0
    17f8:	88 36       	cmp/eq	#54,r0
    17fa:	88 40       	cmp/eq	#64,r0
    17fc:	88 4b       	cmp/eq	#75,r0
    17fe:	88 56       	cmp/eq	#86,r0
    1800:	88 60       	cmp/eq	#96,r0
    1802:	88 6b       	cmp/eq	#107,r0
    1804:	88 76       	cmp/eq	#118,r0
    1806:	88 80       	cmp/eq	#-128,r0
    1808:	88 8b       	cmp/eq	#-117,r0
    180a:	88 96       	cmp/eq	#-106,r0
    180c:	88 a0       	cmp/eq	#-96,r0
    180e:	88 ab       	cmp/eq	#-85,r0
    1810:	88 b5       	cmp/eq	#-75,r0
    1812:	88 c0       	cmp/eq	#-64,r0
    1814:	88 cb       	cmp/eq	#-53,r0
    1816:	88 d5       	cmp/eq	#-43,r0
    1818:	88 e0       	cmp/eq	#-32,r0
    181a:	88 ea       	cmp/eq	#-22,r0
    181c:	88 f5       	cmp/eq	#-11,r0
    181e:	89 00       	bt	1822 <_sin_tbl+0x1706>
    1820:	89 0a       	bt	1838 <_sin_tbl+0x171c>
    1822:	89 15       	bt	1850 <_sin_tbl+0x1734>
    1824:	89 20       	bt	1868 <_sin_tbl+0x174c>
    1826:	89 2a       	bt	187e <_sin_tbl+0x1762>
    1828:	89 35       	bt	1896 <_sin_tbl+0x177a>
    182a:	89 3f       	bt	18ac <_sin_tbl+0x1790>
    182c:	89 4a       	bt	18c4 <_sin_tbl+0x17a8>
    182e:	89 55       	bt	18dc <_sin_tbl+0x17c0>
    1830:	89 5f       	bt	18f2 <_sin_tbl+0x17d6>
    1832:	89 6a       	bt	190a <_sin_tbl+0x17ee>
    1834:	89 74       	bt	1920 <_sin_tbl+0x1804>
    1836:	89 7f       	bt	1938 <_sin_tbl+0x181c>
    1838:	89 8a       	bt	1750 <_sin_tbl+0x1634>
    183a:	89 94       	bt	1766 <_sin_tbl+0x164a>
    183c:	89 9f       	bt	177e <_sin_tbl+0x1662>
    183e:	89 a9       	bt	1794 <_sin_tbl+0x1678>
    1840:	89 b4       	bt	17ac <_sin_tbl+0x1690>
    1842:	89 bf       	bt	17c4 <_sin_tbl+0x16a8>
    1844:	89 c9       	bt	17da <_sin_tbl+0x16be>
    1846:	89 d4       	bt	17f2 <_sin_tbl+0x16d6>
    1848:	89 de       	bt	1808 <_sin_tbl+0x16ec>
    184a:	89 e9       	bt	1820 <_sin_tbl+0x1704>
    184c:	89 f4       	bt	1838 <_sin_tbl+0x171c>
    184e:	89 fe       	bt	184e <_sin_tbl+0x1732>
    1850:	8a 09       	.word 0x8a09
    1852:	8a 13       	.word 0x8a13
    1854:	8a 1e       	.word 0x8a1e
    1856:	8a 28       	.word 0x8a28
    1858:	8a 33       	.word 0x8a33
    185a:	8a 3e       	.word 0x8a3e
    185c:	8a 48       	.word 0x8a48
    185e:	8a 53       	.word 0x8a53
    1860:	8a 5d       	.word 0x8a5d
    1862:	8a 68       	.word 0x8a68
    1864:	8a 72       	.word 0x8a72
    1866:	8a 7d       	.word 0x8a7d
    1868:	8a 88       	.word 0x8a88
    186a:	8a 92       	.word 0x8a92
    186c:	8a 9d       	.word 0x8a9d
    186e:	8a a7       	.word 0x8aa7
    1870:	8a b2       	.word 0x8ab2
    1872:	8a bc       	.word 0x8abc
    1874:	8a c7       	.word 0x8ac7
    1876:	8a d2       	.word 0x8ad2
    1878:	8a dc       	.word 0x8adc
    187a:	8a e7       	.word 0x8ae7
    187c:	8a f1       	.word 0x8af1
    187e:	8a fc       	.word 0x8afc
    1880:	8b 06       	bf	1890 <_sin_tbl+0x1774>
    1882:	8b 11       	bf	18a8 <_sin_tbl+0x178c>
    1884:	8b 1b       	bf	18be <_sin_tbl+0x17a2>
    1886:	8b 26       	bf	18d6 <_sin_tbl+0x17ba>
    1888:	8b 31       	bf	18ee <_sin_tbl+0x17d2>
    188a:	8b 3b       	bf	1904 <_sin_tbl+0x17e8>
    188c:	8b 46       	bf	191c <_sin_tbl+0x1800>
    188e:	8b 50       	bf	1932 <_sin_tbl+0x1816>
    1890:	8b 5b       	bf	194a <_sin_tbl+0x182e>
    1892:	8b 65       	bf	1960 <_sin_tbl+0x1844>
    1894:	8b 70       	bf	1978 <_sin_tbl+0x185c>
    1896:	8b 7a       	bf	198e <_sin_tbl+0x1872>
    1898:	8b 85       	bf	17a6 <_sin_tbl+0x168a>
    189a:	8b 8f       	bf	17bc <_sin_tbl+0x16a0>
    189c:	8b 9a       	bf	17d4 <_sin_tbl+0x16b8>
    189e:	8b a4       	bf	17ea <_sin_tbl+0x16ce>
    18a0:	8b af       	bf	1802 <_sin_tbl+0x16e6>
    18a2:	8b ba       	bf	181a <_sin_tbl+0x16fe>
    18a4:	8b c4       	bf	1830 <_sin_tbl+0x1714>
    18a6:	8b cf       	bf	1848 <_sin_tbl+0x172c>
    18a8:	8b d9       	bf	185e <_sin_tbl+0x1742>
    18aa:	8b e4       	bf	1876 <_sin_tbl+0x175a>
    18ac:	8b ee       	bf	188c <_sin_tbl+0x1770>
    18ae:	8b f9       	bf	18a4 <_sin_tbl+0x1788>
    18b0:	8c 03       	.word 0x8c03
    18b2:	8c 0e       	.word 0x8c0e
    18b4:	8c 18       	.word 0x8c18
    18b6:	8c 23       	.word 0x8c23
    18b8:	8c 2d       	.word 0x8c2d
    18ba:	8c 38       	.word 0x8c38
    18bc:	8c 42       	.word 0x8c42
    18be:	8c 4d       	.word 0x8c4d
    18c0:	8c 57       	.word 0x8c57
    18c2:	8c 62       	.word 0x8c62
    18c4:	8c 6c       	.word 0x8c6c
    18c6:	8c 77       	.word 0x8c77
    18c8:	8c 81       	.word 0x8c81
    18ca:	8c 8c       	.word 0x8c8c
    18cc:	8c 96       	.word 0x8c96
    18ce:	8c a1       	.word 0x8ca1
    18d0:	8c ab       	.word 0x8cab
    18d2:	8c b6       	.word 0x8cb6
    18d4:	8c c0       	.word 0x8cc0
    18d6:	8c cb       	.word 0x8ccb
    18d8:	8c d5       	.word 0x8cd5
    18da:	8c e0       	.word 0x8ce0
    18dc:	8c ea       	.word 0x8cea
    18de:	8c f5       	.word 0x8cf5
    18e0:	8c ff       	.word 0x8cff
    18e2:	8d 0a       	bt.s	18fa <_sin_tbl+0x17de>
    18e4:	8d 14       	bt.s	1910 <_sin_tbl+0x17f4>
    18e6:	8d 1f       	bt.s	1928 <_sin_tbl+0x180c>
    18e8:	8d 29       	bt.s	193e <_sin_tbl+0x1822>
    18ea:	8d 34       	bt.s	1956 <_sin_tbl+0x183a>
    18ec:	8d 3e       	bt.s	196c <_sin_tbl+0x1850>
    18ee:	8d 49       	bt.s	1984 <_sin_tbl+0x1868>
    18f0:	8d 53       	bt.s	199a <_sin_tbl+0x187e>
    18f2:	8d 5e       	bt.s	19b2 <_sin_tbl+0x1896>
    18f4:	8d 68       	bt.s	19c8 <_sin_tbl+0x18ac>
    18f6:	8d 73       	bt.s	19e0 <_sin_tbl+0x18c4>
    18f8:	8d 7d       	bt.s	19f6 <_sin_tbl+0x18da>
    18fa:	8d 88       	bt.s	180e <_sin_tbl+0x16f2>
    18fc:	8d 92       	bt.s	1824 <_sin_tbl+0x1708>
    18fe:	8d 9c       	bt.s	183a <_sin_tbl+0x171e>
    1900:	8d a7       	bt.s	1852 <_sin_tbl+0x1736>
    1902:	8d b1       	bt.s	1868 <_sin_tbl+0x174c>
    1904:	8d bc       	bt.s	1880 <_sin_tbl+0x1764>
    1906:	8d c6       	bt.s	1896 <_sin_tbl+0x177a>
    1908:	8d d1       	bt.s	18ae <_sin_tbl+0x1792>
    190a:	8d db       	bt.s	18c4 <_sin_tbl+0x17a8>
    190c:	8d e6       	bt.s	18dc <_sin_tbl+0x17c0>
    190e:	8d f0       	bt.s	18f2 <_sin_tbl+0x17d6>
    1910:	8d fb       	bt.s	190a <_sin_tbl+0x17ee>
    1912:	8e 05       	.word 0x8e05
    1914:	8e 10       	.word 0x8e10
    1916:	8e 1a       	.word 0x8e1a
    1918:	8e 24       	.word 0x8e24
    191a:	8e 2f       	.word 0x8e2f
    191c:	8e 39       	.word 0x8e39
    191e:	8e 44       	.word 0x8e44
    1920:	8e 4e       	.word 0x8e4e
    1922:	8e 59       	.word 0x8e59
    1924:	8e 63       	.word 0x8e63
    1926:	8e 6e       	.word 0x8e6e
    1928:	8e 78       	.word 0x8e78
    192a:	8e 82       	.word 0x8e82
    192c:	8e 8d       	.word 0x8e8d
    192e:	8e 97       	.word 0x8e97
    1930:	8e a2       	.word 0x8ea2
    1932:	8e ac       	.word 0x8eac
    1934:	8e b7       	.word 0x8eb7
    1936:	8e c1       	.word 0x8ec1
    1938:	8e cb       	.word 0x8ecb
    193a:	8e d6       	.word 0x8ed6
    193c:	8e e0       	.word 0x8ee0
    193e:	8e eb       	.word 0x8eeb
    1940:	8e f5       	.word 0x8ef5
    1942:	8f 00       	bf.s	1946 <_sin_tbl+0x182a>
    1944:	8f 0a       	bf.s	195c <_sin_tbl+0x1840>
    1946:	8f 14       	bf.s	1972 <_sin_tbl+0x1856>
    1948:	8f 1f       	bf.s	198a <_sin_tbl+0x186e>
    194a:	8f 29       	bf.s	19a0 <_sin_tbl+0x1884>
    194c:	8f 34       	bf.s	19b8 <_sin_tbl+0x189c>
    194e:	8f 3e       	bf.s	19ce <_sin_tbl+0x18b2>
    1950:	8f 49       	bf.s	19e6 <_sin_tbl+0x18ca>
    1952:	8f 53       	bf.s	19fc <_sin_tbl+0x18e0>
    1954:	8f 5d       	bf.s	1a12 <_sin_tbl+0x18f6>
    1956:	8f 68       	bf.s	1a2a <_sin_tbl+0x190e>
    1958:	8f 72       	bf.s	1a40 <_sin_tbl+0x1924>
    195a:	8f 7d       	bf.s	1a58 <_sin_tbl+0x193c>
    195c:	8f 87       	bf.s	186e <_sin_tbl+0x1752>
    195e:	8f 91       	bf.s	1884 <_sin_tbl+0x1768>
    1960:	8f 9c       	bf.s	189c <_sin_tbl+0x1780>
    1962:	8f a6       	bf.s	18b2 <_sin_tbl+0x1796>
    1964:	8f b1       	bf.s	18ca <_sin_tbl+0x17ae>
    1966:	8f bb       	bf.s	18e0 <_sin_tbl+0x17c4>
    1968:	8f c5       	bf.s	18f6 <_sin_tbl+0x17da>
    196a:	8f d0       	bf.s	190e <_sin_tbl+0x17f2>
    196c:	8f da       	bf.s	1924 <_sin_tbl+0x1808>
    196e:	8f e5       	bf.s	193c <_sin_tbl+0x1820>
    1970:	8f ef       	bf.s	1952 <_sin_tbl+0x1836>
    1972:	8f f9       	bf.s	1968 <_sin_tbl+0x184c>
    1974:	90 04       	mov.w	1980 <_sin_tbl+0x1864>,r0	! 9042
    1976:	90 0e       	mov.w	1996 <_sin_tbl+0x187a>,r0	! 90b4
    1978:	90 19       	mov.w	19ae <_sin_tbl+0x1892>,r0	! 9131
    197a:	90 23       	mov.w	19c4 <_sin_tbl+0x18a8>,r0	! 91a2
    197c:	90 2d       	mov.w	19da <_sin_tbl+0x18be>,r0	! 9214
    197e:	90 38       	mov.w	19f2 <_sin_tbl+0x18d6>,r0	! 9290
    1980:	90 42       	mov.w	1a08 <_sin_tbl+0x18ec>,r0	! 9301
    1982:	90 4c       	mov.w	1a1e <_sin_tbl+0x1902>,r0	! 9372
    1984:	90 57       	mov.w	1a36 <_sin_tbl+0x191a>,r0	! 93ed
    1986:	90 61       	mov.w	1a4c <_sin_tbl+0x1930>,r0	! 945e
    1988:	90 6c       	mov.w	1a64 <_sin_tbl+0x1948>,r0	! 94d9
    198a:	90 76       	mov.w	1a7a <_sin_tbl+0x195e>,r0	! 9549
    198c:	90 80       	mov.w	1a90 <_sin_tbl+0x1974>,r0	! 95b9
    198e:	90 8b       	mov.w	1aa8 <_sin_tbl+0x198c>,r0	! 9633
    1990:	90 95       	mov.w	1abe <_sin_tbl+0x19a2>,r0	! 96a3
    1992:	90 9f       	mov.w	1ad4 <_sin_tbl+0x19b8>,r0	! 9713
    1994:	90 aa       	mov.w	1aec <_sin_tbl+0x19d0>,r0	! 978d
    1996:	90 b4       	mov.w	1b02 <_sin_tbl+0x19e6>,r0	! 97fc
    1998:	90 bf       	mov.w	1b1a <_sin_tbl+0x19fe>,r0	! 9875
    199a:	90 c9       	mov.w	1b30 <_sin_tbl+0x1a14>,r0	! 98e4
    199c:	90 d3       	mov.w	1b46 <_sin_tbl+0x1a2a>,r0	! 9953
    199e:	90 de       	mov.w	1b5e <_sin_tbl+0x1a42>,r0	! 99cc
    19a0:	90 e8       	mov.w	1b74 <_sin_tbl+0x1a58>,r0	! 9a3a
    19a2:	90 f2       	mov.w	1b8a <_sin_tbl+0x1a6e>,r0	! 9aa8
    19a4:	90 fd       	mov.w	1ba2 <_sin_tbl+0x1a86>,r0	! 9b20
    19a6:	91 07       	mov.w	19b8 <_sin_tbl+0x189c>,r1	! 9164
    19a8:	91 11       	mov.w	19ce <_sin_tbl+0x18b2>,r1	! 91d6
    19aa:	91 1c       	mov.w	19e6 <_sin_tbl+0x18ca>,r1	! 9252
    19ac:	91 26       	mov.w	19fc <_sin_tbl+0x18e0>,r1	! 92c3
    19ae:	91 31       	mov.w	1a14 <_sin_tbl+0x18f8>,r1	! 933f
    19b0:	91 3b       	mov.w	1a2a <_sin_tbl+0x190e>,r1	! 93b0
    19b2:	91 45       	mov.w	1a40 <_sin_tbl+0x1924>,r1	! 9420
    19b4:	91 50       	mov.w	1a58 <_sin_tbl+0x193c>,r1	! 949b
    19b6:	91 5a       	mov.w	1a6e <_sin_tbl+0x1952>,r1	! 950c
    19b8:	91 64       	mov.w	1a84 <_sin_tbl+0x1968>,r1	! 957c
    19ba:	91 6f       	mov.w	1a9c <_sin_tbl+0x1980>,r1	! 95f6
    19bc:	91 79       	mov.w	1ab2 <_sin_tbl+0x1996>,r1	! 9666
    19be:	91 83       	mov.w	1ac8 <_sin_tbl+0x19ac>,r1	! 96d6
    19c0:	91 8e       	mov.w	1ae0 <_sin_tbl+0x19c4>,r1	! 9750
    19c2:	91 98       	mov.w	1af6 <_sin_tbl+0x19da>,r1	! 97bf
    19c4:	91 a2       	mov.w	1b0c <_sin_tbl+0x19f0>,r1	! 982e
    19c6:	91 ad       	mov.w	1b24 <_sin_tbl+0x1a08>,r1	! 98a8
    19c8:	91 b7       	mov.w	1b3a <_sin_tbl+0x1a1e>,r1	! 9916
    19ca:	91 c1       	mov.w	1b50 <_sin_tbl+0x1a34>,r1	! 9985
    19cc:	91 cc       	mov.w	1b68 <_sin_tbl+0x1a4c>,r1	! 99fe
    19ce:	91 d6       	mov.w	1b7e <_sin_tbl+0x1a62>,r1	! 9a6c
    19d0:	91 e0       	mov.w	1b94 <_sin_tbl+0x1a78>,r1	! 9ada
    19d2:	91 eb       	mov.w	1bac <_sin_tbl+0x1a90>,r1	! 9b52
    19d4:	91 f5       	mov.w	1bc2 <_sin_tbl+0x1aa6>,r1	! 9bc0
    19d6:	91 ff       	mov.w	1bd8 <_sin_tbl+0x1abc>,r1	! 9c2e
    19d8:	92 0a       	mov.w	19f0 <_sin_tbl+0x18d4>,r2	! 9285
    19da:	92 14       	mov.w	1a06 <_sin_tbl+0x18ea>,r2	! 92f7
    19dc:	92 1e       	mov.w	1a1c <_sin_tbl+0x1900>,r2	! 9368
    19de:	92 29       	mov.w	1a34 <_sin_tbl+0x1918>,r2	! 93e3
    19e0:	92 33       	mov.w	1a4a <_sin_tbl+0x192e>,r2	! 9454
    19e2:	92 3d       	mov.w	1a60 <_sin_tbl+0x1944>,r2	! 94c4
    19e4:	92 47       	mov.w	1a76 <_sin_tbl+0x195a>,r2	! 9535
    19e6:	92 52       	mov.w	1a8e <_sin_tbl+0x1972>,r2	! 95af
    19e8:	92 5c       	mov.w	1aa4 <_sin_tbl+0x1988>,r2	! 961f
    19ea:	92 66       	mov.w	1aba <_sin_tbl+0x199e>,r2	! 968f
    19ec:	92 71       	mov.w	1ad2 <_sin_tbl+0x19b6>,r2	! 9709
    19ee:	92 7b       	mov.w	1ae8 <_sin_tbl+0x19cc>,r2	! 9778
    19f0:	92 85       	mov.w	1afe <_sin_tbl+0x19e2>,r2	! 97e8
    19f2:	92 90       	mov.w	1b16 <_sin_tbl+0x19fa>,r2	! 9861
    19f4:	92 9a       	mov.w	1b2c <_sin_tbl+0x1a10>,r2	! 98d0
    19f6:	92 a4       	mov.w	1b42 <_sin_tbl+0x1a26>,r2	! 993f
    19f8:	92 af       	mov.w	1b5a <_sin_tbl+0x1a3e>,r2	! 99b7
    19fa:	92 b9       	mov.w	1b70 <_sin_tbl+0x1a54>,r2	! 9a26
    19fc:	92 c3       	mov.w	1b86 <_sin_tbl+0x1a6a>,r2	! 9a94
    19fe:	92 cd       	mov.w	1b9c <_sin_tbl+0x1a80>,r2	! 9b02
    1a00:	92 d8       	mov.w	1bb4 <_sin_tbl+0x1a98>,r2	! 9b7a
    1a02:	92 e2       	mov.w	1bca <_sin_tbl+0x1aae>,r2	! 9be8
    1a04:	92 ec       	mov.w	1be0 <_sin_tbl+0x1ac4>,r2	! 9c55
    1a06:	92 f7       	mov.w	1bf8 <_sin_tbl+0x1adc>,r2	! 9ccd
    1a08:	93 01       	mov.w	1a0e <_sin_tbl+0x18f2>,r3	! 9320
    1a0a:	93 0b       	mov.w	1a24 <_sin_tbl+0x1908>,r3	! 9391
    1a0c:	93 15       	mov.w	1a3a <_sin_tbl+0x191e>,r3	! 9402
    1a0e:	93 20       	mov.w	1a52 <_sin_tbl+0x1936>,r3	! 947d
    1a10:	93 2a       	mov.w	1a68 <_sin_tbl+0x194c>,r3	! 94ed
    1a12:	93 34       	mov.w	1a7e <_sin_tbl+0x1962>,r3	! 955d
    1a14:	93 3f       	mov.w	1a96 <_sin_tbl+0x197a>,r3	! 95d8
    1a16:	93 49       	mov.w	1aac <_sin_tbl+0x1990>,r3	! 9648
    1a18:	93 53       	mov.w	1ac2 <_sin_tbl+0x19a6>,r3	! 96b8
    1a1a:	93 5d       	mov.w	1ad8 <_sin_tbl+0x19bc>,r3	! 9727
    1a1c:	93 68       	mov.w	1af0 <_sin_tbl+0x19d4>,r3	! 97a1
    1a1e:	93 72       	mov.w	1b06 <_sin_tbl+0x19ea>,r3	! 9810
    1a20:	93 7c       	mov.w	1b1c <_sin_tbl+0x1a00>,r3	! 987f
    1a22:	93 86       	mov.w	1b32 <_sin_tbl+0x1a16>,r3	! 98ee
    1a24:	93 91       	mov.w	1b4a <_sin_tbl+0x1a2e>,r3	! 9967
    1a26:	93 9b       	mov.w	1b60 <_sin_tbl+0x1a44>,r3	! 99d6
    1a28:	93 a5       	mov.w	1b76 <_sin_tbl+0x1a5a>,r3	! 9a44
    1a2a:	93 b0       	mov.w	1b8e <_sin_tbl+0x1a72>,r3	! 9abc
    1a2c:	93 ba       	mov.w	1ba4 <_sin_tbl+0x1a88>,r3	! 9b2a
    1a2e:	93 c4       	mov.w	1bba <_sin_tbl+0x1a9e>,r3	! 9b98
    1a30:	93 ce       	mov.w	1bd0 <_sin_tbl+0x1ab4>,r3	! 9c06
    1a32:	93 d9       	mov.w	1be8 <_sin_tbl+0x1acc>,r3	! 9c7d
    1a34:	93 e3       	mov.w	1bfe <_sin_tbl+0x1ae2>,r3	! 9ceb
    1a36:	93 ed       	mov.w	1c14 <_sin_tbl+0x1af8>,r3	! 9d58
    1a38:	93 f7       	mov.w	1c2a <_sin_tbl+0x1b0e>,r3	! 9dc5
    1a3a:	94 02       	mov.w	1a42 <_sin_tbl+0x1926>,r4	! 942b
    1a3c:	94 0c       	mov.w	1a58 <_sin_tbl+0x193c>,r4	! 949b
    1a3e:	94 16       	mov.w	1a6e <_sin_tbl+0x1952>,r4	! 950c
    1a40:	94 20       	mov.w	1a84 <_sin_tbl+0x1968>,r4	! 957c
    1a42:	94 2b       	mov.w	1a9c <_sin_tbl+0x1980>,r4	! 95f6
    1a44:	94 35       	mov.w	1ab2 <_sin_tbl+0x1996>,r4	! 9666
    1a46:	94 3f       	mov.w	1ac8 <_sin_tbl+0x19ac>,r4	! 96d6
    1a48:	94 49       	mov.w	1ade <_sin_tbl+0x19c2>,r4	! 9746
    1a4a:	94 54       	mov.w	1af6 <_sin_tbl+0x19da>,r4	! 97bf
    1a4c:	94 5e       	mov.w	1b0c <_sin_tbl+0x19f0>,r4	! 982e
    1a4e:	94 68       	mov.w	1b22 <_sin_tbl+0x1a06>,r4	! 989e
    1a50:	94 72       	mov.w	1b38 <_sin_tbl+0x1a1c>,r4	! 990c
    1a52:	94 7d       	mov.w	1b50 <_sin_tbl+0x1a34>,r4	! 9985
    1a54:	94 87       	mov.w	1b66 <_sin_tbl+0x1a4a>,r4	! 99f4
    1a56:	94 91       	mov.w	1b7c <_sin_tbl+0x1a60>,r4	! 9a62
    1a58:	94 9b       	mov.w	1b92 <_sin_tbl+0x1a76>,r4	! 9ad0
    1a5a:	94 a5       	mov.w	1ba8 <_sin_tbl+0x1a8c>,r4	! 9b3e
    1a5c:	94 b0       	mov.w	1bc0 <_sin_tbl+0x1aa4>,r4	! 9bb6
    1a5e:	94 ba       	mov.w	1bd6 <_sin_tbl+0x1aba>,r4	! 9c24
    1a60:	94 c4       	mov.w	1bec <_sin_tbl+0x1ad0>,r4	! 9c91
    1a62:	94 ce       	mov.w	1c02 <_sin_tbl+0x1ae6>,r4	! 9cfe
    1a64:	94 d9       	mov.w	1c1a <_sin_tbl+0x1afe>,r4	! 9d75
    1a66:	94 e3       	mov.w	1c30 <_sin_tbl+0x1b14>,r4	! 9de2
    1a68:	94 ed       	mov.w	1c46 <_sin_tbl+0x1b2a>,r4	! 9e4f
    1a6a:	94 f7       	mov.w	1c5c <_sin_tbl+0x1b40>,r4	! 9ebc
    1a6c:	95 02       	mov.w	1a74 <_sin_tbl+0x1958>,r5	! 952a
    1a6e:	95 0c       	mov.w	1a8a <_sin_tbl+0x196e>,r5	! 959b
    1a70:	95 16       	mov.w	1aa0 <_sin_tbl+0x1984>,r5	! 960b
    1a72:	95 20       	mov.w	1ab6 <_sin_tbl+0x199a>,r5	! 967b
    1a74:	95 2a       	mov.w	1acc <_sin_tbl+0x19b0>,r5	! 96ea
    1a76:	95 35       	mov.w	1ae4 <_sin_tbl+0x19c8>,r5	! 9764
    1a78:	95 3f       	mov.w	1afa <_sin_tbl+0x19de>,r5	! 97d3
    1a7a:	95 49       	mov.w	1b10 <_sin_tbl+0x19f4>,r5	! 9843
    1a7c:	95 53       	mov.w	1b26 <_sin_tbl+0x1a0a>,r5	! 98b2
    1a7e:	95 5d       	mov.w	1b3c <_sin_tbl+0x1a20>,r5	! 9921
    1a80:	95 68       	mov.w	1b54 <_sin_tbl+0x1a38>,r5	! 9999
    1a82:	95 72       	mov.w	1b6a <_sin_tbl+0x1a4e>,r5	! 9a08
    1a84:	95 7c       	mov.w	1b80 <_sin_tbl+0x1a64>,r5	! 9a76
    1a86:	95 86       	mov.w	1b96 <_sin_tbl+0x1a7a>,r5	! 9ae4
    1a88:	95 90       	mov.w	1bac <_sin_tbl+0x1a90>,r5	! 9b52
    1a8a:	95 9b       	mov.w	1bc4 <_sin_tbl+0x1aa8>,r5	! 9bca
    1a8c:	95 a5       	mov.w	1bda <_sin_tbl+0x1abe>,r5	! 9c38
    1a8e:	95 af       	mov.w	1bf0 <_sin_tbl+0x1ad4>,r5	! 9ca5
    1a90:	95 b9       	mov.w	1c06 <_sin_tbl+0x1aea>,r5	! 9d12
    1a92:	95 c3       	mov.w	1c1c <_sin_tbl+0x1b00>,r5	! 9d7f
    1a94:	95 ce       	mov.w	1c34 <_sin_tbl+0x1b18>,r5	! 9df6
    1a96:	95 d8       	mov.w	1c4a <_sin_tbl+0x1b2e>,r5	! 9e63
    1a98:	95 e2       	mov.w	1c60 <_sin_tbl+0x1b44>,r5	! 9ecf
    1a9a:	95 ec       	mov.w	1c76 <_sin_tbl+0x1b5a>,r5	! 9f3c
    1a9c:	95 f6       	mov.w	1c8c <_sin_tbl+0x1b70>,r5	! 9fa8
    1a9e:	96 01       	mov.w	1aa4 <_sin_tbl+0x1988>,r6	! 961f
    1aa0:	96 0b       	mov.w	1aba <_sin_tbl+0x199e>,r6	! 968f
    1aa2:	96 15       	mov.w	1ad0 <_sin_tbl+0x19b4>,r6	! 96ff
    1aa4:	96 1f       	mov.w	1ae6 <_sin_tbl+0x19ca>,r6	! 976e
    1aa6:	96 29       	mov.w	1afc <_sin_tbl+0x19e0>,r6	! 97de
    1aa8:	96 33       	mov.w	1b12 <_sin_tbl+0x19f6>,r6	! 984d
    1aaa:	96 3e       	mov.w	1b2a <_sin_tbl+0x1a0e>,r6	! 98c6
    1aac:	96 48       	mov.w	1b40 <_sin_tbl+0x1a24>,r6	! 9935
    1aae:	96 52       	mov.w	1b56 <_sin_tbl+0x1a3a>,r6	! 99a3
    1ab0:	96 5c       	mov.w	1b6c <_sin_tbl+0x1a50>,r6	! 9a12
    1ab2:	96 66       	mov.w	1b82 <_sin_tbl+0x1a66>,r6	! 9a80
    1ab4:	96 70       	mov.w	1b98 <_sin_tbl+0x1a7c>,r6	! 9aee
    1ab6:	96 7b       	mov.w	1bb0 <_sin_tbl+0x1a94>,r6	! 9b66
    1ab8:	96 85       	mov.w	1bc6 <_sin_tbl+0x1aaa>,r6	! 9bd4
    1aba:	96 8f       	mov.w	1bdc <_sin_tbl+0x1ac0>,r6	! 9c42
    1abc:	96 99       	mov.w	1bf2 <_sin_tbl+0x1ad6>,r6	! 9caf
    1abe:	96 a3       	mov.w	1c08 <_sin_tbl+0x1aec>,r6	! 9d1c
    1ac0:	96 ad       	mov.w	1c1e <_sin_tbl+0x1b02>,r6	! 9d89
    1ac2:	96 b8       	mov.w	1c36 <_sin_tbl+0x1b1a>,r6	! 9e00
    1ac4:	96 c2       	mov.w	1c4c <_sin_tbl+0x1b30>,r6	! 9e6d
    1ac6:	96 cc       	mov.w	1c62 <_sin_tbl+0x1b46>,r6	! 9ed9
    1ac8:	96 d6       	mov.w	1c78 <_sin_tbl+0x1b5c>,r6	! 9f45
    1aca:	96 e0       	mov.w	1c8e <_sin_tbl+0x1b72>,r6	! 9fb2
    1acc:	96 ea       	mov.w	1ca4 <_sin_tbl+0x1b88>,r6	! a01e
    1ace:	96 f5       	mov.w	1cbc <_sin_tbl+0x1ba0>,r6	! a093
    1ad0:	96 ff       	mov.w	1cd2 <_sin_tbl+0x1bb6>,r6	! a0ff
    1ad2:	97 09       	mov.w	1ae8 <_sin_tbl+0x19cc>,r7	! 9778
    1ad4:	97 13       	mov.w	1afe <_sin_tbl+0x19e2>,r7	! 97e8
    1ad6:	97 1d       	mov.w	1b14 <_sin_tbl+0x19f8>,r7	! 9857
    1ad8:	97 27       	mov.w	1b2a <_sin_tbl+0x1a0e>,r7	! 98c6
    1ada:	97 31       	mov.w	1b40 <_sin_tbl+0x1a24>,r7	! 9935
    1adc:	97 3c       	mov.w	1b58 <_sin_tbl+0x1a3c>,r7	! 99ad
    1ade:	97 46       	mov.w	1b6e <_sin_tbl+0x1a52>,r7	! 9a1c
    1ae0:	97 50       	mov.w	1b84 <_sin_tbl+0x1a68>,r7	! 9a8a
    1ae2:	97 5a       	mov.w	1b9a <_sin_tbl+0x1a7e>,r7	! 9af8
    1ae4:	97 64       	mov.w	1bb0 <_sin_tbl+0x1a94>,r7	! 9b66
    1ae6:	97 6e       	mov.w	1bc6 <_sin_tbl+0x1aaa>,r7	! 9bd4
    1ae8:	97 78       	mov.w	1bdc <_sin_tbl+0x1ac0>,r7	! 9c42
    1aea:	97 82       	mov.w	1bf2 <_sin_tbl+0x1ad6>,r7	! 9caf
    1aec:	97 8d       	mov.w	1c0a <_sin_tbl+0x1aee>,r7	! 9d26
    1aee:	97 97       	mov.w	1c20 <_sin_tbl+0x1b04>,r7	! 9d93
    1af0:	97 a1       	mov.w	1c36 <_sin_tbl+0x1b1a>,r7	! 9e00
    1af2:	97 ab       	mov.w	1c4c <_sin_tbl+0x1b30>,r7	! 9e6d
    1af4:	97 b5       	mov.w	1c62 <_sin_tbl+0x1b46>,r7	! 9ed9
    1af6:	97 bf       	mov.w	1c78 <_sin_tbl+0x1b5c>,r7	! 9f45
    1af8:	97 c9       	mov.w	1c8e <_sin_tbl+0x1b72>,r7	! 9fb2
    1afa:	97 d3       	mov.w	1ca4 <_sin_tbl+0x1b88>,r7	! a01e
    1afc:	97 de       	mov.w	1cbc <_sin_tbl+0x1ba0>,r7	! a093
    1afe:	97 e8       	mov.w	1cd2 <_sin_tbl+0x1bb6>,r7	! a0ff
    1b00:	97 f2       	mov.w	1ce8 <_sin_tbl+0x1bcc>,r7	! a16a
    1b02:	97 fc       	mov.w	1cfe <_sin_tbl+0x1be2>,r7	! a1d5
    1b04:	98 06       	mov.w	1b14 <_sin_tbl+0x19f8>,r8	! 9857
    1b06:	98 10       	mov.w	1b2a <_sin_tbl+0x1a0e>,r8	! 98c6
    1b08:	98 1a       	mov.w	1b40 <_sin_tbl+0x1a24>,r8	! 9935
    1b0a:	98 24       	mov.w	1b56 <_sin_tbl+0x1a3a>,r8	! 99a3
    1b0c:	98 2e       	mov.w	1b6c <_sin_tbl+0x1a50>,r8	! 9a12
    1b0e:	98 39       	mov.w	1b84 <_sin_tbl+0x1a68>,r8	! 9a8a
    1b10:	98 43       	mov.w	1b9a <_sin_tbl+0x1a7e>,r8	! 9af8
    1b12:	98 4d       	mov.w	1bb0 <_sin_tbl+0x1a94>,r8	! 9b66
    1b14:	98 57       	mov.w	1bc6 <_sin_tbl+0x1aaa>,r8	! 9bd4
    1b16:	98 61       	mov.w	1bdc <_sin_tbl+0x1ac0>,r8	! 9c42
    1b18:	98 6b       	mov.w	1bf2 <_sin_tbl+0x1ad6>,r8	! 9caf
    1b1a:	98 75       	mov.w	1c08 <_sin_tbl+0x1aec>,r8	! 9d1c
    1b1c:	98 7f       	mov.w	1c1e <_sin_tbl+0x1b02>,r8	! 9d89
    1b1e:	98 89       	mov.w	1c34 <_sin_tbl+0x1b18>,r8	! 9df6
    1b20:	98 93       	mov.w	1c4a <_sin_tbl+0x1b2e>,r8	! 9e63
    1b22:	98 9e       	mov.w	1c62 <_sin_tbl+0x1b46>,r8	! 9ed9
    1b24:	98 a8       	mov.w	1c78 <_sin_tbl+0x1b5c>,r8	! 9f45
    1b26:	98 b2       	mov.w	1c8e <_sin_tbl+0x1b72>,r8	! 9fb2
    1b28:	98 bc       	mov.w	1ca4 <_sin_tbl+0x1b88>,r8	! a01e
    1b2a:	98 c6       	mov.w	1cba <_sin_tbl+0x1b9e>,r8	! a089
    1b2c:	98 d0       	mov.w	1cd0 <_sin_tbl+0x1bb4>,r8	! a0f5
    1b2e:	98 da       	mov.w	1ce6 <_sin_tbl+0x1bca>,r8	! a160
    1b30:	98 e4       	mov.w	1cfc <_sin_tbl+0x1be0>,r8	! a1cb
    1b32:	98 ee       	mov.w	1d12 <_sin_tbl+0x1bf6>,r8	! a237
    1b34:	98 f8       	mov.w	1d28 <_sin_tbl+0x1c0c>,r8	! a2a1
    1b36:	99 02       	mov.w	1b3e <_sin_tbl+0x1a22>,r9	! 992b
    1b38:	99 0c       	mov.w	1b54 <_sin_tbl+0x1a38>,r9	! 9999
    1b3a:	99 16       	mov.w	1b6a <_sin_tbl+0x1a4e>,r9	! 9a08
    1b3c:	99 21       	mov.w	1b82 <_sin_tbl+0x1a66>,r9	! 9a80
    1b3e:	99 2b       	mov.w	1b98 <_sin_tbl+0x1a7c>,r9	! 9aee
    1b40:	99 35       	mov.w	1bae <_sin_tbl+0x1a92>,r9	! 9b5c
    1b42:	99 3f       	mov.w	1bc4 <_sin_tbl+0x1aa8>,r9	! 9bca
    1b44:	99 49       	mov.w	1bda <_sin_tbl+0x1abe>,r9	! 9c38
    1b46:	99 53       	mov.w	1bf0 <_sin_tbl+0x1ad4>,r9	! 9ca5
    1b48:	99 5d       	mov.w	1c06 <_sin_tbl+0x1aea>,r9	! 9d12
    1b4a:	99 67       	mov.w	1c1c <_sin_tbl+0x1b00>,r9	! 9d7f
    1b4c:	99 71       	mov.w	1c32 <_sin_tbl+0x1b16>,r9	! 9dec
    1b4e:	99 7b       	mov.w	1c48 <_sin_tbl+0x1b2c>,r9	! 9e59
    1b50:	99 85       	mov.w	1c5e <_sin_tbl+0x1b42>,r9	! 9ec5
    1b52:	99 8f       	mov.w	1c74 <_sin_tbl+0x1b58>,r9	! 9f32
    1b54:	99 99       	mov.w	1c8a <_sin_tbl+0x1b6e>,r9	! 9f9e
    1b56:	99 a3       	mov.w	1ca0 <_sin_tbl+0x1b84>,r9	! a00a
    1b58:	99 ad       	mov.w	1cb6 <_sin_tbl+0x1b9a>,r9	! a076
    1b5a:	99 b7       	mov.w	1ccc <_sin_tbl+0x1bb0>,r9	! a0e1
    1b5c:	99 c2       	mov.w	1ce4 <_sin_tbl+0x1bc8>,r9	! a157
    1b5e:	99 cc       	mov.w	1cfa <_sin_tbl+0x1bde>,r9	! a1c2
    1b60:	99 d6       	mov.w	1d10 <_sin_tbl+0x1bf4>,r9	! a22d
    1b62:	99 e0       	mov.w	1d26 <_sin_tbl+0x1c0a>,r9	! a298
    1b64:	99 ea       	mov.w	1d3c <_sin_tbl+0x1c20>,r9	! a302
    1b66:	99 f4       	mov.w	1d52 <_sin_tbl+0x1c36>,r9	! a36d
    1b68:	99 fe       	mov.w	1d68 <_sin_tbl+0x1c4c>,r9	! a3d7
    1b6a:	9a 08       	mov.w	1b7e <_sin_tbl+0x1a62>,r10	! 9a6c
    1b6c:	9a 12       	mov.w	1b94 <_sin_tbl+0x1a78>,r10	! 9ada
    1b6e:	9a 1c       	mov.w	1baa <_sin_tbl+0x1a8e>,r10	! 9b48
    1b70:	9a 26       	mov.w	1bc0 <_sin_tbl+0x1aa4>,r10	! 9bb6
    1b72:	9a 30       	mov.w	1bd6 <_sin_tbl+0x1aba>,r10	! 9c24
    1b74:	9a 3a       	mov.w	1bec <_sin_tbl+0x1ad0>,r10	! 9c91
    1b76:	9a 44       	mov.w	1c02 <_sin_tbl+0x1ae6>,r10	! 9cfe
    1b78:	9a 4e       	mov.w	1c18 <_sin_tbl+0x1afc>,r10	! 9d6c
    1b7a:	9a 58       	mov.w	1c2e <_sin_tbl+0x1b12>,r10	! 9dd8
    1b7c:	9a 62       	mov.w	1c44 <_sin_tbl+0x1b28>,r10	! 9e45
    1b7e:	9a 6c       	mov.w	1c5a <_sin_tbl+0x1b3e>,r10	! 9eb2
    1b80:	9a 76       	mov.w	1c70 <_sin_tbl+0x1b54>,r10	! 9f1e
    1b82:	9a 80       	mov.w	1c86 <_sin_tbl+0x1b6a>,r10	! 9f8a
    1b84:	9a 8a       	mov.w	1c9c <_sin_tbl+0x1b80>,r10	! 9ff6
    1b86:	9a 94       	mov.w	1cb2 <_sin_tbl+0x1b96>,r10	! a062
    1b88:	9a 9e       	mov.w	1cc8 <_sin_tbl+0x1bac>,r10	! a0ce
    1b8a:	9a a8       	mov.w	1cde <_sin_tbl+0x1bc2>,r10	! a139
    1b8c:	9a b2       	mov.w	1cf4 <_sin_tbl+0x1bd8>,r10	! a1a5
    1b8e:	9a bc       	mov.w	1d0a <_sin_tbl+0x1bee>,r10	! a210
    1b90:	9a c6       	mov.w	1d20 <_sin_tbl+0x1c04>,r10	! a27b
    1b92:	9a d0       	mov.w	1d36 <_sin_tbl+0x1c1a>,r10	! a2e5
    1b94:	9a da       	mov.w	1d4c <_sin_tbl+0x1c30>,r10	! a350
    1b96:	9a e4       	mov.w	1d62 <_sin_tbl+0x1c46>,r10	! a3ba
    1b98:	9a ee       	mov.w	1d78 <_sin_tbl+0x1c5c>,r10	! a424
    1b9a:	9a f8       	mov.w	1d8e <_sin_tbl+0x1c72>,r10	! a48e
    1b9c:	9b 02       	mov.w	1ba4 <_sin_tbl+0x1a88>,r11	! 9b2a
    1b9e:	9b 0c       	mov.w	1bba <_sin_tbl+0x1a9e>,r11	! 9b98
    1ba0:	9b 16       	mov.w	1bd0 <_sin_tbl+0x1ab4>,r11	! 9c06
    1ba2:	9b 20       	mov.w	1be6 <_sin_tbl+0x1aca>,r11	! 9c73
    1ba4:	9b 2a       	mov.w	1bfc <_sin_tbl+0x1ae0>,r11	! 9ce1
    1ba6:	9b 34       	mov.w	1c12 <_sin_tbl+0x1af6>,r11	! 9d4e
    1ba8:	9b 3e       	mov.w	1c28 <_sin_tbl+0x1b0c>,r11	! 9dbb
    1baa:	9b 48       	mov.w	1c3e <_sin_tbl+0x1b22>,r11	! 9e28
    1bac:	9b 52       	mov.w	1c54 <_sin_tbl+0x1b38>,r11	! 9e94
    1bae:	9b 5c       	mov.w	1c6a <_sin_tbl+0x1b4e>,r11	! 9f01
    1bb0:	9b 66       	mov.w	1c80 <_sin_tbl+0x1b64>,r11	! 9f6d
    1bb2:	9b 70       	mov.w	1c96 <_sin_tbl+0x1b7a>,r11	! 9fd9
    1bb4:	9b 7a       	mov.w	1cac <_sin_tbl+0x1b90>,r11	! a045
    1bb6:	9b 84       	mov.w	1cc2 <_sin_tbl+0x1ba6>,r11	! a0b0
    1bb8:	9b 8e       	mov.w	1cd8 <_sin_tbl+0x1bbc>,r11	! a11c
    1bba:	9b 98       	mov.w	1cee <_sin_tbl+0x1bd2>,r11	! a187
    1bbc:	9b a2       	mov.w	1d04 <_sin_tbl+0x1be8>,r11	! a1f2
    1bbe:	9b ac       	mov.w	1d1a <_sin_tbl+0x1bfe>,r11	! a25d
    1bc0:	9b b6       	mov.w	1d30 <_sin_tbl+0x1c14>,r11	! a2c8
    1bc2:	9b c0       	mov.w	1d46 <_sin_tbl+0x1c2a>,r11	! a333
    1bc4:	9b ca       	mov.w	1d5c <_sin_tbl+0x1c40>,r11	! a39d
    1bc6:	9b d4       	mov.w	1d72 <_sin_tbl+0x1c56>,r11	! a407
    1bc8:	9b de       	mov.w	1d88 <_sin_tbl+0x1c6c>,r11	! a471
    1bca:	9b e8       	mov.w	1d9e <_sin_tbl+0x1c82>,r11	! a4db
    1bcc:	9b f2       	mov.w	1db4 <_sin_tbl+0x1c98>,r11	! a545
    1bce:	9b fc       	mov.w	1dca <_sin_tbl+0x1cae>,r11	! a5ae
    1bd0:	9c 06       	mov.w	1be0 <_sin_tbl+0x1ac4>,r12	! 9c55
    1bd2:	9c 10       	mov.w	1bf6 <_sin_tbl+0x1ada>,r12	! 9cc3
    1bd4:	9c 1a       	mov.w	1c0c <_sin_tbl+0x1af0>,r12	! 9d30
    1bd6:	9c 24       	mov.w	1c22 <_sin_tbl+0x1b06>,r12	! 9d9d
    1bd8:	9c 2e       	mov.w	1c38 <_sin_tbl+0x1b1c>,r12	! 9e0a
    1bda:	9c 38       	mov.w	1c4e <_sin_tbl+0x1b32>,r12	! 9e77
    1bdc:	9c 42       	mov.w	1c64 <_sin_tbl+0x1b48>,r12	! 9ee3
    1bde:	9c 4c       	mov.w	1c7a <_sin_tbl+0x1b5e>,r12	! 9f4f
    1be0:	9c 55       	mov.w	1c8e <_sin_tbl+0x1b72>,r12	! 9fb2
    1be2:	9c 5f       	mov.w	1ca4 <_sin_tbl+0x1b88>,r12	! a01e
    1be4:	9c 69       	mov.w	1cba <_sin_tbl+0x1b9e>,r12	! a089
    1be6:	9c 73       	mov.w	1cd0 <_sin_tbl+0x1bb4>,r12	! a0f5
    1be8:	9c 7d       	mov.w	1ce6 <_sin_tbl+0x1bca>,r12	! a160
    1bea:	9c 87       	mov.w	1cfc <_sin_tbl+0x1be0>,r12	! a1cb
    1bec:	9c 91       	mov.w	1d12 <_sin_tbl+0x1bf6>,r12	! a237
    1bee:	9c 9b       	mov.w	1d28 <_sin_tbl+0x1c0c>,r12	! a2a1
    1bf0:	9c a5       	mov.w	1d3e <_sin_tbl+0x1c22>,r12	! a30c
    1bf2:	9c af       	mov.w	1d54 <_sin_tbl+0x1c38>,r12	! a376
    1bf4:	9c b9       	mov.w	1d6a <_sin_tbl+0x1c4e>,r12	! a3e1
    1bf6:	9c c3       	mov.w	1d80 <_sin_tbl+0x1c64>,r12	! a44b
    1bf8:	9c cd       	mov.w	1d96 <_sin_tbl+0x1c7a>,r12	! a4b5
    1bfa:	9c d7       	mov.w	1dac <_sin_tbl+0x1c90>,r12	! a51f
    1bfc:	9c e1       	mov.w	1dc2 <_sin_tbl+0x1ca6>,r12	! a588
    1bfe:	9c eb       	mov.w	1dd8 <_sin_tbl+0x1cbc>,r12	! a5f1
    1c00:	9c f4       	mov.w	1dec <_sin_tbl+0x1cd0>,r12	! a651
    1c02:	9c fe       	mov.w	1e02 <_sin_tbl+0x1ce6>,r12	! a6ba
    1c04:	9d 08       	mov.w	1c18 <_sin_tbl+0x1afc>,r13	! 9d6c
    1c06:	9d 12       	mov.w	1c2e <_sin_tbl+0x1b12>,r13	! 9dd8
    1c08:	9d 1c       	mov.w	1c44 <_sin_tbl+0x1b28>,r13	! 9e45
    1c0a:	9d 26       	mov.w	1c5a <_sin_tbl+0x1b3e>,r13	! 9eb2
    1c0c:	9d 30       	mov.w	1c70 <_sin_tbl+0x1b54>,r13	! 9f1e
    1c0e:	9d 3a       	mov.w	1c86 <_sin_tbl+0x1b6a>,r13	! 9f8a
    1c10:	9d 44       	mov.w	1c9c <_sin_tbl+0x1b80>,r13	! 9ff6
    1c12:	9d 4e       	mov.w	1cb2 <_sin_tbl+0x1b96>,r13	! a062
    1c14:	9d 58       	mov.w	1cc8 <_sin_tbl+0x1bac>,r13	! a0ce
    1c16:	9d 62       	mov.w	1cde <_sin_tbl+0x1bc2>,r13	! a139
    1c18:	9d 6c       	mov.w	1cf4 <_sin_tbl+0x1bd8>,r13	! a1a5
    1c1a:	9d 75       	mov.w	1d08 <_sin_tbl+0x1bec>,r13	! a206
    1c1c:	9d 7f       	mov.w	1d1e <_sin_tbl+0x1c02>,r13	! a271
    1c1e:	9d 89       	mov.w	1d34 <_sin_tbl+0x1c18>,r13	! a2dc
    1c20:	9d 93       	mov.w	1d4a <_sin_tbl+0x1c2e>,r13	! a346
    1c22:	9d 9d       	mov.w	1d60 <_sin_tbl+0x1c44>,r13	! a3b0
    1c24:	9d a7       	mov.w	1d76 <_sin_tbl+0x1c5a>,r13	! a41b
    1c26:	9d b1       	mov.w	1d8c <_sin_tbl+0x1c70>,r13	! a485
    1c28:	9d bb       	mov.w	1da2 <_sin_tbl+0x1c86>,r13	! a4ee
    1c2a:	9d c5       	mov.w	1db8 <_sin_tbl+0x1c9c>,r13	! a558
    1c2c:	9d cf       	mov.w	1dce <_sin_tbl+0x1cb2>,r13	! a5c2
    1c2e:	9d d8       	mov.w	1de2 <_sin_tbl+0x1cc6>,r13	! a621
    1c30:	9d e2       	mov.w	1df8 <_sin_tbl+0x1cdc>,r13	! a68a
    1c32:	9d ec       	mov.w	1e0e <_sin_tbl+0x1cf2>,r13	! a6f3
    1c34:	9d f6       	mov.w	1e24 <_sin_tbl+0x1d08>,r13	! a75c
    1c36:	9e 00       	mov.w	1c3a <_sin_tbl+0x1b1e>,r14	! 9e14
    1c38:	9e 0a       	mov.w	1c50 <_sin_tbl+0x1b34>,r14	! 9e80
    1c3a:	9e 14       	mov.w	1c66 <_sin_tbl+0x1b4a>,r14	! 9eed
    1c3c:	9e 1e       	mov.w	1c7c <_sin_tbl+0x1b60>,r14	! 9f59
    1c3e:	9e 28       	mov.w	1c92 <_sin_tbl+0x1b76>,r14	! 9fc5
    1c40:	9e 31       	mov.w	1ca6 <_sin_tbl+0x1b8a>,r14	! a027
    1c42:	9e 3b       	mov.w	1cbc <_sin_tbl+0x1ba0>,r14	! a093
    1c44:	9e 45       	mov.w	1cd2 <_sin_tbl+0x1bb6>,r14	! a0ff
    1c46:	9e 4f       	mov.w	1ce8 <_sin_tbl+0x1bcc>,r14	! a16a
    1c48:	9e 59       	mov.w	1cfe <_sin_tbl+0x1be2>,r14	! a1d5
    1c4a:	9e 63       	mov.w	1d14 <_sin_tbl+0x1bf8>,r14	! a240
    1c4c:	9e 6d       	mov.w	1d2a <_sin_tbl+0x1c0e>,r14	! a2ab
    1c4e:	9e 77       	mov.w	1d40 <_sin_tbl+0x1c24>,r14	! a316
    1c50:	9e 80       	mov.w	1d54 <_sin_tbl+0x1c38>,r14	! a376
    1c52:	9e 8a       	mov.w	1d6a <_sin_tbl+0x1c4e>,r14	! a3e1
    1c54:	9e 94       	mov.w	1d80 <_sin_tbl+0x1c64>,r14	! a44b
    1c56:	9e 9e       	mov.w	1d96 <_sin_tbl+0x1c7a>,r14	! a4b5
    1c58:	9e a8       	mov.w	1dac <_sin_tbl+0x1c90>,r14	! a51f
    1c5a:	9e b2       	mov.w	1dc2 <_sin_tbl+0x1ca6>,r14	! a588
    1c5c:	9e bc       	mov.w	1dd8 <_sin_tbl+0x1cbc>,r14	! a5f1
    1c5e:	9e c5       	mov.w	1dec <_sin_tbl+0x1cd0>,r14	! a651
    1c60:	9e cf       	mov.w	1e02 <_sin_tbl+0x1ce6>,r14	! a6ba
    1c62:	9e d9       	mov.w	1e18 <_sin_tbl+0x1cfc>,r14	! a723
    1c64:	9e e3       	mov.w	1e2e <_sin_tbl+0x1d12>,r14	! a78b
    1c66:	9e ed       	mov.w	1e44 <_sin_tbl+0x1d28>,r14	! a7f4
    1c68:	9e f7       	mov.w	1e5a <_sin_tbl+0x1d3e>,r14	! a85c
    1c6a:	9f 01       	mov.w	1c70 <_sin_tbl+0x1b54>,r15	! 9f1e
    1c6c:	9f 0a       	mov.w	1c84 <_sin_tbl+0x1b68>,r15	! 9f80
    1c6e:	9f 14       	mov.w	1c9a <_sin_tbl+0x1b7e>,r15	! 9fec
    1c70:	9f 1e       	mov.w	1cb0 <_sin_tbl+0x1b94>,r15	! a058
    1c72:	9f 28       	mov.w	1cc6 <_sin_tbl+0x1baa>,r15	! a0c4
    1c74:	9f 32       	mov.w	1cdc <_sin_tbl+0x1bc0>,r15	! a12f
    1c76:	9f 3c       	mov.w	1cf2 <_sin_tbl+0x1bd6>,r15	! a19b
    1c78:	9f 45       	mov.w	1d06 <_sin_tbl+0x1bea>,r15	! a1fc
    1c7a:	9f 4f       	mov.w	1d1c <_sin_tbl+0x1c00>,r15	! a267
    1c7c:	9f 59       	mov.w	1d32 <_sin_tbl+0x1c16>,r15	! a2d2
    1c7e:	9f 63       	mov.w	1d48 <_sin_tbl+0x1c2c>,r15	! a33c
    1c80:	9f 6d       	mov.w	1d5e <_sin_tbl+0x1c42>,r15	! a3a7
    1c82:	9f 77       	mov.w	1d74 <_sin_tbl+0x1c58>,r15	! a411
    1c84:	9f 80       	mov.w	1d88 <_sin_tbl+0x1c6c>,r15	! a471
    1c86:	9f 8a       	mov.w	1d9e <_sin_tbl+0x1c82>,r15	! a4db
    1c88:	9f 94       	mov.w	1db4 <_sin_tbl+0x1c98>,r15	! a545
    1c8a:	9f 9e       	mov.w	1dca <_sin_tbl+0x1cae>,r15	! a5ae
    1c8c:	9f a8       	mov.w	1de0 <_sin_tbl+0x1cc4>,r15	! a618
    1c8e:	9f b2       	mov.w	1df6 <_sin_tbl+0x1cda>,r15	! a681
    1c90:	9f bb       	mov.w	1e0a <_sin_tbl+0x1cee>,r15	! a6e0
    1c92:	9f c5       	mov.w	1e20 <_sin_tbl+0x1d04>,r15	! a749
    1c94:	9f cf       	mov.w	1e36 <_sin_tbl+0x1d1a>,r15	! a7b1
    1c96:	9f d9       	mov.w	1e4c <_sin_tbl+0x1d30>,r15	! a81a
    1c98:	9f e3       	mov.w	1e62 <_sin_tbl+0x1d46>,r15	! a882
    1c9a:	9f ec       	mov.w	1e76 <_sin_tbl+0x1d5a>,r15	! a8e0
    1c9c:	9f f6       	mov.w	1e8c <_sin_tbl+0x1d70>,r15	! a948
    1c9e:	a0 00       	bra	1ca2 <_sin_tbl+0x1b86>
    1ca0:	a0 0a       	bra	1cb8 <_sin_tbl+0x1b9c>
    1ca2:	a0 14       	bra	1cce <_sin_tbl+0x1bb2>
    1ca4:	a0 1e       	bra	1ce4 <_sin_tbl+0x1bc8>
    1ca6:	a0 27       	bra	1cf8 <_sin_tbl+0x1bdc>
    1ca8:	a0 31       	bra	1d0e <_sin_tbl+0x1bf2>
    1caa:	a0 3b       	bra	1d24 <_sin_tbl+0x1c08>
    1cac:	a0 45       	bra	1d3a <_sin_tbl+0x1c1e>
    1cae:	a0 4f       	bra	1d50 <_sin_tbl+0x1c34>
    1cb0:	a0 58       	bra	1d64 <_sin_tbl+0x1c48>
    1cb2:	a0 62       	bra	1d7a <_sin_tbl+0x1c5e>
    1cb4:	a0 6c       	bra	1d90 <_sin_tbl+0x1c74>
    1cb6:	a0 76       	bra	1da6 <_sin_tbl+0x1c8a>
    1cb8:	a0 7f       	bra	1dba <_sin_tbl+0x1c9e>
    1cba:	a0 89       	bra	1dd0 <_sin_tbl+0x1cb4>
    1cbc:	a0 93       	bra	1de6 <_sin_tbl+0x1cca>
    1cbe:	a0 9d       	bra	1dfc <_sin_tbl+0x1ce0>
    1cc0:	a0 a7       	bra	1e12 <_sin_tbl+0x1cf6>
    1cc2:	a0 b0       	bra	1e26 <_sin_tbl+0x1d0a>
    1cc4:	a0 ba       	bra	1e3c <_sin_tbl+0x1d20>
    1cc6:	a0 c4       	bra	1e52 <_sin_tbl+0x1d36>
    1cc8:	a0 ce       	bra	1e68 <_sin_tbl+0x1d4c>
    1cca:	a0 d8       	bra	1e7e <_sin_tbl+0x1d62>
    1ccc:	a0 e1       	bra	1e92 <_sin_tbl+0x1d76>
    1cce:	a0 eb       	bra	1ea8 <_sin_tbl+0x1d8c>
    1cd0:	a0 f5       	bra	1ebe <_sin_tbl+0x1da2>
    1cd2:	a0 ff       	bra	1ed4 <_sin_tbl+0x1db8>
    1cd4:	a1 08       	bra	1ee8 <_sin_tbl+0x1dcc>
    1cd6:	a1 12       	bra	1efe <_sin_tbl+0x1de2>
    1cd8:	a1 1c       	bra	1f14 <_sin_tbl+0x1df8>
    1cda:	a1 26       	bra	1f2a <_sin_tbl+0x1e0e>
    1cdc:	a1 2f       	bra	1f3e <_sin_tbl+0x1e22>
    1cde:	a1 39       	bra	1f54 <_sin_tbl+0x1e38>
    1ce0:	a1 43       	bra	1f6a <_sin_tbl+0x1e4e>
    1ce2:	a1 4d       	bra	1f80 <_sin_tbl+0x1e64>
    1ce4:	a1 57       	bra	1f96 <_sin_tbl+0x1e7a>
    1ce6:	a1 60       	bra	1faa <_sin_tbl+0x1e8e>
    1ce8:	a1 6a       	bra	1fc0 <_sin_tbl+0x1ea4>
    1cea:	a1 74       	bra	1fd6 <_sin_tbl+0x1eba>
    1cec:	a1 7e       	bra	1fec <_sin_tbl+0x1ed0>
    1cee:	a1 87       	bra	2000 <_sin_tbl+0x1ee4>
    1cf0:	a1 91       	bra	2016 <_sin_tbl+0x1efa>
    1cf2:	a1 9b       	bra	202c <_sin_tbl+0x1f10>
    1cf4:	a1 a5       	bra	2042 <_sin_tbl+0x1f26>
    1cf6:	a1 ae       	bra	2056 <_sin_tbl+0x1f3a>
    1cf8:	a1 b8       	bra	206c <_sin_tbl+0x1f50>
    1cfa:	a1 c2       	bra	2082 <_sin_tbl+0x1f66>
    1cfc:	a1 cb       	bra	2096 <_sin_tbl+0x1f7a>
    1cfe:	a1 d5       	bra	20ac <_sin_tbl+0x1f90>
    1d00:	a1 df       	bra	20c2 <_sin_tbl+0x1fa6>
    1d02:	a1 e9       	bra	20d8 <_sin_tbl+0x1fbc>
    1d04:	a1 f2       	bra	20ec <_sin_tbl+0x1fd0>
    1d06:	a1 fc       	bra	2102 <_sin_tbl+0x1fe6>
    1d08:	a2 06       	bra	2118 <_sin_tbl+0x1ffc>
    1d0a:	a2 10       	bra	212e <_sin_tbl+0x2012>
    1d0c:	a2 19       	bra	2142 <_sin_tbl+0x2026>
    1d0e:	a2 23       	bra	2158 <_sin_tbl+0x203c>
    1d10:	a2 2d       	bra	216e <_sin_tbl+0x2052>
    1d12:	a2 37       	bra	2184 <_sin_tbl+0x2068>
    1d14:	a2 40       	bra	2198 <_sin_tbl+0x207c>
    1d16:	a2 4a       	bra	21ae <_sin_tbl+0x2092>
    1d18:	a2 54       	bra	21c4 <_sin_tbl+0x20a8>
    1d1a:	a2 5d       	bra	21d8 <_sin_tbl+0x20bc>
    1d1c:	a2 67       	bra	21ee <_sin_tbl+0x20d2>
    1d1e:	a2 71       	bra	2204 <_sin_tbl+0x20e8>
    1d20:	a2 7b       	bra	221a <_sin_tbl+0x20fe>
    1d22:	a2 84       	bra	222e <_sin_tbl+0x2112>
    1d24:	a2 8e       	bra	2244 <_sin_tbl+0x2128>
    1d26:	a2 98       	bra	225a <_sin_tbl+0x213e>
    1d28:	a2 a1       	bra	226e <_sin_tbl+0x2152>
    1d2a:	a2 ab       	bra	2284 <_sin_tbl+0x2168>
    1d2c:	a2 b5       	bra	229a <_sin_tbl+0x217e>
    1d2e:	a2 be       	bra	22ae <_sin_tbl+0x2192>
    1d30:	a2 c8       	bra	22c4 <_sin_tbl+0x21a8>
    1d32:	a2 d2       	bra	22da <_sin_tbl+0x21be>
    1d34:	a2 dc       	bra	22f0 <_sin_tbl+0x21d4>
    1d36:	a2 e5       	bra	2304 <_sin_tbl+0x21e8>
    1d38:	a2 ef       	bra	231a <_sin_tbl+0x21fe>
    1d3a:	a2 f9       	bra	2330 <_sin_tbl+0x2214>
    1d3c:	a3 02       	bra	2344 <_sin_tbl+0x2228>
    1d3e:	a3 0c       	bra	235a <_sin_tbl+0x223e>
    1d40:	a3 16       	bra	2370 <_sin_tbl+0x2254>
    1d42:	a3 1f       	bra	2384 <_sin_tbl+0x2268>
    1d44:	a3 29       	bra	239a <_sin_tbl+0x227e>
    1d46:	a3 33       	bra	23b0 <_sin_tbl+0x2294>
    1d48:	a3 3c       	bra	23c4 <_sin_tbl+0x22a8>
    1d4a:	a3 46       	bra	23da <_sin_tbl+0x22be>
    1d4c:	a3 50       	bra	23f0 <_sin_tbl+0x22d4>
    1d4e:	a3 59       	bra	2404 <_sin_tbl+0x22e8>
    1d50:	a3 63       	bra	241a <_sin_tbl+0x22fe>
    1d52:	a3 6d       	bra	2430 <_sin_tbl+0x2314>
    1d54:	a3 76       	bra	2444 <_sin_tbl+0x2328>
    1d56:	a3 80       	bra	245a <_sin_tbl+0x233e>
    1d58:	a3 8a       	bra	2470 <_sin_tbl+0x2354>
    1d5a:	a3 93       	bra	2484 <_sin_tbl+0x2368>
    1d5c:	a3 9d       	bra	249a <_sin_tbl+0x237e>
    1d5e:	a3 a7       	bra	24b0 <_sin_tbl+0x2394>
    1d60:	a3 b0       	bra	24c4 <_sin_tbl+0x23a8>
    1d62:	a3 ba       	bra	24da <_sin_tbl+0x23be>
    1d64:	a3 c4       	bra	24f0 <_sin_tbl+0x23d4>
    1d66:	a3 cd       	bra	2504 <_sin_tbl+0x23e8>
    1d68:	a3 d7       	bra	251a <_sin_tbl+0x23fe>
    1d6a:	a3 e1       	bra	2530 <_sin_tbl+0x2414>
    1d6c:	a3 ea       	bra	2544 <_sin_tbl+0x2428>
    1d6e:	a3 f4       	bra	255a <_sin_tbl+0x243e>
    1d70:	a3 fe       	bra	2570 <_sin_tbl+0x2454>
    1d72:	a4 07       	bra	2584 <_sin_tbl+0x2468>
    1d74:	a4 11       	bra	259a <_sin_tbl+0x247e>
    1d76:	a4 1b       	bra	25b0 <_sin_tbl+0x2494>
    1d78:	a4 24       	bra	25c4 <_sin_tbl+0x24a8>
    1d7a:	a4 2e       	bra	25da <_sin_tbl+0x24be>
    1d7c:	a4 38       	bra	25f0 <_sin_tbl+0x24d4>
    1d7e:	a4 41       	bra	2604 <_sin_tbl+0x24e8>
    1d80:	a4 4b       	bra	261a <_sin_tbl+0x24fe>
    1d82:	a4 55       	bra	2630 <_sin_tbl+0x2514>
    1d84:	a4 5e       	bra	2644 <_sin_tbl+0x2528>
    1d86:	a4 68       	bra	265a <_sin_tbl+0x253e>
    1d88:	a4 71       	bra	266e <_sin_tbl+0x2552>
    1d8a:	a4 7b       	bra	2684 <_sin_tbl+0x2568>
    1d8c:	a4 85       	bra	269a <_sin_tbl+0x257e>
    1d8e:	a4 8e       	bra	26ae <_sin_tbl+0x2592>
    1d90:	a4 98       	bra	26c4 <_sin_tbl+0x25a8>
    1d92:	a4 a2       	bra	26da <_sin_tbl+0x25be>
    1d94:	a4 ab       	bra	26ee <_sin_tbl+0x25d2>
    1d96:	a4 b5       	bra	2704 <_sin_tbl+0x25e8>
    1d98:	a4 be       	bra	2718 <_sin_tbl+0x25fc>
    1d9a:	a4 c8       	bra	272e <_sin_tbl+0x2612>
    1d9c:	a4 d2       	bra	2744 <_sin_tbl+0x2628>
    1d9e:	a4 db       	bra	2758 <_sin_tbl+0x263c>
    1da0:	a4 e5       	bra	276e <_sin_tbl+0x2652>
    1da2:	a4 ee       	bra	2782 <_sin_tbl+0x2666>
    1da4:	a4 f8       	bra	2798 <_sin_tbl+0x267c>
    1da6:	a5 02       	bra	27ae <_sin_tbl+0x2692>
    1da8:	a5 0b       	bra	27c2 <_sin_tbl+0x26a6>
    1daa:	a5 15       	bra	27d8 <_sin_tbl+0x26bc>
    1dac:	a5 1f       	bra	27ee <_sin_tbl+0x26d2>
    1dae:	a5 28       	bra	2802 <_sin_tbl+0x26e6>
    1db0:	a5 32       	bra	2818 <_sin_tbl+0x26fc>
    1db2:	a5 3b       	bra	282c <_sin_tbl+0x2710>
    1db4:	a5 45       	bra	2842 <_sin_tbl+0x2726>
    1db6:	a5 4f       	bra	2858 <_sin_tbl+0x273c>
    1db8:	a5 58       	bra	286c <_sin_tbl+0x2750>
    1dba:	a5 62       	bra	2882 <_sin_tbl+0x2766>
    1dbc:	a5 6b       	bra	2896 <_sin_tbl+0x277a>
    1dbe:	a5 75       	bra	28ac <_sin_tbl+0x2790>
    1dc0:	a5 7e       	bra	28c0 <_sin_tbl+0x27a4>
    1dc2:	a5 88       	bra	28d6 <_sin_tbl+0x27ba>
    1dc4:	a5 92       	bra	28ec <_sin_tbl+0x27d0>
    1dc6:	a5 9b       	bra	2900 <_sin_tbl+0x27e4>
    1dc8:	a5 a5       	bra	2916 <_sin_tbl+0x27fa>
    1dca:	a5 ae       	bra	292a <_sin_tbl+0x280e>
    1dcc:	a5 b8       	bra	2940 <_sin_tbl+0x2824>
    1dce:	a5 c2       	bra	2956 <_sin_tbl+0x283a>
    1dd0:	a5 cb       	bra	296a <_sin_tbl+0x284e>
    1dd2:	a5 d5       	bra	2980 <_sin_tbl+0x2864>
    1dd4:	a5 de       	bra	2994 <_sin_tbl+0x2878>
    1dd6:	a5 e8       	bra	29aa <_sin_tbl+0x288e>
    1dd8:	a5 f1       	bra	29be <_sin_tbl+0x28a2>
    1dda:	a5 fb       	bra	29d4 <_sin_tbl+0x28b8>
    1ddc:	a6 05       	bra	29ea <_sin_tbl+0x28ce>
    1dde:	a6 0e       	bra	29fe <_sin_tbl+0x28e2>
    1de0:	a6 18       	bra	2a14 <_sin_tbl+0x28f8>
    1de2:	a6 21       	bra	2a28 <_sin_tbl+0x290c>
    1de4:	a6 2b       	bra	2a3e <_sin_tbl+0x2922>
    1de6:	a6 34       	bra	2a52 <_sin_tbl+0x2936>
    1de8:	a6 3e       	bra	2a68 <_sin_tbl+0x294c>
    1dea:	a6 47       	bra	2a7c <_sin_tbl+0x2960>
    1dec:	a6 51       	bra	2a92 <_sin_tbl+0x2976>
    1dee:	a6 5b       	bra	2aa8 <_sin_tbl+0x298c>
    1df0:	a6 64       	bra	2abc <_sin_tbl+0x29a0>
    1df2:	a6 6e       	bra	2ad2 <_sin_tbl+0x29b6>
    1df4:	a6 77       	bra	2ae6 <_sin_tbl+0x29ca>
    1df6:	a6 81       	bra	2afc <_sin_tbl+0x29e0>
    1df8:	a6 8a       	bra	2b10 <_sin_tbl+0x29f4>
    1dfa:	a6 94       	bra	2b26 <_sin_tbl+0x2a0a>
    1dfc:	a6 9d       	bra	2b3a <_sin_tbl+0x2a1e>
    1dfe:	a6 a7       	bra	2b50 <_sin_tbl+0x2a34>
    1e00:	a6 b0       	bra	2b64 <_sin_tbl+0x2a48>
    1e02:	a6 ba       	bra	2b7a <_sin_tbl+0x2a5e>
    1e04:	a6 c4       	bra	2b90 <_sin_tbl+0x2a74>
    1e06:	a6 cd       	bra	2ba4 <_sin_tbl+0x2a88>
    1e08:	a6 d7       	bra	2bba <_sin_tbl+0x2a9e>
    1e0a:	a6 e0       	bra	2bce <_sin_tbl+0x2ab2>
    1e0c:	a6 ea       	bra	2be4 <_sin_tbl+0x2ac8>
    1e0e:	a6 f3       	bra	2bf8 <_sin_tbl+0x2adc>
    1e10:	a6 fd       	bra	2c0e <_sin_tbl+0x2af2>
    1e12:	a7 06       	bra	2c22 <_sin_tbl+0x2b06>
    1e14:	a7 10       	bra	2c38 <_sin_tbl+0x2b1c>
    1e16:	a7 19       	bra	2c4c <_sin_tbl+0x2b30>
    1e18:	a7 23       	bra	2c62 <_sin_tbl+0x2b46>
    1e1a:	a7 2c       	bra	2c76 <_sin_tbl+0x2b5a>
    1e1c:	a7 36       	bra	2c8c <_sin_tbl+0x2b70>
    1e1e:	a7 3f       	bra	2ca0 <_sin_tbl+0x2b84>
    1e20:	a7 49       	bra	2cb6 <_sin_tbl+0x2b9a>
    1e22:	a7 52       	bra	2cca <_sin_tbl+0x2bae>
    1e24:	a7 5c       	bra	2ce0 <_sin_tbl+0x2bc4>
    1e26:	a7 65       	bra	2cf4 <_sin_tbl+0x2bd8>
    1e28:	a7 6f       	bra	2d0a <_sin_tbl+0x2bee>
    1e2a:	a7 78       	bra	2d1e <_sin_tbl+0x2c02>
    1e2c:	a7 82       	bra	2d34 <_sin_tbl+0x2c18>
    1e2e:	a7 8b       	bra	2d48 <_sin_tbl+0x2c2c>
    1e30:	a7 95       	bra	2d5e <_sin_tbl+0x2c42>
    1e32:	a7 9e       	bra	2d72 <_sin_tbl+0x2c56>
    1e34:	a7 a8       	bra	2d88 <_sin_tbl+0x2c6c>
    1e36:	a7 b1       	bra	2d9c <_sin_tbl+0x2c80>
    1e38:	a7 bb       	bra	2db2 <_sin_tbl+0x2c96>
    1e3a:	a7 c4       	bra	2dc6 <_sin_tbl+0x2caa>
    1e3c:	a7 ce       	bra	2ddc <_sin_tbl+0x2cc0>
    1e3e:	a7 d7       	bra	2df0 <_sin_tbl+0x2cd4>
    1e40:	a7 e1       	bra	2e06 <_sin_tbl+0x2cea>
    1e42:	a7 ea       	bra	2e1a <_sin_tbl+0x2cfe>
    1e44:	a7 f4       	bra	2e30 <_sin_tbl+0x2d14>
    1e46:	a7 fd       	bra	2e44 <_sin_tbl+0x2d28>
    1e48:	a8 07       	bra	e5a <_sin_tbl+0xd3e>
    1e4a:	a8 10       	bra	e6e <_sin_tbl+0xd52>
    1e4c:	a8 1a       	bra	e84 <_sin_tbl+0xd68>
    1e4e:	a8 23       	bra	e98 <_sin_tbl+0xd7c>
    1e50:	a8 2d       	bra	eae <_sin_tbl+0xd92>
    1e52:	a8 36       	bra	ec2 <_sin_tbl+0xda6>
    1e54:	a8 40       	bra	ed8 <_sin_tbl+0xdbc>
    1e56:	a8 49       	bra	eec <_sin_tbl+0xdd0>
    1e58:	a8 53       	bra	f02 <_sin_tbl+0xde6>
    1e5a:	a8 5c       	bra	f16 <_sin_tbl+0xdfa>
    1e5c:	a8 66       	bra	f2c <_sin_tbl+0xe10>
    1e5e:	a8 6f       	bra	f40 <_sin_tbl+0xe24>
    1e60:	a8 78       	bra	f54 <_sin_tbl+0xe38>
    1e62:	a8 82       	bra	f6a <_sin_tbl+0xe4e>
    1e64:	a8 8b       	bra	f7e <_sin_tbl+0xe62>
    1e66:	a8 95       	bra	f94 <_sin_tbl+0xe78>
    1e68:	a8 9e       	bra	fa8 <_sin_tbl+0xe8c>
    1e6a:	a8 a8       	bra	fbe <_sin_tbl+0xea2>
    1e6c:	a8 b1       	bra	fd2 <_sin_tbl+0xeb6>
    1e6e:	a8 bb       	bra	fe8 <_sin_tbl+0xecc>
    1e70:	a8 c4       	bra	ffc <_sin_tbl+0xee0>
    1e72:	a8 ce       	bra	1012 <_sin_tbl+0xef6>
    1e74:	a8 d7       	bra	1026 <_sin_tbl+0xf0a>
    1e76:	a8 e0       	bra	103a <_sin_tbl+0xf1e>
    1e78:	a8 ea       	bra	1050 <_sin_tbl+0xf34>
    1e7a:	a8 f3       	bra	1064 <_sin_tbl+0xf48>
    1e7c:	a8 fd       	bra	107a <_sin_tbl+0xf5e>
    1e7e:	a9 06       	bra	108e <_sin_tbl+0xf72>
    1e80:	a9 10       	bra	10a4 <_sin_tbl+0xf88>
    1e82:	a9 19       	bra	10b8 <_sin_tbl+0xf9c>
    1e84:	a9 22       	bra	10cc <_sin_tbl+0xfb0>
    1e86:	a9 2c       	bra	10e2 <_sin_tbl+0xfc6>
    1e88:	a9 35       	bra	10f6 <_sin_tbl+0xfda>
    1e8a:	a9 3f       	bra	110c <_sin_tbl+0xff0>
    1e8c:	a9 48       	bra	1120 <_sin_tbl+0x1004>
    1e8e:	a9 52       	bra	1136 <_sin_tbl+0x101a>
    1e90:	a9 5b       	bra	114a <_sin_tbl+0x102e>
    1e92:	a9 64       	bra	115e <_sin_tbl+0x1042>
    1e94:	a9 6e       	bra	1174 <_sin_tbl+0x1058>
    1e96:	a9 77       	bra	1188 <_sin_tbl+0x106c>
    1e98:	a9 81       	bra	119e <_sin_tbl+0x1082>
    1e9a:	a9 8a       	bra	11b2 <_sin_tbl+0x1096>
    1e9c:	a9 94       	bra	11c8 <_sin_tbl+0x10ac>
    1e9e:	a9 9d       	bra	11dc <_sin_tbl+0x10c0>
    1ea0:	a9 a6       	bra	11f0 <_sin_tbl+0x10d4>
    1ea2:	a9 b0       	bra	1206 <_sin_tbl+0x10ea>
    1ea4:	a9 b9       	bra	121a <_sin_tbl+0x10fe>
    1ea6:	a9 c3       	bra	1230 <_sin_tbl+0x1114>
    1ea8:	a9 cc       	bra	1244 <_sin_tbl+0x1128>
    1eaa:	a9 d5       	bra	1258 <_sin_tbl+0x113c>
    1eac:	a9 df       	bra	126e <_sin_tbl+0x1152>
    1eae:	a9 e8       	bra	1282 <_sin_tbl+0x1166>
    1eb0:	a9 f2       	bra	1298 <_sin_tbl+0x117c>
    1eb2:	a9 fb       	bra	12ac <_sin_tbl+0x1190>
    1eb4:	aa 04       	bra	12c0 <_sin_tbl+0x11a4>
    1eb6:	aa 0e       	bra	12d6 <_sin_tbl+0x11ba>
    1eb8:	aa 17       	bra	12ea <_sin_tbl+0x11ce>
    1eba:	aa 21       	bra	1300 <_sin_tbl+0x11e4>
    1ebc:	aa 2a       	bra	1314 <_sin_tbl+0x11f8>
    1ebe:	aa 33       	bra	1328 <_sin_tbl+0x120c>
    1ec0:	aa 3d       	bra	133e <_sin_tbl+0x1222>
    1ec2:	aa 46       	bra	1352 <_sin_tbl+0x1236>
    1ec4:	aa 50       	bra	1368 <_sin_tbl+0x124c>
    1ec6:	aa 59       	bra	137c <_sin_tbl+0x1260>
    1ec8:	aa 62       	bra	1390 <_sin_tbl+0x1274>
    1eca:	aa 6c       	bra	13a6 <_sin_tbl+0x128a>
    1ecc:	aa 75       	bra	13ba <_sin_tbl+0x129e>
    1ece:	aa 7e       	bra	13ce <_sin_tbl+0x12b2>
    1ed0:	aa 88       	bra	13e4 <_sin_tbl+0x12c8>
    1ed2:	aa 91       	bra	13f8 <_sin_tbl+0x12dc>
    1ed4:	aa 9b       	bra	140e <_sin_tbl+0x12f2>
    1ed6:	aa a4       	bra	1422 <_sin_tbl+0x1306>
    1ed8:	aa ad       	bra	1436 <_sin_tbl+0x131a>
    1eda:	aa b7       	bra	144c <_sin_tbl+0x1330>
    1edc:	aa c0       	bra	1460 <_sin_tbl+0x1344>
    1ede:	aa c9       	bra	1474 <_sin_tbl+0x1358>
    1ee0:	aa d3       	bra	148a <_sin_tbl+0x136e>
    1ee2:	aa dc       	bra	149e <_sin_tbl+0x1382>
    1ee4:	aa e5       	bra	14b2 <_sin_tbl+0x1396>
    1ee6:	aa ef       	bra	14c8 <_sin_tbl+0x13ac>
    1ee8:	aa f8       	bra	14dc <_sin_tbl+0x13c0>
    1eea:	ab 02       	bra	14f2 <_sin_tbl+0x13d6>
    1eec:	ab 0b       	bra	1506 <_sin_tbl+0x13ea>
    1eee:	ab 14       	bra	151a <_sin_tbl+0x13fe>
    1ef0:	ab 1e       	bra	1530 <_sin_tbl+0x1414>
    1ef2:	ab 27       	bra	1544 <_sin_tbl+0x1428>
    1ef4:	ab 30       	bra	1558 <_sin_tbl+0x143c>
    1ef6:	ab 3a       	bra	156e <_sin_tbl+0x1452>
    1ef8:	ab 43       	bra	1582 <_sin_tbl+0x1466>
    1efa:	ab 4c       	bra	1596 <_sin_tbl+0x147a>
    1efc:	ab 56       	bra	15ac <_sin_tbl+0x1490>
    1efe:	ab 5f       	bra	15c0 <_sin_tbl+0x14a4>
    1f00:	ab 68       	bra	15d4 <_sin_tbl+0x14b8>
    1f02:	ab 72       	bra	15ea <_sin_tbl+0x14ce>
    1f04:	ab 7b       	bra	15fe <_sin_tbl+0x14e2>
    1f06:	ab 84       	bra	1612 <_sin_tbl+0x14f6>
    1f08:	ab 8e       	bra	1628 <_sin_tbl+0x150c>
    1f0a:	ab 97       	bra	163c <_sin_tbl+0x1520>
    1f0c:	ab a0       	bra	1650 <_sin_tbl+0x1534>
    1f0e:	ab aa       	bra	1666 <_sin_tbl+0x154a>
    1f10:	ab b3       	bra	167a <_sin_tbl+0x155e>
    1f12:	ab bc       	bra	168e <_sin_tbl+0x1572>
    1f14:	ab c6       	bra	16a4 <_sin_tbl+0x1588>
    1f16:	ab cf       	bra	16b8 <_sin_tbl+0x159c>
    1f18:	ab d8       	bra	16cc <_sin_tbl+0x15b0>
    1f1a:	ab e1       	bra	16e0 <_sin_tbl+0x15c4>
    1f1c:	ab eb       	bra	16f6 <_sin_tbl+0x15da>
    1f1e:	ab f4       	bra	170a <_sin_tbl+0x15ee>
    1f20:	ab fd       	bra	171e <_sin_tbl+0x1602>
    1f22:	ac 07       	bra	1734 <_sin_tbl+0x1618>
    1f24:	ac 10       	bra	1748 <_sin_tbl+0x162c>
    1f26:	ac 19       	bra	175c <_sin_tbl+0x1640>
    1f28:	ac 23       	bra	1772 <_sin_tbl+0x1656>
    1f2a:	ac 2c       	bra	1786 <_sin_tbl+0x166a>
    1f2c:	ac 35       	bra	179a <_sin_tbl+0x167e>
    1f2e:	ac 3f       	bra	17b0 <_sin_tbl+0x1694>
    1f30:	ac 48       	bra	17c4 <_sin_tbl+0x16a8>
    1f32:	ac 51       	bra	17d8 <_sin_tbl+0x16bc>
    1f34:	ac 5a       	bra	17ec <_sin_tbl+0x16d0>
    1f36:	ac 64       	bra	1802 <_sin_tbl+0x16e6>
    1f38:	ac 6d       	bra	1816 <_sin_tbl+0x16fa>
    1f3a:	ac 76       	bra	182a <_sin_tbl+0x170e>
    1f3c:	ac 80       	bra	1840 <_sin_tbl+0x1724>
    1f3e:	ac 89       	bra	1854 <_sin_tbl+0x1738>
    1f40:	ac 92       	bra	1868 <_sin_tbl+0x174c>
    1f42:	ac 9b       	bra	187c <_sin_tbl+0x1760>
    1f44:	ac a5       	bra	1892 <_sin_tbl+0x1776>
    1f46:	ac ae       	bra	18a6 <_sin_tbl+0x178a>
    1f48:	ac b7       	bra	18ba <_sin_tbl+0x179e>
    1f4a:	ac c1       	bra	18d0 <_sin_tbl+0x17b4>
    1f4c:	ac ca       	bra	18e4 <_sin_tbl+0x17c8>
    1f4e:	ac d3       	bra	18f8 <_sin_tbl+0x17dc>
    1f50:	ac dc       	bra	190c <_sin_tbl+0x17f0>
    1f52:	ac e6       	bra	1922 <_sin_tbl+0x1806>
    1f54:	ac ef       	bra	1936 <_sin_tbl+0x181a>
    1f56:	ac f8       	bra	194a <_sin_tbl+0x182e>
    1f58:	ad 01       	bra	195e <_sin_tbl+0x1842>
    1f5a:	ad 0b       	bra	1974 <_sin_tbl+0x1858>
    1f5c:	ad 14       	bra	1988 <_sin_tbl+0x186c>
    1f5e:	ad 1d       	bra	199c <_sin_tbl+0x1880>
    1f60:	ad 26       	bra	19b0 <_sin_tbl+0x1894>
    1f62:	ad 30       	bra	19c6 <_sin_tbl+0x18aa>
    1f64:	ad 39       	bra	19da <_sin_tbl+0x18be>
    1f66:	ad 42       	bra	19ee <_sin_tbl+0x18d2>
    1f68:	ad 4b       	bra	1a02 <_sin_tbl+0x18e6>
    1f6a:	ad 55       	bra	1a18 <_sin_tbl+0x18fc>
    1f6c:	ad 5e       	bra	1a2c <_sin_tbl+0x1910>
    1f6e:	ad 67       	bra	1a40 <_sin_tbl+0x1924>
    1f70:	ad 70       	bra	1a54 <_sin_tbl+0x1938>
    1f72:	ad 7a       	bra	1a6a <_sin_tbl+0x194e>
    1f74:	ad 83       	bra	1a7e <_sin_tbl+0x1962>
    1f76:	ad 8c       	bra	1a92 <_sin_tbl+0x1976>
    1f78:	ad 95       	bra	1aa6 <_sin_tbl+0x198a>
    1f7a:	ad 9f       	bra	1abc <_sin_tbl+0x19a0>
    1f7c:	ad a8       	bra	1ad0 <_sin_tbl+0x19b4>
    1f7e:	ad b1       	bra	1ae4 <_sin_tbl+0x19c8>
    1f80:	ad ba       	bra	1af8 <_sin_tbl+0x19dc>
    1f82:	ad c4       	bra	1b0e <_sin_tbl+0x19f2>
    1f84:	ad cd       	bra	1b22 <_sin_tbl+0x1a06>
    1f86:	ad d6       	bra	1b36 <_sin_tbl+0x1a1a>
    1f88:	ad df       	bra	1b4a <_sin_tbl+0x1a2e>
    1f8a:	ad e8       	bra	1b5e <_sin_tbl+0x1a42>
    1f8c:	ad f2       	bra	1b74 <_sin_tbl+0x1a58>
    1f8e:	ad fb       	bra	1b88 <_sin_tbl+0x1a6c>
    1f90:	ae 04       	bra	1b9c <_sin_tbl+0x1a80>
    1f92:	ae 0d       	bra	1bb0 <_sin_tbl+0x1a94>
    1f94:	ae 17       	bra	1bc6 <_sin_tbl+0x1aaa>
    1f96:	ae 20       	bra	1bda <_sin_tbl+0x1abe>
    1f98:	ae 29       	bra	1bee <_sin_tbl+0x1ad2>
    1f9a:	ae 32       	bra	1c02 <_sin_tbl+0x1ae6>
    1f9c:	ae 3b       	bra	1c16 <_sin_tbl+0x1afa>
    1f9e:	ae 45       	bra	1c2c <_sin_tbl+0x1b10>
    1fa0:	ae 4e       	bra	1c40 <_sin_tbl+0x1b24>
    1fa2:	ae 57       	bra	1c54 <_sin_tbl+0x1b38>
    1fa4:	ae 60       	bra	1c68 <_sin_tbl+0x1b4c>
    1fa6:	ae 69       	bra	1c7c <_sin_tbl+0x1b60>
    1fa8:	ae 73       	bra	1c92 <_sin_tbl+0x1b76>
    1faa:	ae 7c       	bra	1ca6 <_sin_tbl+0x1b8a>
    1fac:	ae 85       	bra	1cba <_sin_tbl+0x1b9e>
    1fae:	ae 8e       	bra	1cce <_sin_tbl+0x1bb2>
    1fb0:	ae 97       	bra	1ce2 <_sin_tbl+0x1bc6>
    1fb2:	ae a1       	bra	1cf8 <_sin_tbl+0x1bdc>
    1fb4:	ae aa       	bra	1d0c <_sin_tbl+0x1bf0>
    1fb6:	ae b3       	bra	1d20 <_sin_tbl+0x1c04>
    1fb8:	ae bc       	bra	1d34 <_sin_tbl+0x1c18>
    1fba:	ae c5       	bra	1d48 <_sin_tbl+0x1c2c>
    1fbc:	ae ce       	bra	1d5c <_sin_tbl+0x1c40>
    1fbe:	ae d8       	bra	1d72 <_sin_tbl+0x1c56>
    1fc0:	ae e1       	bra	1d86 <_sin_tbl+0x1c6a>
    1fc2:	ae ea       	bra	1d9a <_sin_tbl+0x1c7e>
    1fc4:	ae f3       	bra	1dae <_sin_tbl+0x1c92>
    1fc6:	ae fc       	bra	1dc2 <_sin_tbl+0x1ca6>
    1fc8:	af 06       	bra	1dd8 <_sin_tbl+0x1cbc>
    1fca:	af 0f       	bra	1dec <_sin_tbl+0x1cd0>
    1fcc:	af 18       	bra	1e00 <_sin_tbl+0x1ce4>
    1fce:	af 21       	bra	1e14 <_sin_tbl+0x1cf8>
    1fd0:	af 2a       	bra	1e28 <_sin_tbl+0x1d0c>
    1fd2:	af 33       	bra	1e3c <_sin_tbl+0x1d20>
    1fd4:	af 3d       	bra	1e52 <_sin_tbl+0x1d36>
    1fd6:	af 46       	bra	1e66 <_sin_tbl+0x1d4a>
    1fd8:	af 4f       	bra	1e7a <_sin_tbl+0x1d5e>
    1fda:	af 58       	bra	1e8e <_sin_tbl+0x1d72>
    1fdc:	af 61       	bra	1ea2 <_sin_tbl+0x1d86>
    1fde:	af 6a       	bra	1eb6 <_sin_tbl+0x1d9a>
    1fe0:	af 73       	bra	1eca <_sin_tbl+0x1dae>
    1fe2:	af 7d       	bra	1ee0 <_sin_tbl+0x1dc4>
    1fe4:	af 86       	bra	1ef4 <_sin_tbl+0x1dd8>
    1fe6:	af 8f       	bra	1f08 <_sin_tbl+0x1dec>
    1fe8:	af 98       	bra	1f1c <_sin_tbl+0x1e00>
    1fea:	af a1       	bra	1f30 <_sin_tbl+0x1e14>
    1fec:	af aa       	bra	1f44 <_sin_tbl+0x1e28>
    1fee:	af b3       	bra	1f58 <_sin_tbl+0x1e3c>
    1ff0:	af bd       	bra	1f6e <_sin_tbl+0x1e52>
    1ff2:	af c6       	bra	1f82 <_sin_tbl+0x1e66>
    1ff4:	af cf       	bra	1f96 <_sin_tbl+0x1e7a>
    1ff6:	af d8       	bra	1faa <_sin_tbl+0x1e8e>
    1ff8:	af e1       	bra	1fbe <_sin_tbl+0x1ea2>
    1ffa:	af ea       	bra	1fd2 <_sin_tbl+0x1eb6>
    1ffc:	af f3       	bra	1fe6 <_sin_tbl+0x1eca>
    1ffe:	af fd       	bra	1ffc <_sin_tbl+0x1ee0>
    2000:	b0 06       	bsr	2010 <_sin_tbl+0x1ef4>
    2002:	b0 0f       	bsr	2024 <_sin_tbl+0x1f08>
    2004:	b0 18       	bsr	2038 <_sin_tbl+0x1f1c>
    2006:	b0 21       	bsr	204c <_sin_tbl+0x1f30>
    2008:	b0 2a       	bsr	2060 <_sin_tbl+0x1f44>
    200a:	b0 33       	bsr	2074 <_sin_tbl+0x1f58>
    200c:	b0 3c       	bsr	2088 <_sin_tbl+0x1f6c>
    200e:	b0 45       	bsr	209c <_sin_tbl+0x1f80>
    2010:	b0 4f       	bsr	20b2 <_sin_tbl+0x1f96>
    2012:	b0 58       	bsr	20c6 <_sin_tbl+0x1faa>
    2014:	b0 61       	bsr	20da <_sin_tbl+0x1fbe>
    2016:	b0 6a       	bsr	20ee <_sin_tbl+0x1fd2>
    2018:	b0 73       	bsr	2102 <_sin_tbl+0x1fe6>
    201a:	b0 7c       	bsr	2116 <_sin_tbl+0x1ffa>
    201c:	b0 85       	bsr	212a <_sin_tbl+0x200e>
    201e:	b0 8e       	bsr	213e <_sin_tbl+0x2022>
    2020:	b0 97       	bsr	2152 <_sin_tbl+0x2036>
    2022:	b0 a1       	bsr	2168 <_sin_tbl+0x204c>
    2024:	b0 aa       	bsr	217c <_sin_tbl+0x2060>
    2026:	b0 b3       	bsr	2190 <_sin_tbl+0x2074>
    2028:	b0 bc       	bsr	21a4 <_sin_tbl+0x2088>
    202a:	b0 c5       	bsr	21b8 <_sin_tbl+0x209c>
    202c:	b0 ce       	bsr	21cc <_sin_tbl+0x20b0>
    202e:	b0 d7       	bsr	21e0 <_sin_tbl+0x20c4>
    2030:	b0 e0       	bsr	21f4 <_sin_tbl+0x20d8>
    2032:	b0 e9       	bsr	2208 <_sin_tbl+0x20ec>
    2034:	b0 f2       	bsr	221c <_sin_tbl+0x2100>
    2036:	b0 fb       	bsr	2230 <_sin_tbl+0x2114>
    2038:	b1 04       	bsr	2244 <_sin_tbl+0x2128>
    203a:	b1 0e       	bsr	225a <_sin_tbl+0x213e>
    203c:	b1 17       	bsr	226e <_sin_tbl+0x2152>
    203e:	b1 20       	bsr	2282 <_sin_tbl+0x2166>
    2040:	b1 29       	bsr	2296 <_sin_tbl+0x217a>
    2042:	b1 32       	bsr	22aa <_sin_tbl+0x218e>
    2044:	b1 3b       	bsr	22be <_sin_tbl+0x21a2>
    2046:	b1 44       	bsr	22d2 <_sin_tbl+0x21b6>
    2048:	b1 4d       	bsr	22e6 <_sin_tbl+0x21ca>
    204a:	b1 56       	bsr	22fa <_sin_tbl+0x21de>
    204c:	b1 5f       	bsr	230e <_sin_tbl+0x21f2>
    204e:	b1 68       	bsr	2322 <_sin_tbl+0x2206>
    2050:	b1 71       	bsr	2336 <_sin_tbl+0x221a>
    2052:	b1 7a       	bsr	234a <_sin_tbl+0x222e>
    2054:	b1 83       	bsr	235e <_sin_tbl+0x2242>
    2056:	b1 8c       	bsr	2372 <_sin_tbl+0x2256>
    2058:	b1 96       	bsr	2388 <_sin_tbl+0x226c>
    205a:	b1 9f       	bsr	239c <_sin_tbl+0x2280>
    205c:	b1 a8       	bsr	23b0 <_sin_tbl+0x2294>
    205e:	b1 b1       	bsr	23c4 <_sin_tbl+0x22a8>
    2060:	b1 ba       	bsr	23d8 <_sin_tbl+0x22bc>
    2062:	b1 c3       	bsr	23ec <_sin_tbl+0x22d0>
    2064:	b1 cc       	bsr	2400 <_sin_tbl+0x22e4>
    2066:	b1 d5       	bsr	2414 <_sin_tbl+0x22f8>
    2068:	b1 de       	bsr	2428 <_sin_tbl+0x230c>
    206a:	b1 e7       	bsr	243c <_sin_tbl+0x2320>
    206c:	b1 f0       	bsr	2450 <_sin_tbl+0x2334>
    206e:	b1 f9       	bsr	2464 <_sin_tbl+0x2348>
    2070:	b2 02       	bsr	2478 <_sin_tbl+0x235c>
    2072:	b2 0b       	bsr	248c <_sin_tbl+0x2370>
    2074:	b2 14       	bsr	24a0 <_sin_tbl+0x2384>
    2076:	b2 1d       	bsr	24b4 <_sin_tbl+0x2398>
    2078:	b2 26       	bsr	24c8 <_sin_tbl+0x23ac>
    207a:	b2 2f       	bsr	24dc <_sin_tbl+0x23c0>
    207c:	b2 38       	bsr	24f0 <_sin_tbl+0x23d4>
    207e:	b2 41       	bsr	2504 <_sin_tbl+0x23e8>
    2080:	b2 4a       	bsr	2518 <_sin_tbl+0x23fc>
    2082:	b2 53       	bsr	252c <_sin_tbl+0x2410>
    2084:	b2 5c       	bsr	2540 <_sin_tbl+0x2424>
    2086:	b2 65       	bsr	2554 <_sin_tbl+0x2438>
    2088:	b2 6e       	bsr	2568 <_sin_tbl+0x244c>
    208a:	b2 77       	bsr	257c <_sin_tbl+0x2460>
    208c:	b2 80       	bsr	2590 <_sin_tbl+0x2474>
    208e:	b2 89       	bsr	25a4 <_sin_tbl+0x2488>
    2090:	b2 92       	bsr	25b8 <_sin_tbl+0x249c>
    2092:	b2 9b       	bsr	25cc <_sin_tbl+0x24b0>
    2094:	b2 a4       	bsr	25e0 <_sin_tbl+0x24c4>
    2096:	b2 ad       	bsr	25f4 <_sin_tbl+0x24d8>
    2098:	b2 b6       	bsr	2608 <_sin_tbl+0x24ec>
    209a:	b2 bf       	bsr	261c <_sin_tbl+0x2500>
    209c:	b2 c8       	bsr	2630 <_sin_tbl+0x2514>
    209e:	b2 d1       	bsr	2644 <_sin_tbl+0x2528>
    20a0:	b2 da       	bsr	2658 <_sin_tbl+0x253c>
    20a2:	b2 e3       	bsr	266c <_sin_tbl+0x2550>
    20a4:	b2 ec       	bsr	2680 <_sin_tbl+0x2564>
    20a6:	b2 f5       	bsr	2694 <_sin_tbl+0x2578>
    20a8:	b2 fe       	bsr	26a8 <_sin_tbl+0x258c>
    20aa:	b3 07       	bsr	26bc <_sin_tbl+0x25a0>
    20ac:	b3 10       	bsr	26d0 <_sin_tbl+0x25b4>
    20ae:	b3 19       	bsr	26e4 <_sin_tbl+0x25c8>
    20b0:	b3 22       	bsr	26f8 <_sin_tbl+0x25dc>
    20b2:	b3 2b       	bsr	270c <_sin_tbl+0x25f0>
    20b4:	b3 34       	bsr	2720 <_sin_tbl+0x2604>
    20b6:	b3 3d       	bsr	2734 <_sin_tbl+0x2618>
    20b8:	b3 46       	bsr	2748 <_sin_tbl+0x262c>
    20ba:	b3 4f       	bsr	275c <_sin_tbl+0x2640>
    20bc:	b3 58       	bsr	2770 <_sin_tbl+0x2654>
    20be:	b3 61       	bsr	2784 <_sin_tbl+0x2668>
    20c0:	b3 6a       	bsr	2798 <_sin_tbl+0x267c>
    20c2:	b3 73       	bsr	27ac <_sin_tbl+0x2690>
    20c4:	b3 7c       	bsr	27c0 <_sin_tbl+0x26a4>
    20c6:	b3 85       	bsr	27d4 <_sin_tbl+0x26b8>
    20c8:	b3 8e       	bsr	27e8 <_sin_tbl+0x26cc>
    20ca:	b3 97       	bsr	27fc <_sin_tbl+0x26e0>
    20cc:	b3 a0       	bsr	2810 <_sin_tbl+0x26f4>
    20ce:	b3 a9       	bsr	2824 <_sin_tbl+0x2708>
    20d0:	b3 b2       	bsr	2838 <_sin_tbl+0x271c>
    20d2:	b3 bb       	bsr	284c <_sin_tbl+0x2730>
    20d4:	b3 c3       	bsr	285e <_sin_tbl+0x2742>
    20d6:	b3 cc       	bsr	2872 <_sin_tbl+0x2756>
    20d8:	b3 d5       	bsr	2886 <_sin_tbl+0x276a>
    20da:	b3 de       	bsr	289a <_sin_tbl+0x277e>
    20dc:	b3 e7       	bsr	28ae <_sin_tbl+0x2792>
    20de:	b3 f0       	bsr	28c2 <_sin_tbl+0x27a6>
    20e0:	b3 f9       	bsr	28d6 <_sin_tbl+0x27ba>
    20e2:	b4 02       	bsr	28ea <_sin_tbl+0x27ce>
    20e4:	b4 0b       	bsr	28fe <_sin_tbl+0x27e2>
    20e6:	b4 14       	bsr	2912 <_sin_tbl+0x27f6>
    20e8:	b4 1d       	bsr	2926 <_sin_tbl+0x280a>
    20ea:	b4 26       	bsr	293a <_sin_tbl+0x281e>
    20ec:	b4 2f       	bsr	294e <_sin_tbl+0x2832>
    20ee:	b4 38       	bsr	2962 <_sin_tbl+0x2846>
    20f0:	b4 41       	bsr	2976 <_sin_tbl+0x285a>
    20f2:	b4 49       	bsr	2988 <_sin_tbl+0x286c>
    20f4:	b4 52       	bsr	299c <_sin_tbl+0x2880>
    20f6:	b4 5b       	bsr	29b0 <_sin_tbl+0x2894>
    20f8:	b4 64       	bsr	29c4 <_sin_tbl+0x28a8>
    20fa:	b4 6d       	bsr	29d8 <_sin_tbl+0x28bc>
    20fc:	b4 76       	bsr	29ec <_sin_tbl+0x28d0>
    20fe:	b4 7f       	bsr	2a00 <_sin_tbl+0x28e4>
    2100:	b4 88       	bsr	2a14 <_sin_tbl+0x28f8>
    2102:	b4 91       	bsr	2a28 <_sin_tbl+0x290c>
    2104:	b4 9a       	bsr	2a3c <_sin_tbl+0x2920>
    2106:	b4 a3       	bsr	2a50 <_sin_tbl+0x2934>
    2108:	b4 ac       	bsr	2a64 <_sin_tbl+0x2948>
    210a:	b4 b4       	bsr	2a76 <_sin_tbl+0x295a>
    210c:	b4 bd       	bsr	2a8a <_sin_tbl+0x296e>
    210e:	b4 c6       	bsr	2a9e <_sin_tbl+0x2982>
    2110:	b4 cf       	bsr	2ab2 <_sin_tbl+0x2996>
    2112:	b4 d8       	bsr	2ac6 <_sin_tbl+0x29aa>
    2114:	b4 e1       	bsr	2ada <_sin_tbl+0x29be>
    2116:	b4 ea       	bsr	2aee <_sin_tbl+0x29d2>
    2118:	b4 f3       	bsr	2b02 <_sin_tbl+0x29e6>
    211a:	b4 fc       	bsr	2b16 <_sin_tbl+0x29fa>
    211c:	b5 03       	bsr	2b26 <_sin_tbl+0x2a0a>
    211e:	b5 0c       	bsr	2b3a <_sin_tbl+0x2a1e>
    2120:	b5 15       	bsr	2b4e <_sin_tbl+0x2a32>
    2122:	b5 1e       	bsr	2b62 <_sin_tbl+0x2a46>
    2124:	b5 27       	bsr	2b76 <_sin_tbl+0x2a5a>
    2126:	b5 30       	bsr	2b8a <_sin_tbl+0x2a6e>
    2128:	b5 39       	bsr	2b9e <_sin_tbl+0x2a82>
    212a:	b5 42       	bsr	2bb2 <_sin_tbl+0x2a96>
    212c:	b5 4a       	bsr	2bc4 <_sin_tbl+0x2aa8>
    212e:	b5 53       	bsr	2bd8 <_sin_tbl+0x2abc>
    2130:	b5 5c       	bsr	2bec <_sin_tbl+0x2ad0>
    2132:	b5 65       	bsr	2c00 <_sin_tbl+0x2ae4>
    2134:	b5 6e       	bsr	2c14 <_sin_tbl+0x2af8>
    2136:	b5 77       	bsr	2c28 <_sin_tbl+0x2b0c>
    2138:	b5 80       	bsr	2c3c <_sin_tbl+0x2b20>
    213a:	b5 89       	bsr	2c50 <_sin_tbl+0x2b34>
    213c:	b5 91       	bsr	2c62 <_sin_tbl+0x2b46>
    213e:	b5 9a       	bsr	2c76 <_sin_tbl+0x2b5a>
    2140:	b5 a3       	bsr	2c8a <_sin_tbl+0x2b6e>
    2142:	b5 ac       	bsr	2c9e <_sin_tbl+0x2b82>
    2144:	b5 b5       	bsr	2cb2 <_sin_tbl+0x2b96>
    2146:	b5 be       	bsr	2cc6 <_sin_tbl+0x2baa>
    2148:	b5 c7       	bsr	2cda <_sin_tbl+0x2bbe>
    214a:	b5 cf       	bsr	2cec <_sin_tbl+0x2bd0>
    214c:	b5 d8       	bsr	2d00 <_sin_tbl+0x2be4>
    214e:	b5 e1       	bsr	2d14 <_sin_tbl+0x2bf8>
    2150:	b5 ea       	bsr	2d28 <_sin_tbl+0x2c0c>
    2152:	b5 f3       	bsr	2d3c <_sin_tbl+0x2c20>
    2154:	b5 fc       	bsr	2d50 <_sin_tbl+0x2c34>
    2156:	b6 04       	bsr	2d62 <_sin_tbl+0x2c46>
    2158:	b6 0d       	bsr	2d76 <_sin_tbl+0x2c5a>
    215a:	b6 16       	bsr	2d8a <_sin_tbl+0x2c6e>
    215c:	b6 1f       	bsr	2d9e <_sin_tbl+0x2c82>
    215e:	b6 28       	bsr	2db2 <_sin_tbl+0x2c96>
    2160:	b6 31       	bsr	2dc6 <_sin_tbl+0x2caa>
    2162:	b6 39       	bsr	2dd8 <_sin_tbl+0x2cbc>
    2164:	b6 42       	bsr	2dec <_sin_tbl+0x2cd0>
    2166:	b6 4b       	bsr	2e00 <_sin_tbl+0x2ce4>
    2168:	b6 54       	bsr	2e14 <_sin_tbl+0x2cf8>
    216a:	b6 5d       	bsr	2e28 <_sin_tbl+0x2d0c>
    216c:	b6 66       	bsr	2e3c <_sin_tbl+0x2d20>
    216e:	b6 6e       	bsr	2e4e <_sin_tbl+0x2d32>
    2170:	b6 77       	bsr	2e62 <_sin_tbl+0x2d46>
    2172:	b6 80       	bsr	2e76 <_sin_tbl+0x2d5a>
    2174:	b6 89       	bsr	2e8a <_sin_tbl+0x2d6e>
    2176:	b6 92       	bsr	2e9e <_sin_tbl+0x2d82>
    2178:	b6 9a       	bsr	2eb0 <_sin_tbl+0x2d94>
    217a:	b6 a3       	bsr	2ec4 <_sin_tbl+0x2da8>
    217c:	b6 ac       	bsr	2ed8 <_sin_tbl+0x2dbc>
    217e:	b6 b5       	bsr	2eec <_sin_tbl+0x2dd0>
    2180:	b6 be       	bsr	2f00 <_sin_tbl+0x2de4>
    2182:	b6 c6       	bsr	2f12 <_sin_tbl+0x2df6>
    2184:	b6 cf       	bsr	2f26 <_sin_tbl+0x2e0a>
    2186:	b6 d8       	bsr	2f3a <_sin_tbl+0x2e1e>
    2188:	b6 e1       	bsr	2f4e <_sin_tbl+0x2e32>
    218a:	b6 ea       	bsr	2f62 <_sin_tbl+0x2e46>
    218c:	b6 f2       	bsr	2f74 <_sin_tbl+0x2e58>
    218e:	b6 fb       	bsr	2f88 <_sin_tbl+0x2e6c>
    2190:	b7 04       	bsr	2f9c <_sin_tbl+0x2e80>
    2192:	b7 0d       	bsr	2fb0 <_sin_tbl+0x2e94>
    2194:	b7 16       	bsr	2fc4 <_sin_tbl+0x2ea8>
    2196:	b7 1e       	bsr	2fd6 <_sin_tbl+0x2eba>
    2198:	b7 27       	bsr	2fea <_sin_tbl+0x2ece>
    219a:	b7 30       	bsr	2ffe <_sin_tbl+0x2ee2>
    219c:	b7 39       	bsr	3012 <_sin_tbl+0x2ef6>
    219e:	b7 41       	bsr	3024 <_sin_tbl+0x2f08>
    21a0:	b7 4a       	bsr	3038 <_sin_tbl+0x2f1c>
    21a2:	b7 53       	bsr	304c <_sin_tbl+0x2f30>
    21a4:	b7 5c       	bsr	3060 <_sin_tbl+0x2f44>
    21a6:	b7 64       	bsr	3072 <_sin_tbl+0x2f56>
    21a8:	b7 6d       	bsr	3086 <_sin_tbl+0x2f6a>
    21aa:	b7 76       	bsr	309a <_sin_tbl+0x2f7e>
    21ac:	b7 7f       	bsr	30ae <_sin_tbl+0x2f92>
    21ae:	b7 88       	bsr	30c2 <_sin_tbl+0x2fa6>
    21b0:	b7 90       	bsr	30d4 <_sin_tbl+0x2fb8>
    21b2:	b7 99       	bsr	30e8 <_sin_tbl+0x2fcc>
    21b4:	b7 a2       	bsr	30fc <_sin_tbl+0x2fe0>
    21b6:	b7 ab       	bsr	3110 <_sin_tbl+0x2ff4>
    21b8:	b7 b3       	bsr	3122 <_sin_tbl+0x3006>
    21ba:	b7 bc       	bsr	3136 <_sin_tbl+0x301a>
    21bc:	b7 c5       	bsr	314a <_sin_tbl+0x302e>
    21be:	b7 ce       	bsr	315e <_sin_tbl+0x3042>
    21c0:	b7 d6       	bsr	3170 <_sin_tbl+0x3054>
    21c2:	b7 df       	bsr	3184 <_sin_tbl+0x3068>
    21c4:	b7 e8       	bsr	3198 <_sin_tbl+0x307c>
    21c6:	b7 f1       	bsr	31ac <_sin_tbl+0x3090>
    21c8:	b7 f9       	bsr	31be <_sin_tbl+0x30a2>
    21ca:	b8 02       	bsr	11d2 <_sin_tbl+0x10b6>
    21cc:	b8 0b       	bsr	11e6 <_sin_tbl+0x10ca>
    21ce:	b8 13       	bsr	11f8 <_sin_tbl+0x10dc>
    21d0:	b8 1c       	bsr	120c <_sin_tbl+0x10f0>
    21d2:	b8 25       	bsr	1220 <_sin_tbl+0x1104>
    21d4:	b8 2e       	bsr	1234 <_sin_tbl+0x1118>
    21d6:	b8 36       	bsr	1246 <_sin_tbl+0x112a>
    21d8:	b8 3f       	bsr	125a <_sin_tbl+0x113e>
    21da:	b8 48       	bsr	126e <_sin_tbl+0x1152>
    21dc:	b8 51       	bsr	1282 <_sin_tbl+0x1166>
    21de:	b8 59       	bsr	1294 <_sin_tbl+0x1178>
    21e0:	b8 62       	bsr	12a8 <_sin_tbl+0x118c>
    21e2:	b8 6b       	bsr	12bc <_sin_tbl+0x11a0>
    21e4:	b8 73       	bsr	12ce <_sin_tbl+0x11b2>
    21e6:	b8 7c       	bsr	12e2 <_sin_tbl+0x11c6>
    21e8:	b8 85       	bsr	12f6 <_sin_tbl+0x11da>
    21ea:	b8 8e       	bsr	130a <_sin_tbl+0x11ee>
    21ec:	b8 96       	bsr	131c <_sin_tbl+0x1200>
    21ee:	b8 9f       	bsr	1330 <_sin_tbl+0x1214>
    21f0:	b8 a8       	bsr	1344 <_sin_tbl+0x1228>
    21f2:	b8 b0       	bsr	1356 <_sin_tbl+0x123a>
    21f4:	b8 b9       	bsr	136a <_sin_tbl+0x124e>
    21f6:	b8 c2       	bsr	137e <_sin_tbl+0x1262>
    21f8:	b8 cb       	bsr	1392 <_sin_tbl+0x1276>
    21fa:	b8 d3       	bsr	13a4 <_sin_tbl+0x1288>
    21fc:	b8 dc       	bsr	13b8 <_sin_tbl+0x129c>
    21fe:	b8 e5       	bsr	13cc <_sin_tbl+0x12b0>
    2200:	b8 ed       	bsr	13de <_sin_tbl+0x12c2>
    2202:	b8 f6       	bsr	13f2 <_sin_tbl+0x12d6>
    2204:	b8 ff       	bsr	1406 <_sin_tbl+0x12ea>
    2206:	b9 07       	bsr	1418 <_sin_tbl+0x12fc>
    2208:	b9 10       	bsr	142c <_sin_tbl+0x1310>
    220a:	b9 19       	bsr	1440 <_sin_tbl+0x1324>
    220c:	b9 21       	bsr	1452 <_sin_tbl+0x1336>
    220e:	b9 2a       	bsr	1466 <_sin_tbl+0x134a>
    2210:	b9 33       	bsr	147a <_sin_tbl+0x135e>
    2212:	b9 3b       	bsr	148c <_sin_tbl+0x1370>
    2214:	b9 44       	bsr	14a0 <_sin_tbl+0x1384>
    2216:	b9 4d       	bsr	14b4 <_sin_tbl+0x1398>
    2218:	b9 55       	bsr	14c6 <_sin_tbl+0x13aa>
    221a:	b9 5e       	bsr	14da <_sin_tbl+0x13be>
    221c:	b9 67       	bsr	14ee <_sin_tbl+0x13d2>
    221e:	b9 6f       	bsr	1500 <_sin_tbl+0x13e4>
    2220:	b9 78       	bsr	1514 <_sin_tbl+0x13f8>
    2222:	b9 81       	bsr	1528 <_sin_tbl+0x140c>
    2224:	b9 89       	bsr	153a <_sin_tbl+0x141e>
    2226:	b9 92       	bsr	154e <_sin_tbl+0x1432>
    2228:	b9 9b       	bsr	1562 <_sin_tbl+0x1446>
    222a:	b9 a3       	bsr	1574 <_sin_tbl+0x1458>
    222c:	b9 ac       	bsr	1588 <_sin_tbl+0x146c>
    222e:	b9 b5       	bsr	159c <_sin_tbl+0x1480>
    2230:	b9 bd       	bsr	15ae <_sin_tbl+0x1492>
    2232:	b9 c6       	bsr	15c2 <_sin_tbl+0x14a6>
    2234:	b9 cf       	bsr	15d6 <_sin_tbl+0x14ba>
    2236:	b9 d7       	bsr	15e8 <_sin_tbl+0x14cc>
    2238:	b9 e0       	bsr	15fc <_sin_tbl+0x14e0>
    223a:	b9 e9       	bsr	1610 <_sin_tbl+0x14f4>
    223c:	b9 f1       	bsr	1622 <_sin_tbl+0x1506>
    223e:	b9 fa       	bsr	1636 <_sin_tbl+0x151a>
    2240:	ba 02       	bsr	1648 <_sin_tbl+0x152c>
    2242:	ba 0b       	bsr	165c <_sin_tbl+0x1540>
    2244:	ba 14       	bsr	1670 <_sin_tbl+0x1554>
    2246:	ba 1c       	bsr	1682 <_sin_tbl+0x1566>
    2248:	ba 25       	bsr	1696 <_sin_tbl+0x157a>
    224a:	ba 2e       	bsr	16aa <_sin_tbl+0x158e>
    224c:	ba 36       	bsr	16bc <_sin_tbl+0x15a0>
    224e:	ba 3f       	bsr	16d0 <_sin_tbl+0x15b4>
    2250:	ba 47       	bsr	16e2 <_sin_tbl+0x15c6>
    2252:	ba 50       	bsr	16f6 <_sin_tbl+0x15da>
    2254:	ba 59       	bsr	170a <_sin_tbl+0x15ee>
    2256:	ba 61       	bsr	171c <_sin_tbl+0x1600>
    2258:	ba 6a       	bsr	1730 <_sin_tbl+0x1614>
    225a:	ba 73       	bsr	1744 <_sin_tbl+0x1628>
    225c:	ba 7b       	bsr	1756 <_sin_tbl+0x163a>
    225e:	ba 84       	bsr	176a <_sin_tbl+0x164e>
    2260:	ba 8c       	bsr	177c <_sin_tbl+0x1660>
    2262:	ba 95       	bsr	1790 <_sin_tbl+0x1674>
    2264:	ba 9e       	bsr	17a4 <_sin_tbl+0x1688>
    2266:	ba a6       	bsr	17b6 <_sin_tbl+0x169a>
    2268:	ba af       	bsr	17ca <_sin_tbl+0x16ae>
    226a:	ba b7       	bsr	17dc <_sin_tbl+0x16c0>
    226c:	ba c0       	bsr	17f0 <_sin_tbl+0x16d4>
    226e:	ba c9       	bsr	1804 <_sin_tbl+0x16e8>
    2270:	ba d1       	bsr	1816 <_sin_tbl+0x16fa>
    2272:	ba da       	bsr	182a <_sin_tbl+0x170e>
    2274:	ba e2       	bsr	183c <_sin_tbl+0x1720>
    2276:	ba eb       	bsr	1850 <_sin_tbl+0x1734>
    2278:	ba f3       	bsr	1862 <_sin_tbl+0x1746>
    227a:	ba fc       	bsr	1876 <_sin_tbl+0x175a>
    227c:	bb 05       	bsr	188a <_sin_tbl+0x176e>
    227e:	bb 0d       	bsr	189c <_sin_tbl+0x1780>
    2280:	bb 16       	bsr	18b0 <_sin_tbl+0x1794>
    2282:	bb 1e       	bsr	18c2 <_sin_tbl+0x17a6>
    2284:	bb 27       	bsr	18d6 <_sin_tbl+0x17ba>
    2286:	bb 30       	bsr	18ea <_sin_tbl+0x17ce>
    2288:	bb 38       	bsr	18fc <_sin_tbl+0x17e0>
    228a:	bb 41       	bsr	1910 <_sin_tbl+0x17f4>
    228c:	bb 49       	bsr	1922 <_sin_tbl+0x1806>
    228e:	bb 52       	bsr	1936 <_sin_tbl+0x181a>
    2290:	bb 5a       	bsr	1948 <_sin_tbl+0x182c>
    2292:	bb 63       	bsr	195c <_sin_tbl+0x1840>
    2294:	bb 6c       	bsr	1970 <_sin_tbl+0x1854>
    2296:	bb 74       	bsr	1982 <_sin_tbl+0x1866>
    2298:	bb 7d       	bsr	1996 <_sin_tbl+0x187a>
    229a:	bb 85       	bsr	19a8 <_sin_tbl+0x188c>
    229c:	bb 8e       	bsr	19bc <_sin_tbl+0x18a0>
    229e:	bb 96       	bsr	19ce <_sin_tbl+0x18b2>
    22a0:	bb 9f       	bsr	19e2 <_sin_tbl+0x18c6>
    22a2:	bb a7       	bsr	19f4 <_sin_tbl+0x18d8>
    22a4:	bb b0       	bsr	1a08 <_sin_tbl+0x18ec>
    22a6:	bb b8       	bsr	1a1a <_sin_tbl+0x18fe>
    22a8:	bb c1       	bsr	1a2e <_sin_tbl+0x1912>
    22aa:	bb ca       	bsr	1a42 <_sin_tbl+0x1926>
    22ac:	bb d2       	bsr	1a54 <_sin_tbl+0x1938>
    22ae:	bb db       	bsr	1a68 <_sin_tbl+0x194c>
    22b0:	bb e3       	bsr	1a7a <_sin_tbl+0x195e>
    22b2:	bb ec       	bsr	1a8e <_sin_tbl+0x1972>
    22b4:	bb f4       	bsr	1aa0 <_sin_tbl+0x1984>
    22b6:	bb fd       	bsr	1ab4 <_sin_tbl+0x1998>
    22b8:	bc 05       	bsr	1ac6 <_sin_tbl+0x19aa>
    22ba:	bc 0e       	bsr	1ada <_sin_tbl+0x19be>
    22bc:	bc 16       	bsr	1aec <_sin_tbl+0x19d0>
    22be:	bc 1f       	bsr	1b00 <_sin_tbl+0x19e4>
    22c0:	bc 27       	bsr	1b12 <_sin_tbl+0x19f6>
    22c2:	bc 30       	bsr	1b26 <_sin_tbl+0x1a0a>
    22c4:	bc 38       	bsr	1b38 <_sin_tbl+0x1a1c>
    22c6:	bc 41       	bsr	1b4c <_sin_tbl+0x1a30>
    22c8:	bc 49       	bsr	1b5e <_sin_tbl+0x1a42>
    22ca:	bc 52       	bsr	1b72 <_sin_tbl+0x1a56>
    22cc:	bc 5a       	bsr	1b84 <_sin_tbl+0x1a68>
    22ce:	bc 63       	bsr	1b98 <_sin_tbl+0x1a7c>
    22d0:	bc 6c       	bsr	1bac <_sin_tbl+0x1a90>
    22d2:	bc 74       	bsr	1bbe <_sin_tbl+0x1aa2>
    22d4:	bc 7d       	bsr	1bd2 <_sin_tbl+0x1ab6>
    22d6:	bc 85       	bsr	1be4 <_sin_tbl+0x1ac8>
    22d8:	bc 8e       	bsr	1bf8 <_sin_tbl+0x1adc>
    22da:	bc 96       	bsr	1c0a <_sin_tbl+0x1aee>
    22dc:	bc 9f       	bsr	1c1e <_sin_tbl+0x1b02>
    22de:	bc a7       	bsr	1c30 <_sin_tbl+0x1b14>
    22e0:	bc af       	bsr	1c42 <_sin_tbl+0x1b26>
    22e2:	bc b8       	bsr	1c56 <_sin_tbl+0x1b3a>
    22e4:	bc c0       	bsr	1c68 <_sin_tbl+0x1b4c>
    22e6:	bc c9       	bsr	1c7c <_sin_tbl+0x1b60>
    22e8:	bc d1       	bsr	1c8e <_sin_tbl+0x1b72>
    22ea:	bc da       	bsr	1ca2 <_sin_tbl+0x1b86>
    22ec:	bc e2       	bsr	1cb4 <_sin_tbl+0x1b98>
    22ee:	bc eb       	bsr	1cc8 <_sin_tbl+0x1bac>
    22f0:	bc f3       	bsr	1cda <_sin_tbl+0x1bbe>
    22f2:	bc fc       	bsr	1cee <_sin_tbl+0x1bd2>
    22f4:	bd 04       	bsr	1d00 <_sin_tbl+0x1be4>
    22f6:	bd 0d       	bsr	1d14 <_sin_tbl+0x1bf8>
    22f8:	bd 15       	bsr	1d26 <_sin_tbl+0x1c0a>
    22fa:	bd 1e       	bsr	1d3a <_sin_tbl+0x1c1e>
    22fc:	bd 26       	bsr	1d4c <_sin_tbl+0x1c30>
    22fe:	bd 2f       	bsr	1d60 <_sin_tbl+0x1c44>
    2300:	bd 37       	bsr	1d72 <_sin_tbl+0x1c56>
    2302:	bd 40       	bsr	1d86 <_sin_tbl+0x1c6a>
    2304:	bd 48       	bsr	1d98 <_sin_tbl+0x1c7c>
    2306:	bd 51       	bsr	1dac <_sin_tbl+0x1c90>
    2308:	bd 59       	bsr	1dbe <_sin_tbl+0x1ca2>
    230a:	bd 61       	bsr	1dd0 <_sin_tbl+0x1cb4>
    230c:	bd 6a       	bsr	1de4 <_sin_tbl+0x1cc8>
    230e:	bd 72       	bsr	1df6 <_sin_tbl+0x1cda>
    2310:	bd 7b       	bsr	1e0a <_sin_tbl+0x1cee>
    2312:	bd 83       	bsr	1e1c <_sin_tbl+0x1d00>
    2314:	bd 8c       	bsr	1e30 <_sin_tbl+0x1d14>
    2316:	bd 94       	bsr	1e42 <_sin_tbl+0x1d26>
    2318:	bd 9d       	bsr	1e56 <_sin_tbl+0x1d3a>
    231a:	bd a5       	bsr	1e68 <_sin_tbl+0x1d4c>
    231c:	bd ad       	bsr	1e7a <_sin_tbl+0x1d5e>
    231e:	bd b6       	bsr	1e8e <_sin_tbl+0x1d72>
    2320:	bd be       	bsr	1ea0 <_sin_tbl+0x1d84>
    2322:	bd c7       	bsr	1eb4 <_sin_tbl+0x1d98>
    2324:	bd cf       	bsr	1ec6 <_sin_tbl+0x1daa>
    2326:	bd d8       	bsr	1eda <_sin_tbl+0x1dbe>
    2328:	bd e0       	bsr	1eec <_sin_tbl+0x1dd0>
    232a:	bd e9       	bsr	1f00 <_sin_tbl+0x1de4>
    232c:	bd f1       	bsr	1f12 <_sin_tbl+0x1df6>
    232e:	bd f9       	bsr	1f24 <_sin_tbl+0x1e08>
    2330:	be 02       	bsr	1f38 <_sin_tbl+0x1e1c>
    2332:	be 0a       	bsr	1f4a <_sin_tbl+0x1e2e>
    2334:	be 13       	bsr	1f5e <_sin_tbl+0x1e42>
    2336:	be 1b       	bsr	1f70 <_sin_tbl+0x1e54>
    2338:	be 23       	bsr	1f82 <_sin_tbl+0x1e66>
    233a:	be 2c       	bsr	1f96 <_sin_tbl+0x1e7a>
    233c:	be 34       	bsr	1fa8 <_sin_tbl+0x1e8c>
    233e:	be 3d       	bsr	1fbc <_sin_tbl+0x1ea0>
    2340:	be 45       	bsr	1fce <_sin_tbl+0x1eb2>
    2342:	be 4d       	bsr	1fe0 <_sin_tbl+0x1ec4>
    2344:	be 56       	bsr	1ff4 <_sin_tbl+0x1ed8>
    2346:	be 5e       	bsr	2006 <_sin_tbl+0x1eea>
    2348:	be 67       	bsr	201a <_sin_tbl+0x1efe>
    234a:	be 6f       	bsr	202c <_sin_tbl+0x1f10>
    234c:	be 77       	bsr	203e <_sin_tbl+0x1f22>
    234e:	be 80       	bsr	2052 <_sin_tbl+0x1f36>
    2350:	be 88       	bsr	2064 <_sin_tbl+0x1f48>
    2352:	be 91       	bsr	2078 <_sin_tbl+0x1f5c>
    2354:	be 99       	bsr	208a <_sin_tbl+0x1f6e>
    2356:	be a1       	bsr	209c <_sin_tbl+0x1f80>
    2358:	be aa       	bsr	20b0 <_sin_tbl+0x1f94>
    235a:	be b2       	bsr	20c2 <_sin_tbl+0x1fa6>
    235c:	be bb       	bsr	20d6 <_sin_tbl+0x1fba>
    235e:	be c3       	bsr	20e8 <_sin_tbl+0x1fcc>
    2360:	be cb       	bsr	20fa <_sin_tbl+0x1fde>
    2362:	be d4       	bsr	210e <_sin_tbl+0x1ff2>
    2364:	be dc       	bsr	2120 <_sin_tbl+0x2004>
    2366:	be e4       	bsr	2132 <_sin_tbl+0x2016>
    2368:	be ed       	bsr	2146 <_sin_tbl+0x202a>
    236a:	be f5       	bsr	2158 <_sin_tbl+0x203c>
    236c:	be fe       	bsr	216c <_sin_tbl+0x2050>
    236e:	bf 06       	bsr	217e <_sin_tbl+0x2062>
    2370:	bf 0e       	bsr	2190 <_sin_tbl+0x2074>
    2372:	bf 17       	bsr	21a4 <_sin_tbl+0x2088>
    2374:	bf 1f       	bsr	21b6 <_sin_tbl+0x209a>
    2376:	bf 27       	bsr	21c8 <_sin_tbl+0x20ac>
    2378:	bf 30       	bsr	21dc <_sin_tbl+0x20c0>
    237a:	bf 38       	bsr	21ee <_sin_tbl+0x20d2>
    237c:	bf 40       	bsr	2200 <_sin_tbl+0x20e4>
    237e:	bf 49       	bsr	2214 <_sin_tbl+0x20f8>
    2380:	bf 51       	bsr	2226 <_sin_tbl+0x210a>
    2382:	bf 5a       	bsr	223a <_sin_tbl+0x211e>
    2384:	bf 62       	bsr	224c <_sin_tbl+0x2130>
    2386:	bf 6a       	bsr	225e <_sin_tbl+0x2142>
    2388:	bf 73       	bsr	2272 <_sin_tbl+0x2156>
    238a:	bf 7b       	bsr	2284 <_sin_tbl+0x2168>
    238c:	bf 83       	bsr	2296 <_sin_tbl+0x217a>
    238e:	bf 8c       	bsr	22aa <_sin_tbl+0x218e>
    2390:	bf 94       	bsr	22bc <_sin_tbl+0x21a0>
    2392:	bf 9c       	bsr	22ce <_sin_tbl+0x21b2>
    2394:	bf a5       	bsr	22e2 <_sin_tbl+0x21c6>
    2396:	bf ad       	bsr	22f4 <_sin_tbl+0x21d8>
    2398:	bf b5       	bsr	2306 <_sin_tbl+0x21ea>
    239a:	bf be       	bsr	231a <_sin_tbl+0x21fe>
    239c:	bf c6       	bsr	232c <_sin_tbl+0x2210>
    239e:	bf ce       	bsr	233e <_sin_tbl+0x2222>
    23a0:	bf d7       	bsr	2352 <_sin_tbl+0x2236>
    23a2:	bf df       	bsr	2364 <_sin_tbl+0x2248>
    23a4:	bf e7       	bsr	2376 <_sin_tbl+0x225a>
    23a6:	bf f0       	bsr	238a <_sin_tbl+0x226e>
    23a8:	bf f8       	bsr	239c <_sin_tbl+0x2280>
    23aa:	c0 00       	mov.b	r0,@(0,gbr)
    23ac:	c0 08       	mov.b	r0,@(8,gbr)
    23ae:	c0 11       	mov.b	r0,@(17,gbr)
    23b0:	c0 19       	mov.b	r0,@(25,gbr)
    23b2:	c0 21       	mov.b	r0,@(33,gbr)
    23b4:	c0 2a       	mov.b	r0,@(42,gbr)
    23b6:	c0 32       	mov.b	r0,@(50,gbr)
    23b8:	c0 3a       	mov.b	r0,@(58,gbr)
    23ba:	c0 43       	mov.b	r0,@(67,gbr)
    23bc:	c0 4b       	mov.b	r0,@(75,gbr)
    23be:	c0 53       	mov.b	r0,@(83,gbr)
    23c0:	c0 5b       	mov.b	r0,@(91,gbr)
    23c2:	c0 64       	mov.b	r0,@(100,gbr)
    23c4:	c0 6c       	mov.b	r0,@(108,gbr)
    23c6:	c0 74       	mov.b	r0,@(116,gbr)
    23c8:	c0 7d       	mov.b	r0,@(125,gbr)
    23ca:	c0 85       	mov.b	r0,@(133,gbr)
    23cc:	c0 8d       	mov.b	r0,@(141,gbr)
    23ce:	c0 95       	mov.b	r0,@(149,gbr)
    23d0:	c0 9e       	mov.b	r0,@(158,gbr)
    23d2:	c0 a6       	mov.b	r0,@(166,gbr)
    23d4:	c0 ae       	mov.b	r0,@(174,gbr)
    23d6:	c0 b7       	mov.b	r0,@(183,gbr)
    23d8:	c0 bf       	mov.b	r0,@(191,gbr)
    23da:	c0 c7       	mov.b	r0,@(199,gbr)
    23dc:	c0 cf       	mov.b	r0,@(207,gbr)
    23de:	c0 d8       	mov.b	r0,@(216,gbr)
    23e0:	c0 e0       	mov.b	r0,@(224,gbr)
    23e2:	c0 e8       	mov.b	r0,@(232,gbr)
    23e4:	c0 f0       	mov.b	r0,@(240,gbr)
    23e6:	c0 f9       	mov.b	r0,@(249,gbr)
    23e8:	c1 01       	mov.w	r0,@(2,gbr)
    23ea:	c1 09       	mov.w	r0,@(18,gbr)
    23ec:	c1 11       	mov.w	r0,@(34,gbr)
    23ee:	c1 1a       	mov.w	r0,@(52,gbr)
    23f0:	c1 22       	mov.w	r0,@(68,gbr)
    23f2:	c1 2a       	mov.w	r0,@(84,gbr)
    23f4:	c1 32       	mov.w	r0,@(100,gbr)
    23f6:	c1 3b       	mov.w	r0,@(118,gbr)
    23f8:	c1 43       	mov.w	r0,@(134,gbr)
    23fa:	c1 4b       	mov.w	r0,@(150,gbr)
    23fc:	c1 53       	mov.w	r0,@(166,gbr)
    23fe:	c1 5c       	mov.w	r0,@(184,gbr)
    2400:	c1 64       	mov.w	r0,@(200,gbr)
    2402:	c1 6c       	mov.w	r0,@(216,gbr)
    2404:	c1 74       	mov.w	r0,@(232,gbr)
    2406:	c1 7d       	mov.w	r0,@(250,gbr)
    2408:	c1 85       	mov.w	r0,@(266,gbr)
    240a:	c1 8d       	mov.w	r0,@(282,gbr)
    240c:	c1 95       	mov.w	r0,@(298,gbr)
    240e:	c1 9d       	mov.w	r0,@(314,gbr)
    2410:	c1 a6       	mov.w	r0,@(332,gbr)
    2412:	c1 ae       	mov.w	r0,@(348,gbr)
    2414:	c1 b6       	mov.w	r0,@(364,gbr)
    2416:	c1 be       	mov.w	r0,@(380,gbr)
    2418:	c1 c7       	mov.w	r0,@(398,gbr)
    241a:	c1 cf       	mov.w	r0,@(414,gbr)
    241c:	c1 d7       	mov.w	r0,@(430,gbr)
    241e:	c1 df       	mov.w	r0,@(446,gbr)
    2420:	c1 e7       	mov.w	r0,@(462,gbr)
    2422:	c1 f0       	mov.w	r0,@(480,gbr)
    2424:	c1 f8       	mov.w	r0,@(496,gbr)
    2426:	c2 00       	mov.l	r0,@(0,gbr)
    2428:	c2 08       	mov.l	r0,@(32,gbr)
    242a:	c2 10       	mov.l	r0,@(64,gbr)
    242c:	c2 19       	mov.l	r0,@(100,gbr)
    242e:	c2 21       	mov.l	r0,@(132,gbr)
    2430:	c2 29       	mov.l	r0,@(164,gbr)
    2432:	c2 31       	mov.l	r0,@(196,gbr)
    2434:	c2 39       	mov.l	r0,@(228,gbr)
    2436:	c2 41       	mov.l	r0,@(260,gbr)
    2438:	c2 4a       	mov.l	r0,@(296,gbr)
    243a:	c2 52       	mov.l	r0,@(328,gbr)
    243c:	c2 5a       	mov.l	r0,@(360,gbr)
    243e:	c2 62       	mov.l	r0,@(392,gbr)
    2440:	c2 6a       	mov.l	r0,@(424,gbr)
    2442:	c2 73       	mov.l	r0,@(460,gbr)
    2444:	c2 7b       	mov.l	r0,@(492,gbr)
    2446:	c2 83       	mov.l	r0,@(524,gbr)
    2448:	c2 8b       	mov.l	r0,@(556,gbr)
    244a:	c2 93       	mov.l	r0,@(588,gbr)
    244c:	c2 9b       	mov.l	r0,@(620,gbr)
    244e:	c2 a4       	mov.l	r0,@(656,gbr)
    2450:	c2 ac       	mov.l	r0,@(688,gbr)
    2452:	c2 b4       	mov.l	r0,@(720,gbr)
    2454:	c2 bc       	mov.l	r0,@(752,gbr)
    2456:	c2 c4       	mov.l	r0,@(784,gbr)
    2458:	c2 cc       	mov.l	r0,@(816,gbr)
    245a:	c2 d5       	mov.l	r0,@(852,gbr)
    245c:	c2 dd       	mov.l	r0,@(884,gbr)
    245e:	c2 e5       	mov.l	r0,@(916,gbr)
    2460:	c2 ed       	mov.l	r0,@(948,gbr)
    2462:	c2 f5       	mov.l	r0,@(980,gbr)
    2464:	c2 fd       	mov.l	r0,@(1012,gbr)
    2466:	c3 05       	trapa	#5
    2468:	c3 0e       	trapa	#14
    246a:	c3 16       	trapa	#22
    246c:	c3 1e       	trapa	#30
    246e:	c3 26       	trapa	#38
    2470:	c3 2e       	trapa	#46
    2472:	c3 36       	trapa	#54
    2474:	c3 3e       	trapa	#62
    2476:	c3 46       	trapa	#70
    2478:	c3 4f       	trapa	#79
    247a:	c3 57       	trapa	#87
    247c:	c3 5f       	trapa	#95
    247e:	c3 67       	trapa	#103
    2480:	c3 6f       	trapa	#111
    2482:	c3 77       	trapa	#119
    2484:	c3 7f       	trapa	#127
    2486:	c3 87       	trapa	#-121
    2488:	c3 90       	trapa	#-112
    248a:	c3 98       	trapa	#-104
    248c:	c3 a0       	trapa	#-96
    248e:	c3 a8       	trapa	#-88
    2490:	c3 b0       	trapa	#-80
    2492:	c3 b8       	trapa	#-72
    2494:	c3 c0       	trapa	#-64
    2496:	c3 c8       	trapa	#-56
    2498:	c3 d0       	trapa	#-48
    249a:	c3 d8       	trapa	#-40
    249c:	c3 e1       	trapa	#-31
    249e:	c3 e9       	trapa	#-23
    24a0:	c3 f1       	trapa	#-15
    24a2:	c3 f9       	trapa	#-7
    24a4:	c4 01       	mov.b	@(1,gbr),r0
    24a6:	c4 09       	mov.b	@(9,gbr),r0
    24a8:	c4 11       	mov.b	@(17,gbr),r0
    24aa:	c4 19       	mov.b	@(25,gbr),r0
    24ac:	c4 21       	mov.b	@(33,gbr),r0
    24ae:	c4 29       	mov.b	@(41,gbr),r0
    24b0:	c4 31       	mov.b	@(49,gbr),r0
    24b2:	c4 39       	mov.b	@(57,gbr),r0
    24b4:	c4 41       	mov.b	@(65,gbr),r0
    24b6:	c4 4a       	mov.b	@(74,gbr),r0
    24b8:	c4 52       	mov.b	@(82,gbr),r0
    24ba:	c4 5a       	mov.b	@(90,gbr),r0
    24bc:	c4 62       	mov.b	@(98,gbr),r0
    24be:	c4 6a       	mov.b	@(106,gbr),r0
    24c0:	c4 72       	mov.b	@(114,gbr),r0
    24c2:	c4 7a       	mov.b	@(122,gbr),r0
    24c4:	c4 82       	mov.b	@(130,gbr),r0
    24c6:	c4 8a       	mov.b	@(138,gbr),r0
    24c8:	c4 92       	mov.b	@(146,gbr),r0
    24ca:	c4 9a       	mov.b	@(154,gbr),r0
    24cc:	c4 a2       	mov.b	@(162,gbr),r0
    24ce:	c4 aa       	mov.b	@(170,gbr),r0
    24d0:	c4 b2       	mov.b	@(178,gbr),r0
    24d2:	c4 ba       	mov.b	@(186,gbr),r0
    24d4:	c4 c2       	mov.b	@(194,gbr),r0
    24d6:	c4 ca       	mov.b	@(202,gbr),r0
    24d8:	c4 d2       	mov.b	@(210,gbr),r0
    24da:	c4 da       	mov.b	@(218,gbr),r0
    24dc:	c4 e2       	mov.b	@(226,gbr),r0
    24de:	c4 ea       	mov.b	@(234,gbr),r0
    24e0:	c4 f3       	mov.b	@(243,gbr),r0
    24e2:	c4 fb       	mov.b	@(251,gbr),r0
    24e4:	c5 03       	mov.w	@(6,gbr),r0
    24e6:	c5 0b       	mov.w	@(22,gbr),r0
    24e8:	c5 13       	mov.w	@(38,gbr),r0
    24ea:	c5 1b       	mov.w	@(54,gbr),r0
    24ec:	c5 23       	mov.w	@(70,gbr),r0
    24ee:	c5 2b       	mov.w	@(86,gbr),r0
    24f0:	c5 33       	mov.w	@(102,gbr),r0
    24f2:	c5 3b       	mov.w	@(118,gbr),r0
    24f4:	c5 43       	mov.w	@(134,gbr),r0
    24f6:	c5 4b       	mov.w	@(150,gbr),r0
    24f8:	c5 53       	mov.w	@(166,gbr),r0
    24fa:	c5 5b       	mov.w	@(182,gbr),r0
    24fc:	c5 63       	mov.w	@(198,gbr),r0
    24fe:	c5 6b       	mov.w	@(214,gbr),r0
    2500:	c5 73       	mov.w	@(230,gbr),r0
    2502:	c5 7b       	mov.w	@(246,gbr),r0
    2504:	c5 83       	mov.w	@(262,gbr),r0
    2506:	c5 8b       	mov.w	@(278,gbr),r0
    2508:	c5 93       	mov.w	@(294,gbr),r0
    250a:	c5 9b       	mov.w	@(310,gbr),r0
    250c:	c5 a3       	mov.w	@(326,gbr),r0
    250e:	c5 ab       	mov.w	@(342,gbr),r0
    2510:	c5 b3       	mov.w	@(358,gbr),r0
    2512:	c5 bb       	mov.w	@(374,gbr),r0
    2514:	c5 c3       	mov.w	@(390,gbr),r0
    2516:	c5 cb       	mov.w	@(406,gbr),r0
    2518:	c5 d3       	mov.w	@(422,gbr),r0
    251a:	c5 db       	mov.w	@(438,gbr),r0
    251c:	c5 e3       	mov.w	@(454,gbr),r0
    251e:	c5 ea       	mov.w	@(468,gbr),r0
    2520:	c5 f2       	mov.w	@(484,gbr),r0
    2522:	c5 fa       	mov.w	@(500,gbr),r0
    2524:	c6 02       	mov.l	@(8,gbr),r0
    2526:	c6 0a       	mov.l	@(40,gbr),r0
    2528:	c6 12       	mov.l	@(72,gbr),r0
    252a:	c6 1a       	mov.l	@(104,gbr),r0
    252c:	c6 22       	mov.l	@(136,gbr),r0
    252e:	c6 2a       	mov.l	@(168,gbr),r0
    2530:	c6 32       	mov.l	@(200,gbr),r0
    2532:	c6 3a       	mov.l	@(232,gbr),r0
    2534:	c6 42       	mov.l	@(264,gbr),r0
    2536:	c6 4a       	mov.l	@(296,gbr),r0
    2538:	c6 52       	mov.l	@(328,gbr),r0
    253a:	c6 5a       	mov.l	@(360,gbr),r0
    253c:	c6 62       	mov.l	@(392,gbr),r0
    253e:	c6 6a       	mov.l	@(424,gbr),r0
    2540:	c6 72       	mov.l	@(456,gbr),r0
    2542:	c6 7a       	mov.l	@(488,gbr),r0
    2544:	c6 82       	mov.l	@(520,gbr),r0
    2546:	c6 8a       	mov.l	@(552,gbr),r0
    2548:	c6 91       	mov.l	@(580,gbr),r0
    254a:	c6 99       	mov.l	@(612,gbr),r0
    254c:	c6 a1       	mov.l	@(644,gbr),r0
    254e:	c6 a9       	mov.l	@(676,gbr),r0
    2550:	c6 b1       	mov.l	@(708,gbr),r0
    2552:	c6 b9       	mov.l	@(740,gbr),r0
    2554:	c6 c1       	mov.l	@(772,gbr),r0
    2556:	c6 c9       	mov.l	@(804,gbr),r0
    2558:	c6 d1       	mov.l	@(836,gbr),r0
    255a:	c6 d9       	mov.l	@(868,gbr),r0
    255c:	c6 e1       	mov.l	@(900,gbr),r0
    255e:	c6 e9       	mov.l	@(932,gbr),r0
    2560:	c6 f0       	mov.l	@(960,gbr),r0
    2562:	c6 f8       	mov.l	@(992,gbr),r0
    2564:	c7 00       	mova	2568 <_sin_tbl+0x244c>,r0
    2566:	c7 08       	mova	2588 <_sin_tbl+0x246c>,r0
    2568:	c7 10       	mova	25ac <_sin_tbl+0x2490>,r0
    256a:	c7 18       	mova	25cc <_sin_tbl+0x24b0>,r0
    256c:	c7 20       	mova	25f0 <_sin_tbl+0x24d4>,r0
    256e:	c7 28       	mova	2610 <_sin_tbl+0x24f4>,r0
    2570:	c7 30       	mova	2634 <_sin_tbl+0x2518>,r0
    2572:	c7 38       	mova	2654 <_sin_tbl+0x2538>,r0
    2574:	c7 3f       	mova	2674 <_sin_tbl+0x2558>,r0
    2576:	c7 47       	mova	2694 <_sin_tbl+0x2578>,r0
    2578:	c7 4f       	mova	26b8 <_sin_tbl+0x259c>,r0
    257a:	c7 57       	mova	26d8 <_sin_tbl+0x25bc>,r0
    257c:	c7 5f       	mova	26fc <_sin_tbl+0x25e0>,r0
    257e:	c7 67       	mova	271c <_sin_tbl+0x2600>,r0
    2580:	c7 6f       	mova	2740 <_sin_tbl+0x2624>,r0
    2582:	c7 77       	mova	2760 <_sin_tbl+0x2644>,r0
    2584:	c7 7f       	mova	2784 <_sin_tbl+0x2668>,r0
    2586:	c7 86       	mova	27a0 <_sin_tbl+0x2684>,r0
    2588:	c7 8e       	mova	27c4 <_sin_tbl+0x26a8>,r0
    258a:	c7 96       	mova	27e4 <_sin_tbl+0x26c8>,r0
    258c:	c7 9e       	mova	2808 <_sin_tbl+0x26ec>,r0
    258e:	c7 a6       	mova	2828 <_sin_tbl+0x270c>,r0
    2590:	c7 ae       	mova	284c <_sin_tbl+0x2730>,r0
    2592:	c7 b6       	mova	286c <_sin_tbl+0x2750>,r0
    2594:	c7 bd       	mova	288c <_sin_tbl+0x2770>,r0
    2596:	c7 c5       	mova	28ac <_sin_tbl+0x2790>,r0
    2598:	c7 cd       	mova	28d0 <_sin_tbl+0x27b4>,r0
    259a:	c7 d5       	mova	28f0 <_sin_tbl+0x27d4>,r0
    259c:	c7 dd       	mova	2914 <_sin_tbl+0x27f8>,r0
    259e:	c7 e5       	mova	2934 <_sin_tbl+0x2818>,r0
    25a0:	c7 ed       	mova	2958 <_sin_tbl+0x283c>,r0
    25a2:	c7 f4       	mova	2974 <_sin_tbl+0x2858>,r0
    25a4:	c7 fc       	mova	2998 <_sin_tbl+0x287c>,r0
    25a6:	c8 04       	tst	#4,r0
    25a8:	c8 0c       	tst	#12,r0
    25aa:	c8 14       	tst	#20,r0
    25ac:	c8 1c       	tst	#28,r0
    25ae:	c8 23       	tst	#35,r0
    25b0:	c8 2b       	tst	#43,r0
    25b2:	c8 33       	tst	#51,r0
    25b4:	c8 3b       	tst	#59,r0
    25b6:	c8 43       	tst	#67,r0
    25b8:	c8 4b       	tst	#75,r0
    25ba:	c8 52       	tst	#82,r0
    25bc:	c8 5a       	tst	#90,r0
    25be:	c8 62       	tst	#98,r0
    25c0:	c8 6a       	tst	#106,r0
    25c2:	c8 72       	tst	#114,r0
    25c4:	c8 7a       	tst	#122,r0
    25c6:	c8 81       	tst	#-127,r0
    25c8:	c8 89       	tst	#-119,r0
    25ca:	c8 91       	tst	#-111,r0
    25cc:	c8 99       	tst	#-103,r0
    25ce:	c8 a1       	tst	#-95,r0
    25d0:	c8 a8       	tst	#-88,r0
    25d2:	c8 b0       	tst	#-80,r0
    25d4:	c8 b8       	tst	#-72,r0
    25d6:	c8 c0       	tst	#-64,r0
    25d8:	c8 c8       	tst	#-56,r0
    25da:	c8 cf       	tst	#-49,r0
    25dc:	c8 d7       	tst	#-41,r0
    25de:	c8 df       	tst	#-33,r0
    25e0:	c8 e7       	tst	#-25,r0
    25e2:	c8 ef       	tst	#-17,r0
    25e4:	c8 f6       	tst	#-10,r0
    25e6:	c8 fe       	tst	#-2,r0
    25e8:	c9 06       	and	#6,r0
    25ea:	c9 0e       	and	#14,r0
    25ec:	c9 15       	and	#21,r0
    25ee:	c9 1d       	and	#29,r0
    25f0:	c9 25       	and	#37,r0
    25f2:	c9 2d       	and	#45,r0
    25f4:	c9 35       	and	#53,r0
    25f6:	c9 3c       	and	#60,r0
    25f8:	c9 44       	and	#68,r0
    25fa:	c9 4c       	and	#76,r0
    25fc:	c9 54       	and	#84,r0
    25fe:	c9 5b       	and	#91,r0
    2600:	c9 63       	and	#99,r0
    2602:	c9 6b       	and	#107,r0
    2604:	c9 73       	and	#115,r0
    2606:	c9 7a       	and	#122,r0
    2608:	c9 82       	and	#-126,r0
    260a:	c9 8a       	and	#-118,r0
    260c:	c9 92       	and	#-110,r0
    260e:	c9 99       	and	#-103,r0
    2610:	c9 a1       	and	#-95,r0
    2612:	c9 a9       	and	#-87,r0
    2614:	c9 b1       	and	#-79,r0
    2616:	c9 b8       	and	#-72,r0
    2618:	c9 c0       	and	#-64,r0
    261a:	c9 c8       	and	#-56,r0
    261c:	c9 d0       	and	#-48,r0
    261e:	c9 d7       	and	#-41,r0
    2620:	c9 df       	and	#-33,r0
    2622:	c9 e7       	and	#-25,r0
    2624:	c9 ee       	and	#-18,r0
    2626:	c9 f6       	and	#-10,r0
    2628:	c9 fe       	and	#-2,r0
    262a:	ca 06       	xor	#6,r0
    262c:	ca 0d       	xor	#13,r0
    262e:	ca 15       	xor	#21,r0
    2630:	ca 1d       	xor	#29,r0
    2632:	ca 25       	xor	#37,r0
    2634:	ca 2c       	xor	#44,r0
    2636:	ca 34       	xor	#52,r0
    2638:	ca 3c       	xor	#60,r0
    263a:	ca 43       	xor	#67,r0
    263c:	ca 4b       	xor	#75,r0
    263e:	ca 53       	xor	#83,r0
    2640:	ca 5a       	xor	#90,r0
    2642:	ca 62       	xor	#98,r0
    2644:	ca 6a       	xor	#106,r0
    2646:	ca 72       	xor	#114,r0
    2648:	ca 79       	xor	#121,r0
    264a:	ca 81       	xor	#-127,r0
    264c:	ca 89       	xor	#-119,r0
    264e:	ca 90       	xor	#-112,r0
    2650:	ca 98       	xor	#-104,r0
    2652:	ca a0       	xor	#-96,r0
    2654:	ca a7       	xor	#-89,r0
    2656:	ca af       	xor	#-81,r0
    2658:	ca b7       	xor	#-73,r0
    265a:	ca be       	xor	#-66,r0
    265c:	ca c6       	xor	#-58,r0
    265e:	ca ce       	xor	#-50,r0
    2660:	ca d5       	xor	#-43,r0
    2662:	ca dd       	xor	#-35,r0
    2664:	ca e5       	xor	#-27,r0
    2666:	ca ec       	xor	#-20,r0
    2668:	ca f4       	xor	#-12,r0
    266a:	ca fc       	xor	#-4,r0
    266c:	cb 03       	or	#3,r0
    266e:	cb 0b       	or	#11,r0
    2670:	cb 13       	or	#19,r0
    2672:	cb 1a       	or	#26,r0
    2674:	cb 22       	or	#34,r0
    2676:	cb 2a       	or	#42,r0
    2678:	cb 31       	or	#49,r0
    267a:	cb 39       	or	#57,r0
    267c:	cb 40       	or	#64,r0
    267e:	cb 48       	or	#72,r0
    2680:	cb 50       	or	#80,r0
    2682:	cb 57       	or	#87,r0
    2684:	cb 5f       	or	#95,r0
    2686:	cb 67       	or	#103,r0
    2688:	cb 6e       	or	#110,r0
    268a:	cb 76       	or	#118,r0
    268c:	cb 7e       	or	#126,r0
    268e:	cb 85       	or	#-123,r0
    2690:	cb 8d       	or	#-115,r0
    2692:	cb 94       	or	#-108,r0
    2694:	cb 9c       	or	#-100,r0
    2696:	cb a4       	or	#-92,r0
    2698:	cb ab       	or	#-85,r0
    269a:	cb b3       	or	#-77,r0
    269c:	cb ba       	or	#-70,r0
    269e:	cb c2       	or	#-62,r0
    26a0:	cb ca       	or	#-54,r0
    26a2:	cb d1       	or	#-47,r0
    26a4:	cb d9       	or	#-39,r0
    26a6:	cb e0       	or	#-32,r0
    26a8:	cb e8       	or	#-24,r0
    26aa:	cb f0       	or	#-16,r0
    26ac:	cb f7       	or	#-9,r0
    26ae:	cb ff       	or	#-1,r0
    26b0:	cc 06       	tst.b	#6,@(r0,gbr)
    26b2:	cc 0e       	tst.b	#14,@(r0,gbr)
    26b4:	cc 16       	tst.b	#22,@(r0,gbr)
    26b6:	cc 1d       	tst.b	#29,@(r0,gbr)
    26b8:	cc 25       	tst.b	#37,@(r0,gbr)
    26ba:	cc 2c       	tst.b	#44,@(r0,gbr)
    26bc:	cc 34       	tst.b	#52,@(r0,gbr)
    26be:	cc 3c       	tst.b	#60,@(r0,gbr)
    26c0:	cc 43       	tst.b	#67,@(r0,gbr)
    26c2:	cc 4b       	tst.b	#75,@(r0,gbr)
    26c4:	cc 52       	tst.b	#82,@(r0,gbr)
    26c6:	cc 5a       	tst.b	#90,@(r0,gbr)
    26c8:	cc 61       	tst.b	#97,@(r0,gbr)
    26ca:	cc 69       	tst.b	#105,@(r0,gbr)
    26cc:	cc 71       	tst.b	#113,@(r0,gbr)
    26ce:	cc 78       	tst.b	#120,@(r0,gbr)
    26d0:	cc 80       	tst.b	#-128,@(r0,gbr)
    26d2:	cc 87       	tst.b	#-121,@(r0,gbr)
    26d4:	cc 8f       	tst.b	#-113,@(r0,gbr)
    26d6:	cc 96       	tst.b	#-106,@(r0,gbr)
    26d8:	cc 9e       	tst.b	#-98,@(r0,gbr)
    26da:	cc a5       	tst.b	#-91,@(r0,gbr)
    26dc:	cc ad       	tst.b	#-83,@(r0,gbr)
    26de:	cc b5       	tst.b	#-75,@(r0,gbr)
    26e0:	cc bc       	tst.b	#-68,@(r0,gbr)
    26e2:	cc c4       	tst.b	#-60,@(r0,gbr)
    26e4:	cc cb       	tst.b	#-53,@(r0,gbr)
    26e6:	cc d3       	tst.b	#-45,@(r0,gbr)
    26e8:	cc da       	tst.b	#-38,@(r0,gbr)
    26ea:	cc e2       	tst.b	#-30,@(r0,gbr)
    26ec:	cc e9       	tst.b	#-23,@(r0,gbr)
    26ee:	cc f1       	tst.b	#-15,@(r0,gbr)
    26f0:	cc f8       	tst.b	#-8,@(r0,gbr)
    26f2:	cd 00       	and.b	#0,@(r0,gbr)
    26f4:	cd 07       	and.b	#7,@(r0,gbr)
    26f6:	cd 0f       	and.b	#15,@(r0,gbr)
    26f8:	cd 16       	and.b	#22,@(r0,gbr)
    26fa:	cd 1e       	and.b	#30,@(r0,gbr)
    26fc:	cd 25       	and.b	#37,@(r0,gbr)
    26fe:	cd 2d       	and.b	#45,@(r0,gbr)
    2700:	cd 35       	and.b	#53,@(r0,gbr)
    2702:	cd 3c       	and.b	#60,@(r0,gbr)
    2704:	cd 44       	and.b	#68,@(r0,gbr)
    2706:	cd 4b       	and.b	#75,@(r0,gbr)
    2708:	cd 53       	and.b	#83,@(r0,gbr)
    270a:	cd 5a       	and.b	#90,@(r0,gbr)
    270c:	cd 62       	and.b	#98,@(r0,gbr)
    270e:	cd 69       	and.b	#105,@(r0,gbr)
    2710:	cd 71       	and.b	#113,@(r0,gbr)
    2712:	cd 78       	and.b	#120,@(r0,gbr)
    2714:	cd 80       	and.b	#-128,@(r0,gbr)
    2716:	cd 87       	and.b	#-121,@(r0,gbr)
    2718:	cd 8f       	and.b	#-113,@(r0,gbr)
    271a:	cd 96       	and.b	#-106,@(r0,gbr)
    271c:	cd 9e       	and.b	#-98,@(r0,gbr)
    271e:	cd a5       	and.b	#-91,@(r0,gbr)
    2720:	cd ac       	and.b	#-84,@(r0,gbr)
    2722:	cd b4       	and.b	#-76,@(r0,gbr)
    2724:	cd bb       	and.b	#-69,@(r0,gbr)
    2726:	cd c3       	and.b	#-61,@(r0,gbr)
    2728:	cd ca       	and.b	#-54,@(r0,gbr)
    272a:	cd d2       	and.b	#-46,@(r0,gbr)
    272c:	cd d9       	and.b	#-39,@(r0,gbr)
    272e:	cd e1       	and.b	#-31,@(r0,gbr)
    2730:	cd e8       	and.b	#-24,@(r0,gbr)
    2732:	cd f0       	and.b	#-16,@(r0,gbr)
    2734:	cd f7       	and.b	#-9,@(r0,gbr)
    2736:	cd ff       	and.b	#-1,@(r0,gbr)
    2738:	ce 06       	xor.b	#6,@(r0,gbr)
    273a:	ce 0e       	xor.b	#14,@(r0,gbr)
    273c:	ce 15       	xor.b	#21,@(r0,gbr)
    273e:	ce 1c       	xor.b	#28,@(r0,gbr)
    2740:	ce 24       	xor.b	#36,@(r0,gbr)
    2742:	ce 2b       	xor.b	#43,@(r0,gbr)
    2744:	ce 33       	xor.b	#51,@(r0,gbr)
    2746:	ce 3a       	xor.b	#58,@(r0,gbr)
    2748:	ce 42       	xor.b	#66,@(r0,gbr)
    274a:	ce 49       	xor.b	#73,@(r0,gbr)
    274c:	ce 51       	xor.b	#81,@(r0,gbr)
    274e:	ce 58       	xor.b	#88,@(r0,gbr)
    2750:	ce 5f       	xor.b	#95,@(r0,gbr)
    2752:	ce 67       	xor.b	#103,@(r0,gbr)
    2754:	ce 6e       	xor.b	#110,@(r0,gbr)
    2756:	ce 76       	xor.b	#118,@(r0,gbr)
    2758:	ce 7d       	xor.b	#125,@(r0,gbr)
    275a:	ce 85       	xor.b	#-123,@(r0,gbr)
    275c:	ce 8c       	xor.b	#-116,@(r0,gbr)
    275e:	ce 93       	xor.b	#-109,@(r0,gbr)
    2760:	ce 9b       	xor.b	#-101,@(r0,gbr)
    2762:	ce a2       	xor.b	#-94,@(r0,gbr)
    2764:	ce aa       	xor.b	#-86,@(r0,gbr)
    2766:	ce b1       	xor.b	#-79,@(r0,gbr)
    2768:	ce b9       	xor.b	#-71,@(r0,gbr)
    276a:	ce c0       	xor.b	#-64,@(r0,gbr)
    276c:	ce c7       	xor.b	#-57,@(r0,gbr)
    276e:	ce cf       	xor.b	#-49,@(r0,gbr)
    2770:	ce d6       	xor.b	#-42,@(r0,gbr)
    2772:	ce de       	xor.b	#-34,@(r0,gbr)
    2774:	ce e5       	xor.b	#-27,@(r0,gbr)
    2776:	ce ec       	xor.b	#-20,@(r0,gbr)
    2778:	ce f4       	xor.b	#-12,@(r0,gbr)
    277a:	ce fb       	xor.b	#-5,@(r0,gbr)
    277c:	cf 03       	or.b	#3,@(r0,gbr)
    277e:	cf 0a       	or.b	#10,@(r0,gbr)
    2780:	cf 11       	or.b	#17,@(r0,gbr)
    2782:	cf 19       	or.b	#25,@(r0,gbr)
    2784:	cf 20       	or.b	#32,@(r0,gbr)
    2786:	cf 28       	or.b	#40,@(r0,gbr)
    2788:	cf 2f       	or.b	#47,@(r0,gbr)
    278a:	cf 36       	or.b	#54,@(r0,gbr)
    278c:	cf 3e       	or.b	#62,@(r0,gbr)
    278e:	cf 45       	or.b	#69,@(r0,gbr)
    2790:	cf 4c       	or.b	#76,@(r0,gbr)
    2792:	cf 54       	or.b	#84,@(r0,gbr)
    2794:	cf 5b       	or.b	#91,@(r0,gbr)
    2796:	cf 63       	or.b	#99,@(r0,gbr)
    2798:	cf 6a       	or.b	#106,@(r0,gbr)
    279a:	cf 71       	or.b	#113,@(r0,gbr)
    279c:	cf 79       	or.b	#121,@(r0,gbr)
    279e:	cf 80       	or.b	#-128,@(r0,gbr)
    27a0:	cf 87       	or.b	#-121,@(r0,gbr)
    27a2:	cf 8f       	or.b	#-113,@(r0,gbr)
    27a4:	cf 96       	or.b	#-106,@(r0,gbr)
    27a6:	cf 9d       	or.b	#-99,@(r0,gbr)
    27a8:	cf a5       	or.b	#-91,@(r0,gbr)
    27aa:	cf ac       	or.b	#-84,@(r0,gbr)
    27ac:	cf b3       	or.b	#-77,@(r0,gbr)
    27ae:	cf bb       	or.b	#-69,@(r0,gbr)
    27b0:	cf c2       	or.b	#-62,@(r0,gbr)
    27b2:	cf c9       	or.b	#-55,@(r0,gbr)
    27b4:	cf d1       	or.b	#-47,@(r0,gbr)
    27b6:	cf d8       	or.b	#-40,@(r0,gbr)
    27b8:	cf df       	or.b	#-33,@(r0,gbr)
    27ba:	cf e7       	or.b	#-25,@(r0,gbr)
    27bc:	cf ee       	or.b	#-18,@(r0,gbr)
    27be:	cf f5       	or.b	#-11,@(r0,gbr)
    27c0:	cf fd       	or.b	#-3,@(r0,gbr)
    27c2:	d0 04       	mov.l	27d4 <_sin_tbl+0x26b8>,r0	! d046d04d
    27c4:	d0 0b       	mov.l	27f4 <_sin_tbl+0x26d8>,r0	! d0bbd0c2
    27c6:	d0 13       	mov.l	2814 <_sin_tbl+0x26f8>,r0	! d12fd136
    27c8:	d0 1a       	mov.l	2834 <_sin_tbl+0x2718>,r0	! d1a2d1aa
    27ca:	d0 21       	mov.l	2850 <_sin_tbl+0x2734>,r0	! d207d20e
    27cc:	d0 29       	mov.l	2874 <_sin_tbl+0x2758>,r0	! d288d28f
    27ce:	d0 30       	mov.l	2890 <_sin_tbl+0x2774>,r0	! d2ecd2f3
    27d0:	d0 37       	mov.l	28b0 <_sin_tbl+0x2794>,r0	! d35ed365
    27d2:	d0 3f       	mov.l	28d0 <_sin_tbl+0x27b4>,r0	! d3cfd3d6
    27d4:	d0 46       	mov.l	28f0 <_sin_tbl+0x27d4>,r0	! d440d447
    27d6:	d0 4d       	mov.l	290c <_sin_tbl+0x27f0>,r0	! d4a2d4a9
    27d8:	d0 55       	mov.l	2930 <_sin_tbl+0x2814>,r0	! d51fd526
    27da:	d0 5c       	mov.l	294c <_sin_tbl+0x2830>,r0	! d581d588
    27dc:	d0 63       	mov.l	296c <_sin_tbl+0x2850>,r0	! d5efd5f6
    27de:	d0 6a       	mov.l	2988 <_sin_tbl+0x286c>,r0	! d650d657
    27e0:	d0 72       	mov.l	29ac <_sin_tbl+0x2890>,r0	! d6cbd6d2
    27e2:	d0 79       	mov.l	29c8 <_sin_tbl+0x28ac>,r0	! d72bd731
    27e4:	d0 80       	mov.l	29e8 <_sin_tbl+0x28cc>,r0	! d797d79e
    27e6:	d0 88       	mov.l	2a08 <_sin_tbl+0x28ec>,r0	! d803d80a
    27e8:	d0 8f       	mov.l	2a28 <_sin_tbl+0x290c>,r0	! d86fd876
    27ea:	d0 96       	mov.l	2a44 <_sin_tbl+0x2928>,r0	! d8cdd8d4
    27ec:	d0 9e       	mov.l	2a68 <_sin_tbl+0x294c>,r0	! d945d94b
    27ee:	d0 a5       	mov.l	2a84 <_sin_tbl+0x2968>,r0	! d9a2d9a8
    27f0:	d0 ac       	mov.l	2aa4 <_sin_tbl+0x2988>,r0	! da0bda12
    27f2:	d0 b3       	mov.l	2ac0 <_sin_tbl+0x29a4>,r0	! da67da6e
    27f4:	d0 bb       	mov.l	2ae4 <_sin_tbl+0x29c8>,r0	! dadddae3
    27f6:	d0 c2       	mov.l	2b00 <_sin_tbl+0x29e4>,r0	! db38db3e
    27f8:	d0 c9       	mov.l	2b20 <_sin_tbl+0x2a04>,r0	! dba0dba6
    27fa:	d0 d0       	mov.l	2b3c <_sin_tbl+0x2a20>,r0	! dbfadc00
    27fc:	d0 d8       	mov.l	2b60 <_sin_tbl+0x2a44>,r0	! dc6ddc73
    27fe:	d0 df       	mov.l	2b7c <_sin_tbl+0x2a60>,r0	! dcc6dccd
    2800:	d0 e6       	mov.l	2b9c <_sin_tbl+0x2a80>,r0	! dd2cdd32
    2802:	d0 ee       	mov.l	2bbc <_sin_tbl+0x2aa0>,r0	! dd91dd97
    2804:	d0 f5       	mov.l	2bdc <_sin_tbl+0x2ac0>,r0	! ddf5ddfc
    2806:	d0 fc       	mov.l	2bf8 <_sin_tbl+0x2adc>,r0	! de4dde53
    2808:	d1 03       	mov.l	2818 <_sin_tbl+0x26fc>,r1	! d13dd145
    280a:	d1 0b       	mov.l	2838 <_sin_tbl+0x271c>,r1	! d1b1d1b8
    280c:	d1 12       	mov.l	2858 <_sin_tbl+0x273c>,r1	! d224d22b
    280e:	d1 19       	mov.l	2874 <_sin_tbl+0x2758>,r1	! d288d28f
    2810:	d1 20       	mov.l	2894 <_sin_tbl+0x2778>,r1	! d2fad301
    2812:	d1 28       	mov.l	28b4 <_sin_tbl+0x2798>,r1	! d36cd373
    2814:	d1 2f       	mov.l	28d4 <_sin_tbl+0x27b8>,r1	! d3ddd3e4
    2816:	d1 36       	mov.l	28f0 <_sin_tbl+0x27d4>,r1	! d440d447
    2818:	d1 3d       	mov.l	2910 <_sin_tbl+0x27f4>,r1	! d4b0d4b7
    281a:	d1 45       	mov.l	2930 <_sin_tbl+0x2814>,r1	! d51fd526
    281c:	d1 4c       	mov.l	2950 <_sin_tbl+0x2834>,r1	! d58fd595
    281e:	d1 53       	mov.l	296c <_sin_tbl+0x2850>,r1	! d5efd5f6
    2820:	d1 5a       	mov.l	298c <_sin_tbl+0x2870>,r1	! d65ed664
    2822:	d1 61       	mov.l	29a8 <_sin_tbl+0x288c>,r1	! d6bdd6c4
    2824:	d1 69       	mov.l	29cc <_sin_tbl+0x28b0>,r1	! d738d73f
    2826:	d1 70       	mov.l	29e8 <_sin_tbl+0x28cc>,r1	! d797d79e
    2828:	d1 77       	mov.l	2a08 <_sin_tbl+0x28ec>,r1	! d803d80a
    282a:	d1 7e       	mov.l	2a24 <_sin_tbl+0x2908>,r1	! d862d868
    282c:	d1 86       	mov.l	2a48 <_sin_tbl+0x292c>,r1	! d8dad8e1
    282e:	d1 8d       	mov.l	2a64 <_sin_tbl+0x2948>,r1	! d938d93e
    2830:	d1 94       	mov.l	2a84 <_sin_tbl+0x2968>,r1	! d9a2d9a8
    2832:	d1 9b       	mov.l	2aa0 <_sin_tbl+0x2984>,r1	! d9feda05
    2834:	d1 a2       	mov.l	2ac0 <_sin_tbl+0x29a4>,r1	! da67da6e
    2836:	d1 aa       	mov.l	2ae0 <_sin_tbl+0x29c4>,r1	! dad0dad6
    2838:	d1 b1       	mov.l	2b00 <_sin_tbl+0x29e4>,r1	! db38db3e
    283a:	d1 b8       	mov.l	2b1c <_sin_tbl+0x2a00>,r1	! db93db99
    283c:	d1 bf       	mov.l	2b3c <_sin_tbl+0x2a20>,r1	! dbfadc00
    283e:	d1 c6       	mov.l	2b58 <_sin_tbl+0x2a3c>,r1	! dc53dc5a
    2840:	d1 ce       	mov.l	2b7c <_sin_tbl+0x2a60>,r1	! dcc6dccd
    2842:	d1 d5       	mov.l	2b98 <_sin_tbl+0x2a7c>,r1	! dd1fdd25
    2844:	d1 dc       	mov.l	2bb8 <_sin_tbl+0x2a9c>,r1	! dd84dd8b
    2846:	d1 e3       	mov.l	2bd4 <_sin_tbl+0x2ab8>,r1	! dddcdde2
    2848:	d1 ea       	mov.l	2bf4 <_sin_tbl+0x2ad8>,r1	! de40de46
    284a:	d1 f2       	mov.l	2c14 <_sin_tbl+0x2af8>,r1	! dea4deaa
    284c:	d1 f9       	mov.l	2c34 <_sin_tbl+0x2b18>,r1	! df07df0d
    284e:	d2 00       	mov.l	2850 <_sin_tbl+0x2734>,r2	! d207d20e
    2850:	d2 07       	mov.l	2870 <_sin_tbl+0x2754>,r2	! d27ad281
    2852:	d2 0e       	mov.l	288c <_sin_tbl+0x2770>,r2	! d2ded2e5
    2854:	d2 16       	mov.l	28b0 <_sin_tbl+0x2794>,r2	! d35ed365
    2856:	d2 1d       	mov.l	28cc <_sin_tbl+0x27b0>,r2	! d3c1d3c8
    2858:	d2 24       	mov.l	28ec <_sin_tbl+0x27d0>,r2	! d432d439
    285a:	d2 2b       	mov.l	2908 <_sin_tbl+0x27ec>,r2	! d494d49b
    285c:	d2 32       	mov.l	2928 <_sin_tbl+0x280c>,r2	! d504d50b
    285e:	d2 39       	mov.l	2944 <_sin_tbl+0x2828>,r2	! d565d56c
    2860:	d2 41       	mov.l	2968 <_sin_tbl+0x284c>,r2	! d5e2d5e8
    2862:	d2 48       	mov.l	2984 <_sin_tbl+0x2868>,r2	! d642d649
    2864:	d2 4f       	mov.l	29a4 <_sin_tbl+0x2888>,r2	! d6b0d6b7
    2866:	d2 56       	mov.l	29c0 <_sin_tbl+0x28a4>,r2	! d70fd716
    2868:	d2 5d       	mov.l	29e0 <_sin_tbl+0x28c4>,r2	! d77cd783
    286a:	d2 64       	mov.l	29fc <_sin_tbl+0x28e0>,r2	! d7dbd7e2
    286c:	d2 6c       	mov.l	2a20 <_sin_tbl+0x2904>,r2	! d854d85b
    286e:	d2 73       	mov.l	2a3c <_sin_tbl+0x2920>,r2	! d8b2d8b9
    2870:	d2 7a       	mov.l	2a5c <_sin_tbl+0x2940>,r2	! d91dd924
    2872:	d2 81       	mov.l	2a78 <_sin_tbl+0x295c>,r2	! d97ad981
    2874:	d2 88       	mov.l	2a98 <_sin_tbl+0x297c>,r2	! d9e4d9ea
    2876:	d2 8f       	mov.l	2ab4 <_sin_tbl+0x2998>,r2	! da40da46
    2878:	d2 96       	mov.l	2ad4 <_sin_tbl+0x29b8>,r2	! daa9daaf
    287a:	d2 9e       	mov.l	2af4 <_sin_tbl+0x29d8>,r2	! db11db17
    287c:	d2 a5       	mov.l	2b14 <_sin_tbl+0x29f8>,r2	! db79db7f
    287e:	d2 ac       	mov.l	2b30 <_sin_tbl+0x2a14>,r2	! dbd3dbda
    2880:	d2 b3       	mov.l	2b50 <_sin_tbl+0x2a34>,r2	! dc3adc40
    2882:	d2 ba       	mov.l	2b6c <_sin_tbl+0x2a50>,r2	! dc93dc9a
    2884:	d2 c1       	mov.l	2b8c <_sin_tbl+0x2a70>,r2	! dcf9dcff
    2886:	d2 c8       	mov.l	2ba8 <_sin_tbl+0x2a8c>,r2	! dd52dd58
    2888:	d2 d0       	mov.l	2bcc <_sin_tbl+0x2ab0>,r2	! ddc3ddc9
    288a:	d2 d7       	mov.l	2be8 <_sin_tbl+0x2acc>,r2	! de1bde21
    288c:	d2 de       	mov.l	2c08 <_sin_tbl+0x2aec>,r2	! de7ede85
    288e:	d2 e5       	mov.l	2c24 <_sin_tbl+0x2b08>,r2	! ded5dedb
    2890:	d2 ec       	mov.l	2c44 <_sin_tbl+0x2b28>,r2	! df38df3e
    2892:	d2 f3       	mov.l	2c60 <_sin_tbl+0x2b44>,r2	! df8edf94
    2894:	d2 fa       	mov.l	2c80 <_sin_tbl+0x2b64>,r2	! dff0dff6
    2896:	d3 01       	mov.l	289c <_sin_tbl+0x2780>,r3	! d317d31e
    2898:	d3 09       	mov.l	28c0 <_sin_tbl+0x27a4>,r3	! d396d39e
    289a:	d3 10       	mov.l	28dc <_sin_tbl+0x27c0>,r3	! d3f9d400
    289c:	d3 17       	mov.l	28fc <_sin_tbl+0x27e0>,r3	! d46ad471
    289e:	d3 1e       	mov.l	2918 <_sin_tbl+0x27fc>,r3	! d4ccd4d3
    28a0:	d3 25       	mov.l	2938 <_sin_tbl+0x281c>,r3	! d53bd542
    28a2:	d3 2c       	mov.l	2954 <_sin_tbl+0x2838>,r3	! d59cd5a3
    28a4:	d3 33       	mov.l	2974 <_sin_tbl+0x2858>,r3	! d60bd612
    28a6:	d3 3a       	mov.l	2990 <_sin_tbl+0x2874>,r3	! d66bd672
    28a8:	d3 41       	mov.l	29b0 <_sin_tbl+0x2894>,r3	! d6d9d6e0
    28aa:	d3 49       	mov.l	29d0 <_sin_tbl+0x28b4>,r3	! d746d74d
    28ac:	d3 50       	mov.l	29f0 <_sin_tbl+0x28d4>,r3	! d7b2d7b9
    28ae:	d3 57       	mov.l	2a0c <_sin_tbl+0x28f0>,r3	! d811d818
    28b0:	d3 5e       	mov.l	2a2c <_sin_tbl+0x2910>,r3	! d87dd883
    28b2:	d3 65       	mov.l	2a48 <_sin_tbl+0x292c>,r3	! d8dad8e1
    28b4:	d3 6c       	mov.l	2a68 <_sin_tbl+0x294c>,r3	! d945d94b
    28b6:	d3 73       	mov.l	2a84 <_sin_tbl+0x2968>,r3	! d9a2d9a8
    28b8:	d3 7a       	mov.l	2aa4 <_sin_tbl+0x2988>,r3	! da0bda12
    28ba:	d3 81       	mov.l	2ac0 <_sin_tbl+0x29a4>,r3	! da67da6e
    28bc:	d3 88       	mov.l	2ae0 <_sin_tbl+0x29c4>,r3	! dad0dad6
    28be:	d3 8f       	mov.l	2afc <_sin_tbl+0x29e0>,r3	! db2bdb31
    28c0:	d3 96       	mov.l	2b1c <_sin_tbl+0x2a00>,r3	! db93db99
    28c2:	d3 9e       	mov.l	2b3c <_sin_tbl+0x2a20>,r3	! dbfadc00
    28c4:	d3 a5       	mov.l	2b5c <_sin_tbl+0x2a40>,r3	! dc60dc67
    28c6:	d3 ac       	mov.l	2b78 <_sin_tbl+0x2a5c>,r3	! dcbadcc0
    28c8:	d3 b3       	mov.l	2b98 <_sin_tbl+0x2a7c>,r3	! dd1fdd25
    28ca:	d3 ba       	mov.l	2bb4 <_sin_tbl+0x2a98>,r3	! dd78dd7e
    28cc:	d3 c1       	mov.l	2bd4 <_sin_tbl+0x2ab8>,r3	! dddcdde2
    28ce:	d3 c8       	mov.l	2bf0 <_sin_tbl+0x2ad4>,r3	! de34de3a
    28d0:	d3 cf       	mov.l	2c10 <_sin_tbl+0x2af4>,r3	! de97de9e
    28d2:	d3 d6       	mov.l	2c2c <_sin_tbl+0x2b10>,r3	! deeedef4
    28d4:	d3 dd       	mov.l	2c4c <_sin_tbl+0x2b30>,r3	! df51df57
    28d6:	d3 e4       	mov.l	2c68 <_sin_tbl+0x2b4c>,r3	! dfa6dfac
    28d8:	d3 eb       	mov.l	2c88 <_sin_tbl+0x2b6c>,r3	! e008e00e
    28da:	d3 f2       	mov.l	2ca4 <_sin_tbl+0x2b88>,r3	! e05de063
    28dc:	d3 f9       	mov.l	2cc4 <_sin_tbl+0x2ba8>,r3	! e0bde0c3
    28de:	d4 00       	mov.l	28e0 <_sin_tbl+0x27c4>,r4	! d407d40e
    28e0:	d4 07       	mov.l	2900 <_sin_tbl+0x27e4>,r4	! d478d47f
    28e2:	d4 0e       	mov.l	291c <_sin_tbl+0x2800>,r4	! d4dad4e1
    28e4:	d4 15       	mov.l	293c <_sin_tbl+0x2820>,r4	! d549d550
    28e6:	d4 1c       	mov.l	2958 <_sin_tbl+0x283c>,r4	! d5aad5b1
    28e8:	d4 23       	mov.l	2978 <_sin_tbl+0x285c>,r4	! d619d620
    28ea:	d4 2b       	mov.l	2998 <_sin_tbl+0x287c>,r4	! d687d68e
    28ec:	d4 32       	mov.l	29b8 <_sin_tbl+0x289c>,r4	! d6f4d6fb
    28ee:	d4 39       	mov.l	29d4 <_sin_tbl+0x28b8>,r4	! d753d75a
    28f0:	d4 40       	mov.l	29f4 <_sin_tbl+0x28d8>,r4	! d7c0d7c7
    28f2:	d4 47       	mov.l	2a10 <_sin_tbl+0x28f4>,r4	! d81ed825
    28f4:	d4 4e       	mov.l	2a30 <_sin_tbl+0x2914>,r4	! d88ad891
    28f6:	d4 55       	mov.l	2a4c <_sin_tbl+0x2930>,r4	! d8e8d8ee
    28f8:	d4 5c       	mov.l	2a6c <_sin_tbl+0x2950>,r4	! d952d959
    28fa:	d4 63       	mov.l	2a88 <_sin_tbl+0x296c>,r4	! d9afd9b6
    28fc:	d4 6a       	mov.l	2aa8 <_sin_tbl+0x298c>,r4	! da18da1f
    28fe:	d4 71       	mov.l	2ac4 <_sin_tbl+0x29a8>,r4	! da74da7b
    2900:	d4 78       	mov.l	2ae4 <_sin_tbl+0x29c8>,r4	! dadddae3
    2902:	d4 7f       	mov.l	2b00 <_sin_tbl+0x29e4>,r4	! db38db3e
    2904:	d4 86       	mov.l	2b20 <_sin_tbl+0x2a04>,r4	! dba0dba6
    2906:	d4 8d       	mov.l	2b3c <_sin_tbl+0x2a20>,r4	! dbfadc00
    2908:	d4 94       	mov.l	2b5c <_sin_tbl+0x2a40>,r4	! dc60dc67
    290a:	d4 9b       	mov.l	2b78 <_sin_tbl+0x2a5c>,r4	! dcbadcc0
    290c:	d4 a2       	mov.l	2b98 <_sin_tbl+0x2a7c>,r4	! dd1fdd25
    290e:	d4 a9       	mov.l	2bb4 <_sin_tbl+0x2a98>,r4	! dd78dd7e
    2910:	d4 b0       	mov.l	2bd4 <_sin_tbl+0x2ab8>,r4	! dddcdde2
    2912:	d4 b7       	mov.l	2bf0 <_sin_tbl+0x2ad4>,r4	! de34de3a
    2914:	d4 be       	mov.l	2c10 <_sin_tbl+0x2af4>,r4	! de97de9e
    2916:	d4 c5       	mov.l	2c2c <_sin_tbl+0x2b10>,r4	! deeedef4
    2918:	d4 cc       	mov.l	2c4c <_sin_tbl+0x2b30>,r4	! df51df57
    291a:	d4 d3       	mov.l	2c68 <_sin_tbl+0x2b4c>,r4	! dfa6dfac
    291c:	d4 da       	mov.l	2c88 <_sin_tbl+0x2b6c>,r4	! e008e00e
    291e:	d4 e1       	mov.l	2ca4 <_sin_tbl+0x2b88>,r4	! e05de063
    2920:	d4 e8       	mov.l	2cc4 <_sin_tbl+0x2ba8>,r4	! e0bde0c3
    2922:	d4 ef       	mov.l	2ce0 <_sin_tbl+0x2bc4>,r4	! e111e117
    2924:	d4 f6       	mov.l	2d00 <_sin_tbl+0x2be4>,r4	! e171e177
    2926:	d4 fd       	mov.l	2d1c <_sin_tbl+0x2c00>,r4	! e1c4e1ca
    2928:	d5 04       	mov.l	293c <_sin_tbl+0x2820>,r5	! d549d550
    292a:	d5 0b       	mov.l	2958 <_sin_tbl+0x283c>,r5	! d5aad5b1
    292c:	d5 11       	mov.l	2974 <_sin_tbl+0x2858>,r5	! d60bd612
    292e:	d5 18       	mov.l	2990 <_sin_tbl+0x2874>,r5	! d66bd672
    2930:	d5 1f       	mov.l	29b0 <_sin_tbl+0x2894>,r5	! d6d9d6e0
    2932:	d5 26       	mov.l	29cc <_sin_tbl+0x28b0>,r5	! d738d73f
    2934:	d5 2d       	mov.l	29ec <_sin_tbl+0x28d0>,r5	! d7a5d7ac
    2936:	d5 34       	mov.l	2a08 <_sin_tbl+0x28ec>,r5	! d803d80a
    2938:	d5 3b       	mov.l	2a28 <_sin_tbl+0x290c>,r5	! d86fd876
    293a:	d5 42       	mov.l	2a44 <_sin_tbl+0x2928>,r5	! d8cdd8d4
    293c:	d5 49       	mov.l	2a64 <_sin_tbl+0x2948>,r5	! d938d93e
    293e:	d5 50       	mov.l	2a80 <_sin_tbl+0x2964>,r5	! d994d99b
    2940:	d5 57       	mov.l	2aa0 <_sin_tbl+0x2984>,r5	! d9feda05
    2942:	d5 5e       	mov.l	2abc <_sin_tbl+0x29a0>,r5	! da5ada61
    2944:	d5 65       	mov.l	2adc <_sin_tbl+0x29c0>,r5	! dac3dac9
    2946:	d5 6c       	mov.l	2af8 <_sin_tbl+0x29dc>,r5	! db1edb24
    2948:	d5 73       	mov.l	2b18 <_sin_tbl+0x29fc>,r5	! db86db8c
    294a:	d5 7a       	mov.l	2b34 <_sin_tbl+0x2a18>,r5	! dbe0dbe6
    294c:	d5 81       	mov.l	2b54 <_sin_tbl+0x2a38>,r5	! dc47dc4d
    294e:	d5 88       	mov.l	2b70 <_sin_tbl+0x2a54>,r5	! dca0dca6
    2950:	d5 8f       	mov.l	2b90 <_sin_tbl+0x2a74>,r5	! dd06dd0c
    2952:	d5 95       	mov.l	2ba8 <_sin_tbl+0x2a8c>,r5	! dd52dd58
    2954:	d5 9c       	mov.l	2bc8 <_sin_tbl+0x2aac>,r5	! ddb7ddbd
    2956:	d5 a3       	mov.l	2be4 <_sin_tbl+0x2ac8>,r5	! de0ede15
    2958:	d5 aa       	mov.l	2c04 <_sin_tbl+0x2ae8>,r5	! de72de78
    295a:	d5 b1       	mov.l	2c20 <_sin_tbl+0x2b04>,r5	! dec9decf
    295c:	d5 b8       	mov.l	2c40 <_sin_tbl+0x2b24>,r5	! df2cdf32
    295e:	d5 bf       	mov.l	2c5c <_sin_tbl+0x2b40>,r5	! df82df88
    2960:	d5 c6       	mov.l	2c7c <_sin_tbl+0x2b60>,r5	! dfe3dfea
    2962:	d5 cd       	mov.l	2c98 <_sin_tbl+0x2b7c>,r5	! e039e03f
    2964:	d5 d4       	mov.l	2cb8 <_sin_tbl+0x2b9c>,r5	! e099e09f
    2966:	d5 db       	mov.l	2cd4 <_sin_tbl+0x2bb8>,r5	! e0ede0f3
    2968:	d5 e2       	mov.l	2cf4 <_sin_tbl+0x2bd8>,r5	! e14de153
    296a:	d5 e8       	mov.l	2d0c <_sin_tbl+0x2bf0>,r5	! e195e19b
    296c:	d5 ef       	mov.l	2d2c <_sin_tbl+0x2c10>,r5	! e1f3e1f9
    296e:	d5 f6       	mov.l	2d48 <_sin_tbl+0x2c2c>,r5	! e246e24c
    2970:	d5 fd       	mov.l	2d68 <_sin_tbl+0x2c4c>,r5	! e2a4e2a9
    2972:	d6 04       	mov.l	2984 <_sin_tbl+0x2868>,r6	! d642d649
    2974:	d6 0b       	mov.l	29a4 <_sin_tbl+0x2888>,r6	! d6b0d6b7
    2976:	d6 12       	mov.l	29c0 <_sin_tbl+0x28a4>,r6	! d70fd716
    2978:	d6 19       	mov.l	29e0 <_sin_tbl+0x28c4>,r6	! d77cd783
    297a:	d6 20       	mov.l	29fc <_sin_tbl+0x28e0>,r6	! d7dbd7e2
    297c:	d6 26       	mov.l	2a18 <_sin_tbl+0x28fc>,r6	! d839d840
    297e:	d6 2d       	mov.l	2a34 <_sin_tbl+0x2918>,r6	! d897d89e
    2980:	d6 34       	mov.l	2a54 <_sin_tbl+0x2938>,r6	! d902d909
    2982:	d6 3b       	mov.l	2a70 <_sin_tbl+0x2954>,r6	! d95fd966
    2984:	d6 42       	mov.l	2a90 <_sin_tbl+0x2974>,r6	! d9c9d9d0
    2986:	d6 49       	mov.l	2aac <_sin_tbl+0x2990>,r6	! da26da2c
    2988:	d6 50       	mov.l	2acc <_sin_tbl+0x29b0>,r6	! da8fda95
    298a:	d6 57       	mov.l	2ae8 <_sin_tbl+0x29cc>,r6	! daeadaf0
    298c:	d6 5e       	mov.l	2b08 <_sin_tbl+0x29ec>,r6	! db52db58
    298e:	d6 64       	mov.l	2b20 <_sin_tbl+0x2a04>,r6	! dba0dba6
    2990:	d6 6b       	mov.l	2b40 <_sin_tbl+0x2a24>,r6	! dc07dc0d
    2992:	d6 72       	mov.l	2b5c <_sin_tbl+0x2a40>,r6	! dc60dc67
    2994:	d6 79       	mov.l	2b7c <_sin_tbl+0x2a60>,r6	! dcc6dccd
    2996:	d6 80       	mov.l	2b98 <_sin_tbl+0x2a7c>,r6	! dd1fdd25
    2998:	d6 87       	mov.l	2bb8 <_sin_tbl+0x2a9c>,r6	! dd84dd8b
    299a:	d6 8e       	mov.l	2bd4 <_sin_tbl+0x2ab8>,r6	! dddcdde2
    299c:	d6 94       	mov.l	2bf0 <_sin_tbl+0x2ad4>,r6	! de34de3a
    299e:	d6 9b       	mov.l	2c0c <_sin_tbl+0x2af0>,r6	! de8bde91
    29a0:	d6 a2       	mov.l	2c2c <_sin_tbl+0x2b10>,r6	! deeedef4
    29a2:	d6 a9       	mov.l	2c48 <_sin_tbl+0x2b2c>,r6	! df44df4a
    29a4:	d6 b0       	mov.l	2c68 <_sin_tbl+0x2b4c>,r6	! dfa6dfac
    29a6:	d6 b7       	mov.l	2c84 <_sin_tbl+0x2b68>,r6	! dffce002
    29a8:	d6 bd       	mov.l	2ca0 <_sin_tbl+0x2b84>,r6	! e051e057
    29aa:	d6 c4       	mov.l	2cbc <_sin_tbl+0x2ba0>,r6	! e0a5e0ab
    29ac:	d6 cb       	mov.l	2cdc <_sin_tbl+0x2bc0>,r6	! e105e10b
    29ae:	d6 d2       	mov.l	2cf8 <_sin_tbl+0x2bdc>,r6	! e159e15f
    29b0:	d6 d9       	mov.l	2d18 <_sin_tbl+0x2bfc>,r6	! e1b8e1be
    29b2:	d6 e0       	mov.l	2d34 <_sin_tbl+0x2c18>,r6	! e20be211
    29b4:	d6 e6       	mov.l	2d50 <_sin_tbl+0x2c34>,r6	! e25de263
    29b6:	d6 ed       	mov.l	2d6c <_sin_tbl+0x2c50>,r6	! e2afe2b5
    29b8:	d6 f4       	mov.l	2d8c <_sin_tbl+0x2c70>,r6	! e30ce312
    29ba:	d6 fb       	mov.l	2da8 <_sin_tbl+0x2c8c>,r6	! e35ee363
    29bc:	d7 02       	mov.l	29c8 <_sin_tbl+0x28ac>,r7	! d72bd731
    29be:	d7 09       	mov.l	29e4 <_sin_tbl+0x28c8>,r7	! d78ad791
    29c0:	d7 0f       	mov.l	2a00 <_sin_tbl+0x28e4>,r7	! d7e9d7ef
    29c2:	d7 16       	mov.l	2a1c <_sin_tbl+0x2900>,r7	! d847d84e
    29c4:	d7 1d       	mov.l	2a3c <_sin_tbl+0x2920>,r7	! d8b2d8b9
    29c6:	d7 24       	mov.l	2a58 <_sin_tbl+0x293c>,r7	! d910d916
    29c8:	d7 2b       	mov.l	2a78 <_sin_tbl+0x295c>,r7	! d97ad981
    29ca:	d7 31       	mov.l	2a90 <_sin_tbl+0x2974>,r7	! d9c9d9d0
    29cc:	d7 38       	mov.l	2ab0 <_sin_tbl+0x2994>,r7	! da33da39
    29ce:	d7 3f       	mov.l	2acc <_sin_tbl+0x29b0>,r7	! da8fda95
    29d0:	d7 46       	mov.l	2aec <_sin_tbl+0x29d0>,r7	! daf7dafd
    29d2:	d7 4d       	mov.l	2b08 <_sin_tbl+0x29ec>,r7	! db52db58
    29d4:	d7 53       	mov.l	2b24 <_sin_tbl+0x2a08>,r7	! dbacdbb3
    29d6:	d7 5a       	mov.l	2b40 <_sin_tbl+0x2a24>,r7	! dc07dc0d
    29d8:	d7 61       	mov.l	2b60 <_sin_tbl+0x2a44>,r7	! dc6ddc73
    29da:	d7 68       	mov.l	2b7c <_sin_tbl+0x2a60>,r7	! dcc6dccd
    29dc:	d7 6f       	mov.l	2b9c <_sin_tbl+0x2a80>,r7	! dd2cdd32
    29de:	d7 75       	mov.l	2bb4 <_sin_tbl+0x2a98>,r7	! dd78dd7e
    29e0:	d7 7c       	mov.l	2bd4 <_sin_tbl+0x2ab8>,r7	! dddcdde2
    29e2:	d7 83       	mov.l	2bf0 <_sin_tbl+0x2ad4>,r7	! de34de3a
    29e4:	d7 8a       	mov.l	2c10 <_sin_tbl+0x2af4>,r7	! de97de9e
    29e6:	d7 91       	mov.l	2c2c <_sin_tbl+0x2b10>,r7	! deeedef4
    29e8:	d7 97       	mov.l	2c48 <_sin_tbl+0x2b2c>,r7	! df44df4a
    29ea:	d7 9e       	mov.l	2c64 <_sin_tbl+0x2b48>,r7	! df9adfa0
    29ec:	d7 a5       	mov.l	2c84 <_sin_tbl+0x2b68>,r7	! dffce002
    29ee:	d7 ac       	mov.l	2ca0 <_sin_tbl+0x2b84>,r7	! e051e057
    29f0:	d7 b2       	mov.l	2cbc <_sin_tbl+0x2ba0>,r7	! e0a5e0ab
    29f2:	d7 b9       	mov.l	2cd8 <_sin_tbl+0x2bbc>,r7	! e0f9e0ff
    29f4:	d7 c0       	mov.l	2cf8 <_sin_tbl+0x2bdc>,r7	! e159e15f
    29f6:	d7 c7       	mov.l	2d14 <_sin_tbl+0x2bf8>,r7	! e1ace1b2
    29f8:	d7 cd       	mov.l	2d30 <_sin_tbl+0x2c14>,r7	! e1ffe205
    29fa:	d7 d4       	mov.l	2d4c <_sin_tbl+0x2c30>,r7	! e252e258
    29fc:	d7 db       	mov.l	2d6c <_sin_tbl+0x2c50>,r7	! e2afe2b5
    29fe:	d7 e2       	mov.l	2d88 <_sin_tbl+0x2c6c>,r7	! e301e307
    2a00:	d7 e9       	mov.l	2da8 <_sin_tbl+0x2c8c>,r7	! e35ee363
    2a02:	d7 ef       	mov.l	2dc0 <_sin_tbl+0x2ca4>,r7	! e3a3e3a8
    2a04:	d7 f6       	mov.l	2de0 <_sin_tbl+0x2cc4>,r7	! e3fee404
    2a06:	d7 fd       	mov.l	2dfc <_sin_tbl+0x2ce0>,r7	! e44ee454
    2a08:	d8 03       	mov.l	2a18 <_sin_tbl+0x28fc>,r8	! d839d840
    2a0a:	d8 0a       	mov.l	2a34 <_sin_tbl+0x2918>,r8	! d897d89e
    2a0c:	d8 11       	mov.l	2a54 <_sin_tbl+0x2938>,r8	! d902d909
    2a0e:	d8 18       	mov.l	2a70 <_sin_tbl+0x2954>,r8	! d95fd966
    2a10:	d8 1e       	mov.l	2a8c <_sin_tbl+0x2970>,r8	! d9bcd9c3
    2a12:	d8 25       	mov.l	2aa8 <_sin_tbl+0x298c>,r8	! da18da1f
    2a14:	d8 2c       	mov.l	2ac8 <_sin_tbl+0x29ac>,r8	! da81da88
    2a16:	d8 33       	mov.l	2ae4 <_sin_tbl+0x29c8>,r8	! dadddae3
    2a18:	d8 39       	mov.l	2b00 <_sin_tbl+0x29e4>,r8	! db38db3e
    2a1a:	d8 40       	mov.l	2b1c <_sin_tbl+0x2a00>,r8	! db93db99
    2a1c:	d8 47       	mov.l	2b3c <_sin_tbl+0x2a20>,r8	! dbfadc00
    2a1e:	d8 4e       	mov.l	2b58 <_sin_tbl+0x2a3c>,r8	! dc53dc5a
    2a20:	d8 54       	mov.l	2b74 <_sin_tbl+0x2a58>,r8	! dcaddcb3
    2a22:	d8 5b       	mov.l	2b90 <_sin_tbl+0x2a74>,r8	! dd06dd0c
    2a24:	d8 62       	mov.l	2bb0 <_sin_tbl+0x2a94>,r8	! dd6bdd71
    2a26:	d8 68       	mov.l	2bc8 <_sin_tbl+0x2aac>,r8	! ddb7ddbd
    2a28:	d8 6f       	mov.l	2be8 <_sin_tbl+0x2acc>,r8	! de1bde21
    2a2a:	d8 76       	mov.l	2c04 <_sin_tbl+0x2ae8>,r8	! de72de78
    2a2c:	d8 7d       	mov.l	2c24 <_sin_tbl+0x2b08>,r8	! ded5dedb
    2a2e:	d8 83       	mov.l	2c3c <_sin_tbl+0x2b20>,r8	! df1fdf26
    2a30:	d8 8a       	mov.l	2c5c <_sin_tbl+0x2b40>,r8	! df82df88
    2a32:	d8 91       	mov.l	2c78 <_sin_tbl+0x2b5c>,r8	! dfd7dfdd
    2a34:	d8 97       	mov.l	2c94 <_sin_tbl+0x2b78>,r8	! e02ce032
    2a36:	d8 9e       	mov.l	2cb0 <_sin_tbl+0x2b94>,r8	! e081e087
    2a38:	d8 a5       	mov.l	2cd0 <_sin_tbl+0x2bb4>,r8	! e0e1e0e7
    2a3a:	d8 ab       	mov.l	2ce8 <_sin_tbl+0x2bcc>,r8	! e129e12f
    2a3c:	d8 b2       	mov.l	2d08 <_sin_tbl+0x2bec>,r8	! e189e18f
    2a3e:	d8 b9       	mov.l	2d24 <_sin_tbl+0x2c08>,r8	! e1dce1e2
    2a40:	d8 c0       	mov.l	2d44 <_sin_tbl+0x2c28>,r8	! e23ae240
    2a42:	d8 c6       	mov.l	2d5c <_sin_tbl+0x2c40>,r8	! e281e286
    2a44:	d8 cd       	mov.l	2d7c <_sin_tbl+0x2c60>,r8	! e2dee2e4
    2a46:	d8 d4       	mov.l	2d98 <_sin_tbl+0x2c7c>,r8	! e32fe335
    2a48:	d8 da       	mov.l	2db4 <_sin_tbl+0x2c98>,r8	! e380e386
    2a4a:	d8 e1       	mov.l	2dd0 <_sin_tbl+0x2cb4>,r8	! e3d1e3d6
    2a4c:	d8 e8       	mov.l	2df0 <_sin_tbl+0x2cd4>,r8	! e42ce432
    2a4e:	d8 ee       	mov.l	2e08 <_sin_tbl+0x2cec>,r8	! e470e476
    2a50:	d8 f5       	mov.l	2e28 <_sin_tbl+0x2d0c>,r8	! e4cbe4d0
    2a52:	d8 fc       	mov.l	2e44 <_sin_tbl+0x2d28>,r8	! e519e51f
    2a54:	d9 02       	mov.l	2a60 <_sin_tbl+0x2944>,r9	! d92ad931
    2a56:	d9 09       	mov.l	2a7c <_sin_tbl+0x2960>,r9	! d987d98e
    2a58:	d9 10       	mov.l	2a9c <_sin_tbl+0x2980>,r9	! d9f1d9f8
    2a5a:	d9 16       	mov.l	2ab4 <_sin_tbl+0x2998>,r9	! da40da46
    2a5c:	d9 1d       	mov.l	2ad4 <_sin_tbl+0x29b8>,r9	! daa9daaf
    2a5e:	d9 24       	mov.l	2af0 <_sin_tbl+0x29d4>,r9	! db04db0a
    2a60:	d9 2a       	mov.l	2b0c <_sin_tbl+0x29f0>,r9	! db5fdb65
    2a62:	d9 31       	mov.l	2b28 <_sin_tbl+0x2a0c>,r9	! dbb9dbc0
    2a64:	d9 38       	mov.l	2b48 <_sin_tbl+0x2a2c>,r9	! dc20dc27
    2a66:	d9 3e       	mov.l	2b60 <_sin_tbl+0x2a44>,r9	! dc6ddc73
    2a68:	d9 45       	mov.l	2b80 <_sin_tbl+0x2a64>,r9	! dcd3dcd9
    2a6a:	d9 4b       	mov.l	2b98 <_sin_tbl+0x2a7c>,r9	! dd1fdd25
    2a6c:	d9 52       	mov.l	2bb8 <_sin_tbl+0x2a9c>,r9	! dd84dd8b
    2a6e:	d9 59       	mov.l	2bd4 <_sin_tbl+0x2ab8>,r9	! dddcdde2
    2a70:	d9 5f       	mov.l	2bf0 <_sin_tbl+0x2ad4>,r9	! de34de3a
    2a72:	d9 66       	mov.l	2c0c <_sin_tbl+0x2af0>,r9	! de8bde91
    2a74:	d9 6d       	mov.l	2c2c <_sin_tbl+0x2b10>,r9	! deeedef4
    2a76:	d9 73       	mov.l	2c44 <_sin_tbl+0x2b28>,r9	! df38df3e
    2a78:	d9 7a       	mov.l	2c64 <_sin_tbl+0x2b48>,r9	! df9adfa0
    2a7a:	d9 81       	mov.l	2c80 <_sin_tbl+0x2b64>,r9	! dff0dff6
    2a7c:	d9 87       	mov.l	2c9c <_sin_tbl+0x2b80>,r9	! e045e04b
    2a7e:	d9 8e       	mov.l	2cb8 <_sin_tbl+0x2b9c>,r9	! e099e09f
    2a80:	d9 94       	mov.l	2cd4 <_sin_tbl+0x2bb8>,r9	! e0ede0f3
    2a82:	d9 9b       	mov.l	2cf0 <_sin_tbl+0x2bd4>,r9	! e141e147
    2a84:	d9 a2       	mov.l	2d10 <_sin_tbl+0x2bf4>,r9	! e1a1e1a6
    2a86:	d9 a8       	mov.l	2d28 <_sin_tbl+0x2c0c>,r9	! e1e8e1ee
    2a88:	d9 af       	mov.l	2d48 <_sin_tbl+0x2c2c>,r9	! e246e24c
    2a8a:	d9 b6       	mov.l	2d64 <_sin_tbl+0x2c48>,r9	! e298e29e
    2a8c:	d9 bc       	mov.l	2d80 <_sin_tbl+0x2c64>,r9	! e2eae2ef
    2a8e:	d9 c3       	mov.l	2d9c <_sin_tbl+0x2c80>,r9	! e33be341
    2a90:	d9 c9       	mov.l	2db8 <_sin_tbl+0x2c9c>,r9	! e38ce391
    2a92:	d9 d0       	mov.l	2dd4 <_sin_tbl+0x2cb8>,r9	! e3dce3e2
    2a94:	d9 d7       	mov.l	2df4 <_sin_tbl+0x2cd8>,r9	! e437e43d
    2a96:	d9 dd       	mov.l	2e0c <_sin_tbl+0x2cf0>,r9	! e47ce481
    2a98:	d9 e4       	mov.l	2e2c <_sin_tbl+0x2d10>,r9	! e4d6e4dc
    2a9a:	d9 ea       	mov.l	2e44 <_sin_tbl+0x2d28>,r9	! e519e51f
    2a9c:	d9 f1       	mov.l	2e64 <_sin_tbl+0x2d48>,r9	! e573e578
    2a9e:	d9 f8       	mov.l	2e80 <_sin_tbl+0x2d64>,r9	! e5c1e5c6
    2aa0:	d9 fe       	mov.l	2e9c <_sin_tbl+0x2d80>,r9	! e60ee614
    2aa2:	da 05       	mov.l	2ab8 <_sin_tbl+0x299c>,r10	! da4dda54
    2aa4:	da 0b       	mov.l	2ad4 <_sin_tbl+0x29b8>,r10	! daa9daaf
    2aa6:	da 12       	mov.l	2af0 <_sin_tbl+0x29d4>,r10	! db04db0a
    2aa8:	da 18       	mov.l	2b0c <_sin_tbl+0x29f0>,r10	! db5fdb65
    2aaa:	da 1f       	mov.l	2b28 <_sin_tbl+0x2a0c>,r10	! dbb9dbc0
    2aac:	da 26       	mov.l	2b48 <_sin_tbl+0x2a2c>,r10	! dc20dc27
    2aae:	da 2c       	mov.l	2b60 <_sin_tbl+0x2a44>,r10	! dc6ddc73
    2ab0:	da 33       	mov.l	2b80 <_sin_tbl+0x2a64>,r10	! dcd3dcd9
    2ab2:	da 39       	mov.l	2b98 <_sin_tbl+0x2a7c>,r10	! dd1fdd25
    2ab4:	da 40       	mov.l	2bb8 <_sin_tbl+0x2a9c>,r10	! dd84dd8b
    2ab6:	da 46       	mov.l	2bd0 <_sin_tbl+0x2ab4>,r10	! ddd0ddd6
    2ab8:	da 4d       	mov.l	2bf0 <_sin_tbl+0x2ad4>,r10	! de34de3a
    2aba:	da 54       	mov.l	2c0c <_sin_tbl+0x2af0>,r10	! de8bde91
    2abc:	da 5a       	mov.l	2c28 <_sin_tbl+0x2b0c>,r10	! dee2dee8
    2abe:	da 61       	mov.l	2c44 <_sin_tbl+0x2b28>,r10	! df38df3e
    2ac0:	da 67       	mov.l	2c60 <_sin_tbl+0x2b44>,r10	! df8edf94
    2ac2:	da 6e       	mov.l	2c7c <_sin_tbl+0x2b60>,r10	! dfe3dfea
    2ac4:	da 74       	mov.l	2c98 <_sin_tbl+0x2b7c>,r10	! e039e03f
    2ac6:	da 7b       	mov.l	2cb4 <_sin_tbl+0x2b98>,r10	! e08de093
    2ac8:	da 81       	mov.l	2cd0 <_sin_tbl+0x2bb4>,r10	! e0e1e0e7
    2aca:	da 88       	mov.l	2cec <_sin_tbl+0x2bd0>,r10	! e135e13b
    2acc:	da 8f       	mov.l	2d0c <_sin_tbl+0x2bf0>,r10	! e195e19b
    2ace:	da 95       	mov.l	2d24 <_sin_tbl+0x2c08>,r10	! e1dce1e2
    2ad0:	da 9c       	mov.l	2d44 <_sin_tbl+0x2c28>,r10	! e23ae240
    2ad2:	da a2       	mov.l	2d5c <_sin_tbl+0x2c40>,r10	! e281e286
    2ad4:	da a9       	mov.l	2d7c <_sin_tbl+0x2c60>,r10	! e2dee2e4
    2ad6:	da af       	mov.l	2d94 <_sin_tbl+0x2c78>,r10	! e324e329
    2ad8:	da b6       	mov.l	2db4 <_sin_tbl+0x2c98>,r10	! e380e386
    2ada:	da bc       	mov.l	2dcc <_sin_tbl+0x2cb0>,r10	! e3c5e3cb
    2adc:	da c3       	mov.l	2dec <_sin_tbl+0x2cd0>,r10	! e421e426
    2ade:	da c9       	mov.l	2e04 <_sin_tbl+0x2ce8>,r10	! e465e46b
    2ae0:	da d0       	mov.l	2e24 <_sin_tbl+0x2d08>,r10	! e4bfe4c5
    2ae2:	da d6       	mov.l	2e3c <_sin_tbl+0x2d20>,r10	! e503e509
    2ae4:	da dd       	mov.l	2e5c <_sin_tbl+0x2d40>,r10	! e55de562
    2ae6:	da e3       	mov.l	2e74 <_sin_tbl+0x2d58>,r10	! e59fe5a5
    2ae8:	da ea       	mov.l	2e94 <_sin_tbl+0x2d78>,r10	! e5f8e5fd
    2aea:	da f0       	mov.l	2eac <_sin_tbl+0x2d90>,r10	! e63ae640
    2aec:	da f7       	mov.l	2ecc <_sin_tbl+0x2db0>,r10	! e692e697
    2aee:	da fd       	mov.l	2ee4 <_sin_tbl+0x2dc8>,r10	! e6d3e6d8
    2af0:	db 04       	mov.l	2b04 <_sin_tbl+0x29e8>,r11	! db45db4b
    2af2:	db 0a       	mov.l	2b1c <_sin_tbl+0x2a00>,r11	! db93db99
    2af4:	db 11       	mov.l	2b3c <_sin_tbl+0x2a20>,r11	! dbfadc00
    2af6:	db 17       	mov.l	2b54 <_sin_tbl+0x2a38>,r11	! dc47dc4d
    2af8:	db 1e       	mov.l	2b74 <_sin_tbl+0x2a58>,r11	! dcaddcb3
    2afa:	db 24       	mov.l	2b8c <_sin_tbl+0x2a70>,r11	! dcf9dcff
    2afc:	db 2b       	mov.l	2bac <_sin_tbl+0x2a90>,r11	! dd5edd65
    2afe:	db 31       	mov.l	2bc4 <_sin_tbl+0x2aa8>,r11	! ddaaddb0
    2b00:	db 38       	mov.l	2be4 <_sin_tbl+0x2ac8>,r11	! de0ede15
    2b02:	db 3e       	mov.l	2bfc <_sin_tbl+0x2ae0>,r11	! de59de5f
    2b04:	db 45       	mov.l	2c1c <_sin_tbl+0x2b00>,r11	! debddec3
    2b06:	db 4b       	mov.l	2c34 <_sin_tbl+0x2b18>,r11	! df07df0d
    2b08:	db 52       	mov.l	2c54 <_sin_tbl+0x2b38>,r11	! df69df6f
    2b0a:	db 58       	mov.l	2c6c <_sin_tbl+0x2b50>,r11	! dfb3dfb9
    2b0c:	db 5f       	mov.l	2c8c <_sin_tbl+0x2b70>,r11	! e014e01a
    2b0e:	db 65       	mov.l	2ca4 <_sin_tbl+0x2b88>,r11	! e05de063
    2b10:	db 6c       	mov.l	2cc4 <_sin_tbl+0x2ba8>,r11	! e0bde0c3
    2b12:	db 72       	mov.l	2cdc <_sin_tbl+0x2bc0>,r11	! e105e10b
    2b14:	db 79       	mov.l	2cfc <_sin_tbl+0x2be0>,r11	! e165e16b
    2b16:	db 7f       	mov.l	2d14 <_sin_tbl+0x2bf8>,r11	! e1ace1b2
    2b18:	db 86       	mov.l	2d34 <_sin_tbl+0x2c18>,r11	! e20be211
    2b1a:	db 8c       	mov.l	2d4c <_sin_tbl+0x2c30>,r11	! e252e258
    2b1c:	db 93       	mov.l	2d6c <_sin_tbl+0x2c50>,r11	! e2afe2b5
    2b1e:	db 99       	mov.l	2d84 <_sin_tbl+0x2c68>,r11	! e2f5e2fb
    2b20:	db a0       	mov.l	2da4 <_sin_tbl+0x2c88>,r11	! e352e358
    2b22:	db a6       	mov.l	2dbc <_sin_tbl+0x2ca0>,r11	! e397e39d
    2b24:	db ac       	mov.l	2dd8 <_sin_tbl+0x2cbc>,r11	! e3e8e3ed
    2b26:	db b3       	mov.l	2df4 <_sin_tbl+0x2cd8>,r11	! e437e43d
    2b28:	db b9       	mov.l	2e10 <_sin_tbl+0x2cf4>,r11	! e487e48d
    2b2a:	db c0       	mov.l	2e2c <_sin_tbl+0x2d10>,r11	! e4d6e4dc
    2b2c:	db c6       	mov.l	2e48 <_sin_tbl+0x2d2c>,r11	! e525e52a
    2b2e:	db cd       	mov.l	2e64 <_sin_tbl+0x2d48>,r11	! e573e578
    2b30:	db d3       	mov.l	2e80 <_sin_tbl+0x2d64>,r11	! e5c1e5c6
    2b32:	db da       	mov.l	2e9c <_sin_tbl+0x2d80>,r11	! e60ee614
    2b34:	db e0       	mov.l	2eb8 <_sin_tbl+0x2d9c>,r11	! e65be660
    2b36:	db e6       	mov.l	2ed0 <_sin_tbl+0x2db4>,r11	! e69de6a2
    2b38:	db ed       	mov.l	2ef0 <_sin_tbl+0x2dd4>,r11	! e6f4e6f9
    2b3a:	db f3       	mov.l	2f08 <_sin_tbl+0x2dec>,r11	! e735e73a
    2b3c:	db fa       	mov.l	2f28 <_sin_tbl+0x2e0c>,r11	! e78be790
    2b3e:	dc 00       	mov.l	2b40 <_sin_tbl+0x2a24>,r12	! dc07dc0d
    2b40:	dc 07       	mov.l	2b60 <_sin_tbl+0x2a44>,r12	! dc6ddc73
    2b42:	dc 0d       	mov.l	2b78 <_sin_tbl+0x2a5c>,r12	! dcbadcc0
    2b44:	dc 13       	mov.l	2b94 <_sin_tbl+0x2a78>,r12	! dd12dd19
    2b46:	dc 1a       	mov.l	2bb0 <_sin_tbl+0x2a94>,r12	! dd6bdd71
    2b48:	dc 20       	mov.l	2bcc <_sin_tbl+0x2ab0>,r12	! ddc3ddc9
    2b4a:	dc 27       	mov.l	2be8 <_sin_tbl+0x2acc>,r12	! de1bde21
    2b4c:	dc 2d       	mov.l	2c04 <_sin_tbl+0x2ae8>,r12	! de72de78
    2b4e:	dc 33       	mov.l	2c1c <_sin_tbl+0x2b00>,r12	! debddec3
    2b50:	dc 3a       	mov.l	2c3c <_sin_tbl+0x2b20>,r12	! df1fdf26
    2b52:	dc 40       	mov.l	2c54 <_sin_tbl+0x2b38>,r12	! df69df6f
    2b54:	dc 47       	mov.l	2c74 <_sin_tbl+0x2b58>,r12	! dfcbdfd1
    2b56:	dc 4d       	mov.l	2c8c <_sin_tbl+0x2b70>,r12	! e014e01a
    2b58:	dc 53       	mov.l	2ca8 <_sin_tbl+0x2b8c>,r12	! e069e06f
    2b5a:	dc 5a       	mov.l	2cc4 <_sin_tbl+0x2ba8>,r12	! e0bde0c3
    2b5c:	dc 60       	mov.l	2ce0 <_sin_tbl+0x2bc4>,r12	! e111e117
    2b5e:	dc 67       	mov.l	2cfc <_sin_tbl+0x2be0>,r12	! e165e16b
    2b60:	dc 6d       	mov.l	2d18 <_sin_tbl+0x2bfc>,r12	! e1b8e1be
    2b62:	dc 73       	mov.l	2d30 <_sin_tbl+0x2c14>,r12	! e1ffe205
    2b64:	dc 7a       	mov.l	2d50 <_sin_tbl+0x2c34>,r12	! e25de263
    2b66:	dc 80       	mov.l	2d68 <_sin_tbl+0x2c4c>,r12	! e2a4e2a9
    2b68:	dc 87       	mov.l	2d88 <_sin_tbl+0x2c6c>,r12	! e301e307
    2b6a:	dc 8d       	mov.l	2da0 <_sin_tbl+0x2c84>,r12	! e346e34c
    2b6c:	dc 93       	mov.l	2dbc <_sin_tbl+0x2ca0>,r12	! e397e39d
    2b6e:	dc 9a       	mov.l	2dd8 <_sin_tbl+0x2cbc>,r12	! e3e8e3ed
    2b70:	dc a0       	mov.l	2df4 <_sin_tbl+0x2cd8>,r12	! e437e43d
    2b72:	dc a6       	mov.l	2e0c <_sin_tbl+0x2cf0>,r12	! e47ce481
    2b74:	dc ad       	mov.l	2e2c <_sin_tbl+0x2d10>,r12	! e4d6e4dc
    2b76:	dc b3       	mov.l	2e44 <_sin_tbl+0x2d28>,r12	! e519e51f
    2b78:	dc ba       	mov.l	2e64 <_sin_tbl+0x2d48>,r12	! e573e578
    2b7a:	dc c0       	mov.l	2e7c <_sin_tbl+0x2d60>,r12	! e5b6e5bb
    2b7c:	dc c6       	mov.l	2e98 <_sin_tbl+0x2d7c>,r12	! e603e609
    2b7e:	dc cd       	mov.l	2eb4 <_sin_tbl+0x2d98>,r12	! e650e656
    2b80:	dc d3       	mov.l	2ed0 <_sin_tbl+0x2db4>,r12	! e69de6a2
    2b82:	dc d9       	mov.l	2ee8 <_sin_tbl+0x2dcc>,r12	! e6dee6e3
    2b84:	dc e0       	mov.l	2f08 <_sin_tbl+0x2dec>,r12	! e735e73a
    2b86:	dc e6       	mov.l	2f20 <_sin_tbl+0x2e04>,r12	! e775e77a
    2b88:	dc ec       	mov.l	2f3c <_sin_tbl+0x2e20>,r12	! e7c0e7c5
    2b8a:	dc f3       	mov.l	2f58 <_sin_tbl+0x2e3c>,r12	! e80be810
    2b8c:	dc f9       	mov.l	2f74 <_sin_tbl+0x2e58>,r12	! e855e85a
    2b8e:	dc ff       	mov.l	2f8c <_sin_tbl+0x2e70>,r12	! e894e899
    2b90:	dd 06       	mov.l	2bac <_sin_tbl+0x2a90>,r13	! dd5edd65
    2b92:	dd 0c       	mov.l	2bc4 <_sin_tbl+0x2aa8>,r13	! ddaaddb0
    2b94:	dd 12       	mov.l	2be0 <_sin_tbl+0x2ac4>,r13	! de02de08
    2b96:	dd 19       	mov.l	2bfc <_sin_tbl+0x2ae0>,r13	! de59de5f
    2b98:	dd 1f       	mov.l	2c18 <_sin_tbl+0x2afc>,r13	! deb0deb6
    2b9a:	dd 25       	mov.l	2c30 <_sin_tbl+0x2b14>,r13	! defadf01
    2b9c:	dd 2c       	mov.l	2c50 <_sin_tbl+0x2b34>,r13	! df5ddf63
    2b9e:	dd 32       	mov.l	2c68 <_sin_tbl+0x2b4c>,r13	! dfa6dfac
    2ba0:	dd 38       	mov.l	2c84 <_sin_tbl+0x2b68>,r13	! dffce002
    2ba2:	dd 3f       	mov.l	2ca0 <_sin_tbl+0x2b84>,r13	! e051e057
    2ba4:	dd 45       	mov.l	2cbc <_sin_tbl+0x2ba0>,r13	! e0a5e0ab
    2ba6:	dd 4b       	mov.l	2cd4 <_sin_tbl+0x2bb8>,r13	! e0ede0f3
    2ba8:	dd 52       	mov.l	2cf4 <_sin_tbl+0x2bd8>,r13	! e14de153
    2baa:	dd 58       	mov.l	2d0c <_sin_tbl+0x2bf0>,r13	! e195e19b
    2bac:	dd 5e       	mov.l	2d28 <_sin_tbl+0x2c0c>,r13	! e1e8e1ee
    2bae:	dd 65       	mov.l	2d44 <_sin_tbl+0x2c28>,r13	! e23ae240
    2bb0:	dd 6b       	mov.l	2d60 <_sin_tbl+0x2c44>,r13	! e28ce292
    2bb2:	dd 71       	mov.l	2d78 <_sin_tbl+0x2c5c>,r13	! e2d2e2d8
    2bb4:	dd 78       	mov.l	2d98 <_sin_tbl+0x2c7c>,r13	! e32fe335
    2bb6:	dd 7e       	mov.l	2db0 <_sin_tbl+0x2c94>,r13	! e375e37a
    2bb8:	dd 84       	mov.l	2dcc <_sin_tbl+0x2cb0>,r13	! e3c5e3cb
    2bba:	dd 8b       	mov.l	2de8 <_sin_tbl+0x2ccc>,r13	! e415e41b
    2bbc:	dd 91       	mov.l	2e04 <_sin_tbl+0x2ce8>,r13	! e465e46b
    2bbe:	dd 97       	mov.l	2e1c <_sin_tbl+0x2d00>,r13	! e4a9e4ae
    2bc0:	dd 9d       	mov.l	2e38 <_sin_tbl+0x2d1c>,r13	! e4f8e4fd
    2bc2:	dd a4       	mov.l	2e54 <_sin_tbl+0x2d38>,r13	! e546e54c
    2bc4:	dd aa       	mov.l	2e70 <_sin_tbl+0x2d54>,r13	! e594e59a
    2bc6:	dd b0       	mov.l	2e88 <_sin_tbl+0x2d6c>,r13	! e5d7e5dc
    2bc8:	dd b7       	mov.l	2ea8 <_sin_tbl+0x2d8c>,r13	! e62fe635
    2bca:	dd bd       	mov.l	2ec0 <_sin_tbl+0x2da4>,r13	! e671e676
    2bcc:	dd c3       	mov.l	2edc <_sin_tbl+0x2dc0>,r13	! e6bde6c3
    2bce:	dd c9       	mov.l	2ef4 <_sin_tbl+0x2dd8>,r13	! e6fee704
    2bd0:	dd d0       	mov.l	2f14 <_sin_tbl+0x2df8>,r13	! e755e75a
    2bd2:	dd d6       	mov.l	2f2c <_sin_tbl+0x2e10>,r13	! e795e79b
    2bd4:	dd dc       	mov.l	2f48 <_sin_tbl+0x2e2c>,r13	! e7e0e7e5
    2bd6:	dd e2       	mov.l	2f60 <_sin_tbl+0x2e44>,r13	! e820e825
    2bd8:	dd e9       	mov.l	2f80 <_sin_tbl+0x2e64>,r13	! e874e87a
    2bda:	dd ef       	mov.l	2f98 <_sin_tbl+0x2e7c>,r13	! e8b3e8b8
    2bdc:	dd f5       	mov.l	2fb4 <_sin_tbl+0x2e98>,r13	! e8fce902
    2bde:	dd fc       	mov.l	2fd0 <_sin_tbl+0x2eb4>,r13	! e945e94a
    2be0:	de 02       	mov.l	2bec <_sin_tbl+0x2ad0>,r14	! de27de2e
    2be2:	de 08       	mov.l	2c04 <_sin_tbl+0x2ae8>,r14	! de72de78
    2be4:	de 0e       	mov.l	2c20 <_sin_tbl+0x2b04>,r14	! dec9decf
    2be6:	de 15       	mov.l	2c3c <_sin_tbl+0x2b20>,r14	! df1fdf26
    2be8:	de 1b       	mov.l	2c58 <_sin_tbl+0x2b3c>,r14	! df75df7c
    2bea:	de 21       	mov.l	2c70 <_sin_tbl+0x2b54>,r14	! dfbfdfc5
    2bec:	de 27       	mov.l	2c8c <_sin_tbl+0x2b70>,r14	! e014e01a
    2bee:	de 2e       	mov.l	2ca8 <_sin_tbl+0x2b8c>,r14	! e069e06f
    2bf0:	de 34       	mov.l	2cc4 <_sin_tbl+0x2ba8>,r14	! e0bde0c3
    2bf2:	de 3a       	mov.l	2cdc <_sin_tbl+0x2bc0>,r14	! e105e10b
    2bf4:	de 40       	mov.l	2cf8 <_sin_tbl+0x2bdc>,r14	! e159e15f
    2bf6:	de 46       	mov.l	2d10 <_sin_tbl+0x2bf4>,r14	! e1a1e1a6
    2bf8:	de 4d       	mov.l	2d30 <_sin_tbl+0x2c14>,r14	! e1ffe205
    2bfa:	de 53       	mov.l	2d48 <_sin_tbl+0x2c2c>,r14	! e246e24c
    2bfc:	de 59       	mov.l	2d64 <_sin_tbl+0x2c48>,r14	! e298e29e
    2bfe:	de 5f       	mov.l	2d7c <_sin_tbl+0x2c60>,r14	! e2dee2e4
    2c00:	de 66       	mov.l	2d9c <_sin_tbl+0x2c80>,r14	! e33be341
    2c02:	de 6c       	mov.l	2db4 <_sin_tbl+0x2c98>,r14	! e380e386
    2c04:	de 72       	mov.l	2dd0 <_sin_tbl+0x2cb4>,r14	! e3d1e3d6
    2c06:	de 78       	mov.l	2de8 <_sin_tbl+0x2ccc>,r14	! e415e41b
    2c08:	de 7e       	mov.l	2e04 <_sin_tbl+0x2ce8>,r14	! e465e46b
    2c0a:	de 85       	mov.l	2e20 <_sin_tbl+0x2d04>,r14	! e4b4e4ba
    2c0c:	de 8b       	mov.l	2e3c <_sin_tbl+0x2d20>,r14	! e503e509
    2c0e:	de 91       	mov.l	2e54 <_sin_tbl+0x2d38>,r14	! e546e54c
    2c10:	de 97       	mov.l	2e70 <_sin_tbl+0x2d54>,r14	! e594e59a
    2c12:	de 9e       	mov.l	2e8c <_sin_tbl+0x2d70>,r14	! e5e2e5e7
    2c14:	de a4       	mov.l	2ea8 <_sin_tbl+0x2d8c>,r14	! e62fe635
    2c16:	de aa       	mov.l	2ec0 <_sin_tbl+0x2da4>,r14	! e671e676
    2c18:	de b0       	mov.l	2edc <_sin_tbl+0x2dc0>,r14	! e6bde6c3
    2c1a:	de b6       	mov.l	2ef4 <_sin_tbl+0x2dd8>,r14	! e6fee704
    2c1c:	de bd       	mov.l	2f14 <_sin_tbl+0x2df8>,r14	! e755e75a
    2c1e:	de c3       	mov.l	2f2c <_sin_tbl+0x2e10>,r14	! e795e79b
    2c20:	de c9       	mov.l	2f48 <_sin_tbl+0x2e2c>,r14	! e7e0e7e5
    2c22:	de cf       	mov.l	2f60 <_sin_tbl+0x2e44>,r14	! e820e825
    2c24:	de d5       	mov.l	2f7c <_sin_tbl+0x2e60>,r14	! e86ae86f
    2c26:	de db       	mov.l	2f94 <_sin_tbl+0x2e78>,r14	! e8a9e8ae
    2c28:	de e2       	mov.l	2fb4 <_sin_tbl+0x2e98>,r14	! e8fce902
    2c2a:	de e8       	mov.l	2fcc <_sin_tbl+0x2eb0>,r14	! e93be940
    2c2c:	de ee       	mov.l	2fe8 <_sin_tbl+0x2ecc>,r14	! e983e988
    2c2e:	de f4       	mov.l	3000 <_sin_tbl+0x2ee4>,r14	! e9c1e9c6
    2c30:	de fa       	mov.l	301c <_sin_tbl+0x2f00>,r14	! ea08ea0d
    2c32:	df 01       	mov.l	2c38 <_sin_tbl+0x2b1c>,r15	! df13df19
    2c34:	df 07       	mov.l	2c54 <_sin_tbl+0x2b38>,r15	! df69df6f
    2c36:	df 0d       	mov.l	2c6c <_sin_tbl+0x2b50>,r15	! dfb3dfb9
    2c38:	df 13       	mov.l	2c88 <_sin_tbl+0x2b6c>,r15	! e008e00e
    2c3a:	df 19       	mov.l	2ca0 <_sin_tbl+0x2b84>,r15	! e051e057
    2c3c:	df 1f       	mov.l	2cbc <_sin_tbl+0x2ba0>,r15	! e0a5e0ab
    2c3e:	df 26       	mov.l	2cd8 <_sin_tbl+0x2bbc>,r15	! e0f9e0ff
    2c40:	df 2c       	mov.l	2cf4 <_sin_tbl+0x2bd8>,r15	! e14de153
    2c42:	df 32       	mov.l	2d0c <_sin_tbl+0x2bf0>,r15	! e195e19b
    2c44:	df 38       	mov.l	2d28 <_sin_tbl+0x2c0c>,r15	! e1e8e1ee
    2c46:	df 3e       	mov.l	2d40 <_sin_tbl+0x2c24>,r15	! e22ee234
    2c48:	df 44       	mov.l	2d5c <_sin_tbl+0x2c40>,r15	! e281e286
    2c4a:	df 4a       	mov.l	2d74 <_sin_tbl+0x2c58>,r15	! e2c7e2cd
    2c4c:	df 51       	mov.l	2d94 <_sin_tbl+0x2c78>,r15	! e324e329
    2c4e:	df 57       	mov.l	2dac <_sin_tbl+0x2c90>,r15	! e369e36f
    2c50:	df 5d       	mov.l	2dc8 <_sin_tbl+0x2cac>,r15	! e3bae3bf
    2c52:	df 63       	mov.l	2de0 <_sin_tbl+0x2cc4>,r15	! e3fee404
    2c54:	df 69       	mov.l	2dfc <_sin_tbl+0x2ce0>,r15	! e44ee454
    2c56:	df 6f       	mov.l	2e14 <_sin_tbl+0x2cf8>,r15	! e492e498
    2c58:	df 75       	mov.l	2e30 <_sin_tbl+0x2d14>,r15	! e4e1e4e7
    2c5a:	df 7c       	mov.l	2e4c <_sin_tbl+0x2d30>,r15	! e530e535
    2c5c:	df 82       	mov.l	2e68 <_sin_tbl+0x2d4c>,r15	! e57ee584
    2c5e:	df 88       	mov.l	2e80 <_sin_tbl+0x2d64>,r15	! e5c1e5c6
    2c60:	df 8e       	mov.l	2e9c <_sin_tbl+0x2d80>,r15	! e60ee614
    2c62:	df 94       	mov.l	2eb4 <_sin_tbl+0x2d98>,r15	! e650e656
    2c64:	df 9a       	mov.l	2ed0 <_sin_tbl+0x2db4>,r15	! e69de6a2
    2c66:	df a0       	mov.l	2ee8 <_sin_tbl+0x2dcc>,r15	! e6dee6e3
    2c68:	df a6       	mov.l	2f04 <_sin_tbl+0x2de8>,r15	! e72ae72f
    2c6a:	df ac       	mov.l	2f1c <_sin_tbl+0x2e00>,r15	! e76ae770
    2c6c:	df b3       	mov.l	2f3c <_sin_tbl+0x2e20>,r15	! e7c0e7c5
    2c6e:	df b9       	mov.l	2f54 <_sin_tbl+0x2e38>,r15	! e800e805
    2c70:	df bf       	mov.l	2f70 <_sin_tbl+0x2e54>,r15	! e84ae84f
    2c72:	df c5       	mov.l	2f88 <_sin_tbl+0x2e6c>,r15	! e889e88f
    2c74:	df cb       	mov.l	2fa4 <_sin_tbl+0x2e88>,r15	! e8d3e8d8
    2c76:	df d1       	mov.l	2fbc <_sin_tbl+0x2ea0>,r15	! e911e916
    2c78:	df d7       	mov.l	2fd8 <_sin_tbl+0x2ebc>,r15	! e95ae95f
    2c7a:	df dd       	mov.l	2ff0 <_sin_tbl+0x2ed4>,r15	! e998e99d
    2c7c:	df e3       	mov.l	300c <_sin_tbl+0x2ef0>,r15	! e9dfe9e4
    2c7e:	df ea       	mov.l	3028 <_sin_tbl+0x2f0c>,r15	! ea27ea2c
    2c80:	df f0       	mov.l	3044 <_sin_tbl+0x2f28>,r15	! ea6eea73
    2c82:	df f6       	mov.l	305c <_sin_tbl+0x2f40>,r15	! eaaaeaaf
    2c84:	df fc       	mov.l	3078 <_sin_tbl+0x2f5c>,r15	! eaf0eaf5
    2c86:	e0 02       	mov	#2,r0
    2c88:	e0 08       	mov	#8,r0
    2c8a:	e0 0e       	mov	#14,r0
    2c8c:	e0 14       	mov	#20,r0
    2c8e:	e0 1a       	mov	#26,r0
    2c90:	e0 20       	mov	#32,r0
    2c92:	e0 26       	mov	#38,r0
    2c94:	e0 2c       	mov	#44,r0
    2c96:	e0 32       	mov	#50,r0
    2c98:	e0 39       	mov	#57,r0
    2c9a:	e0 3f       	mov	#63,r0
    2c9c:	e0 45       	mov	#69,r0
    2c9e:	e0 4b       	mov	#75,r0
    2ca0:	e0 51       	mov	#81,r0
    2ca2:	e0 57       	mov	#87,r0
    2ca4:	e0 5d       	mov	#93,r0
    2ca6:	e0 63       	mov	#99,r0
    2ca8:	e0 69       	mov	#105,r0
    2caa:	e0 6f       	mov	#111,r0
    2cac:	e0 75       	mov	#117,r0
    2cae:	e0 7b       	mov	#123,r0
    2cb0:	e0 81       	mov	#-127,r0
    2cb2:	e0 87       	mov	#-121,r0
    2cb4:	e0 8d       	mov	#-115,r0
    2cb6:	e0 93       	mov	#-109,r0
    2cb8:	e0 99       	mov	#-103,r0
    2cba:	e0 9f       	mov	#-97,r0
    2cbc:	e0 a5       	mov	#-91,r0
    2cbe:	e0 ab       	mov	#-85,r0
    2cc0:	e0 b1       	mov	#-79,r0
    2cc2:	e0 b7       	mov	#-73,r0
    2cc4:	e0 bd       	mov	#-67,r0
    2cc6:	e0 c3       	mov	#-61,r0
    2cc8:	e0 c9       	mov	#-55,r0
    2cca:	e0 cf       	mov	#-49,r0
    2ccc:	e0 d5       	mov	#-43,r0
    2cce:	e0 db       	mov	#-37,r0
    2cd0:	e0 e1       	mov	#-31,r0
    2cd2:	e0 e7       	mov	#-25,r0
    2cd4:	e0 ed       	mov	#-19,r0
    2cd6:	e0 f3       	mov	#-13,r0
    2cd8:	e0 f9       	mov	#-7,r0
    2cda:	e0 ff       	mov	#-1,r0
    2cdc:	e1 05       	mov	#5,r1
    2cde:	e1 0b       	mov	#11,r1
    2ce0:	e1 11       	mov	#17,r1
    2ce2:	e1 17       	mov	#23,r1
    2ce4:	e1 1d       	mov	#29,r1
    2ce6:	e1 23       	mov	#35,r1
    2ce8:	e1 29       	mov	#41,r1
    2cea:	e1 2f       	mov	#47,r1
    2cec:	e1 35       	mov	#53,r1
    2cee:	e1 3b       	mov	#59,r1
    2cf0:	e1 41       	mov	#65,r1
    2cf2:	e1 47       	mov	#71,r1
    2cf4:	e1 4d       	mov	#77,r1
    2cf6:	e1 53       	mov	#83,r1
    2cf8:	e1 59       	mov	#89,r1
    2cfa:	e1 5f       	mov	#95,r1
    2cfc:	e1 65       	mov	#101,r1
    2cfe:	e1 6b       	mov	#107,r1
    2d00:	e1 71       	mov	#113,r1
    2d02:	e1 77       	mov	#119,r1
    2d04:	e1 7d       	mov	#125,r1
    2d06:	e1 83       	mov	#-125,r1
    2d08:	e1 89       	mov	#-119,r1
    2d0a:	e1 8f       	mov	#-113,r1
    2d0c:	e1 95       	mov	#-107,r1
    2d0e:	e1 9b       	mov	#-101,r1
    2d10:	e1 a1       	mov	#-95,r1
    2d12:	e1 a6       	mov	#-90,r1
    2d14:	e1 ac       	mov	#-84,r1
    2d16:	e1 b2       	mov	#-78,r1
    2d18:	e1 b8       	mov	#-72,r1
    2d1a:	e1 be       	mov	#-66,r1
    2d1c:	e1 c4       	mov	#-60,r1
    2d1e:	e1 ca       	mov	#-54,r1
    2d20:	e1 d0       	mov	#-48,r1
    2d22:	e1 d6       	mov	#-42,r1
    2d24:	e1 dc       	mov	#-36,r1
    2d26:	e1 e2       	mov	#-30,r1
    2d28:	e1 e8       	mov	#-24,r1
    2d2a:	e1 ee       	mov	#-18,r1
    2d2c:	e1 f3       	mov	#-13,r1
    2d2e:	e1 f9       	mov	#-7,r1
    2d30:	e1 ff       	mov	#-1,r1
    2d32:	e2 05       	mov	#5,r2
    2d34:	e2 0b       	mov	#11,r2
    2d36:	e2 11       	mov	#17,r2
    2d38:	e2 17       	mov	#23,r2
    2d3a:	e2 1d       	mov	#29,r2
    2d3c:	e2 23       	mov	#35,r2
    2d3e:	e2 28       	mov	#40,r2
    2d40:	e2 2e       	mov	#46,r2
    2d42:	e2 34       	mov	#52,r2
    2d44:	e2 3a       	mov	#58,r2
    2d46:	e2 40       	mov	#64,r2
    2d48:	e2 46       	mov	#70,r2
    2d4a:	e2 4c       	mov	#76,r2
    2d4c:	e2 52       	mov	#82,r2
    2d4e:	e2 58       	mov	#88,r2
    2d50:	e2 5d       	mov	#93,r2
    2d52:	e2 63       	mov	#99,r2
    2d54:	e2 69       	mov	#105,r2
    2d56:	e2 6f       	mov	#111,r2
    2d58:	e2 75       	mov	#117,r2
    2d5a:	e2 7b       	mov	#123,r2
    2d5c:	e2 81       	mov	#-127,r2
    2d5e:	e2 86       	mov	#-122,r2
    2d60:	e2 8c       	mov	#-116,r2
    2d62:	e2 92       	mov	#-110,r2
    2d64:	e2 98       	mov	#-104,r2
    2d66:	e2 9e       	mov	#-98,r2
    2d68:	e2 a4       	mov	#-92,r2
    2d6a:	e2 a9       	mov	#-87,r2
    2d6c:	e2 af       	mov	#-81,r2
    2d6e:	e2 b5       	mov	#-75,r2
    2d70:	e2 bb       	mov	#-69,r2
    2d72:	e2 c1       	mov	#-63,r2
    2d74:	e2 c7       	mov	#-57,r2
    2d76:	e2 cd       	mov	#-51,r2
    2d78:	e2 d2       	mov	#-46,r2
    2d7a:	e2 d8       	mov	#-40,r2
    2d7c:	e2 de       	mov	#-34,r2
    2d7e:	e2 e4       	mov	#-28,r2
    2d80:	e2 ea       	mov	#-22,r2
    2d82:	e2 ef       	mov	#-17,r2
    2d84:	e2 f5       	mov	#-11,r2
    2d86:	e2 fb       	mov	#-5,r2
    2d88:	e3 01       	mov	#1,r3
    2d8a:	e3 07       	mov	#7,r3
    2d8c:	e3 0c       	mov	#12,r3
    2d8e:	e3 12       	mov	#18,r3
    2d90:	e3 18       	mov	#24,r3
    2d92:	e3 1e       	mov	#30,r3
    2d94:	e3 24       	mov	#36,r3
    2d96:	e3 29       	mov	#41,r3
    2d98:	e3 2f       	mov	#47,r3
    2d9a:	e3 35       	mov	#53,r3
    2d9c:	e3 3b       	mov	#59,r3
    2d9e:	e3 41       	mov	#65,r3
    2da0:	e3 46       	mov	#70,r3
    2da2:	e3 4c       	mov	#76,r3
    2da4:	e3 52       	mov	#82,r3
    2da6:	e3 58       	mov	#88,r3
    2da8:	e3 5e       	mov	#94,r3
    2daa:	e3 63       	mov	#99,r3
    2dac:	e3 69       	mov	#105,r3
    2dae:	e3 6f       	mov	#111,r3
    2db0:	e3 75       	mov	#117,r3
    2db2:	e3 7a       	mov	#122,r3
    2db4:	e3 80       	mov	#-128,r3
    2db6:	e3 86       	mov	#-122,r3
    2db8:	e3 8c       	mov	#-116,r3
    2dba:	e3 91       	mov	#-111,r3
    2dbc:	e3 97       	mov	#-105,r3
    2dbe:	e3 9d       	mov	#-99,r3
    2dc0:	e3 a3       	mov	#-93,r3
    2dc2:	e3 a8       	mov	#-88,r3
    2dc4:	e3 ae       	mov	#-82,r3
    2dc6:	e3 b4       	mov	#-76,r3
    2dc8:	e3 ba       	mov	#-70,r3
    2dca:	e3 bf       	mov	#-65,r3
    2dcc:	e3 c5       	mov	#-59,r3
    2dce:	e3 cb       	mov	#-53,r3
    2dd0:	e3 d1       	mov	#-47,r3
    2dd2:	e3 d6       	mov	#-42,r3
    2dd4:	e3 dc       	mov	#-36,r3
    2dd6:	e3 e2       	mov	#-30,r3
    2dd8:	e3 e8       	mov	#-24,r3
    2dda:	e3 ed       	mov	#-19,r3
    2ddc:	e3 f3       	mov	#-13,r3
    2dde:	e3 f9       	mov	#-7,r3
    2de0:	e3 fe       	mov	#-2,r3
    2de2:	e4 04       	mov	#4,r4
    2de4:	e4 0a       	mov	#10,r4
    2de6:	e4 10       	mov	#16,r4
    2de8:	e4 15       	mov	#21,r4
    2dea:	e4 1b       	mov	#27,r4
    2dec:	e4 21       	mov	#33,r4
    2dee:	e4 26       	mov	#38,r4
    2df0:	e4 2c       	mov	#44,r4
    2df2:	e4 32       	mov	#50,r4
    2df4:	e4 37       	mov	#55,r4
    2df6:	e4 3d       	mov	#61,r4
    2df8:	e4 43       	mov	#67,r4
    2dfa:	e4 48       	mov	#72,r4
    2dfc:	e4 4e       	mov	#78,r4
    2dfe:	e4 54       	mov	#84,r4
    2e00:	e4 5a       	mov	#90,r4
    2e02:	e4 5f       	mov	#95,r4
    2e04:	e4 65       	mov	#101,r4
    2e06:	e4 6b       	mov	#107,r4
    2e08:	e4 70       	mov	#112,r4
    2e0a:	e4 76       	mov	#118,r4
    2e0c:	e4 7c       	mov	#124,r4
    2e0e:	e4 81       	mov	#-127,r4
    2e10:	e4 87       	mov	#-121,r4
    2e12:	e4 8d       	mov	#-115,r4
    2e14:	e4 92       	mov	#-110,r4
    2e16:	e4 98       	mov	#-104,r4
    2e18:	e4 9e       	mov	#-98,r4
    2e1a:	e4 a3       	mov	#-93,r4
    2e1c:	e4 a9       	mov	#-87,r4
    2e1e:	e4 ae       	mov	#-82,r4
    2e20:	e4 b4       	mov	#-76,r4
    2e22:	e4 ba       	mov	#-70,r4
    2e24:	e4 bf       	mov	#-65,r4
    2e26:	e4 c5       	mov	#-59,r4
    2e28:	e4 cb       	mov	#-53,r4
    2e2a:	e4 d0       	mov	#-48,r4
    2e2c:	e4 d6       	mov	#-42,r4
    2e2e:	e4 dc       	mov	#-36,r4
    2e30:	e4 e1       	mov	#-31,r4
    2e32:	e4 e7       	mov	#-25,r4
    2e34:	e4 ec       	mov	#-20,r4
    2e36:	e4 f2       	mov	#-14,r4
    2e38:	e4 f8       	mov	#-8,r4
    2e3a:	e4 fd       	mov	#-3,r4
    2e3c:	e5 03       	mov	#3,r5
    2e3e:	e5 09       	mov	#9,r5
    2e40:	e5 0e       	mov	#14,r5
    2e42:	e5 14       	mov	#20,r5
    2e44:	e5 19       	mov	#25,r5
    2e46:	e5 1f       	mov	#31,r5
    2e48:	e5 25       	mov	#37,r5
    2e4a:	e5 2a       	mov	#42,r5
    2e4c:	e5 30       	mov	#48,r5
    2e4e:	e5 35       	mov	#53,r5
    2e50:	e5 3b       	mov	#59,r5
    2e52:	e5 41       	mov	#65,r5
    2e54:	e5 46       	mov	#70,r5
    2e56:	e5 4c       	mov	#76,r5
    2e58:	e5 51       	mov	#81,r5
    2e5a:	e5 57       	mov	#87,r5
    2e5c:	e5 5d       	mov	#93,r5
    2e5e:	e5 62       	mov	#98,r5
    2e60:	e5 68       	mov	#104,r5
    2e62:	e5 6d       	mov	#109,r5
    2e64:	e5 73       	mov	#115,r5
    2e66:	e5 78       	mov	#120,r5
    2e68:	e5 7e       	mov	#126,r5
    2e6a:	e5 84       	mov	#-124,r5
    2e6c:	e5 89       	mov	#-119,r5
    2e6e:	e5 8f       	mov	#-113,r5
    2e70:	e5 94       	mov	#-108,r5
    2e72:	e5 9a       	mov	#-102,r5
    2e74:	e5 9f       	mov	#-97,r5
    2e76:	e5 a5       	mov	#-91,r5
    2e78:	e5 aa       	mov	#-86,r5
    2e7a:	e5 b0       	mov	#-80,r5
    2e7c:	e5 b6       	mov	#-74,r5
    2e7e:	e5 bb       	mov	#-69,r5
    2e80:	e5 c1       	mov	#-63,r5
    2e82:	e5 c6       	mov	#-58,r5
    2e84:	e5 cc       	mov	#-52,r5
    2e86:	e5 d1       	mov	#-47,r5
    2e88:	e5 d7       	mov	#-41,r5
    2e8a:	e5 dc       	mov	#-36,r5
    2e8c:	e5 e2       	mov	#-30,r5
    2e8e:	e5 e7       	mov	#-25,r5
    2e90:	e5 ed       	mov	#-19,r5
    2e92:	e5 f2       	mov	#-14,r5
    2e94:	e5 f8       	mov	#-8,r5
    2e96:	e5 fd       	mov	#-3,r5
    2e98:	e6 03       	mov	#3,r6
    2e9a:	e6 09       	mov	#9,r6
    2e9c:	e6 0e       	mov	#14,r6
    2e9e:	e6 14       	mov	#20,r6
    2ea0:	e6 19       	mov	#25,r6
    2ea2:	e6 1f       	mov	#31,r6
    2ea4:	e6 24       	mov	#36,r6
    2ea6:	e6 2a       	mov	#42,r6
    2ea8:	e6 2f       	mov	#47,r6
    2eaa:	e6 35       	mov	#53,r6
    2eac:	e6 3a       	mov	#58,r6
    2eae:	e6 40       	mov	#64,r6
    2eb0:	e6 45       	mov	#69,r6
    2eb2:	e6 4b       	mov	#75,r6
    2eb4:	e6 50       	mov	#80,r6
    2eb6:	e6 56       	mov	#86,r6
    2eb8:	e6 5b       	mov	#91,r6
    2eba:	e6 60       	mov	#96,r6
    2ebc:	e6 66       	mov	#102,r6
    2ebe:	e6 6b       	mov	#107,r6
    2ec0:	e6 71       	mov	#113,r6
    2ec2:	e6 76       	mov	#118,r6
    2ec4:	e6 7c       	mov	#124,r6
    2ec6:	e6 81       	mov	#-127,r6
    2ec8:	e6 87       	mov	#-121,r6
    2eca:	e6 8c       	mov	#-116,r6
    2ecc:	e6 92       	mov	#-110,r6
    2ece:	e6 97       	mov	#-105,r6
    2ed0:	e6 9d       	mov	#-99,r6
    2ed2:	e6 a2       	mov	#-94,r6
    2ed4:	e6 a8       	mov	#-88,r6
    2ed6:	e6 ad       	mov	#-83,r6
    2ed8:	e6 b2       	mov	#-78,r6
    2eda:	e6 b8       	mov	#-72,r6
    2edc:	e6 bd       	mov	#-67,r6
    2ede:	e6 c3       	mov	#-61,r6
    2ee0:	e6 c8       	mov	#-56,r6
    2ee2:	e6 ce       	mov	#-50,r6
    2ee4:	e6 d3       	mov	#-45,r6
    2ee6:	e6 d8       	mov	#-40,r6
    2ee8:	e6 de       	mov	#-34,r6
    2eea:	e6 e3       	mov	#-29,r6
    2eec:	e6 e9       	mov	#-23,r6
    2eee:	e6 ee       	mov	#-18,r6
    2ef0:	e6 f4       	mov	#-12,r6
    2ef2:	e6 f9       	mov	#-7,r6
    2ef4:	e6 fe       	mov	#-2,r6
    2ef6:	e7 04       	mov	#4,r7
    2ef8:	e7 09       	mov	#9,r7
    2efa:	e7 0f       	mov	#15,r7
    2efc:	e7 14       	mov	#20,r7
    2efe:	e7 1a       	mov	#26,r7
    2f00:	e7 1f       	mov	#31,r7
    2f02:	e7 24       	mov	#36,r7
    2f04:	e7 2a       	mov	#42,r7
    2f06:	e7 2f       	mov	#47,r7
    2f08:	e7 35       	mov	#53,r7
    2f0a:	e7 3a       	mov	#58,r7
    2f0c:	e7 3f       	mov	#63,r7
    2f0e:	e7 45       	mov	#69,r7
    2f10:	e7 4a       	mov	#74,r7
    2f12:	e7 4f       	mov	#79,r7
    2f14:	e7 55       	mov	#85,r7
    2f16:	e7 5a       	mov	#90,r7
    2f18:	e7 60       	mov	#96,r7
    2f1a:	e7 65       	mov	#101,r7
    2f1c:	e7 6a       	mov	#106,r7
    2f1e:	e7 70       	mov	#112,r7
    2f20:	e7 75       	mov	#117,r7
    2f22:	e7 7a       	mov	#122,r7
    2f24:	e7 80       	mov	#-128,r7
    2f26:	e7 85       	mov	#-123,r7
    2f28:	e7 8b       	mov	#-117,r7
    2f2a:	e7 90       	mov	#-112,r7
    2f2c:	e7 95       	mov	#-107,r7
    2f2e:	e7 9b       	mov	#-101,r7
    2f30:	e7 a0       	mov	#-96,r7
    2f32:	e7 a5       	mov	#-91,r7
    2f34:	e7 ab       	mov	#-85,r7
    2f36:	e7 b0       	mov	#-80,r7
    2f38:	e7 b5       	mov	#-75,r7
    2f3a:	e7 bb       	mov	#-69,r7
    2f3c:	e7 c0       	mov	#-64,r7
    2f3e:	e7 c5       	mov	#-59,r7
    2f40:	e7 cb       	mov	#-53,r7
    2f42:	e7 d0       	mov	#-48,r7
    2f44:	e7 d5       	mov	#-43,r7
    2f46:	e7 db       	mov	#-37,r7
    2f48:	e7 e0       	mov	#-32,r7
    2f4a:	e7 e5       	mov	#-27,r7
    2f4c:	e7 eb       	mov	#-21,r7
    2f4e:	e7 f0       	mov	#-16,r7
    2f50:	e7 f5       	mov	#-11,r7
    2f52:	e7 fb       	mov	#-5,r7
    2f54:	e8 00       	mov	#0,r8
    2f56:	e8 05       	mov	#5,r8
    2f58:	e8 0b       	mov	#11,r8
    2f5a:	e8 10       	mov	#16,r8
    2f5c:	e8 15       	mov	#21,r8
    2f5e:	e8 1a       	mov	#26,r8
    2f60:	e8 20       	mov	#32,r8
    2f62:	e8 25       	mov	#37,r8
    2f64:	e8 2a       	mov	#42,r8
    2f66:	e8 30       	mov	#48,r8
    2f68:	e8 35       	mov	#53,r8
    2f6a:	e8 3a       	mov	#58,r8
    2f6c:	e8 40       	mov	#64,r8
    2f6e:	e8 45       	mov	#69,r8
    2f70:	e8 4a       	mov	#74,r8
    2f72:	e8 4f       	mov	#79,r8
    2f74:	e8 55       	mov	#85,r8
    2f76:	e8 5a       	mov	#90,r8
    2f78:	e8 5f       	mov	#95,r8
    2f7a:	e8 64       	mov	#100,r8
    2f7c:	e8 6a       	mov	#106,r8
    2f7e:	e8 6f       	mov	#111,r8
    2f80:	e8 74       	mov	#116,r8
    2f82:	e8 7a       	mov	#122,r8
    2f84:	e8 7f       	mov	#127,r8
    2f86:	e8 84       	mov	#-124,r8
    2f88:	e8 89       	mov	#-119,r8
    2f8a:	e8 8f       	mov	#-113,r8
    2f8c:	e8 94       	mov	#-108,r8
    2f8e:	e8 99       	mov	#-103,r8
    2f90:	e8 9e       	mov	#-98,r8
    2f92:	e8 a4       	mov	#-92,r8
    2f94:	e8 a9       	mov	#-87,r8
    2f96:	e8 ae       	mov	#-82,r8
    2f98:	e8 b3       	mov	#-77,r8
    2f9a:	e8 b8       	mov	#-72,r8
    2f9c:	e8 be       	mov	#-66,r8
    2f9e:	e8 c3       	mov	#-61,r8
    2fa0:	e8 c8       	mov	#-56,r8
    2fa2:	e8 cd       	mov	#-51,r8
    2fa4:	e8 d3       	mov	#-45,r8
    2fa6:	e8 d8       	mov	#-40,r8
    2fa8:	e8 dd       	mov	#-35,r8
    2faa:	e8 e2       	mov	#-30,r8
    2fac:	e8 e8       	mov	#-24,r8
    2fae:	e8 ed       	mov	#-19,r8
    2fb0:	e8 f2       	mov	#-14,r8
    2fb2:	e8 f7       	mov	#-9,r8
    2fb4:	e8 fc       	mov	#-4,r8
    2fb6:	e9 02       	mov	#2,r9
    2fb8:	e9 07       	mov	#7,r9
    2fba:	e9 0c       	mov	#12,r9
    2fbc:	e9 11       	mov	#17,r9
    2fbe:	e9 16       	mov	#22,r9
    2fc0:	e9 1c       	mov	#28,r9
    2fc2:	e9 21       	mov	#33,r9
    2fc4:	e9 26       	mov	#38,r9
    2fc6:	e9 2b       	mov	#43,r9
    2fc8:	e9 30       	mov	#48,r9
    2fca:	e9 36       	mov	#54,r9
    2fcc:	e9 3b       	mov	#59,r9
    2fce:	e9 40       	mov	#64,r9
    2fd0:	e9 45       	mov	#69,r9
    2fd2:	e9 4a       	mov	#74,r9
    2fd4:	e9 4f       	mov	#79,r9
    2fd6:	e9 55       	mov	#85,r9
    2fd8:	e9 5a       	mov	#90,r9
    2fda:	e9 5f       	mov	#95,r9
    2fdc:	e9 64       	mov	#100,r9
    2fde:	e9 69       	mov	#105,r9
    2fe0:	e9 6e       	mov	#110,r9
    2fe2:	e9 74       	mov	#116,r9
    2fe4:	e9 79       	mov	#121,r9
    2fe6:	e9 7e       	mov	#126,r9
    2fe8:	e9 83       	mov	#-125,r9
    2fea:	e9 88       	mov	#-120,r9
    2fec:	e9 8d       	mov	#-115,r9
    2fee:	e9 92       	mov	#-110,r9
    2ff0:	e9 98       	mov	#-104,r9
    2ff2:	e9 9d       	mov	#-99,r9
    2ff4:	e9 a2       	mov	#-94,r9
    2ff6:	e9 a7       	mov	#-89,r9
    2ff8:	e9 ac       	mov	#-84,r9
    2ffa:	e9 b1       	mov	#-79,r9
    2ffc:	e9 b6       	mov	#-74,r9
    2ffe:	e9 bc       	mov	#-68,r9
    3000:	e9 c1       	mov	#-63,r9
    3002:	e9 c6       	mov	#-58,r9
    3004:	e9 cb       	mov	#-53,r9
    3006:	e9 d0       	mov	#-48,r9
    3008:	e9 d5       	mov	#-43,r9
    300a:	e9 da       	mov	#-38,r9
    300c:	e9 df       	mov	#-33,r9
    300e:	e9 e4       	mov	#-28,r9
    3010:	e9 ea       	mov	#-22,r9
    3012:	e9 ef       	mov	#-17,r9
    3014:	e9 f4       	mov	#-12,r9
    3016:	e9 f9       	mov	#-7,r9
    3018:	e9 fe       	mov	#-2,r9
    301a:	ea 03       	mov	#3,r10
    301c:	ea 08       	mov	#8,r10
    301e:	ea 0d       	mov	#13,r10
    3020:	ea 12       	mov	#18,r10
    3022:	ea 17       	mov	#23,r10
    3024:	ea 1d       	mov	#29,r10
    3026:	ea 22       	mov	#34,r10
    3028:	ea 27       	mov	#39,r10
    302a:	ea 2c       	mov	#44,r10
    302c:	ea 31       	mov	#49,r10
    302e:	ea 36       	mov	#54,r10
    3030:	ea 3b       	mov	#59,r10
    3032:	ea 40       	mov	#64,r10
    3034:	ea 45       	mov	#69,r10
    3036:	ea 4a       	mov	#74,r10
    3038:	ea 4f       	mov	#79,r10
    303a:	ea 54       	mov	#84,r10
    303c:	ea 59       	mov	#89,r10
    303e:	ea 5e       	mov	#94,r10
    3040:	ea 63       	mov	#99,r10
    3042:	ea 69       	mov	#105,r10
    3044:	ea 6e       	mov	#110,r10
    3046:	ea 73       	mov	#115,r10
    3048:	ea 78       	mov	#120,r10
    304a:	ea 7d       	mov	#125,r10
    304c:	ea 82       	mov	#-126,r10
    304e:	ea 87       	mov	#-121,r10
    3050:	ea 8c       	mov	#-116,r10
    3052:	ea 91       	mov	#-111,r10
    3054:	ea 96       	mov	#-106,r10
    3056:	ea 9b       	mov	#-101,r10
    3058:	ea a0       	mov	#-96,r10
    305a:	ea a5       	mov	#-91,r10
    305c:	ea aa       	mov	#-86,r10
    305e:	ea af       	mov	#-81,r10
    3060:	ea b4       	mov	#-76,r10
    3062:	ea b9       	mov	#-71,r10
    3064:	ea be       	mov	#-66,r10
    3066:	ea c3       	mov	#-61,r10
    3068:	ea c8       	mov	#-56,r10
    306a:	ea cd       	mov	#-51,r10
    306c:	ea d2       	mov	#-46,r10
    306e:	ea d7       	mov	#-41,r10
    3070:	ea dc       	mov	#-36,r10
    3072:	ea e1       	mov	#-31,r10
    3074:	ea e6       	mov	#-26,r10
    3076:	ea eb       	mov	#-21,r10
    3078:	ea f0       	mov	#-16,r10
    307a:	ea f5       	mov	#-11,r10
    307c:	ea fa       	mov	#-6,r10
    307e:	ea ff       	mov	#-1,r10
    3080:	eb 04       	mov	#4,r11
    3082:	eb 09       	mov	#9,r11
    3084:	eb 0e       	mov	#14,r11
    3086:	eb 13       	mov	#19,r11
    3088:	eb 18       	mov	#24,r11
    308a:	eb 1d       	mov	#29,r11
    308c:	eb 22       	mov	#34,r11
    308e:	eb 27       	mov	#39,r11
    3090:	eb 2c       	mov	#44,r11
    3092:	eb 31       	mov	#49,r11
    3094:	eb 36       	mov	#54,r11
    3096:	eb 3b       	mov	#59,r11
    3098:	eb 40       	mov	#64,r11
    309a:	eb 45       	mov	#69,r11
    309c:	eb 4a       	mov	#74,r11
    309e:	eb 4e       	mov	#78,r11
    30a0:	eb 53       	mov	#83,r11
    30a2:	eb 58       	mov	#88,r11
    30a4:	eb 5d       	mov	#93,r11
    30a6:	eb 62       	mov	#98,r11
    30a8:	eb 67       	mov	#103,r11
    30aa:	eb 6c       	mov	#108,r11
    30ac:	eb 71       	mov	#113,r11
    30ae:	eb 76       	mov	#118,r11
    30b0:	eb 7b       	mov	#123,r11
    30b2:	eb 80       	mov	#-128,r11
    30b4:	eb 85       	mov	#-123,r11
    30b6:	eb 8a       	mov	#-118,r11
    30b8:	eb 8f       	mov	#-113,r11
    30ba:	eb 94       	mov	#-108,r11
    30bc:	eb 98       	mov	#-104,r11
    30be:	eb 9d       	mov	#-99,r11
    30c0:	eb a2       	mov	#-94,r11
    30c2:	eb a7       	mov	#-89,r11
    30c4:	eb ac       	mov	#-84,r11
    30c6:	eb b1       	mov	#-79,r11
    30c8:	eb b6       	mov	#-74,r11
    30ca:	eb bb       	mov	#-69,r11
    30cc:	eb c0       	mov	#-64,r11
    30ce:	eb c5       	mov	#-59,r11
    30d0:	eb ca       	mov	#-54,r11
    30d2:	eb ce       	mov	#-50,r11
    30d4:	eb d3       	mov	#-45,r11
    30d6:	eb d8       	mov	#-40,r11
    30d8:	eb dd       	mov	#-35,r11
    30da:	eb e2       	mov	#-30,r11
    30dc:	eb e7       	mov	#-25,r11
    30de:	eb ec       	mov	#-20,r11
    30e0:	eb f1       	mov	#-15,r11
    30e2:	eb f5       	mov	#-11,r11
    30e4:	eb fa       	mov	#-6,r11
    30e6:	eb ff       	mov	#-1,r11
    30e8:	ec 04       	mov	#4,r12
    30ea:	ec 09       	mov	#9,r12
    30ec:	ec 0e       	mov	#14,r12
    30ee:	ec 13       	mov	#19,r12
    30f0:	ec 18       	mov	#24,r12
    30f2:	ec 1c       	mov	#28,r12
    30f4:	ec 21       	mov	#33,r12
    30f6:	ec 26       	mov	#38,r12
    30f8:	ec 2b       	mov	#43,r12
    30fa:	ec 30       	mov	#48,r12
    30fc:	ec 35       	mov	#53,r12
    30fe:	ec 39       	mov	#57,r12
    3100:	ec 3e       	mov	#62,r12
    3102:	ec 43       	mov	#67,r12
    3104:	ec 48       	mov	#72,r12
    3106:	ec 4d       	mov	#77,r12
    3108:	ec 52       	mov	#82,r12
    310a:	ec 56       	mov	#86,r12
    310c:	ec 5b       	mov	#91,r12
    310e:	ec 60       	mov	#96,r12
    3110:	ec 65       	mov	#101,r12
    3112:	ec 6a       	mov	#106,r12
    3114:	ec 6f       	mov	#111,r12
    3116:	ec 73       	mov	#115,r12
    3118:	ec 78       	mov	#120,r12
    311a:	ec 7d       	mov	#125,r12
    311c:	ec 82       	mov	#-126,r12
    311e:	ec 87       	mov	#-121,r12
    3120:	ec 8b       	mov	#-117,r12
    3122:	ec 90       	mov	#-112,r12
    3124:	ec 95       	mov	#-107,r12
    3126:	ec 9a       	mov	#-102,r12
    3128:	ec 9f       	mov	#-97,r12
    312a:	ec a3       	mov	#-93,r12
    312c:	ec a8       	mov	#-88,r12
    312e:	ec ad       	mov	#-83,r12
    3130:	ec b2       	mov	#-78,r12
    3132:	ec b7       	mov	#-73,r12
    3134:	ec bb       	mov	#-69,r12
    3136:	ec c0       	mov	#-64,r12
    3138:	ec c5       	mov	#-59,r12
    313a:	ec ca       	mov	#-54,r12
    313c:	ec cf       	mov	#-49,r12
    313e:	ec d3       	mov	#-45,r12
    3140:	ec d8       	mov	#-40,r12
    3142:	ec dd       	mov	#-35,r12
    3144:	ec e2       	mov	#-30,r12
    3146:	ec e6       	mov	#-26,r12
    3148:	ec eb       	mov	#-21,r12
    314a:	ec f0       	mov	#-16,r12
    314c:	ec f5       	mov	#-11,r12
    314e:	ec f9       	mov	#-7,r12
    3150:	ec fe       	mov	#-2,r12
    3152:	ed 03       	mov	#3,r13
    3154:	ed 08       	mov	#8,r13
    3156:	ed 0c       	mov	#12,r13
    3158:	ed 11       	mov	#17,r13
    315a:	ed 16       	mov	#22,r13
    315c:	ed 1b       	mov	#27,r13
    315e:	ed 1f       	mov	#31,r13
    3160:	ed 24       	mov	#36,r13
    3162:	ed 29       	mov	#41,r13
    3164:	ed 2e       	mov	#46,r13
    3166:	ed 32       	mov	#50,r13
    3168:	ed 37       	mov	#55,r13
    316a:	ed 3c       	mov	#60,r13
    316c:	ed 40       	mov	#64,r13
    316e:	ed 45       	mov	#69,r13
    3170:	ed 4a       	mov	#74,r13
    3172:	ed 4f       	mov	#79,r13
    3174:	ed 53       	mov	#83,r13
    3176:	ed 58       	mov	#88,r13
    3178:	ed 5d       	mov	#93,r13
    317a:	ed 61       	mov	#97,r13
    317c:	ed 66       	mov	#102,r13
    317e:	ed 6b       	mov	#107,r13
    3180:	ed 70       	mov	#112,r13
    3182:	ed 74       	mov	#116,r13
    3184:	ed 79       	mov	#121,r13
    3186:	ed 7e       	mov	#126,r13
    3188:	ed 82       	mov	#-126,r13
    318a:	ed 87       	mov	#-121,r13
    318c:	ed 8c       	mov	#-116,r13
    318e:	ed 90       	mov	#-112,r13
    3190:	ed 95       	mov	#-107,r13
    3192:	ed 9a       	mov	#-102,r13
    3194:	ed 9e       	mov	#-98,r13
    3196:	ed a3       	mov	#-93,r13
    3198:	ed a8       	mov	#-88,r13
    319a:	ed ac       	mov	#-84,r13
    319c:	ed b1       	mov	#-79,r13
    319e:	ed b6       	mov	#-74,r13
    31a0:	ed ba       	mov	#-70,r13
    31a2:	ed bf       	mov	#-65,r13
    31a4:	ed c4       	mov	#-60,r13
    31a6:	ed c8       	mov	#-56,r13
    31a8:	ed cd       	mov	#-51,r13
    31aa:	ed d2       	mov	#-46,r13
    31ac:	ed d6       	mov	#-42,r13
    31ae:	ed db       	mov	#-37,r13
    31b0:	ed e0       	mov	#-32,r13
    31b2:	ed e4       	mov	#-28,r13
    31b4:	ed e9       	mov	#-23,r13
    31b6:	ed ee       	mov	#-18,r13
    31b8:	ed f2       	mov	#-14,r13
    31ba:	ed f7       	mov	#-9,r13
    31bc:	ed fb       	mov	#-5,r13
    31be:	ee 00       	mov	#0,r14
    31c0:	ee 05       	mov	#5,r14
    31c2:	ee 09       	mov	#9,r14
    31c4:	ee 0e       	mov	#14,r14
    31c6:	ee 13       	mov	#19,r14
    31c8:	ee 17       	mov	#23,r14
    31ca:	ee 1c       	mov	#28,r14
    31cc:	ee 20       	mov	#32,r14
    31ce:	ee 25       	mov	#37,r14
    31d0:	ee 2a       	mov	#42,r14
    31d2:	ee 2e       	mov	#46,r14
    31d4:	ee 33       	mov	#51,r14
    31d6:	ee 37       	mov	#55,r14
    31d8:	ee 3c       	mov	#60,r14
    31da:	ee 41       	mov	#65,r14
    31dc:	ee 45       	mov	#69,r14
    31de:	ee 4a       	mov	#74,r14
    31e0:	ee 4e       	mov	#78,r14
    31e2:	ee 53       	mov	#83,r14
    31e4:	ee 58       	mov	#88,r14
    31e6:	ee 5c       	mov	#92,r14
    31e8:	ee 61       	mov	#97,r14
    31ea:	ee 65       	mov	#101,r14
    31ec:	ee 6a       	mov	#106,r14
    31ee:	ee 6f       	mov	#111,r14
    31f0:	ee 73       	mov	#115,r14
    31f2:	ee 78       	mov	#120,r14
    31f4:	ee 7c       	mov	#124,r14
    31f6:	ee 81       	mov	#-127,r14
    31f8:	ee 85       	mov	#-123,r14
    31fa:	ee 8a       	mov	#-118,r14
    31fc:	ee 8e       	mov	#-114,r14
    31fe:	ee 93       	mov	#-109,r14
    3200:	ee 98       	mov	#-104,r14
    3202:	ee 9c       	mov	#-100,r14
    3204:	ee a1       	mov	#-95,r14
    3206:	ee a5       	mov	#-91,r14
    3208:	ee aa       	mov	#-86,r14
    320a:	ee ae       	mov	#-82,r14
    320c:	ee b3       	mov	#-77,r14
    320e:	ee b7       	mov	#-73,r14
    3210:	ee bc       	mov	#-68,r14
    3212:	ee c0       	mov	#-64,r14
    3214:	ee c5       	mov	#-59,r14
    3216:	ee ca       	mov	#-54,r14
    3218:	ee ce       	mov	#-50,r14
    321a:	ee d3       	mov	#-45,r14
    321c:	ee d7       	mov	#-41,r14
    321e:	ee dc       	mov	#-36,r14
    3220:	ee e0       	mov	#-32,r14
    3222:	ee e5       	mov	#-27,r14
    3224:	ee e9       	mov	#-23,r14
    3226:	ee ee       	mov	#-18,r14
    3228:	ee f2       	mov	#-14,r14
    322a:	ee f7       	mov	#-9,r14
    322c:	ee fb       	mov	#-5,r14
    322e:	ef 00       	mov	#0,r15
    3230:	ef 04       	mov	#4,r15
    3232:	ef 09       	mov	#9,r15
    3234:	ef 0d       	mov	#13,r15
    3236:	ef 12       	mov	#18,r15
    3238:	ef 16       	mov	#22,r15
    323a:	ef 1b       	mov	#27,r15
    323c:	ef 1f       	mov	#31,r15
    323e:	ef 24       	mov	#36,r15
    3240:	ef 28       	mov	#40,r15
    3242:	ef 2d       	mov	#45,r15
    3244:	ef 31       	mov	#49,r15
    3246:	ef 36       	mov	#54,r15
    3248:	ef 3a       	mov	#58,r15
    324a:	ef 3f       	mov	#63,r15
    324c:	ef 43       	mov	#67,r15
    324e:	ef 47       	mov	#71,r15
    3250:	ef 4c       	mov	#76,r15
    3252:	ef 50       	mov	#80,r15
    3254:	ef 55       	mov	#85,r15
    3256:	ef 59       	mov	#89,r15
    3258:	ef 5e       	mov	#94,r15
    325a:	ef 62       	mov	#98,r15
    325c:	ef 67       	mov	#103,r15
    325e:	ef 6b       	mov	#107,r15
    3260:	ef 70       	mov	#112,r15
    3262:	ef 74       	mov	#116,r15
    3264:	ef 78       	mov	#120,r15
    3266:	ef 7d       	mov	#125,r15
    3268:	ef 81       	mov	#-127,r15
    326a:	ef 86       	mov	#-122,r15
    326c:	ef 8a       	mov	#-118,r15
    326e:	ef 8f       	mov	#-113,r15
    3270:	ef 93       	mov	#-109,r15
    3272:	ef 98       	mov	#-104,r15
    3274:	ef 9c       	mov	#-100,r15
    3276:	ef a0       	mov	#-96,r15
    3278:	ef a5       	mov	#-91,r15
    327a:	ef a9       	mov	#-87,r15
    327c:	ef ae       	mov	#-82,r15
    327e:	ef b2       	mov	#-78,r15
    3280:	ef b6       	mov	#-74,r15
    3282:	ef bb       	mov	#-69,r15
    3284:	ef bf       	mov	#-65,r15
    3286:	ef c4       	mov	#-60,r15
    3288:	ef c8       	mov	#-56,r15
    328a:	ef cc       	mov	#-52,r15
    328c:	ef d1       	mov	#-47,r15
    328e:	ef d5       	mov	#-43,r15
    3290:	ef da       	mov	#-38,r15
    3292:	ef de       	mov	#-34,r15
    3294:	ef e2       	mov	#-30,r15
    3296:	ef e7       	mov	#-25,r15
    3298:	ef eb       	mov	#-21,r15
    329a:	ef f0       	mov	#-16,r15
    329c:	ef f4       	mov	#-12,r15
    329e:	ef f8       	mov	#-8,r15
    32a0:	ef fd       	mov	#-3,r15
    32a2:	f0 01       	fsub	fr0,fr0
    32a4:	f0 05       	fcmp/gt	fr0,fr0
    32a6:	f0 0a       	fmov	fr0,@r0
    32a8:	f0 0e       	fmac	fr0,fr0,fr0
    32aa:	f0 13       	fdiv	fr1,fr0
    32ac:	f0 17       	fmov	fr1,@(r0,r0)
    32ae:	f0 1b       	fmov	fr1,@-r0
    32b0:	f0 20       	fadd	fr2,fr0
    32b2:	f0 24       	fcmp/eq	fr2,fr0
    32b4:	f0 28       	fmov	@r2,fr0
    32b6:	f0 2d       	float	fpul,fr0
    32b8:	f0 31       	fsub	fr3,fr0
    32ba:	f0 35       	fcmp/gt	fr3,fr0
    32bc:	f0 3a       	fmov	fr3,@r0
    32be:	f0 3e       	fmac	fr0,fr3,fr0
    32c0:	f0 42       	fmul	fr4,fr0
    32c2:	f0 47       	fmov	fr4,@(r0,r0)
    32c4:	f0 4b       	fmov	fr4,@-r0
    32c6:	f0 4f       	.word 0xf04f
    32c8:	f0 54       	fcmp/eq	fr5,fr0
    32ca:	f0 58       	fmov	@r5,fr0
    32cc:	f0 5c       	fmov	fr5,fr0
    32ce:	f0 61       	fsub	fr6,fr0
    32d0:	f0 65       	fcmp/gt	fr6,fr0
    32d2:	f0 69       	fmov	@r6+,fr0
    32d4:	f0 6e       	fmac	fr0,fr6,fr0
    32d6:	f0 72       	fmul	fr7,fr0
    32d8:	f0 76       	fmov	@(r0,r7),fr0
    32da:	f0 7b       	fmov	fr7,@-r0
    32dc:	f0 7f       	.word 0xf07f
    32de:	f0 83       	fdiv	fr8,fr0
    32e0:	f0 88       	fmov	@r8,fr0
    32e2:	f0 8c       	fmov	fr8,fr0
    32e4:	f0 90       	fadd	fr9,fr0
    32e6:	f0 94       	fcmp/eq	fr9,fr0
    32e8:	f0 99       	fmov	@r9+,fr0
    32ea:	f0 9d       	fldi1	fr0
    32ec:	f0 a1       	fsub	fr10,fr0
    32ee:	f0 a6       	fmov	@(r0,r10),fr0
    32f0:	f0 aa       	fmov	fr10,@r0
    32f2:	f0 ae       	fmac	fr0,fr10,fr0
    32f4:	f0 b2       	fmul	fr11,fr0
    32f6:	f0 b7       	fmov	fr11,@(r0,r0)
    32f8:	f0 bb       	fmov	fr11,@-r0
    32fa:	f0 bf       	.word 0xf0bf
    32fc:	f0 c4       	fcmp/eq	fr12,fr0
    32fe:	f0 c8       	fmov	@r12,fr0
    3300:	f0 cc       	fmov	fr12,fr0
    3302:	f0 d0       	fadd	fr13,fr0
    3304:	f0 d5       	fcmp/gt	fr13,fr0
    3306:	f0 d9       	fmov	@r13+,fr0
    3308:	f0 dd       	.word 0xf0dd
    330a:	f0 e1       	fsub	fr14,fr0
    330c:	f0 e6       	fmov	@(r0,r14),fr0
    330e:	f0 ea       	fmov	fr14,@r0
    3310:	f0 ee       	fmac	fr0,fr14,fr0
    3312:	f0 f2       	fmul	fr15,fr0
    3314:	f0 f7       	fmov	fr15,@(r0,r0)
    3316:	f0 fb       	fmov	fr15,@-r0
    3318:	f0 ff       	.word 0xf0ff
    331a:	f1 03       	fdiv	fr0,fr1
    331c:	f1 08       	fmov	@r0,fr1
    331e:	f1 0c       	fmov	fr0,fr1
    3320:	f1 10       	fadd	fr1,fr1
    3322:	f1 14       	fcmp/eq	fr1,fr1
    3324:	f1 18       	fmov	@r1,fr1
    3326:	f1 1d       	flds	fr1,fpul
    3328:	f1 21       	fsub	fr2,fr1
    332a:	f1 25       	fcmp/gt	fr2,fr1
    332c:	f1 29       	fmov	@r2+,fr1
    332e:	f1 2e       	fmac	fr0,fr2,fr1
    3330:	f1 32       	fmul	fr3,fr1
    3332:	f1 36       	fmov	@(r0,r3),fr1
    3334:	f1 3a       	fmov	fr3,@r1
    3336:	f1 3e       	fmac	fr0,fr3,fr1
    3338:	f1 43       	fdiv	fr4,fr1
    333a:	f1 47       	fmov	fr4,@(r0,r1)
    333c:	f1 4b       	fmov	fr4,@-r1
    333e:	f1 4f       	.word 0xf14f
    3340:	f1 53       	fdiv	fr5,fr1
    3342:	f1 58       	fmov	@r5,fr1
    3344:	f1 5c       	fmov	fr5,fr1
    3346:	f1 60       	fadd	fr6,fr1
    3348:	f1 64       	fcmp/eq	fr6,fr1
    334a:	f1 68       	fmov	@r6,fr1
    334c:	f1 6c       	fmov	fr6,fr1
    334e:	f1 71       	fsub	fr7,fr1
    3350:	f1 75       	fcmp/gt	fr7,fr1
    3352:	f1 79       	fmov	@r7+,fr1
    3354:	f1 7d       	fsrra	fr1
    3356:	f1 81       	fsub	fr8,fr1
    3358:	f1 86       	fmov	@(r0,r8),fr1
    335a:	f1 8a       	fmov	fr8,@r1
    335c:	f1 8e       	fmac	fr0,fr8,fr1
    335e:	f1 92       	fmul	fr9,fr1
    3360:	f1 96       	fmov	@(r0,r9),fr1
    3362:	f1 9a       	fmov	fr9,@r1
    3364:	f1 9e       	fmac	fr0,fr9,fr1
    3366:	f1 a3       	fdiv	fr10,fr1
    3368:	f1 a7       	fmov	fr10,@(r0,r1)
    336a:	f1 ab       	fmov	fr10,@-r1
    336c:	f1 af       	.word 0xf1af
    336e:	f1 b3       	fdiv	fr11,fr1
    3370:	f1 b7       	fmov	fr11,@(r0,r1)
    3372:	f1 bb       	fmov	fr11,@-r1
    3374:	f1 c0       	fadd	fr12,fr1
    3376:	f1 c4       	fcmp/eq	fr12,fr1
    3378:	f1 c8       	fmov	@r12,fr1
    337a:	f1 cc       	fmov	fr12,fr1
    337c:	f1 d0       	fadd	fr13,fr1
    337e:	f1 d4       	fcmp/eq	fr13,fr1
    3380:	f1 d8       	fmov	@r13,fr1
    3382:	f1 dc       	fmov	fr13,fr1
    3384:	f1 e1       	fsub	fr14,fr1
    3386:	f1 e5       	fcmp/gt	fr14,fr1
    3388:	f1 e9       	fmov	@r14+,fr1
    338a:	f1 ed       	fipr	fv4,fv0
    338c:	f1 f1       	fsub	fr15,fr1
    338e:	f1 f5       	fcmp/gt	fr15,fr1
    3390:	f1 f9       	fmov	@r15+,fr1
    3392:	f1 fd       	ftrv	xmtrx,fv0
    3394:	f2 01       	fsub	fr0,fr2
    3396:	f2 06       	fmov	@(r0,r0),fr2
    3398:	f2 0a       	fmov	fr0,@r2
    339a:	f2 0e       	fmac	fr0,fr0,fr2
    339c:	f2 12       	fmul	fr1,fr2
    339e:	f2 16       	fmov	@(r0,r1),fr2
    33a0:	f2 1a       	fmov	fr1,@r2
    33a2:	f2 1e       	fmac	fr0,fr1,fr2
    33a4:	f2 22       	fmul	fr2,fr2
    33a6:	f2 26       	fmov	@(r0,r2),fr2
    33a8:	f2 2a       	fmov	fr2,@r2
    33aa:	f2 2e       	fmac	fr0,fr2,fr2
    33ac:	f2 32       	fmul	fr3,fr2
    33ae:	f2 37       	fmov	fr3,@(r0,r2)
    33b0:	f2 3b       	fmov	fr3,@-r2
    33b2:	f2 3f       	.word 0xf23f
    33b4:	f2 43       	fdiv	fr4,fr2
    33b6:	f2 47       	fmov	fr4,@(r0,r2)
    33b8:	f2 4b       	fmov	fr4,@-r2
    33ba:	f2 4f       	.word 0xf24f
    33bc:	f2 53       	fdiv	fr5,fr2
    33be:	f2 57       	fmov	fr5,@(r0,r2)
    33c0:	f2 5b       	fmov	fr5,@-r2
    33c2:	f2 5f       	.word 0xf25f
    33c4:	f2 63       	fdiv	fr6,fr2
    33c6:	f2 67       	fmov	fr6,@(r0,r2)
    33c8:	f2 6b       	fmov	fr6,@-r2
    33ca:	f2 6f       	.word 0xf26f
    33cc:	f2 73       	fdiv	fr7,fr2
    33ce:	f2 77       	fmov	fr7,@(r0,r2)
    33d0:	f2 7b       	fmov	fr7,@-r2
    33d2:	f2 7f       	.word 0xf27f
    33d4:	f2 83       	fdiv	fr8,fr2
    33d6:	f2 87       	fmov	fr8,@(r0,r2)
    33d8:	f2 8b       	fmov	fr8,@-r2
    33da:	f2 8f       	.word 0xf28f
    33dc:	f2 93       	fdiv	fr9,fr2
    33de:	f2 97       	fmov	fr9,@(r0,r2)
    33e0:	f2 9b       	fmov	fr9,@-r2
    33e2:	f2 a0       	fadd	fr10,fr2
    33e4:	f2 a4       	fcmp/eq	fr10,fr2
    33e6:	f2 a8       	fmov	@r10,fr2
    33e8:	f2 ac       	fmov	fr10,fr2
    33ea:	f2 b0       	fadd	fr11,fr2
    33ec:	f2 b4       	fcmp/eq	fr11,fr2
    33ee:	f2 b8       	fmov	@r11,fr2
    33f0:	f2 bc       	fmov	fr11,fr2
    33f2:	f2 bf       	.word 0xf2bf
    33f4:	f2 c3       	fdiv	fr12,fr2
    33f6:	f2 c7       	fmov	fr12,@(r0,r2)
    33f8:	f2 cb       	fmov	fr12,@-r2
    33fa:	f2 cf       	.word 0xf2cf
    33fc:	f2 d3       	fdiv	fr13,fr2
    33fe:	f2 d7       	fmov	fr13,@(r0,r2)
    3400:	f2 db       	fmov	fr13,@-r2
    3402:	f2 df       	.word 0xf2df
    3404:	f2 e3       	fdiv	fr14,fr2
    3406:	f2 e7       	fmov	fr14,@(r0,r2)
    3408:	f2 eb       	fmov	fr14,@-r2
    340a:	f2 ef       	.word 0xf2ef
    340c:	f2 f3       	fdiv	fr15,fr2
    340e:	f2 f7       	fmov	fr15,@(r0,r2)
    3410:	f2 fb       	fmov	fr15,@-r2
    3412:	f2 ff       	.word 0xf2ff
    3414:	f3 03       	fdiv	fr0,fr3
    3416:	f3 07       	fmov	fr0,@(r0,r3)
    3418:	f3 0b       	fmov	fr0,@-r3
    341a:	f3 0f       	.word 0xf30f
    341c:	f3 13       	fdiv	fr1,fr3
    341e:	f3 17       	fmov	fr1,@(r0,r3)
    3420:	f3 1b       	fmov	fr1,@-r3
    3422:	f3 1f       	.word 0xf31f
    3424:	f3 23       	fdiv	fr2,fr3
    3426:	f3 26       	fmov	@(r0,r2),fr3
    3428:	f3 2a       	fmov	fr2,@r3
    342a:	f3 2e       	fmac	fr0,fr2,fr3
    342c:	f3 32       	fmul	fr3,fr3
    342e:	f3 36       	fmov	@(r0,r3),fr3
    3430:	f3 3a       	fmov	fr3,@r3
    3432:	f3 3e       	fmac	fr0,fr3,fr3
    3434:	f3 42       	fmul	fr4,fr3
    3436:	f3 46       	fmov	@(r0,r4),fr3
    3438:	f3 4a       	fmov	fr4,@r3
    343a:	f3 4e       	fmac	fr0,fr4,fr3
    343c:	f3 52       	fmul	fr5,fr3
    343e:	f3 55       	fcmp/gt	fr5,fr3
    3440:	f3 59       	fmov	@r5+,fr3
    3442:	f3 5d       	fabs	fr3
    3444:	f3 61       	fsub	fr6,fr3
    3446:	f3 65       	fcmp/gt	fr6,fr3
    3448:	f3 69       	fmov	@r6+,fr3
    344a:	f3 6d       	fsqrt	fr3
    344c:	f3 71       	fsub	fr7,fr3
    344e:	f3 75       	fcmp/gt	fr7,fr3
    3450:	f3 78       	fmov	@r7,fr3
    3452:	f3 7c       	fmov	fr7,fr3
    3454:	f3 80       	fadd	fr8,fr3
    3456:	f3 84       	fcmp/eq	fr8,fr3
    3458:	f3 88       	fmov	@r8,fr3
    345a:	f3 8c       	fmov	fr8,fr3
    345c:	f3 90       	fadd	fr9,fr3
    345e:	f3 94       	fcmp/eq	fr9,fr3
    3460:	f3 97       	fmov	fr9,@(r0,r3)
    3462:	f3 9b       	fmov	fr9,@-r3
    3464:	f3 9f       	.word 0xf39f
    3466:	f3 a3       	fdiv	fr10,fr3
    3468:	f3 a7       	fmov	fr10,@(r0,r3)
    346a:	f3 ab       	fmov	fr10,@-r3
    346c:	f3 af       	.word 0xf3af
    346e:	f3 b2       	fmul	fr11,fr3
    3470:	f3 b6       	fmov	@(r0,r11),fr3
    3472:	f3 ba       	fmov	fr11,@r3
    3474:	f3 be       	fmac	fr0,fr11,fr3
    3476:	f3 c2       	fmul	fr12,fr3
    3478:	f3 c6       	fmov	@(r0,r12),fr3
    347a:	f3 ca       	fmov	fr12,@r3
    347c:	f3 cd       	.word 0xf3cd
    347e:	f3 d1       	fsub	fr13,fr3
    3480:	f3 d5       	fcmp/gt	fr13,fr3
    3482:	f3 d9       	fmov	@r13+,fr3
    3484:	f3 dd       	.word 0xf3dd
    3486:	f3 e0       	fadd	fr14,fr3
    3488:	f3 e4       	fcmp/eq	fr14,fr3
    348a:	f3 e8       	fmov	@r14,fr3
    348c:	f3 ec       	fmov	fr14,fr3
    348e:	f3 f0       	fadd	fr15,fr3
    3490:	f3 f4       	fcmp/eq	fr15,fr3
    3492:	f3 f7       	fmov	fr15,@(r0,r3)
    3494:	f3 fb       	fmov	fr15,@-r3
    3496:	f3 ff       	.word 0xf3ff
    3498:	f4 03       	fdiv	fr0,fr4
    349a:	f4 07       	fmov	fr0,@(r0,r4)
    349c:	f4 0a       	fmov	fr0,@r4
    349e:	f4 0e       	fmac	fr0,fr0,fr4
    34a0:	f4 12       	fmul	fr1,fr4
    34a2:	f4 16       	fmov	@(r0,r1),fr4
    34a4:	f4 1a       	fmov	fr1,@r4
    34a6:	f4 1d       	flds	fr4,fpul
    34a8:	f4 21       	fsub	fr2,fr4
    34aa:	f4 25       	fcmp/gt	fr2,fr4
    34ac:	f4 29       	fmov	@r2+,fr4
    34ae:	f4 2c       	fmov	fr2,fr4
    34b0:	f4 30       	fadd	fr3,fr4
    34b2:	f4 34       	fcmp/eq	fr3,fr4
    34b4:	f4 38       	fmov	@r3,fr4
    34b6:	f4 3c       	fmov	fr3,fr4
    34b8:	f4 3f       	.word 0xf43f
    34ba:	f4 43       	fdiv	fr4,fr4
    34bc:	f4 47       	fmov	fr4,@(r0,r4)
    34be:	f4 4b       	fmov	fr4,@-r4
    34c0:	f4 4e       	fmac	fr0,fr4,fr4
    34c2:	f4 52       	fmul	fr5,fr4
    34c4:	f4 56       	fmov	@(r0,r5),fr4
    34c6:	f4 5a       	fmov	fr5,@r4
    34c8:	f4 5d       	fabs	fr4
    34ca:	f4 61       	fsub	fr6,fr4
    34cc:	f4 65       	fcmp/gt	fr6,fr4
    34ce:	f4 69       	fmov	@r6+,fr4
    34d0:	f4 6c       	fmov	fr6,fr4
    34d2:	f4 70       	fadd	fr7,fr4
    34d4:	f4 74       	fcmp/eq	fr7,fr4
    34d6:	f4 77       	fmov	fr7,@(r0,r4)
    34d8:	f4 7b       	fmov	fr7,@-r4
    34da:	f4 7f       	.word 0xf47f
    34dc:	f4 83       	fdiv	fr8,fr4
    34de:	f4 86       	fmov	@(r0,r8),fr4
    34e0:	f4 8a       	fmov	fr8,@r4
    34e2:	f4 8e       	fmac	fr0,fr8,fr4
    34e4:	f4 91       	fsub	fr9,fr4
    34e6:	f4 95       	fcmp/gt	fr9,fr4
    34e8:	f4 99       	fmov	@r9+,fr4
    34ea:	f4 9d       	fldi1	fr4
    34ec:	f4 a0       	fadd	fr10,fr4
    34ee:	f4 a4       	fcmp/eq	fr10,fr4
    34f0:	f4 a8       	fmov	@r10,fr4
    34f2:	f4 ab       	fmov	fr10,@-r4
    34f4:	f4 af       	.word 0xf4af
    34f6:	f4 b3       	fdiv	fr11,fr4
    34f8:	f4 b7       	fmov	fr11,@(r0,r4)
    34fa:	f4 ba       	fmov	fr11,@r4
    34fc:	f4 be       	fmac	fr0,fr11,fr4
    34fe:	f4 c2       	fmul	fr12,fr4
    3500:	f4 c5       	fcmp/gt	fr12,fr4
    3502:	f4 c9       	fmov	@r12+,fr4
    3504:	f4 cd       	.word 0xf4cd
    3506:	f4 d0       	fadd	fr13,fr4
    3508:	f4 d4       	fcmp/eq	fr13,fr4
    350a:	f4 d8       	fmov	@r13,fr4
    350c:	f4 db       	fmov	fr13,@-r4
    350e:	f4 df       	.word 0xf4df
    3510:	f4 e3       	fdiv	fr14,fr4
    3512:	f4 e6       	fmov	@(r0,r14),fr4
    3514:	f4 ea       	fmov	fr14,@r4
    3516:	f4 ee       	fmac	fr0,fr14,fr4
    3518:	f4 f1       	fsub	fr15,fr4
    351a:	f4 f5       	fcmp/gt	fr15,fr4
    351c:	f4 f9       	fmov	@r15+,fr4
    351e:	f4 fc       	fmov	fr15,fr4
    3520:	f5 00       	fadd	fr0,fr5
    3522:	f5 03       	fdiv	fr0,fr5
    3524:	f5 07       	fmov	fr0,@(r0,r5)
    3526:	f5 0b       	fmov	fr0,@-r5
    3528:	f5 0e       	fmac	fr0,fr0,fr5
    352a:	f5 12       	fmul	fr1,fr5
    352c:	f5 16       	fmov	@(r0,r1),fr5
    352e:	f5 19       	fmov	@r1+,fr5
    3530:	f5 1d       	flds	fr5,fpul
    3532:	f5 21       	fsub	fr2,fr5
    3534:	f5 24       	fcmp/eq	fr2,fr5
    3536:	f5 28       	fmov	@r2,fr5
    3538:	f5 2b       	fmov	fr2,@-r5
    353a:	f5 2f       	.word 0xf52f
    353c:	f5 33       	fdiv	fr3,fr5
    353e:	f5 36       	fmov	@(r0,r3),fr5
    3540:	f5 3a       	fmov	fr3,@r5
    3542:	f5 3d       	ftrc	fr5,fpul
    3544:	f5 41       	fsub	fr4,fr5
    3546:	f5 45       	fcmp/gt	fr4,fr5
    3548:	f5 48       	fmov	@r4,fr5
    354a:	f5 4c       	fmov	fr4,fr5
    354c:	f5 4f       	.word 0xf54f
    354e:	f5 53       	fdiv	fr5,fr5
    3550:	f5 57       	fmov	fr5,@(r0,r5)
    3552:	f5 5a       	fmov	fr5,@r5
    3554:	f5 5e       	fmac	fr0,fr5,fr5
    3556:	f5 61       	fsub	fr6,fr5
    3558:	f5 65       	fcmp/gt	fr6,fr5
    355a:	f5 69       	fmov	@r6+,fr5
    355c:	f5 6c       	fmov	fr6,fr5
    355e:	f5 70       	fadd	fr7,fr5
    3560:	f5 73       	fdiv	fr7,fr5
    3562:	f5 77       	fmov	fr7,@(r0,r5)
    3564:	f5 7a       	fmov	fr7,@r5
    3566:	f5 7e       	fmac	fr0,fr7,fr5
    3568:	f5 81       	fsub	fr8,fr5
    356a:	f5 85       	fcmp/gt	fr8,fr5
    356c:	f5 89       	fmov	@r8+,fr5
    356e:	f5 8c       	fmov	fr8,fr5
    3570:	f5 90       	fadd	fr9,fr5
    3572:	f5 93       	fdiv	fr9,fr5
    3574:	f5 97       	fmov	fr9,@(r0,r5)
    3576:	f5 9a       	fmov	fr9,@r5
    3578:	f5 9e       	fmac	fr0,fr9,fr5
    357a:	f5 a1       	fsub	fr10,fr5
    357c:	f5 a5       	fcmp/gt	fr10,fr5
    357e:	f5 a9       	fmov	@r10+,fr5
    3580:	f5 ac       	fmov	fr10,fr5
    3582:	f5 b0       	fadd	fr11,fr5
    3584:	f5 b3       	fdiv	fr11,fr5
    3586:	f5 b7       	fmov	fr11,@(r0,r5)
    3588:	f5 ba       	fmov	fr11,@r5
    358a:	f5 be       	fmac	fr0,fr11,fr5
    358c:	f5 c1       	fsub	fr12,fr5
    358e:	f5 c5       	fcmp/gt	fr12,fr5
    3590:	f5 c8       	fmov	@r12,fr5
    3592:	f5 cc       	fmov	fr12,fr5
    3594:	f5 cf       	.word 0xf5cf
    3596:	f5 d3       	fdiv	fr13,fr5
    3598:	f5 d6       	fmov	@(r0,r13),fr5
    359a:	f5 da       	fmov	fr13,@r5
    359c:	f5 dd       	.word 0xf5dd
    359e:	f5 e1       	fsub	fr14,fr5
    35a0:	f5 e4       	fcmp/eq	fr14,fr5
    35a2:	f5 e8       	fmov	@r14,fr5
    35a4:	f5 eb       	fmov	fr14,@-r5
    35a6:	f5 ef       	.word 0xf5ef
    35a8:	f5 f2       	fmul	fr15,fr5
    35aa:	f5 f6       	fmov	@(r0,r15),fr5
    35ac:	f5 f9       	fmov	@r15+,fr5
    35ae:	f5 fd       	ftrv	xmtrx,fv4
    35b0:	f6 00       	fadd	fr0,fr6
    35b2:	f6 04       	fcmp/eq	fr0,fr6
    35b4:	f6 07       	fmov	fr0,@(r0,r6)
    35b6:	f6 0b       	fmov	fr0,@-r6
    35b8:	f6 0e       	fmac	fr0,fr0,fr6
    35ba:	f6 12       	fmul	fr1,fr6
    35bc:	f6 15       	fcmp/gt	fr1,fr6
    35be:	f6 18       	fmov	@r1,fr6
    35c0:	f6 1c       	fmov	fr1,fr6
    35c2:	f6 1f       	.word 0xf61f
    35c4:	f6 23       	fdiv	fr2,fr6
    35c6:	f6 26       	fmov	@(r0,r2),fr6
    35c8:	f6 2a       	fmov	fr2,@r6
    35ca:	f6 2d       	float	fpul,fr6
    35cc:	f6 31       	fsub	fr3,fr6
    35ce:	f6 34       	fcmp/eq	fr3,fr6
    35d0:	f6 37       	fmov	fr3,@(r0,r6)
    35d2:	f6 3b       	fmov	fr3,@-r6
    35d4:	f6 3e       	fmac	fr0,fr3,fr6
    35d6:	f6 42       	fmul	fr4,fr6
    35d8:	f6 45       	fcmp/gt	fr4,fr6
    35da:	f6 49       	fmov	@r4+,fr6
    35dc:	f6 4c       	fmov	fr4,fr6
    35de:	f6 50       	fadd	fr5,fr6
    35e0:	f6 53       	fdiv	fr5,fr6
    35e2:	f6 56       	fmov	@(r0,r5),fr6
    35e4:	f6 5a       	fmov	fr5,@r6
    35e6:	f6 5d       	fabs	fr6
    35e8:	f6 61       	fsub	fr6,fr6
    35ea:	f6 64       	fcmp/eq	fr6,fr6
    35ec:	f6 67       	fmov	fr6,@(r0,r6)
    35ee:	f6 6b       	fmov	fr6,@-r6
    35f0:	f6 6e       	fmac	fr0,fr6,fr6
    35f2:	f6 72       	fmul	fr7,fr6
    35f4:	f6 75       	fcmp/gt	fr7,fr6
    35f6:	f6 78       	fmov	@r7,fr6
    35f8:	f6 7c       	fmov	fr7,fr6
    35fa:	f6 7f       	.word 0xf67f
    35fc:	f6 83       	fdiv	fr8,fr6
    35fe:	f6 86       	fmov	@(r0,r8),fr6
    3600:	f6 89       	fmov	@r8+,fr6
    3602:	f6 8d       	fldi0	fr6
    3604:	f6 90       	fadd	fr9,fr6
    3606:	f6 94       	fcmp/eq	fr9,fr6
    3608:	f6 97       	fmov	fr9,@(r0,r6)
    360a:	f6 9a       	fmov	fr9,@r6
    360c:	f6 9e       	fmac	fr0,fr9,fr6
    360e:	f6 a1       	fsub	fr10,fr6
    3610:	f6 a4       	fcmp/eq	fr10,fr6
    3612:	f6 a8       	fmov	@r10,fr6
    3614:	f6 ab       	fmov	fr10,@-r6
    3616:	f6 ae       	fmac	fr0,fr10,fr6
    3618:	f6 b2       	fmul	fr11,fr6
    361a:	f6 b5       	fcmp/gt	fr11,fr6
    361c:	f6 b9       	fmov	@r11+,fr6
    361e:	f6 bc       	fmov	fr11,fr6
    3620:	f6 bf       	.word 0xf6bf
    3622:	f6 c3       	fdiv	fr12,fr6
    3624:	f6 c6       	fmov	@(r0,r12),fr6
    3626:	f6 c9       	fmov	@r12+,fr6
    3628:	f6 cd       	.word 0xf6cd
    362a:	f6 d0       	fadd	fr13,fr6
    362c:	f6 d3       	fdiv	fr13,fr6
    362e:	f6 d7       	fmov	fr13,@(r0,r6)
    3630:	f6 da       	fmov	fr13,@r6
    3632:	f6 dd       	.word 0xf6dd
    3634:	f6 e1       	fsub	fr14,fr6
    3636:	f6 e4       	fcmp/eq	fr14,fr6
    3638:	f6 e7       	fmov	fr14,@(r0,r6)
    363a:	f6 eb       	fmov	fr14,@-r6
    363c:	f6 ee       	fmac	fr0,fr14,fr6
    363e:	f6 f1       	fsub	fr15,fr6
    3640:	f6 f4       	fcmp/eq	fr15,fr6
    3642:	f6 f8       	fmov	@r15,fr6
    3644:	f6 fb       	fmov	fr15,@-r6
    3646:	f6 fe       	fmac	fr0,fr15,fr6
    3648:	f7 02       	fmul	fr0,fr7
    364a:	f7 05       	fcmp/gt	fr0,fr7
    364c:	f7 08       	fmov	@r0,fr7
    364e:	f7 0c       	fmov	fr0,fr7
    3650:	f7 0f       	.word 0xf70f
    3652:	f7 12       	fmul	fr1,fr7
    3654:	f7 15       	fcmp/gt	fr1,fr7
    3656:	f7 19       	fmov	@r1+,fr7
    3658:	f7 1c       	fmov	fr1,fr7
    365a:	f7 1f       	.word 0xf71f
    365c:	f7 23       	fdiv	fr2,fr7
    365e:	f7 26       	fmov	@(r0,r2),fr7
    3660:	f7 29       	fmov	@r2+,fr7
    3662:	f7 2c       	fmov	fr2,fr7
    3664:	f7 30       	fadd	fr3,fr7
    3666:	f7 33       	fdiv	fr3,fr7
    3668:	f7 36       	fmov	@(r0,r3),fr7
    366a:	f7 39       	fmov	@r3+,fr7
    366c:	f7 3d       	ftrc	fr7,fpul
    366e:	f7 40       	fadd	fr4,fr7
    3670:	f7 43       	fdiv	fr4,fr7
    3672:	f7 46       	fmov	@(r0,r4),fr7
    3674:	f7 4a       	fmov	fr4,@r7
    3676:	f7 4d       	fneg	fr7
    3678:	f7 50       	fadd	fr5,fr7
    367a:	f7 53       	fdiv	fr5,fr7
    367c:	f7 57       	fmov	fr5,@(r0,r7)
    367e:	f7 5a       	fmov	fr5,@r7
    3680:	f7 5d       	fabs	fr7
    3682:	f7 60       	fadd	fr6,fr7
    3684:	f7 64       	fcmp/eq	fr6,fr7
    3686:	f7 67       	fmov	fr6,@(r0,r7)
    3688:	f7 6a       	fmov	fr6,@r7
    368a:	f7 6d       	fsqrt	fr7
    368c:	f7 71       	fsub	fr7,fr7
    368e:	f7 74       	fcmp/eq	fr7,fr7
    3690:	f7 77       	fmov	fr7,@(r0,r7)
    3692:	f7 7a       	fmov	fr7,@r7
    3694:	f7 7d       	fsrra	fr7
    3696:	f7 81       	fsub	fr8,fr7
    3698:	f7 84       	fcmp/eq	fr8,fr7
    369a:	f7 87       	fmov	fr8,@(r0,r7)
    369c:	f7 8a       	fmov	fr8,@r7
    369e:	f7 8d       	fldi0	fr7
    36a0:	f7 91       	fsub	fr9,fr7
    36a2:	f7 94       	fcmp/eq	fr9,fr7
    36a4:	f7 97       	fmov	fr9,@(r0,r7)
    36a6:	f7 9a       	fmov	fr9,@r7
    36a8:	f7 9d       	fldi1	fr7
    36aa:	f7 a1       	fsub	fr10,fr7
    36ac:	f7 a4       	fcmp/eq	fr10,fr7
    36ae:	f7 a7       	fmov	fr10,@(r0,r7)
    36b0:	f7 aa       	fmov	fr10,@r7
    36b2:	f7 ad       	.word 0xf7ad
    36b4:	f7 b1       	fsub	fr11,fr7
    36b6:	f7 b4       	fcmp/eq	fr11,fr7
    36b8:	f7 b7       	fmov	fr11,@(r0,r7)
    36ba:	f7 ba       	fmov	fr11,@r7
    36bc:	f7 bd       	.word 0xf7bd
    36be:	f7 c0       	fadd	fr12,fr7
    36c0:	f7 c4       	fcmp/eq	fr12,fr7
    36c2:	f7 c7       	fmov	fr12,@(r0,r7)
    36c4:	f7 ca       	fmov	fr12,@r7
    36c6:	f7 cd       	.word 0xf7cd
    36c8:	f7 d0       	fadd	fr13,fr7
    36ca:	f7 d3       	fdiv	fr13,fr7
    36cc:	f7 d6       	fmov	@(r0,r13),fr7
    36ce:	f7 da       	fmov	fr13,@r7
    36d0:	f7 dd       	.word 0xf7dd
    36d2:	f7 e0       	fadd	fr14,fr7
    36d4:	f7 e3       	fdiv	fr14,fr7
    36d6:	f7 e6       	fmov	@(r0,r14),fr7
    36d8:	f7 e9       	fmov	@r14+,fr7
    36da:	f7 ec       	fmov	fr14,fr7
    36dc:	f7 f0       	fadd	fr15,fr7
    36de:	f7 f3       	fdiv	fr15,fr7
    36e0:	f7 f6       	fmov	@(r0,r15),fr7
    36e2:	f7 f9       	fmov	@r15+,fr7
    36e4:	f7 fc       	fmov	fr15,fr7
    36e6:	f7 ff       	.word 0xf7ff
    36e8:	f8 02       	fmul	fr0,fr8
    36ea:	f8 05       	fcmp/gt	fr0,fr8
    36ec:	f8 09       	fmov	@r0+,fr8
    36ee:	f8 0c       	fmov	fr0,fr8
    36f0:	f8 0f       	.word 0xf80f
    36f2:	f8 12       	fmul	fr1,fr8
    36f4:	f8 15       	fcmp/gt	fr1,fr8
    36f6:	f8 18       	fmov	@r1,fr8
    36f8:	f8 1b       	fmov	fr1,@-r8
    36fa:	f8 1e       	fmac	fr0,fr1,fr8
    36fc:	f8 21       	fsub	fr2,fr8
    36fe:	f8 24       	fcmp/eq	fr2,fr8
    3700:	f8 27       	fmov	fr2,@(r0,r8)
    3702:	f8 2b       	fmov	fr2,@-r8
    3704:	f8 2e       	fmac	fr0,fr2,fr8
    3706:	f8 31       	fsub	fr3,fr8
    3708:	f8 34       	fcmp/eq	fr3,fr8
    370a:	f8 37       	fmov	fr3,@(r0,r8)
    370c:	f8 3a       	fmov	fr3,@r8
    370e:	f8 3d       	ftrc	fr8,fpul
    3710:	f8 40       	fadd	fr4,fr8
    3712:	f8 43       	fdiv	fr4,fr8
    3714:	f8 46       	fmov	@(r0,r4),fr8
    3716:	f8 49       	fmov	@r4+,fr8
    3718:	f8 4c       	fmov	fr4,fr8
    371a:	f8 4f       	.word 0xf84f
    371c:	f8 52       	fmul	fr5,fr8
    371e:	f8 56       	fmov	@(r0,r5),fr8
    3720:	f8 59       	fmov	@r5+,fr8
    3722:	f8 5c       	fmov	fr5,fr8
    3724:	f8 5f       	.word 0xf85f
    3726:	f8 62       	fmul	fr6,fr8
    3728:	f8 65       	fcmp/gt	fr6,fr8
    372a:	f8 68       	fmov	@r6,fr8
    372c:	f8 6b       	fmov	fr6,@-r8
    372e:	f8 6e       	fmac	fr0,fr6,fr8
    3730:	f8 71       	fsub	fr7,fr8
    3732:	f8 74       	fcmp/eq	fr7,fr8
    3734:	f8 77       	fmov	fr7,@(r0,r8)
    3736:	f8 7a       	fmov	fr7,@r8
    3738:	f8 7d       	fsrra	fr8
    373a:	f8 80       	fadd	fr8,fr8
    373c:	f8 83       	fdiv	fr8,fr8
    373e:	f8 86       	fmov	@(r0,r8),fr8
    3740:	f8 89       	fmov	@r8+,fr8
    3742:	f8 8c       	fmov	fr8,fr8
    3744:	f8 8f       	.word 0xf88f
    3746:	f8 92       	fmul	fr9,fr8
    3748:	f8 95       	fcmp/gt	fr9,fr8
    374a:	f8 98       	fmov	@r9,fr8
    374c:	f8 9b       	fmov	fr9,@-r8
    374e:	f8 9e       	fmac	fr0,fr9,fr8
    3750:	f8 a1       	fsub	fr10,fr8
    3752:	f8 a4       	fcmp/eq	fr10,fr8
    3754:	f8 a7       	fmov	fr10,@(r0,r8)
    3756:	f8 aa       	fmov	fr10,@r8
    3758:	f8 ad       	fcnvsd	fpul,dr8
    375a:	f8 b0       	fadd	fr11,fr8
    375c:	f8 b3       	fdiv	fr11,fr8
    375e:	f8 b6       	fmov	@(r0,r11),fr8
    3760:	f8 b9       	fmov	@r11+,fr8
    3762:	f8 bc       	fmov	fr11,fr8
    3764:	f8 bf       	.word 0xf8bf
    3766:	f8 c2       	fmul	fr12,fr8
    3768:	f8 c5       	fcmp/gt	fr12,fr8
    376a:	f8 c8       	fmov	@r12,fr8
    376c:	f8 cb       	fmov	fr12,@-r8
    376e:	f8 ce       	fmac	fr0,fr12,fr8
    3770:	f8 d1       	fsub	fr13,fr8
    3772:	f8 d4       	fcmp/eq	fr13,fr8
    3774:	f8 d7       	fmov	fr13,@(r0,r8)
    3776:	f8 da       	fmov	fr13,@r8
    3778:	f8 dc       	fmov	fr13,fr8
    377a:	f8 df       	.word 0xf8df
    377c:	f8 e2       	fmul	fr14,fr8
    377e:	f8 e5       	fcmp/gt	fr14,fr8
    3780:	f8 e8       	fmov	@r14,fr8
    3782:	f8 eb       	fmov	fr14,@-r8
    3784:	f8 ee       	fmac	fr0,fr14,fr8
    3786:	f8 f1       	fsub	fr15,fr8
    3788:	f8 f4       	fcmp/eq	fr15,fr8
    378a:	f8 f7       	fmov	fr15,@(r0,r8)
    378c:	f8 fa       	fmov	fr15,@r8
    378e:	f8 fd       	fsca	fpul,dr8
    3790:	f9 00       	fadd	fr0,fr9
    3792:	f9 03       	fdiv	fr0,fr9
    3794:	f9 05       	fcmp/gt	fr0,fr9
    3796:	f9 08       	fmov	@r0,fr9
    3798:	f9 0b       	fmov	fr0,@-r9
    379a:	f9 0e       	fmac	fr0,fr0,fr9
    379c:	f9 11       	fsub	fr1,fr9
    379e:	f9 14       	fcmp/eq	fr1,fr9
    37a0:	f9 17       	fmov	fr1,@(r0,r9)
    37a2:	f9 1a       	fmov	fr1,@r9
    37a4:	f9 1d       	flds	fr9,fpul
    37a6:	f9 20       	fadd	fr2,fr9
    37a8:	f9 22       	fmul	fr2,fr9
    37aa:	f9 25       	fcmp/gt	fr2,fr9
    37ac:	f9 28       	fmov	@r2,fr9
    37ae:	f9 2b       	fmov	fr2,@-r9
    37b0:	f9 2e       	fmac	fr0,fr2,fr9
    37b2:	f9 31       	fsub	fr3,fr9
    37b4:	f9 34       	fcmp/eq	fr3,fr9
    37b6:	f9 37       	fmov	fr3,@(r0,r9)
    37b8:	f9 3a       	fmov	fr3,@r9
    37ba:	f9 3c       	fmov	fr3,fr9
    37bc:	f9 3f       	.word 0xf93f
    37be:	f9 42       	fmul	fr4,fr9
    37c0:	f9 45       	fcmp/gt	fr4,fr9
    37c2:	f9 48       	fmov	@r4,fr9
    37c4:	f9 4b       	fmov	fr4,@-r9
    37c6:	f9 4e       	fmac	fr0,fr4,fr9
    37c8:	f9 50       	fadd	fr5,fr9
    37ca:	f9 53       	fdiv	fr5,fr9
    37cc:	f9 56       	fmov	@(r0,r5),fr9
    37ce:	f9 59       	fmov	@r5+,fr9
    37d0:	f9 5c       	fmov	fr5,fr9
    37d2:	f9 5f       	.word 0xf95f
    37d4:	f9 61       	fsub	fr6,fr9
    37d6:	f9 64       	fcmp/eq	fr6,fr9
    37d8:	f9 67       	fmov	fr6,@(r0,r9)
    37da:	f9 6a       	fmov	fr6,@r9
    37dc:	f9 6d       	fsqrt	fr9
    37de:	f9 70       	fadd	fr7,fr9
    37e0:	f9 72       	fmul	fr7,fr9
    37e2:	f9 75       	fcmp/gt	fr7,fr9
    37e4:	f9 78       	fmov	@r7,fr9
    37e6:	f9 7b       	fmov	fr7,@-r9
    37e8:	f9 7e       	fmac	fr0,fr7,fr9
    37ea:	f9 81       	fsub	fr8,fr9
    37ec:	f9 83       	fdiv	fr8,fr9
    37ee:	f9 86       	fmov	@(r0,r8),fr9
    37f0:	f9 89       	fmov	@r8+,fr9
    37f2:	f9 8c       	fmov	fr8,fr9
    37f4:	f9 8f       	.word 0xf98f
    37f6:	f9 91       	fsub	fr9,fr9
    37f8:	f9 94       	fcmp/eq	fr9,fr9
    37fa:	f9 97       	fmov	fr9,@(r0,r9)
    37fc:	f9 9a       	fmov	fr9,@r9
    37fe:	f9 9d       	fldi1	fr9
    3800:	f9 9f       	.word 0xf99f
    3802:	f9 a2       	fmul	fr10,fr9
    3804:	f9 a5       	fcmp/gt	fr10,fr9
    3806:	f9 a8       	fmov	@r10,fr9
    3808:	f9 aa       	fmov	fr10,@r9
    380a:	f9 ad       	.word 0xf9ad
    380c:	f9 b0       	fadd	fr11,fr9
    380e:	f9 b3       	fdiv	fr11,fr9
    3810:	f9 b6       	fmov	@(r0,r11),fr9
    3812:	f9 b8       	fmov	@r11,fr9
    3814:	f9 bb       	fmov	fr11,@-r9
    3816:	f9 be       	fmac	fr0,fr11,fr9
    3818:	f9 c1       	fsub	fr12,fr9
    381a:	f9 c3       	fdiv	fr12,fr9
    381c:	f9 c6       	fmov	@(r0,r12),fr9
    381e:	f9 c9       	fmov	@r12+,fr9
    3820:	f9 cc       	fmov	fr12,fr9
    3822:	f9 ce       	fmac	fr0,fr12,fr9
    3824:	f9 d1       	fsub	fr13,fr9
    3826:	f9 d4       	fcmp/eq	fr13,fr9
    3828:	f9 d7       	fmov	fr13,@(r0,r9)
    382a:	f9 d9       	fmov	@r13+,fr9
    382c:	f9 dc       	fmov	fr13,fr9
    382e:	f9 df       	.word 0xf9df
    3830:	f9 e2       	fmul	fr14,fr9
    3832:	f9 e4       	fcmp/eq	fr14,fr9
    3834:	f9 e7       	fmov	fr14,@(r0,r9)
    3836:	f9 ea       	fmov	fr14,@r9
    3838:	f9 ec       	fmov	fr14,fr9
    383a:	f9 ef       	.word 0xf9ef
    383c:	f9 f2       	fmul	fr15,fr9
    383e:	f9 f5       	fcmp/gt	fr15,fr9
    3840:	f9 f7       	fmov	fr15,@(r0,r9)
    3842:	f9 fa       	fmov	fr15,@r9
    3844:	f9 fd       	ftrv	xmtrx,fv8
    3846:	f9 ff       	.word 0xf9ff
    3848:	fa 02       	fmul	fr0,fr10
    384a:	fa 05       	fcmp/gt	fr0,fr10
    384c:	fa 08       	fmov	@r0,fr10
    384e:	fa 0a       	fmov	fr0,@r10
    3850:	fa 0d       	fsts	fpul,fr10
    3852:	fa 10       	fadd	fr1,fr10
    3854:	fa 12       	fmul	fr1,fr10
    3856:	fa 15       	fcmp/gt	fr1,fr10
    3858:	fa 18       	fmov	@r1,fr10
    385a:	fa 1a       	fmov	fr1,@r10
    385c:	fa 1d       	flds	fr10,fpul
    385e:	fa 20       	fadd	fr2,fr10
    3860:	fa 22       	fmul	fr2,fr10
    3862:	fa 25       	fcmp/gt	fr2,fr10
    3864:	fa 28       	fmov	@r2,fr10
    3866:	fa 2a       	fmov	fr2,@r10
    3868:	fa 2d       	float	fpul,fr10
    386a:	fa 30       	fadd	fr3,fr10
    386c:	fa 32       	fmul	fr3,fr10
    386e:	fa 35       	fcmp/gt	fr3,fr10
    3870:	fa 38       	fmov	@r3,fr10
    3872:	fa 3a       	fmov	fr3,@r10
    3874:	fa 3d       	ftrc	fr10,fpul
    3876:	fa 40       	fadd	fr4,fr10
    3878:	fa 42       	fmul	fr4,fr10
    387a:	fa 45       	fcmp/gt	fr4,fr10
    387c:	fa 48       	fmov	@r4,fr10
    387e:	fa 4a       	fmov	fr4,@r10
    3880:	fa 4d       	fneg	fr10
    3882:	fa 4f       	.word 0xfa4f
    3884:	fa 52       	fmul	fr5,fr10
    3886:	fa 55       	fcmp/gt	fr5,fr10
    3888:	fa 57       	fmov	fr5,@(r0,r10)
    388a:	fa 5a       	fmov	fr5,@r10
    388c:	fa 5d       	fabs	fr10
    388e:	fa 5f       	.word 0xfa5f
    3890:	fa 62       	fmul	fr6,fr10
    3892:	fa 64       	fcmp/eq	fr6,fr10
    3894:	fa 67       	fmov	fr6,@(r0,r10)
    3896:	fa 6a       	fmov	fr6,@r10
    3898:	fa 6c       	fmov	fr6,fr10
    389a:	fa 6f       	.word 0xfa6f
    389c:	fa 72       	fmul	fr7,fr10
    389e:	fa 74       	fcmp/eq	fr7,fr10
    38a0:	fa 77       	fmov	fr7,@(r0,r10)
    38a2:	fa 79       	fmov	@r7+,fr10
    38a4:	fa 7c       	fmov	fr7,fr10
    38a6:	fa 7e       	fmac	fr0,fr7,fr10
    38a8:	fa 81       	fsub	fr8,fr10
    38aa:	fa 84       	fcmp/eq	fr8,fr10
    38ac:	fa 86       	fmov	@(r0,r8),fr10
    38ae:	fa 89       	fmov	@r8+,fr10
    38b0:	fa 8b       	fmov	fr8,@-r10
    38b2:	fa 8e       	fmac	fr0,fr8,fr10
    38b4:	fa 91       	fsub	fr9,fr10
    38b6:	fa 93       	fdiv	fr9,fr10
    38b8:	fa 96       	fmov	@(r0,r9),fr10
    38ba:	fa 98       	fmov	@r9,fr10
    38bc:	fa 9b       	fmov	fr9,@-r10
    38be:	fa 9d       	fldi1	fr10
    38c0:	fa a0       	fadd	fr10,fr10
    38c2:	fa a3       	fdiv	fr10,fr10
    38c4:	fa a5       	fcmp/gt	fr10,fr10
    38c6:	fa a8       	fmov	@r10,fr10
    38c8:	fa aa       	fmov	fr10,@r10
    38ca:	fa ad       	fcnvsd	fpul,dr10
    38cc:	fa af       	.word 0xfaaf
    38ce:	fa b2       	fmul	fr11,fr10
    38d0:	fa b4       	fcmp/eq	fr11,fr10
    38d2:	fa b7       	fmov	fr11,@(r0,r10)
    38d4:	fa b9       	fmov	@r11+,fr10
    38d6:	fa bc       	fmov	fr11,fr10
    38d8:	fa bf       	.word 0xfabf
    38da:	fa c1       	fsub	fr12,fr10
    38dc:	fa c4       	fcmp/eq	fr12,fr10
    38de:	fa c6       	fmov	@(r0,r12),fr10
    38e0:	fa c9       	fmov	@r12+,fr10
    38e2:	fa cb       	fmov	fr12,@-r10
    38e4:	fa ce       	fmac	fr0,fr12,fr10
    38e6:	fa d0       	fadd	fr13,fr10
    38e8:	fa d3       	fdiv	fr13,fr10
    38ea:	fa d5       	fcmp/gt	fr13,fr10
    38ec:	fa d8       	fmov	@r13,fr10
    38ee:	fa da       	fmov	fr13,@r10
    38f0:	fa dd       	.word 0xfadd
    38f2:	fa df       	.word 0xfadf
    38f4:	fa e2       	fmul	fr14,fr10
    38f6:	fa e4       	fcmp/eq	fr14,fr10
    38f8:	fa e7       	fmov	fr14,@(r0,r10)
    38fa:	fa e9       	fmov	@r14+,fr10
    38fc:	fa ec       	fmov	fr14,fr10
    38fe:	fa ee       	fmac	fr0,fr14,fr10
    3900:	fa f1       	fsub	fr15,fr10
    3902:	fa f3       	fdiv	fr15,fr10
    3904:	fa f6       	fmov	@(r0,r15),fr10
    3906:	fa f8       	fmov	@r15,fr10
    3908:	fa fb       	fmov	fr15,@-r10
    390a:	fa fd       	fsca	fpul,dr10
    390c:	fb 00       	fadd	fr0,fr11
    390e:	fb 02       	fmul	fr0,fr11
    3910:	fb 04       	fcmp/eq	fr0,fr11
    3912:	fb 07       	fmov	fr0,@(r0,r11)
    3914:	fb 09       	fmov	@r0+,fr11
    3916:	fb 0c       	fmov	fr0,fr11
    3918:	fb 0e       	fmac	fr0,fr0,fr11
    391a:	fb 11       	fsub	fr1,fr11
    391c:	fb 13       	fdiv	fr1,fr11
    391e:	fb 16       	fmov	@(r0,r1),fr11
    3920:	fb 18       	fmov	@r1,fr11
    3922:	fb 1b       	fmov	fr1,@-r11
    3924:	fb 1d       	flds	fr11,fpul
    3926:	fb 1f       	.word 0xfb1f
    3928:	fb 22       	fmul	fr2,fr11
    392a:	fb 24       	fcmp/eq	fr2,fr11
    392c:	fb 27       	fmov	fr2,@(r0,r11)
    392e:	fb 29       	fmov	@r2+,fr11
    3930:	fb 2c       	fmov	fr2,fr11
    3932:	fb 2e       	fmac	fr0,fr2,fr11
    3934:	fb 30       	fadd	fr3,fr11
    3936:	fb 33       	fdiv	fr3,fr11
    3938:	fb 35       	fcmp/gt	fr3,fr11
    393a:	fb 38       	fmov	@r3,fr11
    393c:	fb 3a       	fmov	fr3,@r11
    393e:	fb 3d       	ftrc	fr11,fpul
    3940:	fb 3f       	.word 0xfb3f
    3942:	fb 41       	fsub	fr4,fr11
    3944:	fb 44       	fcmp/eq	fr4,fr11
    3946:	fb 46       	fmov	@(r0,r4),fr11
    3948:	fb 49       	fmov	@r4+,fr11
    394a:	fb 4b       	fmov	fr4,@-r11
    394c:	fb 4d       	fneg	fr11
    394e:	fb 50       	fadd	fr5,fr11
    3950:	fb 52       	fmul	fr5,fr11
    3952:	fb 55       	fcmp/gt	fr5,fr11
    3954:	fb 57       	fmov	fr5,@(r0,r11)
    3956:	fb 59       	fmov	@r5+,fr11
    3958:	fb 5c       	fmov	fr5,fr11
    395a:	fb 5e       	fmac	fr0,fr5,fr11
    395c:	fb 60       	fadd	fr6,fr11
    395e:	fb 63       	fdiv	fr6,fr11
    3960:	fb 65       	fcmp/gt	fr6,fr11
    3962:	fb 68       	fmov	@r6,fr11
    3964:	fb 6a       	fmov	fr6,@r11
    3966:	fb 6c       	fmov	fr6,fr11
    3968:	fb 6f       	.word 0xfb6f
    396a:	fb 71       	fsub	fr7,fr11
    396c:	fb 73       	fdiv	fr7,fr11
    396e:	fb 76       	fmov	@(r0,r7),fr11
    3970:	fb 78       	fmov	@r7,fr11
    3972:	fb 7a       	fmov	fr7,@r11
    3974:	fb 7d       	fsrra	fr11
    3976:	fb 7f       	.word 0xfb7f
    3978:	fb 82       	fmul	fr8,fr11
    397a:	fb 84       	fcmp/eq	fr8,fr11
    397c:	fb 86       	fmov	@(r0,r8),fr11
    397e:	fb 89       	fmov	@r8+,fr11
    3980:	fb 8b       	fmov	fr8,@-r11
    3982:	fb 8d       	fldi0	fr11
    3984:	fb 90       	fadd	fr9,fr11
    3986:	fb 92       	fmul	fr9,fr11
    3988:	fb 94       	fcmp/eq	fr9,fr11
    398a:	fb 97       	fmov	fr9,@(r0,r11)
    398c:	fb 99       	fmov	@r9+,fr11
    398e:	fb 9b       	fmov	fr9,@-r11
    3990:	fb 9d       	fldi1	fr11
    3992:	fb a0       	fadd	fr10,fr11
    3994:	fb a2       	fmul	fr10,fr11
    3996:	fb a4       	fcmp/eq	fr10,fr11
    3998:	fb a7       	fmov	fr10,@(r0,r11)
    399a:	fb a9       	fmov	@r10+,fr11
    399c:	fb ab       	fmov	fr10,@-r11
    399e:	fb ae       	fmac	fr0,fr10,fr11
    39a0:	fb b0       	fadd	fr11,fr11
    39a2:	fb b2       	fmul	fr11,fr11
    39a4:	fb b4       	fcmp/eq	fr11,fr11
    39a6:	fb b7       	fmov	fr11,@(r0,r11)
    39a8:	fb b9       	fmov	@r11+,fr11
    39aa:	fb bb       	fmov	fr11,@-r11
    39ac:	fb be       	fmac	fr0,fr11,fr11
    39ae:	fb c0       	fadd	fr12,fr11
    39b0:	fb c2       	fmul	fr12,fr11
    39b2:	fb c4       	fcmp/eq	fr12,fr11
    39b4:	fb c7       	fmov	fr12,@(r0,r11)
    39b6:	fb c9       	fmov	@r12+,fr11
    39b8:	fb cb       	fmov	fr12,@-r11
    39ba:	fb ce       	fmac	fr0,fr12,fr11
    39bc:	fb d0       	fadd	fr13,fr11
    39be:	fb d2       	fmul	fr13,fr11
    39c0:	fb d4       	fcmp/eq	fr13,fr11
    39c2:	fb d7       	fmov	fr13,@(r0,r11)
    39c4:	fb d9       	fmov	@r13+,fr11
    39c6:	fb db       	fmov	fr13,@-r11
    39c8:	fb dd       	.word 0xfbdd
    39ca:	fb e0       	fadd	fr14,fr11
    39cc:	fb e2       	fmul	fr14,fr11
    39ce:	fb e4       	fcmp/eq	fr14,fr11
    39d0:	fb e6       	fmov	@(r0,r14),fr11
    39d2:	fb e9       	fmov	@r14+,fr11
    39d4:	fb eb       	fmov	fr14,@-r11
    39d6:	fb ed       	fipr	fv12,fv8
    39d8:	fb ef       	.word 0xfbef
    39da:	fb f1       	fsub	fr15,fr11
    39dc:	fb f4       	fcmp/eq	fr15,fr11
    39de:	fb f6       	fmov	@(r0,r15),fr11
    39e0:	fb f8       	fmov	@r15,fr11
    39e2:	fb fa       	fmov	fr15,@r11
    39e4:	fb fd       	frchg	
    39e6:	fb ff       	.word 0xfbff
    39e8:	fc 01       	fsub	fr0,fr12
    39ea:	fc 03       	fdiv	fr0,fr12
    39ec:	fc 05       	fcmp/gt	fr0,fr12
    39ee:	fc 08       	fmov	@r0,fr12
    39f0:	fc 0a       	fmov	fr0,@r12
    39f2:	fc 0c       	fmov	fr0,fr12
    39f4:	fc 0e       	fmac	fr0,fr0,fr12
    39f6:	fc 10       	fadd	fr1,fr12
    39f8:	fc 13       	fdiv	fr1,fr12
    39fa:	fc 15       	fcmp/gt	fr1,fr12
    39fc:	fc 17       	fmov	fr1,@(r0,r12)
    39fe:	fc 19       	fmov	@r1+,fr12
    3a00:	fc 1b       	fmov	fr1,@-r12
    3a02:	fc 1e       	fmac	fr0,fr1,fr12
    3a04:	fc 20       	fadd	fr2,fr12
    3a06:	fc 22       	fmul	fr2,fr12
    3a08:	fc 24       	fcmp/eq	fr2,fr12
    3a0a:	fc 26       	fmov	@(r0,r2),fr12
    3a0c:	fc 28       	fmov	@r2,fr12
    3a0e:	fc 2b       	fmov	fr2,@-r12
    3a10:	fc 2d       	float	fpul,fr12
    3a12:	fc 2f       	.word 0xfc2f
    3a14:	fc 31       	fsub	fr3,fr12
    3a16:	fc 33       	fdiv	fr3,fr12
    3a18:	fc 35       	fcmp/gt	fr3,fr12
    3a1a:	fc 38       	fmov	@r3,fr12
    3a1c:	fc 3a       	fmov	fr3,@r12
    3a1e:	fc 3c       	fmov	fr3,fr12
    3a20:	fc 3e       	fmac	fr0,fr3,fr12
    3a22:	fc 40       	fadd	fr4,fr12
    3a24:	fc 42       	fmul	fr4,fr12
    3a26:	fc 44       	fcmp/eq	fr4,fr12
    3a28:	fc 47       	fmov	fr4,@(r0,r12)
    3a2a:	fc 49       	fmov	@r4+,fr12
    3a2c:	fc 4b       	fmov	fr4,@-r12
    3a2e:	fc 4d       	fneg	fr12
    3a30:	fc 4f       	.word 0xfc4f
    3a32:	fc 51       	fsub	fr5,fr12
    3a34:	fc 53       	fdiv	fr5,fr12
    3a36:	fc 55       	fcmp/gt	fr5,fr12
    3a38:	fc 58       	fmov	@r5,fr12
    3a3a:	fc 5a       	fmov	fr5,@r12
    3a3c:	fc 5c       	fmov	fr5,fr12
    3a3e:	fc 5e       	fmac	fr0,fr5,fr12
    3a40:	fc 60       	fadd	fr6,fr12
    3a42:	fc 62       	fmul	fr6,fr12
    3a44:	fc 64       	fcmp/eq	fr6,fr12
    3a46:	fc 66       	fmov	@(r0,r6),fr12
    3a48:	fc 68       	fmov	@r6,fr12
    3a4a:	fc 6a       	fmov	fr6,@r12
    3a4c:	fc 6d       	fsqrt	fr12
    3a4e:	fc 6f       	.word 0xfc6f
    3a50:	fc 71       	fsub	fr7,fr12
    3a52:	fc 73       	fdiv	fr7,fr12
    3a54:	fc 75       	fcmp/gt	fr7,fr12
    3a56:	fc 77       	fmov	fr7,@(r0,r12)
    3a58:	fc 79       	fmov	@r7+,fr12
    3a5a:	fc 7b       	fmov	fr7,@-r12
    3a5c:	fc 7d       	fsrra	fr12
    3a5e:	fc 7f       	.word 0xfc7f
    3a60:	fc 81       	fsub	fr8,fr12
    3a62:	fc 83       	fdiv	fr8,fr12
    3a64:	fc 85       	fcmp/gt	fr8,fr12
    3a66:	fc 88       	fmov	@r8,fr12
    3a68:	fc 8a       	fmov	fr8,@r12
    3a6a:	fc 8c       	fmov	fr8,fr12
    3a6c:	fc 8e       	fmac	fr0,fr8,fr12
    3a6e:	fc 90       	fadd	fr9,fr12
    3a70:	fc 92       	fmul	fr9,fr12
    3a72:	fc 94       	fcmp/eq	fr9,fr12
    3a74:	fc 96       	fmov	@(r0,r9),fr12
    3a76:	fc 98       	fmov	@r9,fr12
    3a78:	fc 9a       	fmov	fr9,@r12
    3a7a:	fc 9c       	fmov	fr9,fr12
    3a7c:	fc 9e       	fmac	fr0,fr9,fr12
    3a7e:	fc a0       	fadd	fr10,fr12
    3a80:	fc a2       	fmul	fr10,fr12
    3a82:	fc a4       	fcmp/eq	fr10,fr12
    3a84:	fc a6       	fmov	@(r0,r10),fr12
    3a86:	fc a8       	fmov	@r10,fr12
    3a88:	fc aa       	fmov	fr10,@r12
    3a8a:	fc ac       	fmov	fr10,fr12
    3a8c:	fc ae       	fmac	fr0,fr10,fr12
    3a8e:	fc b0       	fadd	fr11,fr12
    3a90:	fc b2       	fmul	fr11,fr12
    3a92:	fc b4       	fcmp/eq	fr11,fr12
    3a94:	fc b6       	fmov	@(r0,r11),fr12
    3a96:	fc b8       	fmov	@r11,fr12
    3a98:	fc ba       	fmov	fr11,@r12
    3a9a:	fc bc       	fmov	fr11,fr12
    3a9c:	fc be       	fmac	fr0,fr11,fr12
    3a9e:	fc c0       	fadd	fr12,fr12
    3aa0:	fc c2       	fmul	fr12,fr12
    3aa2:	fc c4       	fcmp/eq	fr12,fr12
    3aa4:	fc c6       	fmov	@(r0,r12),fr12
    3aa6:	fc c8       	fmov	@r12,fr12
    3aa8:	fc ca       	fmov	fr12,@r12
    3aaa:	fc cc       	fmov	fr12,fr12
    3aac:	fc ce       	fmac	fr0,fr12,fr12
    3aae:	fc d0       	fadd	fr13,fr12
    3ab0:	fc d2       	fmul	fr13,fr12
    3ab2:	fc d4       	fcmp/eq	fr13,fr12
    3ab4:	fc d6       	fmov	@(r0,r13),fr12
    3ab6:	fc d8       	fmov	@r13,fr12
    3ab8:	fc da       	fmov	fr13,@r12
    3aba:	fc dc       	fmov	fr13,fr12
    3abc:	fc de       	fmac	fr0,fr13,fr12
    3abe:	fc e0       	fadd	fr14,fr12
    3ac0:	fc e2       	fmul	fr14,fr12
    3ac2:	fc e4       	fcmp/eq	fr14,fr12
    3ac4:	fc e6       	fmov	@(r0,r14),fr12
    3ac6:	fc e8       	fmov	@r14,fr12
    3ac8:	fc ea       	fmov	fr14,@r12
    3aca:	fc ec       	fmov	fr14,fr12
    3acc:	fc ee       	fmac	fr0,fr14,fr12
    3ace:	fc ef       	.word 0xfcef
    3ad0:	fc f1       	fsub	fr15,fr12
    3ad2:	fc f3       	fdiv	fr15,fr12
    3ad4:	fc f5       	fcmp/gt	fr15,fr12
    3ad6:	fc f7       	fmov	fr15,@(r0,r12)
    3ad8:	fc f9       	fmov	@r15+,fr12
    3ada:	fc fb       	fmov	fr15,@-r12
    3adc:	fc fd       	fsca	fpul,dr12
    3ade:	fc ff       	.word 0xfcff
    3ae0:	fd 01       	fsub	fr0,fr13
    3ae2:	fd 03       	fdiv	fr0,fr13
    3ae4:	fd 05       	fcmp/gt	fr0,fr13
    3ae6:	fd 07       	fmov	fr0,@(r0,r13)
    3ae8:	fd 08       	fmov	@r0,fr13
    3aea:	fd 0a       	fmov	fr0,@r13
    3aec:	fd 0c       	fmov	fr0,fr13
    3aee:	fd 0e       	fmac	fr0,fr0,fr13
    3af0:	fd 10       	fadd	fr1,fr13
    3af2:	fd 12       	fmul	fr1,fr13
    3af4:	fd 14       	fcmp/eq	fr1,fr13
    3af6:	fd 16       	fmov	@(r0,r1),fr13
    3af8:	fd 18       	fmov	@r1,fr13
    3afa:	fd 19       	fmov	@r1+,fr13
    3afc:	fd 1b       	fmov	fr1,@-r13
    3afe:	fd 1d       	flds	fr13,fpul
    3b00:	fd 1f       	.word 0xfd1f
    3b02:	fd 21       	fsub	fr2,fr13
    3b04:	fd 23       	fdiv	fr2,fr13
    3b06:	fd 25       	fcmp/gt	fr2,fr13
    3b08:	fd 27       	fmov	fr2,@(r0,r13)
    3b0a:	fd 28       	fmov	@r2,fr13
    3b0c:	fd 2a       	fmov	fr2,@r13
    3b0e:	fd 2c       	fmov	fr2,fr13
    3b10:	fd 2e       	fmac	fr0,fr2,fr13
    3b12:	fd 30       	fadd	fr3,fr13
    3b14:	fd 32       	fmul	fr3,fr13
    3b16:	fd 34       	fcmp/eq	fr3,fr13
    3b18:	fd 35       	fcmp/gt	fr3,fr13
    3b1a:	fd 37       	fmov	fr3,@(r0,r13)
    3b1c:	fd 39       	fmov	@r3+,fr13
    3b1e:	fd 3b       	fmov	fr3,@-r13
    3b20:	fd 3d       	ftrc	fr13,fpul
    3b22:	fd 3f       	.word 0xfd3f
    3b24:	fd 41       	fsub	fr4,fr13
    3b26:	fd 42       	fmul	fr4,fr13
    3b28:	fd 44       	fcmp/eq	fr4,fr13
    3b2a:	fd 46       	fmov	@(r0,r4),fr13
    3b2c:	fd 48       	fmov	@r4,fr13
    3b2e:	fd 4a       	fmov	fr4,@r13
    3b30:	fd 4b       	fmov	fr4,@-r13
    3b32:	fd 4d       	fneg	fr13
    3b34:	fd 4f       	.word 0xfd4f
    3b36:	fd 51       	fsub	fr5,fr13
    3b38:	fd 53       	fdiv	fr5,fr13
    3b3a:	fd 55       	fcmp/gt	fr5,fr13
    3b3c:	fd 56       	fmov	@(r0,r5),fr13
    3b3e:	fd 58       	fmov	@r5,fr13
    3b40:	fd 5a       	fmov	fr5,@r13
    3b42:	fd 5c       	fmov	fr5,fr13
    3b44:	fd 5e       	fmac	fr0,fr5,fr13
    3b46:	fd 5f       	.word 0xfd5f
    3b48:	fd 61       	fsub	fr6,fr13
    3b4a:	fd 63       	fdiv	fr6,fr13
    3b4c:	fd 65       	fcmp/gt	fr6,fr13
    3b4e:	fd 67       	fmov	fr6,@(r0,r13)
    3b50:	fd 68       	fmov	@r6,fr13
    3b52:	fd 6a       	fmov	fr6,@r13
    3b54:	fd 6c       	fmov	fr6,fr13
    3b56:	fd 6e       	fmac	fr0,fr6,fr13
    3b58:	fd 6f       	.word 0xfd6f
    3b5a:	fd 71       	fsub	fr7,fr13
    3b5c:	fd 73       	fdiv	fr7,fr13
    3b5e:	fd 75       	fcmp/gt	fr7,fr13
    3b60:	fd 76       	fmov	@(r0,r7),fr13
    3b62:	fd 78       	fmov	@r7,fr13
    3b64:	fd 7a       	fmov	fr7,@r13
    3b66:	fd 7c       	fmov	fr7,fr13
    3b68:	fd 7e       	fmac	fr0,fr7,fr13
    3b6a:	fd 7f       	.word 0xfd7f
    3b6c:	fd 81       	fsub	fr8,fr13
    3b6e:	fd 83       	fdiv	fr8,fr13
    3b70:	fd 85       	fcmp/gt	fr8,fr13
    3b72:	fd 86       	fmov	@(r0,r8),fr13
    3b74:	fd 88       	fmov	@r8,fr13
    3b76:	fd 8a       	fmov	fr8,@r13
    3b78:	fd 8b       	fmov	fr8,@-r13
    3b7a:	fd 8d       	fldi0	fr13
    3b7c:	fd 8f       	.word 0xfd8f
    3b7e:	fd 91       	fsub	fr9,fr13
    3b80:	fd 92       	fmul	fr9,fr13
    3b82:	fd 94       	fcmp/eq	fr9,fr13
    3b84:	fd 96       	fmov	@(r0,r9),fr13
    3b86:	fd 98       	fmov	@r9,fr13
    3b88:	fd 99       	fmov	@r9+,fr13
    3b8a:	fd 9b       	fmov	fr9,@-r13
    3b8c:	fd 9d       	fldi1	fr13
    3b8e:	fd 9e       	fmac	fr0,fr9,fr13
    3b90:	fd a0       	fadd	fr10,fr13
    3b92:	fd a2       	fmul	fr10,fr13
    3b94:	fd a4       	fcmp/eq	fr10,fr13
    3b96:	fd a5       	fcmp/gt	fr10,fr13
    3b98:	fd a7       	fmov	fr10,@(r0,r13)
    3b9a:	fd a9       	fmov	@r10+,fr13
    3b9c:	fd aa       	fmov	fr10,@r13
    3b9e:	fd ac       	fmov	fr10,fr13
    3ba0:	fd ae       	fmac	fr0,fr10,fr13
    3ba2:	fd af       	.word 0xfdaf
    3ba4:	fd b1       	fsub	fr11,fr13
    3ba6:	fd b3       	fdiv	fr11,fr13
    3ba8:	fd b4       	fcmp/eq	fr11,fr13
    3baa:	fd b6       	fmov	@(r0,r11),fr13
    3bac:	fd b8       	fmov	@r11,fr13
    3bae:	fd b9       	fmov	@r11+,fr13
    3bb0:	fd bb       	fmov	fr11,@-r13
    3bb2:	fd bd       	.word 0xfdbd
    3bb4:	fd be       	fmac	fr0,fr11,fr13
    3bb6:	fd c0       	fadd	fr12,fr13
    3bb8:	fd c2       	fmul	fr12,fr13
    3bba:	fd c3       	fdiv	fr12,fr13
    3bbc:	fd c5       	fcmp/gt	fr12,fr13
    3bbe:	fd c7       	fmov	fr12,@(r0,r13)
    3bc0:	fd c8       	fmov	@r12,fr13
    3bc2:	fd ca       	fmov	fr12,@r13
    3bc4:	fd cc       	fmov	fr12,fr13
    3bc6:	fd cd       	.word 0xfdcd
    3bc8:	fd cf       	.word 0xfdcf
    3bca:	fd d1       	fsub	fr13,fr13
    3bcc:	fd d2       	fmul	fr13,fr13
    3bce:	fd d4       	fcmp/eq	fr13,fr13
    3bd0:	fd d5       	fcmp/gt	fr13,fr13
    3bd2:	fd d7       	fmov	fr13,@(r0,r13)
    3bd4:	fd d9       	fmov	@r13+,fr13
    3bd6:	fd da       	fmov	fr13,@r13
    3bd8:	fd dc       	fmov	fr13,fr13
    3bda:	fd de       	fmac	fr0,fr13,fr13
    3bdc:	fd df       	.word 0xfddf
    3bde:	fd e1       	fsub	fr14,fr13
    3be0:	fd e2       	fmul	fr14,fr13
    3be2:	fd e4       	fcmp/eq	fr14,fr13
    3be4:	fd e6       	fmov	@(r0,r14),fr13
    3be6:	fd e7       	fmov	fr14,@(r0,r13)
    3be8:	fd e9       	fmov	@r14+,fr13
    3bea:	fd ea       	fmov	fr14,@r13
    3bec:	fd ec       	fmov	fr14,fr13
    3bee:	fd ee       	fmac	fr0,fr14,fr13
    3bf0:	fd ef       	.word 0xfdef
    3bf2:	fd f1       	fsub	fr15,fr13
    3bf4:	fd f2       	fmul	fr15,fr13
    3bf6:	fd f4       	fcmp/eq	fr15,fr13
    3bf8:	fd f6       	fmov	@(r0,r15),fr13
    3bfa:	fd f7       	fmov	fr15,@(r0,r13)
    3bfc:	fd f9       	fmov	@r15+,fr13
    3bfe:	fd fa       	fmov	fr15,@r13
    3c00:	fd fc       	fmov	fr15,fr13
    3c02:	fd fd       	ftrv	xmtrx,fv12
    3c04:	fd ff       	.word 0xfdff
    3c06:	fe 01       	fsub	fr0,fr14
    3c08:	fe 02       	fmul	fr0,fr14
    3c0a:	fe 04       	fcmp/eq	fr0,fr14
    3c0c:	fe 05       	fcmp/gt	fr0,fr14
    3c0e:	fe 07       	fmov	fr0,@(r0,r14)
    3c10:	fe 08       	fmov	@r0,fr14
    3c12:	fe 0a       	fmov	fr0,@r14
    3c14:	fe 0b       	fmov	fr0,@-r14
    3c16:	fe 0d       	fsts	fpul,fr14
    3c18:	fe 0f       	.word 0xfe0f
    3c1a:	fe 10       	fadd	fr1,fr14
    3c1c:	fe 12       	fmul	fr1,fr14
    3c1e:	fe 13       	fdiv	fr1,fr14
    3c20:	fe 15       	fcmp/gt	fr1,fr14
    3c22:	fe 16       	fmov	@(r0,r1),fr14
    3c24:	fe 18       	fmov	@r1,fr14
    3c26:	fe 19       	fmov	@r1+,fr14
    3c28:	fe 1b       	fmov	fr1,@-r14
    3c2a:	fe 1c       	fmov	fr1,fr14
    3c2c:	fe 1e       	fmac	fr0,fr1,fr14
    3c2e:	fe 1f       	.word 0xfe1f
    3c30:	fe 21       	fsub	fr2,fr14
    3c32:	fe 22       	fmul	fr2,fr14
    3c34:	fe 24       	fcmp/eq	fr2,fr14
    3c36:	fe 25       	fcmp/gt	fr2,fr14
    3c38:	fe 27       	fmov	fr2,@(r0,r14)
    3c3a:	fe 28       	fmov	@r2,fr14
    3c3c:	fe 2a       	fmov	fr2,@r14
    3c3e:	fe 2b       	fmov	fr2,@-r14
    3c40:	fe 2d       	float	fpul,fr14
    3c42:	fe 2e       	fmac	fr0,fr2,fr14
    3c44:	fe 30       	fadd	fr3,fr14
    3c46:	fe 31       	fsub	fr3,fr14
    3c48:	fe 33       	fdiv	fr3,fr14
    3c4a:	fe 34       	fcmp/eq	fr3,fr14
    3c4c:	fe 36       	fmov	@(r0,r3),fr14
    3c4e:	fe 37       	fmov	fr3,@(r0,r14)
    3c50:	fe 39       	fmov	@r3+,fr14
    3c52:	fe 3a       	fmov	fr3,@r14
    3c54:	fe 3c       	fmov	fr3,fr14
    3c56:	fe 3d       	ftrc	fr14,fpul
    3c58:	fe 3f       	.word 0xfe3f
    3c5a:	fe 40       	fadd	fr4,fr14
    3c5c:	fe 42       	fmul	fr4,fr14
    3c5e:	fe 43       	fdiv	fr4,fr14
    3c60:	fe 45       	fcmp/gt	fr4,fr14
    3c62:	fe 46       	fmov	@(r0,r4),fr14
    3c64:	fe 47       	fmov	fr4,@(r0,r14)
    3c66:	fe 49       	fmov	@r4+,fr14
    3c68:	fe 4a       	fmov	fr4,@r14
    3c6a:	fe 4c       	fmov	fr4,fr14
    3c6c:	fe 4d       	fneg	fr14
    3c6e:	fe 4f       	.word 0xfe4f
    3c70:	fe 50       	fadd	fr5,fr14
    3c72:	fe 52       	fmul	fr5,fr14
    3c74:	fe 53       	fdiv	fr5,fr14
    3c76:	fe 54       	fcmp/eq	fr5,fr14
    3c78:	fe 56       	fmov	@(r0,r5),fr14
    3c7a:	fe 57       	fmov	fr5,@(r0,r14)
    3c7c:	fe 59       	fmov	@r5+,fr14
    3c7e:	fe 5a       	fmov	fr5,@r14
    3c80:	fe 5c       	fmov	fr5,fr14
    3c82:	fe 5d       	fabs	fr14
    3c84:	fe 5e       	fmac	fr0,fr5,fr14
    3c86:	fe 60       	fadd	fr6,fr14
    3c88:	fe 61       	fsub	fr6,fr14
    3c8a:	fe 63       	fdiv	fr6,fr14
    3c8c:	fe 64       	fcmp/eq	fr6,fr14
    3c8e:	fe 65       	fcmp/gt	fr6,fr14
    3c90:	fe 67       	fmov	fr6,@(r0,r14)
    3c92:	fe 68       	fmov	@r6,fr14
    3c94:	fe 6a       	fmov	fr6,@r14
    3c96:	fe 6b       	fmov	fr6,@-r14
    3c98:	fe 6c       	fmov	fr6,fr14
    3c9a:	fe 6e       	fmac	fr0,fr6,fr14
    3c9c:	fe 6f       	.word 0xfe6f
    3c9e:	fe 71       	fsub	fr7,fr14
    3ca0:	fe 72       	fmul	fr7,fr14
    3ca2:	fe 73       	fdiv	fr7,fr14
    3ca4:	fe 75       	fcmp/gt	fr7,fr14
    3ca6:	fe 76       	fmov	@(r0,r7),fr14
    3ca8:	fe 77       	fmov	fr7,@(r0,r14)
    3caa:	fe 79       	fmov	@r7+,fr14
    3cac:	fe 7a       	fmov	fr7,@r14
    3cae:	fe 7c       	fmov	fr7,fr14
    3cb0:	fe 7d       	fsrra	fr14
    3cb2:	fe 7e       	fmac	fr0,fr7,fr14
    3cb4:	fe 80       	fadd	fr8,fr14
    3cb6:	fe 81       	fsub	fr8,fr14
    3cb8:	fe 82       	fmul	fr8,fr14
    3cba:	fe 84       	fcmp/eq	fr8,fr14
    3cbc:	fe 85       	fcmp/gt	fr8,fr14
    3cbe:	fe 86       	fmov	@(r0,r8),fr14
    3cc0:	fe 88       	fmov	@r8,fr14
    3cc2:	fe 89       	fmov	@r8+,fr14
    3cc4:	fe 8a       	fmov	fr8,@r14
    3cc6:	fe 8c       	fmov	fr8,fr14
    3cc8:	fe 8d       	fldi0	fr14
    3cca:	fe 8e       	fmac	fr0,fr8,fr14
    3ccc:	fe 90       	fadd	fr9,fr14
    3cce:	fe 91       	fsub	fr9,fr14
    3cd0:	fe 92       	fmul	fr9,fr14
    3cd2:	fe 94       	fcmp/eq	fr9,fr14
    3cd4:	fe 95       	fcmp/gt	fr9,fr14
    3cd6:	fe 96       	fmov	@(r0,r9),fr14
    3cd8:	fe 98       	fmov	@r9,fr14
    3cda:	fe 99       	fmov	@r9+,fr14
    3cdc:	fe 9a       	fmov	fr9,@r14
    3cde:	fe 9c       	fmov	fr9,fr14
    3ce0:	fe 9d       	fldi1	fr14
    3ce2:	fe 9e       	fmac	fr0,fr9,fr14
    3ce4:	fe 9f       	.word 0xfe9f
    3ce6:	fe a1       	fsub	fr10,fr14
    3ce8:	fe a2       	fmul	fr10,fr14
    3cea:	fe a3       	fdiv	fr10,fr14
    3cec:	fe a5       	fcmp/gt	fr10,fr14
    3cee:	fe a6       	fmov	@(r0,r10),fr14
    3cf0:	fe a7       	fmov	fr10,@(r0,r14)
    3cf2:	fe a9       	fmov	@r10+,fr14
    3cf4:	fe aa       	fmov	fr10,@r14
    3cf6:	fe ab       	fmov	fr10,@-r14
    3cf8:	fe ac       	fmov	fr10,fr14
    3cfa:	fe ae       	fmac	fr0,fr10,fr14
    3cfc:	fe af       	.word 0xfeaf
    3cfe:	fe b0       	fadd	fr11,fr14
    3d00:	fe b1       	fsub	fr11,fr14
    3d02:	fe b3       	fdiv	fr11,fr14
    3d04:	fe b4       	fcmp/eq	fr11,fr14
    3d06:	fe b5       	fcmp/gt	fr11,fr14
    3d08:	fe b6       	fmov	@(r0,r11),fr14
    3d0a:	fe b8       	fmov	@r11,fr14
    3d0c:	fe b9       	fmov	@r11+,fr14
    3d0e:	fe ba       	fmov	fr11,@r14
    3d10:	fe bb       	fmov	fr11,@-r14
    3d12:	fe bd       	fcnvds	dr14,fpul
    3d14:	fe be       	fmac	fr0,fr11,fr14
    3d16:	fe bf       	.word 0xfebf
    3d18:	fe c0       	fadd	fr12,fr14
    3d1a:	fe c2       	fmul	fr12,fr14
    3d1c:	fe c3       	fdiv	fr12,fr14
    3d1e:	fe c4       	fcmp/eq	fr12,fr14
    3d20:	fe c5       	fcmp/gt	fr12,fr14
    3d22:	fe c7       	fmov	fr12,@(r0,r14)
    3d24:	fe c8       	fmov	@r12,fr14
    3d26:	fe c9       	fmov	@r12+,fr14
    3d28:	fe ca       	fmov	fr12,@r14
    3d2a:	fe cb       	fmov	fr12,@-r14
    3d2c:	fe cd       	.word 0xfecd
    3d2e:	fe ce       	fmac	fr0,fr12,fr14
    3d30:	fe cf       	.word 0xfecf
    3d32:	fe d0       	fadd	fr13,fr14
    3d34:	fe d2       	fmul	fr13,fr14
    3d36:	fe d3       	fdiv	fr13,fr14
    3d38:	fe d4       	fcmp/eq	fr13,fr14
    3d3a:	fe d5       	fcmp/gt	fr13,fr14
    3d3c:	fe d6       	fmov	@(r0,r13),fr14
    3d3e:	fe d8       	fmov	@r13,fr14
    3d40:	fe d9       	fmov	@r13+,fr14
    3d42:	fe da       	fmov	fr13,@r14
    3d44:	fe db       	fmov	fr13,@-r14
    3d46:	fe dc       	fmov	fr13,fr14
    3d48:	fe dd       	.word 0xfedd
    3d4a:	fe df       	.word 0xfedf
    3d4c:	fe e0       	fadd	fr14,fr14
    3d4e:	fe e1       	fsub	fr14,fr14
    3d50:	fe e2       	fmul	fr14,fr14
    3d52:	fe e3       	fdiv	fr14,fr14
    3d54:	fe e4       	fcmp/eq	fr14,fr14
    3d56:	fe e6       	fmov	@(r0,r14),fr14
    3d58:	fe e7       	fmov	fr14,@(r0,r14)
    3d5a:	fe e8       	fmov	@r14,fr14
    3d5c:	fe e9       	fmov	@r14+,fr14
    3d5e:	fe ea       	fmov	fr14,@r14
    3d60:	fe eb       	fmov	fr14,@-r14
    3d62:	fe ed       	fipr	fv8,fv12
    3d64:	fe ee       	fmac	fr0,fr14,fr14
    3d66:	fe ef       	.word 0xfeef
    3d68:	fe f0       	fadd	fr15,fr14
    3d6a:	fe f1       	fsub	fr15,fr14
    3d6c:	fe f2       	fmul	fr15,fr14
    3d6e:	fe f3       	fdiv	fr15,fr14
    3d70:	fe f5       	fcmp/gt	fr15,fr14
    3d72:	fe f6       	fmov	@(r0,r15),fr14
    3d74:	fe f7       	fmov	fr15,@(r0,r14)
    3d76:	fe f8       	fmov	@r15,fr14
    3d78:	fe f9       	fmov	@r15+,fr14
    3d7a:	fe fa       	fmov	fr15,@r14
    3d7c:	fe fb       	fmov	fr15,@-r14
    3d7e:	fe fc       	fmov	fr15,fr14
    3d80:	fe fe       	fmac	fr0,fr15,fr14
    3d82:	fe ff       	.word 0xfeff
    3d84:	ff 00       	fadd	fr0,fr15
    3d86:	ff 01       	fsub	fr0,fr15
    3d88:	ff 02       	fmul	fr0,fr15
    3d8a:	ff 03       	fdiv	fr0,fr15
    3d8c:	ff 04       	fcmp/eq	fr0,fr15
    3d8e:	ff 05       	fcmp/gt	fr0,fr15
    3d90:	ff 06       	fmov	@(r0,r0),fr15
    3d92:	ff 07       	fmov	fr0,@(r0,r15)
    3d94:	ff 09       	fmov	@r0+,fr15
    3d96:	ff 0a       	fmov	fr0,@r15
    3d98:	ff 0b       	fmov	fr0,@-r15
    3d9a:	ff 0c       	fmov	fr0,fr15
    3d9c:	ff 0d       	fsts	fpul,fr15
    3d9e:	ff 0e       	fmac	fr0,fr0,fr15
    3da0:	ff 0f       	.word 0xff0f
    3da2:	ff 10       	fadd	fr1,fr15
    3da4:	ff 11       	fsub	fr1,fr15
    3da6:	ff 12       	fmul	fr1,fr15
    3da8:	ff 13       	fdiv	fr1,fr15
    3daa:	ff 14       	fcmp/eq	fr1,fr15
    3dac:	ff 15       	fcmp/gt	fr1,fr15
    3dae:	ff 16       	fmov	@(r0,r1),fr15
    3db0:	ff 18       	fmov	@r1,fr15
    3db2:	ff 19       	fmov	@r1+,fr15
    3db4:	ff 1a       	fmov	fr1,@r15
    3db6:	ff 1b       	fmov	fr1,@-r15
    3db8:	ff 1c       	fmov	fr1,fr15
    3dba:	ff 1d       	flds	fr15,fpul
    3dbc:	ff 1e       	fmac	fr0,fr1,fr15
    3dbe:	ff 1f       	.word 0xff1f
    3dc0:	ff 20       	fadd	fr2,fr15
    3dc2:	ff 21       	fsub	fr2,fr15
    3dc4:	ff 22       	fmul	fr2,fr15
    3dc6:	ff 23       	fdiv	fr2,fr15
    3dc8:	ff 24       	fcmp/eq	fr2,fr15
    3dca:	ff 25       	fcmp/gt	fr2,fr15
    3dcc:	ff 26       	fmov	@(r0,r2),fr15
    3dce:	ff 27       	fmov	fr2,@(r0,r15)
    3dd0:	ff 28       	fmov	@r2,fr15
    3dd2:	ff 29       	fmov	@r2+,fr15
    3dd4:	ff 2a       	fmov	fr2,@r15
    3dd6:	ff 2b       	fmov	fr2,@-r15
    3dd8:	ff 2c       	fmov	fr2,fr15
    3dda:	ff 2d       	float	fpul,fr15
    3ddc:	ff 2e       	fmac	fr0,fr2,fr15
    3dde:	ff 2f       	.word 0xff2f
    3de0:	ff 30       	fadd	fr3,fr15
    3de2:	ff 31       	fsub	fr3,fr15
    3de4:	ff 32       	fmul	fr3,fr15
    3de6:	ff 33       	fdiv	fr3,fr15
    3de8:	ff 34       	fcmp/eq	fr3,fr15
    3dea:	ff 35       	fcmp/gt	fr3,fr15
    3dec:	ff 36       	fmov	@(r0,r3),fr15
    3dee:	ff 37       	fmov	fr3,@(r0,r15)
    3df0:	ff 38       	fmov	@r3,fr15
    3df2:	ff 39       	fmov	@r3+,fr15
    3df4:	ff 3a       	fmov	fr3,@r15
    3df6:	ff 3b       	fmov	fr3,@-r15
    3df8:	ff 3c       	fmov	fr3,fr15
    3dfa:	ff 3d       	ftrc	fr15,fpul
    3dfc:	ff 3e       	fmac	fr0,fr3,fr15
    3dfe:	ff 3f       	.word 0xff3f
    3e00:	ff 40       	fadd	fr4,fr15
    3e02:	ff 41       	fsub	fr4,fr15
    3e04:	ff 42       	fmul	fr4,fr15
    3e06:	ff 43       	fdiv	fr4,fr15
    3e08:	ff 44       	fcmp/eq	fr4,fr15
    3e0a:	ff 45       	fcmp/gt	fr4,fr15
    3e0c:	ff 45       	fcmp/gt	fr4,fr15
    3e0e:	ff 46       	fmov	@(r0,r4),fr15
    3e10:	ff 47       	fmov	fr4,@(r0,r15)
    3e12:	ff 48       	fmov	@r4,fr15
    3e14:	ff 49       	fmov	@r4+,fr15
    3e16:	ff 4a       	fmov	fr4,@r15
    3e18:	ff 4b       	fmov	fr4,@-r15
    3e1a:	ff 4c       	fmov	fr4,fr15
    3e1c:	ff 4d       	fneg	fr15
    3e1e:	ff 4e       	fmac	fr0,fr4,fr15
    3e20:	ff 4f       	.word 0xff4f
    3e22:	ff 50       	fadd	fr5,fr15
    3e24:	ff 51       	fsub	fr5,fr15
    3e26:	ff 52       	fmul	fr5,fr15
    3e28:	ff 52       	fmul	fr5,fr15
    3e2a:	ff 53       	fdiv	fr5,fr15
    3e2c:	ff 54       	fcmp/eq	fr5,fr15
    3e2e:	ff 55       	fcmp/gt	fr5,fr15
    3e30:	ff 56       	fmov	@(r0,r5),fr15
    3e32:	ff 57       	fmov	fr5,@(r0,r15)
    3e34:	ff 58       	fmov	@r5,fr15
    3e36:	ff 59       	fmov	@r5+,fr15
    3e38:	ff 5a       	fmov	fr5,@r15
    3e3a:	ff 5b       	fmov	fr5,@-r15
    3e3c:	ff 5b       	fmov	fr5,@-r15
    3e3e:	ff 5c       	fmov	fr5,fr15
    3e40:	ff 5d       	fabs	fr15
    3e42:	ff 5e       	fmac	fr0,fr5,fr15
    3e44:	ff 5f       	.word 0xff5f
    3e46:	ff 60       	fadd	fr6,fr15
    3e48:	ff 61       	fsub	fr6,fr15
    3e4a:	ff 62       	fmul	fr6,fr15
    3e4c:	ff 62       	fmul	fr6,fr15
    3e4e:	ff 63       	fdiv	fr6,fr15
    3e50:	ff 64       	fcmp/eq	fr6,fr15
    3e52:	ff 65       	fcmp/gt	fr6,fr15
    3e54:	ff 66       	fmov	@(r0,r6),fr15
    3e56:	ff 67       	fmov	fr6,@(r0,r15)
    3e58:	ff 68       	fmov	@r6,fr15
    3e5a:	ff 68       	fmov	@r6,fr15
    3e5c:	ff 69       	fmov	@r6+,fr15
    3e5e:	ff 6a       	fmov	fr6,@r15
    3e60:	ff 6b       	fmov	fr6,@-r15
    3e62:	ff 6c       	fmov	fr6,fr15
    3e64:	ff 6d       	fsqrt	fr15
    3e66:	ff 6d       	fsqrt	fr15
    3e68:	ff 6e       	fmac	fr0,fr6,fr15
    3e6a:	ff 6f       	.word 0xff6f
    3e6c:	ff 70       	fadd	fr7,fr15
    3e6e:	ff 71       	fsub	fr7,fr15
    3e70:	ff 72       	fmul	fr7,fr15
    3e72:	ff 72       	fmul	fr7,fr15
    3e74:	ff 73       	fdiv	fr7,fr15
    3e76:	ff 74       	fcmp/eq	fr7,fr15
    3e78:	ff 75       	fcmp/gt	fr7,fr15
    3e7a:	ff 76       	fmov	@(r0,r7),fr15
    3e7c:	ff 77       	fmov	fr7,@(r0,r15)
    3e7e:	ff 77       	fmov	fr7,@(r0,r15)
    3e80:	ff 78       	fmov	@r7,fr15
    3e82:	ff 79       	fmov	@r7+,fr15
    3e84:	ff 7a       	fmov	fr7,@r15
    3e86:	ff 7b       	fmov	fr7,@-r15
    3e88:	ff 7b       	fmov	fr7,@-r15
    3e8a:	ff 7c       	fmov	fr7,fr15
    3e8c:	ff 7d       	fsrra	fr15
    3e8e:	ff 7e       	fmac	fr0,fr7,fr15
    3e90:	ff 7f       	.word 0xff7f
    3e92:	ff 7f       	.word 0xff7f
    3e94:	ff 80       	fadd	fr8,fr15
    3e96:	ff 81       	fsub	fr8,fr15
    3e98:	ff 82       	fmul	fr8,fr15
    3e9a:	ff 82       	fmul	fr8,fr15
    3e9c:	ff 83       	fdiv	fr8,fr15
    3e9e:	ff 84       	fcmp/eq	fr8,fr15
    3ea0:	ff 85       	fcmp/gt	fr8,fr15
    3ea2:	ff 85       	fcmp/gt	fr8,fr15
    3ea4:	ff 86       	fmov	@(r0,r8),fr15
    3ea6:	ff 87       	fmov	fr8,@(r0,r15)
    3ea8:	ff 88       	fmov	@r8,fr15
    3eaa:	ff 89       	fmov	@r8+,fr15
    3eac:	ff 89       	fmov	@r8+,fr15
    3eae:	ff 8a       	fmov	fr8,@r15
    3eb0:	ff 8b       	fmov	fr8,@-r15
    3eb2:	ff 8b       	fmov	fr8,@-r15
    3eb4:	ff 8c       	fmov	fr8,fr15
    3eb6:	ff 8d       	fldi0	fr15
    3eb8:	ff 8e       	fmac	fr0,fr8,fr15
    3eba:	ff 8e       	fmac	fr0,fr8,fr15
    3ebc:	ff 8f       	.word 0xff8f
    3ebe:	ff 90       	fadd	fr9,fr15
    3ec0:	ff 91       	fsub	fr9,fr15
    3ec2:	ff 91       	fsub	fr9,fr15
    3ec4:	ff 92       	fmul	fr9,fr15
    3ec6:	ff 93       	fdiv	fr9,fr15
    3ec8:	ff 94       	fcmp/eq	fr9,fr15
    3eca:	ff 94       	fcmp/eq	fr9,fr15
    3ecc:	ff 95       	fcmp/gt	fr9,fr15
    3ece:	ff 96       	fmov	@(r0,r9),fr15
    3ed0:	ff 96       	fmov	@(r0,r9),fr15
    3ed2:	ff 97       	fmov	fr9,@(r0,r15)
    3ed4:	ff 98       	fmov	@r9,fr15
    3ed6:	ff 99       	fmov	@r9+,fr15
    3ed8:	ff 99       	fmov	@r9+,fr15
    3eda:	ff 9a       	fmov	fr9,@r15
    3edc:	ff 9b       	fmov	fr9,@-r15
    3ede:	ff 9b       	fmov	fr9,@-r15
    3ee0:	ff 9c       	fmov	fr9,fr15
    3ee2:	ff 9d       	fldi1	fr15
    3ee4:	ff 9d       	fldi1	fr15
    3ee6:	ff 9e       	fmac	fr0,fr9,fr15
    3ee8:	ff 9f       	.word 0xff9f
    3eea:	ff 9f       	.word 0xff9f
    3eec:	ff a0       	fadd	fr10,fr15
    3eee:	ff a1       	fsub	fr10,fr15
    3ef0:	ff a1       	fsub	fr10,fr15
    3ef2:	ff a2       	fmul	fr10,fr15
    3ef4:	ff a3       	fdiv	fr10,fr15
    3ef6:	ff a3       	fdiv	fr10,fr15
    3ef8:	ff a4       	fcmp/eq	fr10,fr15
    3efa:	ff a5       	fcmp/gt	fr10,fr15
    3efc:	ff a5       	fcmp/gt	fr10,fr15
    3efe:	ff a6       	fmov	@(r0,r10),fr15
    3f00:	ff a7       	fmov	fr10,@(r0,r15)
    3f02:	ff a7       	fmov	fr10,@(r0,r15)
    3f04:	ff a8       	fmov	@r10,fr15
    3f06:	ff a9       	fmov	@r10+,fr15
    3f08:	ff a9       	fmov	@r10+,fr15
    3f0a:	ff aa       	fmov	fr10,@r15
    3f0c:	ff ab       	fmov	fr10,@-r15
    3f0e:	ff ab       	fmov	fr10,@-r15
    3f10:	ff ac       	fmov	fr10,fr15
    3f12:	ff ac       	fmov	fr10,fr15
    3f14:	ff ad       	.word 0xffad
    3f16:	ff ae       	fmac	fr0,fr10,fr15
    3f18:	ff ae       	fmac	fr0,fr10,fr15
    3f1a:	ff af       	.word 0xffaf
    3f1c:	ff b0       	fadd	fr11,fr15
    3f1e:	ff b0       	fadd	fr11,fr15
    3f20:	ff b1       	fsub	fr11,fr15
    3f22:	ff b1       	fsub	fr11,fr15
    3f24:	ff b2       	fmul	fr11,fr15
    3f26:	ff b3       	fdiv	fr11,fr15
    3f28:	ff b3       	fdiv	fr11,fr15
    3f2a:	ff b4       	fcmp/eq	fr11,fr15
    3f2c:	ff b4       	fcmp/eq	fr11,fr15
    3f2e:	ff b5       	fcmp/gt	fr11,fr15
    3f30:	ff b6       	fmov	@(r0,r11),fr15
    3f32:	ff b6       	fmov	@(r0,r11),fr15
    3f34:	ff b7       	fmov	fr11,@(r0,r15)
    3f36:	ff b7       	fmov	fr11,@(r0,r15)
    3f38:	ff b8       	fmov	@r11,fr15
    3f3a:	ff b9       	fmov	@r11+,fr15
    3f3c:	ff b9       	fmov	@r11+,fr15
    3f3e:	ff ba       	fmov	fr11,@r15
    3f40:	ff ba       	fmov	fr11,@r15
    3f42:	ff bb       	fmov	fr11,@-r15
    3f44:	ff bb       	fmov	fr11,@-r15
    3f46:	ff bc       	fmov	fr11,fr15
    3f48:	ff bd       	.word 0xffbd
    3f4a:	ff bd       	.word 0xffbd
    3f4c:	ff be       	fmac	fr0,fr11,fr15
    3f4e:	ff be       	fmac	fr0,fr11,fr15
    3f50:	ff bf       	.word 0xffbf
    3f52:	ff bf       	.word 0xffbf
    3f54:	ff c0       	fadd	fr12,fr15
    3f56:	ff c0       	fadd	fr12,fr15
    3f58:	ff c1       	fsub	fr12,fr15
    3f5a:	ff c2       	fmul	fr12,fr15
    3f5c:	ff c2       	fmul	fr12,fr15
    3f5e:	ff c3       	fdiv	fr12,fr15
    3f60:	ff c3       	fdiv	fr12,fr15
    3f62:	ff c4       	fcmp/eq	fr12,fr15
    3f64:	ff c4       	fcmp/eq	fr12,fr15
    3f66:	ff c5       	fcmp/gt	fr12,fr15
    3f68:	ff c5       	fcmp/gt	fr12,fr15
    3f6a:	ff c6       	fmov	@(r0,r12),fr15
    3f6c:	ff c6       	fmov	@(r0,r12),fr15
    3f6e:	ff c7       	fmov	fr12,@(r0,r15)
    3f70:	ff c7       	fmov	fr12,@(r0,r15)
    3f72:	ff c8       	fmov	@r12,fr15
    3f74:	ff c8       	fmov	@r12,fr15
    3f76:	ff c9       	fmov	@r12+,fr15
    3f78:	ff c9       	fmov	@r12+,fr15
    3f7a:	ff ca       	fmov	fr12,@r15
    3f7c:	ff ca       	fmov	fr12,@r15
    3f7e:	ff cb       	fmov	fr12,@-r15
    3f80:	ff cb       	fmov	fr12,@-r15
    3f82:	ff cc       	fmov	fr12,fr15
    3f84:	ff cc       	fmov	fr12,fr15
    3f86:	ff cd       	.word 0xffcd
    3f88:	ff cd       	.word 0xffcd
    3f8a:	ff ce       	fmac	fr0,fr12,fr15
    3f8c:	ff ce       	fmac	fr0,fr12,fr15
    3f8e:	ff cf       	.word 0xffcf
    3f90:	ff cf       	.word 0xffcf
    3f92:	ff d0       	fadd	fr13,fr15
    3f94:	ff d0       	fadd	fr13,fr15
    3f96:	ff d1       	fsub	fr13,fr15
    3f98:	ff d1       	fsub	fr13,fr15
    3f9a:	ff d2       	fmul	fr13,fr15
    3f9c:	ff d2       	fmul	fr13,fr15
    3f9e:	ff d3       	fdiv	fr13,fr15
    3fa0:	ff d3       	fdiv	fr13,fr15
    3fa2:	ff d3       	fdiv	fr13,fr15
    3fa4:	ff d4       	fcmp/eq	fr13,fr15
    3fa6:	ff d4       	fcmp/eq	fr13,fr15
    3fa8:	ff d5       	fcmp/gt	fr13,fr15
    3faa:	ff d5       	fcmp/gt	fr13,fr15
    3fac:	ff d6       	fmov	@(r0,r13),fr15
    3fae:	ff d6       	fmov	@(r0,r13),fr15
    3fb0:	ff d7       	fmov	fr13,@(r0,r15)
    3fb2:	ff d7       	fmov	fr13,@(r0,r15)
    3fb4:	ff d7       	fmov	fr13,@(r0,r15)
    3fb6:	ff d8       	fmov	@r13,fr15
    3fb8:	ff d8       	fmov	@r13,fr15
    3fba:	ff d9       	fmov	@r13+,fr15
    3fbc:	ff d9       	fmov	@r13+,fr15
    3fbe:	ff da       	fmov	fr13,@r15
    3fc0:	ff da       	fmov	fr13,@r15
    3fc2:	ff da       	fmov	fr13,@r15
    3fc4:	ff db       	fmov	fr13,@-r15
    3fc6:	ff db       	fmov	fr13,@-r15
    3fc8:	ff dc       	fmov	fr13,fr15
    3fca:	ff dc       	fmov	fr13,fr15
    3fcc:	ff dc       	fmov	fr13,fr15
    3fce:	ff dd       	.word 0xffdd
    3fd0:	ff dd       	.word 0xffdd
    3fd2:	ff de       	fmac	fr0,fr13,fr15
    3fd4:	ff de       	fmac	fr0,fr13,fr15
    3fd6:	ff de       	fmac	fr0,fr13,fr15
    3fd8:	ff df       	.word 0xffdf
    3fda:	ff df       	.word 0xffdf
    3fdc:	ff e0       	fadd	fr14,fr15
    3fde:	ff e0       	fadd	fr14,fr15
    3fe0:	ff e0       	fadd	fr14,fr15
    3fe2:	ff e1       	fsub	fr14,fr15
    3fe4:	ff e1       	fsub	fr14,fr15
    3fe6:	ff e2       	fmul	fr14,fr15
    3fe8:	ff e2       	fmul	fr14,fr15
    3fea:	ff e2       	fmul	fr14,fr15
    3fec:	ff e3       	fdiv	fr14,fr15
    3fee:	ff e3       	fdiv	fr14,fr15
    3ff0:	ff e3       	fdiv	fr14,fr15
    3ff2:	ff e4       	fcmp/eq	fr14,fr15
    3ff4:	ff e4       	fcmp/eq	fr14,fr15
    3ff6:	ff e4       	fcmp/eq	fr14,fr15
    3ff8:	ff e5       	fcmp/gt	fr14,fr15
    3ffa:	ff e5       	fcmp/gt	fr14,fr15
    3ffc:	ff e6       	fmov	@(r0,r14),fr15
    3ffe:	ff e6       	fmov	@(r0,r14),fr15
    4000:	ff e6       	fmov	@(r0,r14),fr15
    4002:	ff e7       	fmov	fr14,@(r0,r15)
    4004:	ff e7       	fmov	fr14,@(r0,r15)
    4006:	ff e7       	fmov	fr14,@(r0,r15)
    4008:	ff e8       	fmov	@r14,fr15
    400a:	ff e8       	fmov	@r14,fr15
    400c:	ff e8       	fmov	@r14,fr15
    400e:	ff e9       	fmov	@r14+,fr15
    4010:	ff e9       	fmov	@r14+,fr15
    4012:	ff e9       	fmov	@r14+,fr15
    4014:	ff ea       	fmov	fr14,@r15
    4016:	ff ea       	fmov	fr14,@r15
    4018:	ff ea       	fmov	fr14,@r15
    401a:	ff ea       	fmov	fr14,@r15
    401c:	ff eb       	fmov	fr14,@-r15
    401e:	ff eb       	fmov	fr14,@-r15
    4020:	ff eb       	fmov	fr14,@-r15
    4022:	ff ec       	fmov	fr14,fr15
    4024:	ff ec       	fmov	fr14,fr15
    4026:	ff ec       	fmov	fr14,fr15
    4028:	ff ed       	fipr	fv12,fv12
    402a:	ff ed       	fipr	fv12,fv12
    402c:	ff ed       	fipr	fv12,fv12
    402e:	ff ed       	fipr	fv12,fv12
    4030:	ff ee       	fmac	fr0,fr14,fr15
    4032:	ff ee       	fmac	fr0,fr14,fr15
    4034:	ff ee       	fmac	fr0,fr14,fr15
    4036:	ff ef       	.word 0xffef
    4038:	ff ef       	.word 0xffef
    403a:	ff ef       	.word 0xffef
    403c:	ff ef       	.word 0xffef
    403e:	ff f0       	fadd	fr15,fr15
    4040:	ff f0       	fadd	fr15,fr15
    4042:	ff f0       	fadd	fr15,fr15
    4044:	ff f0       	fadd	fr15,fr15
    4046:	ff f1       	fsub	fr15,fr15
    4048:	ff f1       	fsub	fr15,fr15
    404a:	ff f1       	fsub	fr15,fr15
    404c:	ff f1       	fsub	fr15,fr15
    404e:	ff f2       	fmul	fr15,fr15
    4050:	ff f2       	fmul	fr15,fr15
    4052:	ff f2       	fmul	fr15,fr15
    4054:	ff f2       	fmul	fr15,fr15
    4056:	ff f3       	fdiv	fr15,fr15
    4058:	ff f3       	fdiv	fr15,fr15
    405a:	ff f3       	fdiv	fr15,fr15
    405c:	ff f3       	fdiv	fr15,fr15
    405e:	ff f4       	fcmp/eq	fr15,fr15
    4060:	ff f4       	fcmp/eq	fr15,fr15
    4062:	ff f4       	fcmp/eq	fr15,fr15
    4064:	ff f4       	fcmp/eq	fr15,fr15
    4066:	ff f5       	fcmp/gt	fr15,fr15
    4068:	ff f5       	fcmp/gt	fr15,fr15
    406a:	ff f5       	fcmp/gt	fr15,fr15
    406c:	ff f5       	fcmp/gt	fr15,fr15
    406e:	ff f5       	fcmp/gt	fr15,fr15
    4070:	ff f6       	fmov	@(r0,r15),fr15
    4072:	ff f6       	fmov	@(r0,r15),fr15
    4074:	ff f6       	fmov	@(r0,r15),fr15
    4076:	ff f6       	fmov	@(r0,r15),fr15
    4078:	ff f6       	fmov	@(r0,r15),fr15
    407a:	ff f7       	fmov	fr15,@(r0,r15)
    407c:	ff f7       	fmov	fr15,@(r0,r15)
    407e:	ff f7       	fmov	fr15,@(r0,r15)
    4080:	ff f7       	fmov	fr15,@(r0,r15)
    4082:	ff f7       	fmov	fr15,@(r0,r15)
    4084:	ff f8       	fmov	@r15,fr15
    4086:	ff f8       	fmov	@r15,fr15
    4088:	ff f8       	fmov	@r15,fr15
    408a:	ff f8       	fmov	@r15,fr15
    408c:	ff f8       	fmov	@r15,fr15
    408e:	ff f8       	fmov	@r15,fr15
    4090:	ff f9       	fmov	@r15+,fr15
    4092:	ff f9       	fmov	@r15+,fr15
    4094:	ff f9       	fmov	@r15+,fr15
    4096:	ff f9       	fmov	@r15+,fr15
    4098:	ff f9       	fmov	@r15+,fr15
    409a:	ff f9       	fmov	@r15+,fr15
    409c:	ff fa       	fmov	fr15,@r15
    409e:	ff fa       	fmov	fr15,@r15
    40a0:	ff fa       	fmov	fr15,@r15
    40a2:	ff fa       	fmov	fr15,@r15
    40a4:	ff fa       	fmov	fr15,@r15
    40a6:	ff fa       	fmov	fr15,@r15
    40a8:	ff fa       	fmov	fr15,@r15
    40aa:	ff fb       	fmov	fr15,@-r15
    40ac:	ff fb       	fmov	fr15,@-r15
    40ae:	ff fb       	fmov	fr15,@-r15
    40b0:	ff fb       	fmov	fr15,@-r15
    40b2:	ff fb       	fmov	fr15,@-r15
    40b4:	ff fb       	fmov	fr15,@-r15
    40b6:	ff fb       	fmov	fr15,@-r15
    40b8:	ff fb       	fmov	fr15,@-r15
    40ba:	ff fc       	fmov	fr15,fr15
    40bc:	ff fc       	fmov	fr15,fr15
    40be:	ff fc       	fmov	fr15,fr15
    40c0:	ff fc       	fmov	fr15,fr15
    40c2:	ff fc       	fmov	fr15,fr15
    40c4:	ff fc       	fmov	fr15,fr15
    40c6:	ff fc       	fmov	fr15,fr15
    40c8:	ff fc       	fmov	fr15,fr15
    40ca:	ff fc       	fmov	fr15,fr15
    40cc:	ff fd       	.word 0xfffd
    40ce:	ff fd       	.word 0xfffd
    40d0:	ff fd       	.word 0xfffd
    40d2:	ff fd       	.word 0xfffd
    40d4:	ff fd       	.word 0xfffd
    40d6:	ff fd       	.word 0xfffd
    40d8:	ff fd       	.word 0xfffd
    40da:	ff fd       	.word 0xfffd
    40dc:	ff fd       	.word 0xfffd
    40de:	ff fd       	.word 0xfffd
    40e0:	ff fd       	.word 0xfffd
    40e2:	ff fd       	.word 0xfffd
    40e4:	ff fe       	fmac	fr0,fr15,fr15
    40e6:	ff fe       	fmac	fr0,fr15,fr15
    40e8:	ff fe       	fmac	fr0,fr15,fr15
    40ea:	ff fe       	fmac	fr0,fr15,fr15
    40ec:	ff fe       	fmac	fr0,fr15,fr15
    40ee:	ff fe       	fmac	fr0,fr15,fr15
    40f0:	ff fe       	fmac	fr0,fr15,fr15
    40f2:	ff fe       	fmac	fr0,fr15,fr15
    40f4:	ff fe       	fmac	fr0,fr15,fr15
    40f6:	ff fe       	fmac	fr0,fr15,fr15
    40f8:	ff fe       	fmac	fr0,fr15,fr15
    40fa:	ff fe       	fmac	fr0,fr15,fr15
    40fc:	ff fe       	fmac	fr0,fr15,fr15
    40fe:	ff fe       	fmac	fr0,fr15,fr15
    4100:	ff fe       	fmac	fr0,fr15,fr15
    4102:	ff fe       	fmac	fr0,fr15,fr15
    4104:	ff fe       	fmac	fr0,fr15,fr15
    4106:	ff fe       	fmac	fr0,fr15,fr15
    4108:	ff fe       	fmac	fr0,fr15,fr15
    410a:	ff fe       	fmac	fr0,fr15,fr15
    410c:	ff fe       	fmac	fr0,fr15,fr15
    410e:	ff fe       	fmac	fr0,fr15,fr15
    4110:	ff fe       	fmac	fr0,fr15,fr15
    4112:	ff fe       	fmac	fr0,fr15,fr15
    4114:	ff fe       	fmac	fr0,fr15,fr15
    4116:	ff fe       	fmac	fr0,fr15,fr15
    4118:	ff fe       	fmac	fr0,fr15,fr15
    411a:	ff fe       	fmac	fr0,fr15,fr15
    411c:	ff ff       	.word 0xffff
