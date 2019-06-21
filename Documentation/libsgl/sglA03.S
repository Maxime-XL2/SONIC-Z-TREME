
sglA03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slTan>:
       0:	74 02       	add	#2,r4
       2:	60 48       	swap.b	r4,r0
       4:	c9 7c       	and	#124,r0
       6:	61 03       	mov	r0,r1
       8:	41 00       	shll	r1
       a:	c7 07       	mova	28 <tan_jmp_tbl>,r0
       c:	30 1c       	add	r1,r0
       e:	61 06       	mov.l	@r0+,r1
      10:	63 05       	mov.w	@r0+,r3
      12:	24 3a       	xor	r3,r4
      14:	63 04       	mov.b	@r0+,r3
      16:	62 04       	mov.b	@r0+,r2
      18:	95 04       	mov.w	24 <IMM_3ffc>,r5	! 3ffc
      1a:	c7 50       	mova	15c <tan_dat_tbl>,r0
      1c:	24 59       	and	r5,r4
      1e:	44 01       	shlr	r4
      20:	41 2b       	jmp	@r1
      22:	00 4d       	mov.w	@(r0,r4),r0

00000024 <IMM_3ffc>:
      24:	3f fc       	add	r15,r15
	...

00000028 <tan_jmp_tbl>:
      28:	00 00       	.word 0x0000
      2a:	01 28       	.word 0x0128
      2c:	00 00       	.word 0x0000
      2e:	00 00       	.word 0x0000
      30:	00 00       	.word 0x0000
      32:	01 28       	.word 0x0128
      34:	00 00       	.word 0x0000
      36:	00 00       	.word 0x0000
      38:	00 00       	.word 0x0000
      3a:	01 28       	.word 0x0128
      3c:	00 00       	.word 0x0000
      3e:	00 00       	.word 0x0000
      40:	00 00       	.word 0x0000
      42:	01 28       	.word 0x0128
      44:	00 00       	.word 0x0000
      46:	00 00       	.word 0x0000
      48:	00 00       	.word 0x0000
      4a:	01 28       	.word 0x0128
      4c:	00 00       	.word 0x0000
      4e:	00 00       	.word 0x0000
      50:	00 00       	.word 0x0000
      52:	01 28       	.word 0x0128
      54:	00 00       	.word 0x0000
      56:	00 00       	.word 0x0000
      58:	00 00       	.word 0x0000
      5a:	01 28       	.word 0x0128
      5c:	00 00       	.word 0x0000
      5e:	00 00       	.word 0x0000
      60:	00 00       	.word 0x0000
      62:	01 28       	.word 0x0128
      64:	00 00       	.word 0x0000
      66:	00 00       	.word 0x0000
      68:	00 00       	.word 0x0000
      6a:	01 30       	.word 0x0130
      6c:	00 00       	.word 0x0000
      6e:	00 00       	.word 0x0000
      70:	00 00       	.word 0x0000
      72:	01 30       	.word 0x0130
      74:	00 00       	.word 0x0000
      76:	00 00       	.word 0x0000
      78:	00 00       	.word 0x0000
      7a:	01 30       	.word 0x0130
      7c:	00 00       	.word 0x0000
      7e:	00 00       	.word 0x0000
      80:	00 00       	.word 0x0000
      82:	01 3a       	stc	sgr,r1
      84:	00 00       	.word 0x0000
      86:	00 00       	.word 0x0000
      88:	00 00       	.word 0x0000
      8a:	01 3a       	stc	sgr,r1
      8c:	00 00       	.word 0x0000
      8e:	00 00       	.word 0x0000
      90:	00 00       	.word 0x0000
      92:	01 44       	mov.b	r4,@(r0,r1)
      94:	00 00       	.word 0x0000
      96:	00 00       	.word 0x0000
      98:	00 00       	.word 0x0000
      9a:	01 44       	mov.b	r4,@(r0,r1)
      9c:	00 00       	.word 0x0000
      9e:	00 00       	.word 0x0000
      a0:	00 00       	.word 0x0000
      a2:	01 50       	.word 0x0150
      a4:	00 00       	.word 0x0000
      a6:	00 00       	.word 0x0000
      a8:	00 00       	.word 0x0000
      aa:	01 50       	.word 0x0150
      ac:	3f fe       	addc	r15,r15
      ae:	ff 01       	fsub	fr0,fr15
      b0:	00 00       	.word 0x0000
      b2:	01 44       	mov.b	r4,@(r0,r1)
      b4:	3f fe       	addc	r15,r15
      b6:	ff 01       	fsub	fr0,fr15
      b8:	00 00       	.word 0x0000
      ba:	01 44       	mov.b	r4,@(r0,r1)
      bc:	3f fe       	addc	r15,r15
      be:	ff 01       	fsub	fr0,fr15
      c0:	00 00       	.word 0x0000
      c2:	01 3a       	stc	sgr,r1
      c4:	3f fe       	addc	r15,r15
      c6:	ff 01       	fsub	fr0,fr15
      c8:	00 00       	.word 0x0000
      ca:	01 3a       	stc	sgr,r1
      cc:	3f fe       	addc	r15,r15
      ce:	ff 01       	fsub	fr0,fr15
      d0:	00 00       	.word 0x0000
      d2:	01 30       	.word 0x0130
      d4:	3f fe       	addc	r15,r15
      d6:	ff 01       	fsub	fr0,fr15
      d8:	00 00       	.word 0x0000
      da:	01 30       	.word 0x0130
      dc:	3f fe       	addc	r15,r15
      de:	ff 01       	fsub	fr0,fr15
      e0:	00 00       	.word 0x0000
      e2:	01 30       	.word 0x0130
      e4:	3f fe       	addc	r15,r15
      e6:	ff 01       	fsub	fr0,fr15
      e8:	00 00       	.word 0x0000
      ea:	01 28       	.word 0x0128
      ec:	3f fe       	addc	r15,r15
      ee:	ff 01       	fsub	fr0,fr15
      f0:	00 00       	.word 0x0000
      f2:	01 28       	.word 0x0128
      f4:	3f fe       	addc	r15,r15
      f6:	ff 01       	fsub	fr0,fr15
      f8:	00 00       	.word 0x0000
      fa:	01 28       	.word 0x0128
      fc:	3f fe       	addc	r15,r15
      fe:	ff 01       	fsub	fr0,fr15
     100:	00 00       	.word 0x0000
     102:	01 28       	.word 0x0128
     104:	3f fe       	addc	r15,r15
     106:	ff 01       	fsub	fr0,fr15
     108:	00 00       	.word 0x0000
     10a:	01 28       	.word 0x0128
     10c:	3f fe       	addc	r15,r15
     10e:	ff 01       	fsub	fr0,fr15
     110:	00 00       	.word 0x0000
     112:	01 28       	.word 0x0128
     114:	3f fe       	addc	r15,r15
     116:	ff 01       	fsub	fr0,fr15
     118:	00 00       	.word 0x0000
     11a:	01 28       	.word 0x0128
     11c:	3f fe       	addc	r15,r15
     11e:	ff 01       	fsub	fr0,fr15
     120:	00 00       	.word 0x0000
     122:	01 28       	.word 0x0128
     124:	3f fe       	addc	r15,r15
     126:	ff 01       	fsub	fr0,fr15

00000128 <tan_0000_1fff>:
     128:	60 0d       	extu.w	r0,r0
     12a:	30 2c       	add	r2,r0
     12c:	00 0b       	rts	
     12e:	20 3a       	xor	r3,r0

00000130 <tan_2000_2bff>:
     130:	60 0d       	extu.w	r0,r0
     132:	30 2c       	add	r2,r0
     134:	40 00       	shll	r0
     136:	00 0b       	rts	
     138:	20 3a       	xor	r3,r0

0000013a <tan_2c00_33ff>:
     13a:	60 0d       	extu.w	r0,r0
     13c:	30 2c       	add	r2,r0
     13e:	40 08       	shll2	r0
     140:	00 0b       	rts	
     142:	20 3a       	xor	r3,r0

00000144 <tan_3400_3bff>:
     144:	60 0d       	extu.w	r0,r0
     146:	30 2c       	add	r2,r0
     148:	40 08       	shll2	r0
     14a:	40 08       	shll2	r0
     14c:	00 0b       	rts	
     14e:	20 3a       	xor	r3,r0

00000150 <tan_3c00_3fff>:
     150:	60 0d       	extu.w	r0,r0
     152:	30 2c       	add	r2,r0
     154:	40 18       	shll8	r0
     156:	00 0b       	rts	
     158:	20 3a       	xor	r3,r0
	...

0000015c <tan_dat_tbl>:
     15c:	00 00       	.word 0x0000
     15e:	00 19       	div0u	
     160:	00 32       	stc	ssr,r0
     162:	00 4b       	.word 0x004b
     164:	00 64       	mov.b	r6,@(r0,r0)
     166:	00 7d       	mov.w	@(r0,r7),r0
     168:	00 96       	mov.l	r9,@(r0,r0)
     16a:	00 af       	mac.l	@r10+,@r0+
     16c:	00 c9       	.word 0x00c9
     16e:	00 e2       	stc	r6_bank,r0
     170:	00 fb       	.word 0x00fb
     172:	01 14       	mov.b	r1,@(r0,r1)
     174:	01 2d       	mov.w	@(r0,r2),r1
     176:	01 46       	mov.l	r4,@(r0,r1)
     178:	01 5f       	mac.l	@r5+,@r1+
     17a:	01 78       	.word 0x0178
     17c:	01 92       	stc	r1_bank,r1
     17e:	01 ab       	.word 0x01ab
     180:	01 c4       	mov.b	r12,@(r0,r1)
     182:	01 dd       	mov.w	@(r0,r13),r1
     184:	01 f6       	mov.l	r15,@(r0,r1)
     186:	02 0f       	mac.l	@r0+,@r2+
     188:	02 28       	.word 0x0228
     18a:	02 42       	stc	spc,r2
     18c:	02 5b       	.word 0x025b
     18e:	02 74       	mov.b	r7,@(r0,r2)
     190:	02 8d       	mov.w	@(r0,r8),r2
     192:	02 a6       	mov.l	r10,@(r0,r2)
     194:	02 bf       	mac.l	@r11+,@r2+
     196:	02 d8       	.word 0x02d8
     198:	02 f2       	stc	r7_bank,r2
     19a:	03 0b       	.word 0x030b
     19c:	03 24       	mov.b	r2,@(r0,r3)
     19e:	03 3d       	mov.w	@(r0,r3),r3
     1a0:	03 56       	mov.l	r5,@(r0,r3)
     1a2:	03 6f       	mac.l	@r6+,@r3+
     1a4:	03 88       	.word 0x0388
     1a6:	03 a1       	.word 0x03a1
     1a8:	03 bb       	.word 0x03bb
     1aa:	03 d4       	mov.b	r13,@(r0,r3)
     1ac:	03 ed       	mov.w	@(r0,r14),r3
     1ae:	04 06       	mov.l	r0,@(r0,r4)
     1b0:	04 1f       	mac.l	@r1+,@r4+
     1b2:	04 38       	.word 0x0438
     1b4:	04 51       	.word 0x0451
     1b6:	04 6b       	.word 0x046b
     1b8:	04 84       	mov.b	r8,@(r0,r4)
     1ba:	04 9d       	mov.w	@(r0,r9),r4
     1bc:	04 b6       	mov.l	r11,@(r0,r4)
     1be:	04 cf       	mac.l	@r12+,@r4+
     1c0:	04 e8       	.word 0x04e8
     1c2:	05 01       	.word 0x0501
     1c4:	05 1b       	.word 0x051b
     1c6:	05 34       	mov.b	r3,@(r0,r5)
     1c8:	05 4d       	mov.w	@(r0,r4),r5
     1ca:	05 66       	mov.l	r6,@(r0,r5)
     1cc:	05 7f       	mac.l	@r7+,@r5+
     1ce:	05 98       	.word 0x0598
     1d0:	05 b1       	.word 0x05b1
     1d2:	05 cb       	.word 0x05cb
     1d4:	05 e4       	mov.b	r14,@(r0,r5)
     1d6:	05 fd       	mov.w	@(r0,r15),r5
     1d8:	06 16       	mov.l	r1,@(r0,r6)
     1da:	06 2f       	mac.l	@r2+,@r6+
     1dc:	06 48       	.word 0x0648
     1de:	06 61       	.word 0x0661
     1e0:	06 7b       	.word 0x067b
     1e2:	06 94       	mov.b	r9,@(r0,r6)
     1e4:	06 ad       	mov.w	@(r0,r10),r6
     1e6:	06 c6       	mov.l	r12,@(r0,r6)
     1e8:	06 df       	mac.l	@r13+,@r6+
     1ea:	06 f8       	.word 0x06f8
     1ec:	07 12       	stc	gbr,r7
     1ee:	07 2b       	.word 0x072b
     1f0:	07 44       	mov.b	r4,@(r0,r7)
     1f2:	07 5d       	mov.w	@(r0,r5),r7
     1f4:	07 76       	mov.l	r7,@(r0,r7)
     1f6:	07 8f       	mac.l	@r8+,@r7+
     1f8:	07 a8       	.word 0x07a8
     1fa:	07 c2       	stc	r4_bank,r7
     1fc:	07 db       	.word 0x07db
     1fe:	07 f4       	mov.b	r15,@(r0,r7)
     200:	08 0d       	mov.w	@(r0,r0),r8
     202:	08 26       	mov.l	r2,@(r0,r8)
     204:	08 3f       	mac.l	@r3+,@r8+
     206:	08 59       	.word 0x0859
     208:	08 72       	stc	r7_bank,r8
     20a:	08 8b       	.word 0x088b
     20c:	08 a4       	mov.b	r10,@(r0,r8)
     20e:	08 bd       	mov.w	@(r0,r11),r8
     210:	08 d6       	mov.l	r13,@(r0,r8)
     212:	08 f0       	.word 0x08f0
     214:	09 09       	.word 0x0909
     216:	09 22       	stc	vbr,r9
     218:	09 3b       	.word 0x093b
     21a:	09 54       	mov.b	r5,@(r0,r9)
     21c:	09 6d       	mov.w	@(r0,r6),r9
     21e:	09 87       	mul.l	r8,r9
     220:	09 a0       	.word 0x09a0
     222:	09 b9       	.word 0x09b9
     224:	09 d2       	stc	r5_bank,r9
     226:	09 eb       	.word 0x09eb
     228:	0a 04       	mov.b	r0,@(r0,r10)
     22a:	0a 1e       	mov.l	@(r0,r1),r10
     22c:	0a 37       	mul.l	r3,r10
     22e:	0a 50       	.word 0x0a50
     230:	0a 69       	.word 0x0a69
     232:	0a 82       	stc	r0_bank,r10
     234:	0a 9b       	.word 0x0a9b
     236:	0a b5       	mov.w	r11,@(r0,r10)
     238:	0a ce       	mov.l	@(r0,r12),r10
     23a:	0a e7       	mul.l	r14,r10
     23c:	0b 00       	.word 0x0b00
     23e:	0b 19       	.word 0x0b19
     240:	0b 32       	stc	ssr,r11
     242:	0b 4c       	mov.b	@(r0,r4),r11
     244:	0b 65       	mov.w	r6,@(r0,r11)
     246:	0b 7e       	mov.l	@(r0,r7),r11
     248:	0b 97       	mul.l	r9,r11
     24a:	0b b0       	.word 0x0bb0
     24c:	0b ca       	.word 0x0bca
     24e:	0b e3       	.word 0x0be3
     250:	0b fc       	mov.b	@(r0,r15),r11
     252:	0c 15       	mov.w	r1,@(r0,r12)
     254:	0c 2e       	mov.l	@(r0,r2),r12
     256:	0c 48       	.word 0x0c48
     258:	0c 61       	.word 0x0c61
     25a:	0c 7a       	.word 0x0c7a
     25c:	0c 93       	ocbi	@r12
     25e:	0c ac       	mov.b	@(r0,r10),r12
     260:	0c c5       	mov.w	r12,@(r0,r12)
     262:	0c df       	mac.l	@r13+,@r12+
     264:	0c f8       	.word 0x0cf8
     266:	0d 11       	.word 0x0d11
     268:	0d 2a       	sts	pr,r13
     26a:	0d 43       	.word 0x0d43
     26c:	0d 5d       	mov.w	@(r0,r5),r13
     26e:	0d 76       	mov.l	r7,@(r0,r13)
     270:	0d 8f       	mac.l	@r8+,@r13+
     272:	0d a8       	.word 0x0da8
     274:	0d c1       	.word 0x0dc1
     276:	0d db       	.word 0x0ddb
     278:	0d f4       	mov.b	r15,@(r0,r13)
     27a:	0e 0d       	mov.w	@(r0,r0),r14
     27c:	0e 26       	mov.l	r2,@(r0,r14)
     27e:	0e 40       	.word 0x0e40
     280:	0e 59       	.word 0x0e59
     282:	0e 72       	stc	r7_bank,r14
     284:	0e 8b       	.word 0x0e8b
     286:	0e a4       	mov.b	r10,@(r0,r14)
     288:	0e be       	mov.l	@(r0,r11),r14
     28a:	0e d7       	mul.l	r13,r14
     28c:	0e f0       	.word 0x0ef0
     28e:	0f 09       	.word 0x0f09
     290:	0f 22       	stc	vbr,r15
     292:	0f 3c       	mov.b	@(r0,r3),r15
     294:	0f 55       	mov.w	r5,@(r0,r15)
     296:	0f 6e       	mov.l	@(r0,r6),r15
     298:	0f 87       	mul.l	r8,r15
     29a:	0f a1       	.word 0x0fa1
     29c:	0f ba       	.word 0x0fba
     29e:	0f d3       	.word 0x0fd3
     2a0:	0f ec       	mov.b	@(r0,r14),r15
     2a2:	10 05       	mov.l	r0,@(20,r0)
     2a4:	10 1f       	mov.l	r1,@(60,r0)
     2a6:	10 38       	mov.l	r3,@(32,r0)
     2a8:	10 51       	mov.l	r5,@(4,r0)
     2aa:	10 6a       	mov.l	r6,@(40,r0)
     2ac:	10 84       	mov.l	r8,@(16,r0)
     2ae:	10 9d       	mov.l	r9,@(52,r0)
     2b0:	10 b6       	mov.l	r11,@(24,r0)
     2b2:	10 cf       	mov.l	r12,@(60,r0)
     2b4:	10 e9       	mov.l	r14,@(36,r0)
     2b6:	11 02       	mov.l	r0,@(8,r1)
     2b8:	11 1b       	mov.l	r1,@(44,r1)
     2ba:	11 34       	mov.l	r3,@(16,r1)
     2bc:	11 4e       	mov.l	r4,@(56,r1)
     2be:	11 67       	mov.l	r6,@(28,r1)
     2c0:	11 80       	mov.l	r8,@(0,r1)
     2c2:	11 99       	mov.l	r9,@(36,r1)
     2c4:	11 b3       	mov.l	r11,@(12,r1)
     2c6:	11 cc       	mov.l	r12,@(48,r1)
     2c8:	11 e5       	mov.l	r14,@(20,r1)
     2ca:	11 fe       	mov.l	r15,@(56,r1)
     2cc:	12 18       	mov.l	r1,@(32,r2)
     2ce:	12 31       	mov.l	r3,@(4,r2)
     2d0:	12 4a       	mov.l	r4,@(40,r2)
     2d2:	12 63       	mov.l	r6,@(12,r2)
     2d4:	12 7d       	mov.l	r7,@(52,r2)
     2d6:	12 96       	mov.l	r9,@(24,r2)
     2d8:	12 af       	mov.l	r10,@(60,r2)
     2da:	12 c8       	mov.l	r12,@(32,r2)
     2dc:	12 e2       	mov.l	r14,@(8,r2)
     2de:	12 fb       	mov.l	r15,@(44,r2)
     2e0:	13 14       	mov.l	r1,@(16,r3)
     2e2:	13 2e       	mov.l	r2,@(56,r3)
     2e4:	13 47       	mov.l	r4,@(28,r3)
     2e6:	13 60       	mov.l	r6,@(0,r3)
     2e8:	13 79       	mov.l	r7,@(36,r3)
     2ea:	13 93       	mov.l	r9,@(12,r3)
     2ec:	13 ac       	mov.l	r10,@(48,r3)
     2ee:	13 c5       	mov.l	r12,@(20,r3)
     2f0:	13 de       	mov.l	r13,@(56,r3)
     2f2:	13 f8       	mov.l	r15,@(32,r3)
     2f4:	14 11       	mov.l	r1,@(4,r4)
     2f6:	14 2a       	mov.l	r2,@(40,r4)
     2f8:	14 44       	mov.l	r4,@(16,r4)
     2fa:	14 5d       	mov.l	r5,@(52,r4)
     2fc:	14 76       	mov.l	r7,@(24,r4)
     2fe:	14 90       	mov.l	r9,@(0,r4)
     300:	14 a9       	mov.l	r10,@(36,r4)
     302:	14 c2       	mov.l	r12,@(8,r4)
     304:	14 db       	mov.l	r13,@(44,r4)
     306:	14 f5       	mov.l	r15,@(20,r4)
     308:	15 0e       	mov.l	r0,@(56,r5)
     30a:	15 27       	mov.l	r2,@(28,r5)
     30c:	15 41       	mov.l	r4,@(4,r5)
     30e:	15 5a       	mov.l	r5,@(40,r5)
     310:	15 73       	mov.l	r7,@(12,r5)
     312:	15 8d       	mov.l	r8,@(52,r5)
     314:	15 a6       	mov.l	r10,@(24,r5)
     316:	15 bf       	mov.l	r11,@(60,r5)
     318:	15 d8       	mov.l	r13,@(32,r5)
     31a:	15 f2       	mov.l	r15,@(8,r5)
     31c:	16 0b       	mov.l	r0,@(44,r6)
     31e:	16 24       	mov.l	r2,@(16,r6)
     320:	16 3e       	mov.l	r3,@(56,r6)
     322:	16 57       	mov.l	r5,@(28,r6)
     324:	16 70       	mov.l	r7,@(0,r6)
     326:	16 8a       	mov.l	r8,@(40,r6)
     328:	16 a3       	mov.l	r10,@(12,r6)
     32a:	16 bc       	mov.l	r11,@(48,r6)
     32c:	16 d6       	mov.l	r13,@(24,r6)
     32e:	16 ef       	mov.l	r14,@(60,r6)
     330:	17 08       	mov.l	r0,@(32,r7)
     332:	17 22       	mov.l	r2,@(8,r7)
     334:	17 3b       	mov.l	r3,@(44,r7)
     336:	17 54       	mov.l	r5,@(16,r7)
     338:	17 6e       	mov.l	r6,@(56,r7)
     33a:	17 87       	mov.l	r8,@(28,r7)
     33c:	17 a0       	mov.l	r10,@(0,r7)
     33e:	17 ba       	mov.l	r11,@(40,r7)
     340:	17 d3       	mov.l	r13,@(12,r7)
     342:	17 ec       	mov.l	r14,@(48,r7)
     344:	18 06       	mov.l	r0,@(24,r8)
     346:	18 1f       	mov.l	r1,@(60,r8)
     348:	18 39       	mov.l	r3,@(36,r8)
     34a:	18 52       	mov.l	r5,@(8,r8)
     34c:	18 6b       	mov.l	r6,@(44,r8)
     34e:	18 85       	mov.l	r8,@(20,r8)
     350:	18 9e       	mov.l	r9,@(56,r8)
     352:	18 b7       	mov.l	r11,@(28,r8)
     354:	18 d1       	mov.l	r13,@(4,r8)
     356:	18 ea       	mov.l	r14,@(40,r8)
     358:	19 03       	mov.l	r0,@(12,r9)
     35a:	19 1d       	mov.l	r1,@(52,r9)
     35c:	19 36       	mov.l	r3,@(24,r9)
     35e:	19 50       	mov.l	r5,@(0,r9)
     360:	19 69       	mov.l	r6,@(36,r9)
     362:	19 82       	mov.l	r8,@(8,r9)
     364:	19 9c       	mov.l	r9,@(48,r9)
     366:	19 b5       	mov.l	r11,@(20,r9)
     368:	19 cf       	mov.l	r12,@(60,r9)
     36a:	19 e8       	mov.l	r14,@(32,r9)
     36c:	1a 01       	mov.l	r0,@(4,r10)
     36e:	1a 1b       	mov.l	r1,@(44,r10)
     370:	1a 34       	mov.l	r3,@(16,r10)
     372:	1a 4d       	mov.l	r4,@(52,r10)
     374:	1a 67       	mov.l	r6,@(28,r10)
     376:	1a 80       	mov.l	r8,@(0,r10)
     378:	1a 9a       	mov.l	r9,@(40,r10)
     37a:	1a b3       	mov.l	r11,@(12,r10)
     37c:	1a cd       	mov.l	r12,@(52,r10)
     37e:	1a e6       	mov.l	r14,@(24,r10)
     380:	1a ff       	mov.l	r15,@(60,r10)
     382:	1b 19       	mov.l	r1,@(36,r11)
     384:	1b 32       	mov.l	r3,@(8,r11)
     386:	1b 4c       	mov.l	r4,@(48,r11)
     388:	1b 65       	mov.l	r6,@(20,r11)
     38a:	1b 7e       	mov.l	r7,@(56,r11)
     38c:	1b 98       	mov.l	r9,@(32,r11)
     38e:	1b b1       	mov.l	r11,@(4,r11)
     390:	1b cb       	mov.l	r12,@(44,r11)
     392:	1b e4       	mov.l	r14,@(16,r11)
     394:	1b fe       	mov.l	r15,@(56,r11)
     396:	1c 17       	mov.l	r1,@(28,r12)
     398:	1c 30       	mov.l	r3,@(0,r12)
     39a:	1c 4a       	mov.l	r4,@(40,r12)
     39c:	1c 63       	mov.l	r6,@(12,r12)
     39e:	1c 7d       	mov.l	r7,@(52,r12)
     3a0:	1c 96       	mov.l	r9,@(24,r12)
     3a2:	1c b0       	mov.l	r11,@(0,r12)
     3a4:	1c c9       	mov.l	r12,@(36,r12)
     3a6:	1c e3       	mov.l	r14,@(12,r12)
     3a8:	1c fc       	mov.l	r15,@(48,r12)
     3aa:	1d 15       	mov.l	r1,@(20,r13)
     3ac:	1d 2f       	mov.l	r2,@(60,r13)
     3ae:	1d 48       	mov.l	r4,@(32,r13)
     3b0:	1d 62       	mov.l	r6,@(8,r13)
     3b2:	1d 7b       	mov.l	r7,@(44,r13)
     3b4:	1d 95       	mov.l	r9,@(20,r13)
     3b6:	1d ae       	mov.l	r10,@(56,r13)
     3b8:	1d c8       	mov.l	r12,@(32,r13)
     3ba:	1d e1       	mov.l	r14,@(4,r13)
     3bc:	1d fb       	mov.l	r15,@(44,r13)
     3be:	1e 14       	mov.l	r1,@(16,r14)
     3c0:	1e 2e       	mov.l	r2,@(56,r14)
     3c2:	1e 47       	mov.l	r4,@(28,r14)
     3c4:	1e 61       	mov.l	r6,@(4,r14)
     3c6:	1e 7a       	mov.l	r7,@(40,r14)
     3c8:	1e 94       	mov.l	r9,@(16,r14)
     3ca:	1e ad       	mov.l	r10,@(52,r14)
     3cc:	1e c7       	mov.l	r12,@(28,r14)
     3ce:	1e e0       	mov.l	r14,@(0,r14)
     3d0:	1e fa       	mov.l	r15,@(40,r14)
     3d2:	1f 13       	mov.l	r1,@(12,r15)
     3d4:	1f 2d       	mov.l	r2,@(52,r15)
     3d6:	1f 46       	mov.l	r4,@(24,r15)
     3d8:	1f 60       	mov.l	r6,@(0,r15)
     3da:	1f 79       	mov.l	r7,@(36,r15)
     3dc:	1f 93       	mov.l	r9,@(12,r15)
     3de:	1f ac       	mov.l	r10,@(48,r15)
     3e0:	1f c6       	mov.l	r12,@(24,r15)
     3e2:	1f df       	mov.l	r13,@(60,r15)
     3e4:	1f f9       	mov.l	r15,@(36,r15)
     3e6:	20 12       	mov.l	r1,@r0
     3e8:	20 2c       	cmp/str	r2,r0
     3ea:	20 45       	mov.w	r4,@-r0
     3ec:	20 5f       	muls.w	r5,r0
     3ee:	20 78       	tst	r7,r0
     3f0:	20 92       	mov.l	r9,@r0
     3f2:	20 ab       	or	r10,r0
     3f4:	20 c5       	mov.w	r12,@-r0
     3f6:	20 de       	mulu.w	r13,r0
     3f8:	20 f8       	tst	r15,r0
     3fa:	21 12       	mov.l	r1,@r1
     3fc:	21 2b       	or	r2,r1
     3fe:	21 45       	mov.w	r4,@-r1
     400:	21 5e       	mulu.w	r5,r1
     402:	21 78       	tst	r7,r1
     404:	21 91       	mov.w	r9,@r1
     406:	21 ab       	or	r10,r1
     408:	21 c5       	mov.w	r12,@-r1
     40a:	21 de       	mulu.w	r13,r1
     40c:	21 f8       	tst	r15,r1
     40e:	22 11       	mov.w	r1,@r2
     410:	22 2b       	or	r2,r2
     412:	22 44       	mov.b	r4,@-r2
     414:	22 5e       	mulu.w	r5,r2
     416:	22 78       	tst	r7,r2
     418:	22 91       	mov.w	r9,@r2
     41a:	22 ab       	or	r10,r2
     41c:	22 c4       	mov.b	r12,@-r2
     41e:	22 de       	mulu.w	r13,r2
     420:	22 f8       	tst	r15,r2
     422:	23 11       	mov.w	r1,@r3
     424:	23 2b       	or	r2,r3
     426:	23 44       	mov.b	r4,@-r3
     428:	23 5e       	mulu.w	r5,r3
     42a:	23 78       	tst	r7,r3
     42c:	23 91       	mov.w	r9,@r3
     42e:	23 ab       	or	r10,r3
     430:	23 c4       	mov.b	r12,@-r3
     432:	23 de       	mulu.w	r13,r3
     434:	23 f8       	tst	r15,r3
     436:	24 11       	mov.w	r1,@r4
     438:	24 2b       	or	r2,r4
     43a:	24 45       	mov.w	r4,@-r4
     43c:	24 5e       	mulu.w	r5,r4
     43e:	24 78       	tst	r7,r4
     440:	24 92       	mov.l	r9,@r4
     442:	24 ab       	or	r10,r4
     444:	24 c5       	mov.w	r12,@-r4
     446:	24 de       	mulu.w	r13,r4
     448:	24 f8       	tst	r15,r4
     44a:	25 12       	mov.l	r1,@r5
     44c:	25 2b       	or	r2,r5
     44e:	25 45       	mov.w	r4,@-r5
     450:	25 5f       	muls.w	r5,r5
     452:	25 78       	tst	r7,r5
     454:	25 92       	mov.l	r9,@r5
     456:	25 ac       	cmp/str	r10,r5
     458:	25 c5       	mov.w	r12,@-r5
     45a:	25 df       	muls.w	r13,r5
     45c:	25 f9       	and	r15,r5
     45e:	26 13       	.word 0x2613
     460:	26 2c       	cmp/str	r2,r6
     462:	26 46       	mov.l	r4,@-r6
     464:	26 60       	mov.b	r6,@r6
     466:	26 79       	and	r7,r6
     468:	26 93       	.word 0x2693
     46a:	26 ad       	xtrct	r10,r6
     46c:	26 c6       	mov.l	r12,@-r6
     46e:	26 e0       	mov.b	r14,@r6
     470:	26 fa       	xor	r15,r6
     472:	27 14       	mov.b	r1,@-r7
     474:	27 2d       	xtrct	r2,r7
     476:	27 47       	div0s	r4,r7
     478:	27 61       	mov.w	r6,@r7
     47a:	27 7a       	xor	r7,r7
     47c:	27 94       	mov.b	r9,@-r7
     47e:	27 ae       	mulu.w	r10,r7
     480:	27 c8       	tst	r12,r7
     482:	27 e1       	mov.w	r14,@r7
     484:	27 fb       	or	r15,r7
     486:	28 15       	mov.w	r1,@-r8
     488:	28 2f       	muls.w	r2,r8
     48a:	28 48       	tst	r4,r8
     48c:	28 62       	mov.l	r6,@r8
     48e:	28 7c       	cmp/str	r7,r8
     490:	28 96       	mov.l	r9,@-r8
     492:	28 af       	muls.w	r10,r8
     494:	28 c9       	and	r12,r8
     496:	28 e3       	.word 0x28e3
     498:	28 fd       	xtrct	r15,r8
     49a:	29 17       	div0s	r1,r9
     49c:	29 30       	mov.b	r3,@r9
     49e:	29 4a       	xor	r4,r9
     4a0:	29 64       	mov.b	r6,@-r9
     4a2:	29 7e       	mulu.w	r7,r9
     4a4:	29 97       	div0s	r9,r9
     4a6:	29 b1       	mov.w	r11,@r9
     4a8:	29 cb       	or	r12,r9
     4aa:	29 e5       	mov.w	r14,@-r9
     4ac:	29 ff       	muls.w	r15,r9
     4ae:	2a 19       	and	r1,r10
     4b0:	2a 32       	mov.l	r3,@r10
     4b2:	2a 4c       	cmp/str	r4,r10
     4b4:	2a 66       	mov.l	r6,@-r10
     4b6:	2a 80       	mov.b	r8,@r10
     4b8:	2a 9a       	xor	r9,r10
     4ba:	2a b3       	.word 0x2ab3
     4bc:	2a cd       	xtrct	r12,r10
     4be:	2a e7       	div0s	r14,r10
     4c0:	2b 01       	mov.w	r0,@r11
     4c2:	2b 1b       	or	r1,r11
     4c4:	2b 35       	mov.w	r3,@-r11
     4c6:	2b 4e       	mulu.w	r4,r11
     4c8:	2b 68       	tst	r6,r11
     4ca:	2b 82       	mov.l	r8,@r11
     4cc:	2b 9c       	cmp/str	r9,r11
     4ce:	2b b6       	mov.l	r11,@-r11
     4d0:	2b d0       	mov.b	r13,@r11
     4d2:	2b ea       	xor	r14,r11
     4d4:	2c 04       	mov.b	r0,@-r12
     4d6:	2c 1d       	xtrct	r1,r12
     4d8:	2c 37       	div0s	r3,r12
     4da:	2c 51       	mov.w	r5,@r12
     4dc:	2c 6b       	or	r6,r12
     4de:	2c 85       	mov.w	r8,@-r12
     4e0:	2c 9f       	muls.w	r9,r12
     4e2:	2c b9       	and	r11,r12
     4e4:	2c d3       	.word 0x2cd3
     4e6:	2c ed       	xtrct	r14,r12
     4e8:	2d 06       	mov.l	r0,@-r13
     4ea:	2d 20       	mov.b	r2,@r13
     4ec:	2d 3a       	xor	r3,r13
     4ee:	2d 54       	mov.b	r5,@-r13
     4f0:	2d 6e       	mulu.w	r6,r13
     4f2:	2d 88       	tst	r8,r13
     4f4:	2d a2       	mov.l	r10,@r13
     4f6:	2d bc       	cmp/str	r11,r13
     4f8:	2d d6       	mov.l	r13,@-r13
     4fa:	2d f0       	mov.b	r15,@r13
     4fc:	2e 0a       	xor	r0,r14
     4fe:	2e 24       	mov.b	r2,@-r14
     500:	2e 3e       	mulu.w	r3,r14
     502:	2e 58       	tst	r5,r14
     504:	2e 72       	mov.l	r7,@r14
     506:	2e 8c       	cmp/str	r8,r14
     508:	2e a5       	mov.w	r10,@-r14
     50a:	2e bf       	muls.w	r11,r14
     50c:	2e d9       	and	r13,r14
     50e:	2e f3       	.word 0x2ef3
     510:	2f 0d       	xtrct	r0,r15
     512:	2f 27       	div0s	r2,r15
     514:	2f 41       	mov.w	r4,@r15
     516:	2f 5b       	or	r5,r15
     518:	2f 75       	mov.w	r7,@-r15
     51a:	2f 8f       	muls.w	r8,r15
     51c:	2f a9       	and	r10,r15
     51e:	2f c3       	.word 0x2fc3
     520:	2f dd       	xtrct	r13,r15
     522:	2f f7       	div0s	r15,r15
     524:	30 11       	.word 0x3011
     526:	30 2b       	subv	r2,r0
     528:	30 45       	dmulu.l	r4,r0
     52a:	30 5f       	addv	r5,r0
     52c:	30 79       	.word 0x3079
     52e:	30 94       	div1	r9,r0
     530:	30 ae       	addc	r10,r0
     532:	30 c8       	sub	r12,r0
     534:	30 e2       	cmp/hs	r14,r0
     536:	30 fc       	add	r15,r0
     538:	31 16       	cmp/hi	r1,r1
     53a:	31 30       	cmp/eq	r3,r1
     53c:	31 4a       	subc	r4,r1
     53e:	31 64       	div1	r6,r1
     540:	31 7e       	addc	r7,r1
     542:	31 98       	sub	r9,r1
     544:	31 b2       	cmp/hs	r11,r1
     546:	31 cc       	add	r12,r1
     548:	31 e6       	cmp/hi	r14,r1
     54a:	32 00       	cmp/eq	r0,r2
     54c:	32 1b       	subv	r1,r2
     54e:	32 35       	dmulu.l	r3,r2
     550:	32 4f       	addv	r4,r2
     552:	32 69       	.word 0x3269
     554:	32 83       	cmp/ge	r8,r2
     556:	32 9d       	dmuls.l	r9,r2
     558:	32 b7       	cmp/gt	r11,r2
     55a:	32 d1       	.word 0x32d1
     55c:	32 eb       	subv	r14,r2
     55e:	33 06       	cmp/hi	r0,r3
     560:	33 20       	cmp/eq	r2,r3
     562:	33 3a       	subc	r3,r3
     564:	33 54       	div1	r5,r3
     566:	33 6e       	addc	r6,r3
     568:	33 88       	sub	r8,r3
     56a:	33 a2       	cmp/hs	r10,r3
     56c:	33 bd       	dmuls.l	r11,r3
     56e:	33 d7       	cmp/gt	r13,r3
     570:	33 f1       	.word 0x33f1
     572:	34 0b       	subv	r0,r4
     574:	34 25       	dmulu.l	r2,r4
     576:	34 3f       	addv	r3,r4
     578:	34 5a       	subc	r5,r4
     57a:	34 74       	div1	r7,r4
     57c:	34 8e       	addc	r8,r4
     57e:	34 a8       	sub	r10,r4
     580:	34 c2       	cmp/hs	r12,r4
     582:	34 dd       	dmuls.l	r13,r4
     584:	34 f7       	cmp/gt	r15,r4
     586:	35 11       	.word 0x3511
     588:	35 2b       	subv	r2,r5
     58a:	35 45       	dmulu.l	r4,r5
     58c:	35 60       	cmp/eq	r6,r5
     58e:	35 7a       	subc	r7,r5
     590:	35 94       	div1	r9,r5
     592:	35 ae       	addc	r10,r5
     594:	35 c9       	.word 0x35c9
     596:	35 e3       	cmp/ge	r14,r5
     598:	35 fd       	dmuls.l	r15,r5
     59a:	36 17       	cmp/gt	r1,r6
     59c:	36 32       	cmp/hs	r3,r6
     59e:	36 4c       	add	r4,r6
     5a0:	36 66       	cmp/hi	r6,r6
     5a2:	36 80       	cmp/eq	r8,r6
     5a4:	36 9b       	subv	r9,r6
     5a6:	36 b5       	dmulu.l	r11,r6
     5a8:	36 cf       	addv	r12,r6
     5aa:	36 e9       	.word 0x36e9
     5ac:	37 04       	div1	r0,r7
     5ae:	37 1e       	addc	r1,r7
     5b0:	37 38       	sub	r3,r7
     5b2:	37 53       	cmp/ge	r5,r7
     5b4:	37 6d       	dmuls.l	r6,r7
     5b6:	37 87       	cmp/gt	r8,r7
     5b8:	37 a2       	cmp/hs	r10,r7
     5ba:	37 bc       	add	r11,r7
     5bc:	37 d6       	cmp/hi	r13,r7
     5be:	37 f1       	.word 0x37f1
     5c0:	38 0b       	subv	r0,r8
     5c2:	38 25       	dmulu.l	r2,r8
     5c4:	38 40       	cmp/eq	r4,r8
     5c6:	38 5a       	subc	r5,r8
     5c8:	38 74       	div1	r7,r8
     5ca:	38 8f       	addv	r8,r8
     5cc:	38 a9       	.word 0x38a9
     5ce:	38 c3       	cmp/ge	r12,r8
     5d0:	38 de       	addc	r13,r8
     5d2:	38 f8       	sub	r15,r8
     5d4:	39 13       	cmp/ge	r1,r9
     5d6:	39 2d       	dmuls.l	r2,r9
     5d8:	39 47       	cmp/gt	r4,r9
     5da:	39 62       	cmp/hs	r6,r9
     5dc:	39 7c       	add	r7,r9
     5de:	39 97       	cmp/gt	r9,r9
     5e0:	39 b1       	.word 0x39b1
     5e2:	39 cb       	subv	r12,r9
     5e4:	39 e6       	cmp/hi	r14,r9
     5e6:	3a 00       	cmp/eq	r0,r10
     5e8:	3a 1b       	subv	r1,r10
     5ea:	3a 35       	dmulu.l	r3,r10
     5ec:	3a 4f       	addv	r4,r10
     5ee:	3a 6a       	subc	r6,r10
     5f0:	3a 84       	div1	r8,r10
     5f2:	3a 9f       	addv	r9,r10
     5f4:	3a b9       	.word 0x3ab9
     5f6:	3a d4       	div1	r13,r10
     5f8:	3a ee       	addc	r14,r10
     5fa:	3b 09       	.word 0x3b09
     5fc:	3b 23       	cmp/ge	r2,r11
     5fe:	3b 3e       	addc	r3,r11
     600:	3b 58       	sub	r5,r11
     602:	3b 73       	cmp/ge	r7,r11
     604:	3b 8d       	dmuls.l	r8,r11
     606:	3b a8       	sub	r10,r11
     608:	3b c2       	cmp/hs	r12,r11
     60a:	3b dd       	dmuls.l	r13,r11
     60c:	3b f7       	cmp/gt	r15,r11
     60e:	3c 12       	cmp/hs	r1,r12
     610:	3c 2c       	add	r2,r12
     612:	3c 47       	cmp/gt	r4,r12
     614:	3c 61       	.word 0x3c61
     616:	3c 7c       	add	r7,r12
     618:	3c 96       	cmp/hi	r9,r12
     61a:	3c b1       	.word 0x3cb1
     61c:	3c cb       	subv	r12,r12
     61e:	3c e6       	cmp/hi	r14,r12
     620:	3d 00       	cmp/eq	r0,r13
     622:	3d 1b       	subv	r1,r13
     624:	3d 36       	cmp/hi	r3,r13
     626:	3d 50       	cmp/eq	r5,r13
     628:	3d 6b       	subv	r6,r13
     62a:	3d 85       	dmulu.l	r8,r13
     62c:	3d a0       	cmp/eq	r10,r13
     62e:	3d ba       	subc	r11,r13
     630:	3d d5       	dmulu.l	r13,r13
     632:	3d f0       	cmp/eq	r15,r13
     634:	3e 0a       	subc	r0,r14
     636:	3e 25       	dmulu.l	r2,r14
     638:	3e 3f       	addv	r3,r14
     63a:	3e 5a       	subc	r5,r14
     63c:	3e 75       	dmulu.l	r7,r14
     63e:	3e 8f       	addv	r8,r14
     640:	3e aa       	subc	r10,r14
     642:	3e c5       	dmulu.l	r12,r14
     644:	3e df       	addv	r13,r14
     646:	3e fa       	subc	r15,r14
     648:	3f 15       	dmulu.l	r1,r15
     64a:	3f 2f       	addv	r2,r15
     64c:	3f 4a       	subc	r4,r15
     64e:	3f 65       	dmulu.l	r6,r15
     650:	3f 7f       	addv	r7,r15
     652:	3f 9a       	subc	r9,r15
     654:	3f b5       	dmulu.l	r11,r15
     656:	3f cf       	addv	r12,r15
     658:	3f ea       	subc	r14,r15
     65a:	40 05       	rotr	r0
     65c:	40 1f       	mac.w	@r1+,@r0+
     65e:	40 3a       	ldc	r0,sgr
     660:	40 55       	.word 0x4055
     662:	40 70       	.word 0x4070
     664:	40 8a       	.word 0x408a
     666:	40 a5       	.word 0x40a5
     668:	40 c0       	.word 0x40c0
     66a:	40 db       	.word 0x40db
     66c:	40 f5       	.word 0x40f5
     66e:	41 10       	dt	r1
     670:	41 2b       	jmp	@r1
     672:	41 46       	.word 0x4146
     674:	41 60       	.word 0x4160
     676:	41 7b       	.word 0x417b
     678:	41 96       	.word 0x4196
     67a:	41 b1       	.word 0x41b1
     67c:	41 cb       	.word 0x41cb
     67e:	41 e6       	.word 0x41e6
     680:	42 01       	shlr	r2
     682:	42 1c       	shad	r1,r2
     684:	42 37       	ldc.l	@r2+,ssr
     686:	42 51       	.word 0x4251
     688:	42 6c       	shad	r6,r2
     68a:	42 87       	ldc.l	@r2+,r0_bank
     68c:	42 a2       	.word 0x42a2
     68e:	42 bd       	shld	r11,r2
     690:	42 d8       	.word 0x42d8
     692:	42 f2       	stc.l	dbr,@-r2
     694:	43 0d       	shld	r0,r3
     696:	43 28       	shll16	r3
     698:	43 43       	stc.l	spc,@-r3
     69a:	43 5e       	ldc	r3,r5_bank
     69c:	43 79       	.word 0x4379
     69e:	43 94       	.word 0x4394
     6a0:	43 af       	mac.w	@r10+,@r3+
     6a2:	43 c9       	.word 0x43c9
     6a4:	43 e4       	.word 0x43e4
     6a6:	43 ff       	mac.w	@r15+,@r3+
     6a8:	44 1a       	lds	r4,macl
     6aa:	44 35       	.word 0x4435
     6ac:	44 50       	.word 0x4450
     6ae:	44 6b       	.word 0x446b
     6b0:	44 86       	.word 0x4486
     6b2:	44 a1       	.word 0x44a1
     6b4:	44 bc       	shad	r11,r4
     6b6:	44 d7       	ldc.l	@r4+,r5_bank
     6b8:	44 f2       	stc.l	dbr,@-r4
     6ba:	45 0d       	shld	r0,r5
     6bc:	45 28       	shll16	r5
     6be:	45 43       	stc.l	spc,@-r5
     6c0:	45 5e       	ldc	r5,r5_bank
     6c2:	45 78       	.word 0x4578
     6c4:	45 93       	stc.l	r1_bank,@-r5
     6c6:	45 ae       	ldc	r5,r2_bank
     6c8:	45 c9       	.word 0x45c9
     6ca:	45 e4       	.word 0x45e4
     6cc:	45 ff       	mac.w	@r15+,@r5+
     6ce:	46 1a       	lds	r6,macl
     6d0:	46 36       	ldc.l	@r6+,sgr
     6d2:	46 51       	.word 0x4651
     6d4:	46 6c       	shad	r6,r6
     6d6:	46 87       	ldc.l	@r6+,r0_bank
     6d8:	46 a2       	.word 0x46a2
     6da:	46 bd       	shld	r11,r6
     6dc:	46 d8       	.word 0x46d8
     6de:	46 f3       	stc.l	r7_bank,@-r6
     6e0:	47 0e       	ldc	r7,sr
     6e2:	47 29       	shlr16	r7
     6e4:	47 44       	.word 0x4744
     6e6:	47 5f       	mac.w	@r5+,@r7+
     6e8:	47 7a       	.word 0x477a
     6ea:	47 95       	.word 0x4795
     6ec:	47 b0       	.word 0x47b0
     6ee:	47 cc       	shad	r12,r7
     6f0:	47 e7       	ldc.l	@r7+,r6_bank
     6f2:	48 02       	sts.l	mach,@-r8
     6f4:	48 1d       	shld	r1,r8
     6f6:	48 38       	.word 0x4838
     6f8:	48 53       	stc.l	r5_bank,@-r8
     6fa:	48 6e       	ldc	r8,r6_bank
     6fc:	48 89       	.word 0x4889
     6fe:	48 a5       	.word 0x48a5
     700:	48 c0       	.word 0x48c0
     702:	48 db       	.word 0x48db
     704:	48 f6       	ldc.l	@r8+,dbr
     706:	49 11       	cmp/pz	r9
     708:	49 2c       	shad	r2,r9
     70a:	49 48       	.word 0x4948
     70c:	49 63       	stc.l	r6_bank,@-r9
     70e:	49 7e       	ldc	r9,r7_bank
     710:	49 99       	.word 0x4999
     712:	49 b4       	.word 0x49b4
     714:	49 d0       	.word 0x49d0
     716:	49 eb       	.word 0x49eb
     718:	4a 06       	lds.l	@r10+,mach
     71a:	4a 21       	shar	r10
     71c:	4a 3d       	shld	r3,r10
     71e:	4a 58       	.word 0x4a58
     720:	4a 73       	stc.l	r7_bank,@-r10
     722:	4a 8e       	ldc	r10,r0_bank
     724:	4a aa       	.word 0x4aaa
     726:	4a c5       	.word 0x4ac5
     728:	4a e0       	.word 0x4ae0
     72a:	4a fb       	.word 0x4afb
     72c:	4b 17       	ldc.l	@r11+,gbr
     72e:	4b 32       	stc.l	sgr,@-r11
     730:	4b 4d       	shld	r4,r11
     732:	4b 69       	.word 0x4b69
     734:	4b 84       	.word 0x4b84
     736:	4b 9f       	mac.w	@r9+,@r11+
     738:	4b bb       	.word 0x4bbb
     73a:	4b d6       	.word 0x4bd6
     73c:	4b f1       	.word 0x4bf1
     73e:	4c 0d       	shld	r0,r12
     740:	4c 28       	shll16	r12
     742:	4c 43       	stc.l	spc,@-r12
     744:	4c 5f       	mac.w	@r5+,@r12+
     746:	4c 7a       	.word 0x4c7a
     748:	4c 95       	.word 0x4c95
     74a:	4c b1       	.word 0x4cb1
     74c:	4c cc       	shad	r12,r12
     74e:	4c e8       	.word 0x4ce8
     750:	4d 03       	stc.l	sr,@-r13
     752:	4d 1e       	ldc	r13,gbr
     754:	4d 3a       	ldc	r13,sgr
     756:	4d 55       	.word 0x4d55
     758:	4d 71       	.word 0x4d71
     75a:	4d 8c       	shad	r8,r13
     75c:	4d a8       	.word 0x4da8
     75e:	4d c3       	stc.l	r4_bank,@-r13
     760:	4d df       	mac.w	@r13+,@r13+
     762:	4d fa       	ldc	r13,dbr
     764:	4e 15       	cmp/pl	r14
     766:	4e 31       	.word 0x4e31
     768:	4e 4c       	shad	r4,r14
     76a:	4e 68       	.word 0x4e68
     76c:	4e 83       	stc.l	r0_bank,@-r14
     76e:	4e 9f       	mac.w	@r9+,@r14+
     770:	4e ba       	.word 0x4eba
     772:	4e d6       	.word 0x4ed6
     774:	4e f1       	.word 0x4ef1
     776:	4f 0d       	shld	r0,r15
     778:	4f 28       	shll16	r15
     77a:	4f 44       	.word 0x4f44
     77c:	4f 60       	.word 0x4f60
     77e:	4f 7b       	.word 0x4f7b
     780:	4f 97       	ldc.l	@r15+,r1_bank
     782:	4f b2       	.word 0x4fb2
     784:	4f ce       	ldc	r15,r4_bank
     786:	4f e9       	.word 0x4fe9
     788:	50 05       	mov.l	@(20,r0),r0
     78a:	50 21       	mov.l	@(4,r2),r0
     78c:	50 3c       	mov.l	@(48,r3),r0
     78e:	50 58       	mov.l	@(32,r5),r0
     790:	50 73       	mov.l	@(12,r7),r0
     792:	50 8f       	mov.l	@(60,r8),r0
     794:	50 ab       	mov.l	@(44,r10),r0
     796:	50 c6       	mov.l	@(24,r12),r0
     798:	50 e2       	mov.l	@(8,r14),r0
     79a:	50 fe       	mov.l	@(56,r15),r0
     79c:	51 19       	mov.l	@(36,r1),r1
     79e:	51 35       	mov.l	@(20,r3),r1
     7a0:	51 51       	mov.l	@(4,r5),r1
     7a2:	51 6c       	mov.l	@(48,r6),r1
     7a4:	51 88       	mov.l	@(32,r8),r1
     7a6:	51 a4       	mov.l	@(16,r10),r1
     7a8:	51 bf       	mov.l	@(60,r11),r1
     7aa:	51 db       	mov.l	@(44,r13),r1
     7ac:	51 f7       	mov.l	@(28,r15),r1
     7ae:	52 12       	mov.l	@(8,r1),r2
     7b0:	52 2e       	mov.l	@(56,r2),r2
     7b2:	52 4a       	mov.l	@(40,r4),r2
     7b4:	52 66       	mov.l	@(24,r6),r2
     7b6:	52 81       	mov.l	@(4,r8),r2
     7b8:	52 9d       	mov.l	@(52,r9),r2
     7ba:	52 b9       	mov.l	@(36,r11),r2
     7bc:	52 d5       	mov.l	@(20,r13),r2
     7be:	52 f0       	mov.l	@(0,r15),r2
     7c0:	53 0c       	mov.l	@(48,r0),r3
     7c2:	53 28       	mov.l	@(32,r2),r3
     7c4:	53 44       	mov.l	@(16,r4),r3
     7c6:	53 5f       	mov.l	@(60,r5),r3
     7c8:	53 7b       	mov.l	@(44,r7),r3
     7ca:	53 97       	mov.l	@(28,r9),r3
     7cc:	53 b3       	mov.l	@(12,r11),r3
     7ce:	53 cf       	mov.l	@(60,r12),r3
     7d0:	53 eb       	mov.l	@(44,r14),r3
     7d2:	54 06       	mov.l	@(24,r0),r4
     7d4:	54 22       	mov.l	@(8,r2),r4
     7d6:	54 3e       	mov.l	@(56,r3),r4
     7d8:	54 5a       	mov.l	@(40,r5),r4
     7da:	54 76       	mov.l	@(24,r7),r4
     7dc:	54 92       	mov.l	@(8,r9),r4
     7de:	54 ae       	mov.l	@(56,r10),r4
     7e0:	54 c9       	mov.l	@(36,r12),r4
     7e2:	54 e5       	mov.l	@(20,r14),r4
     7e4:	55 01       	mov.l	@(4,r0),r5
     7e6:	55 1d       	mov.l	@(52,r1),r5
     7e8:	55 39       	mov.l	@(36,r3),r5
     7ea:	55 55       	mov.l	@(20,r5),r5
     7ec:	55 71       	mov.l	@(4,r7),r5
     7ee:	55 8d       	mov.l	@(52,r8),r5
     7f0:	55 a9       	mov.l	@(36,r10),r5
     7f2:	55 c5       	mov.l	@(20,r12),r5
     7f4:	55 e1       	mov.l	@(4,r14),r5
     7f6:	55 fd       	mov.l	@(52,r15),r5
     7f8:	56 19       	mov.l	@(36,r1),r6
     7fa:	56 35       	mov.l	@(20,r3),r6
     7fc:	56 51       	mov.l	@(4,r5),r6
     7fe:	56 6d       	mov.l	@(52,r6),r6
     800:	56 89       	mov.l	@(36,r8),r6
     802:	56 a5       	mov.l	@(20,r10),r6
     804:	56 c1       	mov.l	@(4,r12),r6
     806:	56 dd       	mov.l	@(52,r13),r6
     808:	56 f9       	mov.l	@(36,r15),r6
     80a:	57 15       	mov.l	@(20,r1),r7
     80c:	57 31       	mov.l	@(4,r3),r7
     80e:	57 4d       	mov.l	@(52,r4),r7
     810:	57 69       	mov.l	@(36,r6),r7
     812:	57 85       	mov.l	@(20,r8),r7
     814:	57 a1       	mov.l	@(4,r10),r7
     816:	57 bd       	mov.l	@(52,r11),r7
     818:	57 d9       	mov.l	@(36,r13),r7
     81a:	57 f5       	mov.l	@(20,r15),r7
     81c:	58 11       	mov.l	@(4,r1),r8
     81e:	58 2d       	mov.l	@(52,r2),r8
     820:	58 4a       	mov.l	@(40,r4),r8
     822:	58 66       	mov.l	@(24,r6),r8
     824:	58 82       	mov.l	@(8,r8),r8
     826:	58 9e       	mov.l	@(56,r9),r8
     828:	58 ba       	mov.l	@(40,r11),r8
     82a:	58 d6       	mov.l	@(24,r13),r8
     82c:	58 f2       	mov.l	@(8,r15),r8
     82e:	59 0f       	mov.l	@(60,r0),r9
     830:	59 2b       	mov.l	@(44,r2),r9
     832:	59 47       	mov.l	@(28,r4),r9
     834:	59 63       	mov.l	@(12,r6),r9
     836:	59 7f       	mov.l	@(60,r7),r9
     838:	59 9c       	mov.l	@(48,r9),r9
     83a:	59 b8       	mov.l	@(32,r11),r9
     83c:	59 d4       	mov.l	@(16,r13),r9
     83e:	59 f0       	mov.l	@(0,r15),r9
     840:	5a 0d       	mov.l	@(52,r0),r10
     842:	5a 29       	mov.l	@(36,r2),r10
     844:	5a 45       	mov.l	@(20,r4),r10
     846:	5a 61       	mov.l	@(4,r6),r10
     848:	5a 7e       	mov.l	@(56,r7),r10
     84a:	5a 9a       	mov.l	@(40,r9),r10
     84c:	5a b6       	mov.l	@(24,r11),r10
     84e:	5a d2       	mov.l	@(8,r13),r10
     850:	5a ef       	mov.l	@(60,r14),r10
     852:	5b 0b       	mov.l	@(44,r0),r11
     854:	5b 27       	mov.l	@(28,r2),r11
     856:	5b 44       	mov.l	@(16,r4),r11
     858:	5b 60       	mov.l	@(0,r6),r11
     85a:	5b 7c       	mov.l	@(48,r7),r11
     85c:	5b 99       	mov.l	@(36,r9),r11
     85e:	5b b5       	mov.l	@(20,r11),r11
     860:	5b d1       	mov.l	@(4,r13),r11
     862:	5b ee       	mov.l	@(56,r14),r11
     864:	5c 0a       	mov.l	@(40,r0),r12
     866:	5c 27       	mov.l	@(28,r2),r12
     868:	5c 43       	mov.l	@(12,r4),r12
     86a:	5c 5f       	mov.l	@(60,r5),r12
     86c:	5c 7c       	mov.l	@(48,r7),r12
     86e:	5c 98       	mov.l	@(32,r9),r12
     870:	5c b5       	mov.l	@(20,r11),r12
     872:	5c d1       	mov.l	@(4,r13),r12
     874:	5c ed       	mov.l	@(52,r14),r12
     876:	5d 0a       	mov.l	@(40,r0),r13
     878:	5d 26       	mov.l	@(24,r2),r13
     87a:	5d 43       	mov.l	@(12,r4),r13
     87c:	5d 5f       	mov.l	@(60,r5),r13
     87e:	5d 7c       	mov.l	@(48,r7),r13
     880:	5d 98       	mov.l	@(32,r9),r13
     882:	5d b5       	mov.l	@(20,r11),r13
     884:	5d d1       	mov.l	@(4,r13),r13
     886:	5d ee       	mov.l	@(56,r14),r13
     888:	5e 0a       	mov.l	@(40,r0),r14
     88a:	5e 27       	mov.l	@(28,r2),r14
     88c:	5e 43       	mov.l	@(12,r4),r14
     88e:	5e 60       	mov.l	@(0,r6),r14
     890:	5e 7c       	mov.l	@(48,r7),r14
     892:	5e 99       	mov.l	@(36,r9),r14
     894:	5e b6       	mov.l	@(24,r11),r14
     896:	5e d2       	mov.l	@(8,r13),r14
     898:	5e ef       	mov.l	@(60,r14),r14
     89a:	5f 0b       	mov.l	@(44,r0),r15
     89c:	5f 28       	mov.l	@(32,r2),r15
     89e:	5f 45       	mov.l	@(20,r4),r15
     8a0:	5f 61       	mov.l	@(4,r6),r15
     8a2:	5f 7e       	mov.l	@(56,r7),r15
     8a4:	5f 9a       	mov.l	@(40,r9),r15
     8a6:	5f b7       	mov.l	@(28,r11),r15
     8a8:	5f d4       	mov.l	@(16,r13),r15
     8aa:	5f f0       	mov.l	@(0,r15),r15
     8ac:	60 0d       	extu.w	r0,r0
     8ae:	60 2a       	negc	r2,r0
     8b0:	60 46       	mov.l	@r4+,r0
     8b2:	60 63       	mov	r6,r0
     8b4:	60 80       	mov.b	@r8,r0
     8b6:	60 9c       	extu.b	r9,r0
     8b8:	60 b9       	swap.w	r11,r0
     8ba:	60 d6       	mov.l	@r13+,r0
     8bc:	60 f3       	mov	r15,r0
     8be:	61 0f       	exts.w	r0,r1
     8c0:	61 2c       	extu.b	r2,r1
     8c2:	61 49       	swap.w	r4,r1
     8c4:	61 66       	mov.l	@r6+,r1
     8c6:	61 82       	mov.l	@r8,r1
     8c8:	61 9f       	exts.w	r9,r1
     8ca:	61 bc       	extu.b	r11,r1
     8cc:	61 d9       	swap.w	r13,r1
     8ce:	61 f6       	mov.l	@r15+,r1
     8d0:	62 12       	mov.l	@r1,r2
     8d2:	62 2f       	exts.w	r2,r2
     8d4:	62 4c       	extu.b	r4,r2
     8d6:	62 69       	swap.w	r6,r2
     8d8:	62 86       	mov.l	@r8+,r2
     8da:	62 a3       	mov	r10,r2
     8dc:	62 c0       	mov.b	@r12,r2
     8de:	62 dc       	extu.b	r13,r2
     8e0:	62 f9       	swap.w	r15,r2
     8e2:	63 16       	mov.l	@r1+,r3
     8e4:	63 33       	mov	r3,r3
     8e6:	63 50       	mov.b	@r5,r3
     8e8:	63 6d       	extu.w	r6,r3
     8ea:	63 8a       	negc	r8,r3
     8ec:	63 a7       	not	r10,r3
     8ee:	63 c4       	mov.b	@r12+,r3
     8f0:	63 e1       	mov.w	@r14,r3
     8f2:	63 fe       	exts.b	r15,r3
     8f4:	64 1b       	neg	r1,r4
     8f6:	64 38       	swap.b	r3,r4
     8f8:	64 55       	mov.w	@r5+,r4
     8fa:	64 72       	mov.l	@r7,r4
     8fc:	64 8f       	exts.w	r8,r4
     8fe:	64 ac       	extu.b	r10,r4
     900:	64 c9       	swap.w	r12,r4
     902:	64 e6       	mov.l	@r14+,r4
     904:	65 03       	mov	r0,r5
     906:	65 20       	mov.b	@r2,r5
     908:	65 3d       	extu.w	r3,r5
     90a:	65 5a       	negc	r5,r5
     90c:	65 77       	not	r7,r5
     90e:	65 94       	mov.b	@r9+,r5
     910:	65 b1       	mov.w	@r11,r5
     912:	65 ce       	exts.b	r12,r5
     914:	65 eb       	neg	r14,r5
     916:	66 08       	swap.b	r0,r6
     918:	66 26       	mov.l	@r2+,r6
     91a:	66 43       	mov	r4,r6
     91c:	66 60       	mov.b	@r6,r6
     91e:	66 7d       	extu.w	r7,r6
     920:	66 9a       	negc	r9,r6
     922:	66 b7       	not	r11,r6
     924:	66 d5       	mov.w	@r13+,r6
     926:	66 f2       	mov.l	@r15,r6
     928:	67 0f       	exts.w	r0,r7
     92a:	67 2c       	extu.b	r2,r7
     92c:	67 49       	swap.w	r4,r7
     92e:	67 67       	not	r6,r7
     930:	67 84       	mov.b	@r8+,r7
     932:	67 a1       	mov.w	@r10,r7
     934:	67 be       	exts.b	r11,r7
     936:	67 dc       	extu.b	r13,r7
     938:	67 f9       	swap.w	r15,r7
     93a:	68 16       	mov.l	@r1+,r8
     93c:	68 33       	mov	r3,r8
     93e:	68 51       	mov.w	@r5,r8
     940:	68 6e       	exts.b	r6,r8
     942:	68 8b       	neg	r8,r8
     944:	68 a9       	swap.w	r10,r8
     946:	68 c6       	mov.l	@r12+,r8
     948:	68 e3       	mov	r14,r8
     94a:	69 01       	mov.w	@r0,r9
     94c:	69 1e       	exts.b	r1,r9
     94e:	69 3c       	extu.b	r3,r9
     950:	69 59       	swap.w	r5,r9
     952:	69 76       	mov.l	@r7+,r9
     954:	69 94       	mov.b	@r9+,r9
     956:	69 b1       	mov.w	@r11,r9
     958:	69 cf       	exts.w	r12,r9
     95a:	69 ec       	extu.b	r14,r9
     95c:	6a 09       	swap.w	r0,r10
     95e:	6a 27       	not	r2,r10
     960:	6a 44       	mov.b	@r4+,r10
     962:	6a 62       	mov.l	@r6,r10
     964:	6a 7f       	exts.w	r7,r10
     966:	6a 9d       	extu.w	r9,r10
     968:	6a ba       	negc	r11,r10
     96a:	6a d8       	swap.b	r13,r10
     96c:	6a f5       	mov.w	@r15+,r10
     96e:	6b 13       	mov	r1,r11
     970:	6b 30       	mov.b	@r3,r11
     972:	6b 4e       	exts.b	r4,r11
     974:	6b 6b       	neg	r6,r11
     976:	6b 89       	swap.w	r8,r11
     978:	6b a7       	not	r10,r11
     97a:	6b c4       	mov.b	@r12+,r11
     97c:	6b e2       	mov.l	@r14,r11
     97e:	6b ff       	exts.w	r15,r11
     980:	6c 1d       	extu.w	r1,r12
     982:	6c 3b       	neg	r3,r12
     984:	6c 58       	swap.b	r5,r12
     986:	6c 76       	mov.l	@r7+,r12
     988:	6c 93       	mov	r9,r12
     98a:	6c b1       	mov.w	@r11,r12
     98c:	6c cf       	exts.w	r12,r12
     98e:	6c ec       	extu.b	r14,r12
     990:	6d 0a       	negc	r0,r13
     992:	6d 28       	swap.b	r2,r13
     994:	6d 46       	mov.l	@r4+,r13
     996:	6d 63       	mov	r6,r13
     998:	6d 81       	mov.w	@r8,r13
     99a:	6d 9f       	exts.w	r9,r13
     99c:	6d bc       	extu.b	r11,r13
     99e:	6d da       	negc	r13,r13
     9a0:	6d f8       	swap.b	r15,r13
     9a2:	6e 16       	mov.l	@r1+,r14
     9a4:	6e 34       	mov.b	@r3+,r14
     9a6:	6e 51       	mov.w	@r5,r14
     9a8:	6e 6f       	exts.w	r6,r14
     9aa:	6e 8d       	extu.w	r8,r14
     9ac:	6e ab       	neg	r10,r14
     9ae:	6e c9       	swap.w	r12,r14
     9b0:	6e e6       	mov.l	@r14+,r14
     9b2:	6f 04       	mov.b	@r0+,r15
     9b4:	6f 22       	mov.l	@r2,r15
     9b6:	6f 40       	mov.b	@r4,r15
     9b8:	6f 5e       	exts.b	r5,r15
     9ba:	6f 7c       	extu.b	r7,r15
     9bc:	6f 9a       	negc	r9,r15
     9be:	6f b8       	swap.b	r11,r15
     9c0:	6f d6       	mov.l	@r13+,r15
     9c2:	6f f4       	mov.b	@r15+,r15
     9c4:	70 11       	add	#17,r0
     9c6:	70 2f       	add	#47,r0
     9c8:	70 4d       	add	#77,r0
     9ca:	70 6b       	add	#107,r0
     9cc:	70 89       	add	#-119,r0
     9ce:	70 a7       	add	#-89,r0
     9d0:	70 c5       	add	#-59,r0
     9d2:	70 e3       	add	#-29,r0
     9d4:	71 01       	add	#1,r1
     9d6:	71 1f       	add	#31,r1
     9d8:	71 3d       	add	#61,r1
     9da:	71 5c       	add	#92,r1
     9dc:	71 7a       	add	#122,r1
     9de:	71 98       	add	#-104,r1
     9e0:	71 b6       	add	#-74,r1
     9e2:	71 d4       	add	#-44,r1
     9e4:	71 f2       	add	#-14,r1
     9e6:	72 10       	add	#16,r2
     9e8:	72 2e       	add	#46,r2
     9ea:	72 4c       	add	#76,r2
     9ec:	72 6b       	add	#107,r2
     9ee:	72 89       	add	#-119,r2
     9f0:	72 a7       	add	#-89,r2
     9f2:	72 c5       	add	#-59,r2
     9f4:	72 e3       	add	#-29,r2
     9f6:	73 01       	add	#1,r3
     9f8:	73 20       	add	#32,r3
     9fa:	73 3e       	add	#62,r3
     9fc:	73 5c       	add	#92,r3
     9fe:	73 7a       	add	#122,r3
     a00:	73 99       	add	#-103,r3
     a02:	73 b7       	add	#-73,r3
     a04:	73 d5       	add	#-43,r3
     a06:	73 f3       	add	#-13,r3
     a08:	74 12       	add	#18,r4
     a0a:	74 30       	add	#48,r4
     a0c:	74 4e       	add	#78,r4
     a0e:	74 6d       	add	#109,r4
     a10:	74 8b       	add	#-117,r4
     a12:	74 a9       	add	#-87,r4
     a14:	74 c8       	add	#-56,r4
     a16:	74 e6       	add	#-26,r4
     a18:	75 04       	add	#4,r5
     a1a:	75 23       	add	#35,r5
     a1c:	75 41       	add	#65,r5
     a1e:	75 60       	add	#96,r5
     a20:	75 7e       	add	#126,r5
     a22:	75 9c       	add	#-100,r5
     a24:	75 bb       	add	#-69,r5
     a26:	75 d9       	add	#-39,r5
     a28:	75 f8       	add	#-8,r5
     a2a:	76 16       	add	#22,r6
     a2c:	76 35       	add	#53,r6
     a2e:	76 53       	add	#83,r6
     a30:	76 72       	add	#114,r6
     a32:	76 90       	add	#-112,r6
     a34:	76 af       	add	#-81,r6
     a36:	76 cd       	add	#-51,r6
     a38:	76 ec       	add	#-20,r6
     a3a:	77 0a       	add	#10,r7
     a3c:	77 29       	add	#41,r7
     a3e:	77 48       	add	#72,r7
     a40:	77 66       	add	#102,r7
     a42:	77 85       	add	#-123,r7
     a44:	77 a3       	add	#-93,r7
     a46:	77 c2       	add	#-62,r7
     a48:	77 e1       	add	#-31,r7
     a4a:	77 ff       	add	#-1,r7
     a4c:	78 1e       	add	#30,r8
     a4e:	78 3d       	add	#61,r8
     a50:	78 5b       	add	#91,r8
     a52:	78 7a       	add	#122,r8
     a54:	78 99       	add	#-103,r8
     a56:	78 b8       	add	#-72,r8
     a58:	78 d6       	add	#-42,r8
     a5a:	78 f5       	add	#-11,r8
     a5c:	79 14       	add	#20,r9
     a5e:	79 32       	add	#50,r9
     a60:	79 51       	add	#81,r9
     a62:	79 70       	add	#112,r9
     a64:	79 8f       	add	#-113,r9
     a66:	79 ae       	add	#-82,r9
     a68:	79 cc       	add	#-52,r9
     a6a:	79 eb       	add	#-21,r9
     a6c:	7a 0a       	add	#10,r10
     a6e:	7a 29       	add	#41,r10
     a70:	7a 48       	add	#72,r10
     a72:	7a 67       	add	#103,r10
     a74:	7a 86       	add	#-122,r10
     a76:	7a a4       	add	#-92,r10
     a78:	7a c3       	add	#-61,r10
     a7a:	7a e2       	add	#-30,r10
     a7c:	7b 01       	add	#1,r11
     a7e:	7b 20       	add	#32,r11
     a80:	7b 3f       	add	#63,r11
     a82:	7b 5e       	add	#94,r11
     a84:	7b 7d       	add	#125,r11
     a86:	7b 9c       	add	#-100,r11
     a88:	7b bb       	add	#-69,r11
     a8a:	7b da       	add	#-38,r11
     a8c:	7b f9       	add	#-7,r11
     a8e:	7c 18       	add	#24,r12
     a90:	7c 37       	add	#55,r12
     a92:	7c 56       	add	#86,r12
     a94:	7c 75       	add	#117,r12
     a96:	7c 94       	add	#-108,r12
     a98:	7c b3       	add	#-77,r12
     a9a:	7c d3       	add	#-45,r12
     a9c:	7c f2       	add	#-14,r12
     a9e:	7d 11       	add	#17,r13
     aa0:	7d 30       	add	#48,r13
     aa2:	7d 4f       	add	#79,r13
     aa4:	7d 6e       	add	#110,r13
     aa6:	7d 8d       	add	#-115,r13
     aa8:	7d ad       	add	#-83,r13
     aaa:	7d cc       	add	#-52,r13
     aac:	7d eb       	add	#-21,r13
     aae:	7e 0a       	add	#10,r14
     ab0:	7e 29       	add	#41,r14
     ab2:	7e 49       	add	#73,r14
     ab4:	7e 68       	add	#104,r14
     ab6:	7e 87       	add	#-121,r14
     ab8:	7e a6       	add	#-90,r14
     aba:	7e c6       	add	#-58,r14
     abc:	7e e5       	add	#-27,r14
     abe:	7f 04       	add	#4,r15
     ac0:	7f 24       	add	#36,r15
     ac2:	7f 43       	add	#67,r15
     ac4:	7f 62       	add	#98,r15
     ac6:	7f 82       	add	#-126,r15
     ac8:	7f a1       	add	#-95,r15
     aca:	7f c1       	add	#-63,r15
     acc:	7f e0       	add	#-32,r15
     ace:	7f ff       	add	#-1,r15
     ad0:	80 1f       	mov.b	r0,@(15,r1)
     ad2:	80 3e       	mov.b	r0,@(14,r3)
     ad4:	80 5e       	mov.b	r0,@(14,r5)
     ad6:	80 7d       	mov.b	r0,@(13,r7)
     ad8:	80 9d       	mov.b	r0,@(13,r9)
     ada:	80 bc       	mov.b	r0,@(12,r11)
     adc:	80 dc       	mov.b	r0,@(12,r13)
     ade:	80 fb       	mov.b	r0,@(11,r15)
     ae0:	81 1b       	mov.w	r0,@(22,r1)
     ae2:	81 3a       	mov.w	r0,@(20,r3)
     ae4:	81 5a       	mov.w	r0,@(20,r5)
     ae6:	81 79       	mov.w	r0,@(18,r7)
     ae8:	81 99       	mov.w	r0,@(18,r9)
     aea:	81 b8       	mov.w	r0,@(16,r11)
     aec:	81 d8       	mov.w	r0,@(16,r13)
     aee:	81 f8       	mov.w	r0,@(16,r15)
     af0:	82 17       	.word 0x8217
     af2:	82 37       	.word 0x8237
     af4:	82 56       	.word 0x8256
     af6:	82 76       	.word 0x8276
     af8:	82 96       	.word 0x8296
     afa:	82 b5       	.word 0x82b5
     afc:	82 d5       	.word 0x82d5
     afe:	82 f5       	.word 0x82f5
     b00:	83 15       	.word 0x8315
     b02:	83 34       	.word 0x8334
     b04:	83 54       	.word 0x8354
     b06:	83 74       	.word 0x8374
     b08:	83 94       	.word 0x8394
     b0a:	83 b3       	.word 0x83b3
     b0c:	83 d3       	.word 0x83d3
     b0e:	83 f3       	.word 0x83f3
     b10:	84 13       	mov.b	@(3,r1),r0
     b12:	84 33       	mov.b	@(3,r3),r0
     b14:	84 52       	mov.b	@(2,r5),r0
     b16:	84 72       	mov.b	@(2,r7),r0
     b18:	84 92       	mov.b	@(2,r9),r0
     b1a:	84 b2       	mov.b	@(2,r11),r0
     b1c:	84 d2       	mov.b	@(2,r13),r0
     b1e:	84 f2       	mov.b	@(2,r15),r0
     b20:	85 12       	mov.w	@(4,r1),r0
     b22:	85 32       	mov.w	@(4,r3),r0
     b24:	85 52       	mov.w	@(4,r5),r0
     b26:	85 72       	mov.w	@(4,r7),r0
     b28:	85 92       	mov.w	@(4,r9),r0
     b2a:	85 b1       	mov.w	@(2,r11),r0
     b2c:	85 d1       	mov.w	@(2,r13),r0
     b2e:	85 f1       	mov.w	@(2,r15),r0
     b30:	86 12       	.word 0x8612
     b32:	86 32       	.word 0x8632
     b34:	86 52       	.word 0x8652
     b36:	86 72       	.word 0x8672
     b38:	86 92       	.word 0x8692
     b3a:	86 b2       	.word 0x86b2
     b3c:	86 d2       	.word 0x86d2
     b3e:	86 f2       	.word 0x86f2
     b40:	87 12       	.word 0x8712
     b42:	87 32       	.word 0x8732
     b44:	87 52       	.word 0x8752
     b46:	87 73       	.word 0x8773
     b48:	87 93       	.word 0x8793
     b4a:	87 b3       	.word 0x87b3
     b4c:	87 d3       	.word 0x87d3
     b4e:	87 f3       	.word 0x87f3
     b50:	88 14       	cmp/eq	#20,r0
     b52:	88 34       	cmp/eq	#52,r0
     b54:	88 54       	cmp/eq	#84,r0
     b56:	88 74       	cmp/eq	#116,r0
     b58:	88 95       	cmp/eq	#-107,r0
     b5a:	88 b5       	cmp/eq	#-75,r0
     b5c:	88 d5       	cmp/eq	#-43,r0
     b5e:	88 f6       	cmp/eq	#-10,r0
     b60:	89 16       	bt	b90 <tan_dat_tbl+0xa34>
     b62:	89 36       	bt	bd2 <tan_dat_tbl+0xa76>
     b64:	89 57       	bt	c16 <tan_dat_tbl+0xaba>
     b66:	89 77       	bt	c58 <tan_dat_tbl+0xafc>
     b68:	89 97       	bt	a9a <tan_dat_tbl+0x93e>
     b6a:	89 b8       	bt	ade <tan_dat_tbl+0x982>
     b6c:	89 d8       	bt	b20 <tan_dat_tbl+0x9c4>
     b6e:	89 f9       	bt	b64 <tan_dat_tbl+0xa08>
     b70:	8a 19       	.word 0x8a19
     b72:	8a 39       	.word 0x8a39
     b74:	8a 5a       	.word 0x8a5a
     b76:	8a 7a       	.word 0x8a7a
     b78:	8a 9b       	.word 0x8a9b
     b7a:	8a bb       	.word 0x8abb
     b7c:	8a dc       	.word 0x8adc
     b7e:	8a fc       	.word 0x8afc
     b80:	8b 1d       	bf	bbe <tan_dat_tbl+0xa62>
     b82:	8b 3e       	bf	c02 <tan_dat_tbl+0xaa6>
     b84:	8b 5e       	bf	c44 <tan_dat_tbl+0xae8>
     b86:	8b 7f       	bf	c88 <tan_dat_tbl+0xb2c>
     b88:	8b 9f       	bf	aca <tan_dat_tbl+0x96e>
     b8a:	8b c0       	bf	b0e <tan_dat_tbl+0x9b2>
     b8c:	8b e1       	bf	b52 <tan_dat_tbl+0x9f6>
     b8e:	8c 01       	.word 0x8c01
     b90:	8c 22       	.word 0x8c22
     b92:	8c 43       	.word 0x8c43
     b94:	8c 63       	.word 0x8c63
     b96:	8c 84       	.word 0x8c84
     b98:	8c a5       	.word 0x8ca5
     b9a:	8c c5       	.word 0x8cc5
     b9c:	8c e6       	.word 0x8ce6
     b9e:	8d 07       	bt.s	bb0 <tan_dat_tbl+0xa54>
     ba0:	8d 28       	bt.s	bf4 <tan_dat_tbl+0xa98>
     ba2:	8d 48       	bt.s	c36 <tan_dat_tbl+0xada>
     ba4:	8d 69       	bt.s	c7a <tan_dat_tbl+0xb1e>
     ba6:	8d 8a       	bt.s	abe <tan_dat_tbl+0x962>
     ba8:	8d ab       	bt.s	b02 <tan_dat_tbl+0x9a6>
     baa:	8d cc       	bt.s	b46 <tan_dat_tbl+0x9ea>
     bac:	8d ed       	bt.s	b8a <tan_dat_tbl+0xa2e>
     bae:	8e 0d       	.word 0x8e0d
     bb0:	8e 2e       	.word 0x8e2e
     bb2:	8e 4f       	.word 0x8e4f
     bb4:	8e 70       	.word 0x8e70
     bb6:	8e 91       	.word 0x8e91
     bb8:	8e b2       	.word 0x8eb2
     bba:	8e d3       	.word 0x8ed3
     bbc:	8e f4       	.word 0x8ef4
     bbe:	8f 15       	bf.s	bec <tan_dat_tbl+0xa90>
     bc0:	8f 36       	bf.s	c30 <tan_dat_tbl+0xad4>
     bc2:	8f 57       	bf.s	c74 <tan_dat_tbl+0xb18>
     bc4:	8f 78       	bf.s	cb8 <tan_dat_tbl+0xb5c>
     bc6:	8f 99       	bf.s	afc <tan_dat_tbl+0x9a0>
     bc8:	8f ba       	bf.s	b40 <tan_dat_tbl+0x9e4>
     bca:	8f db       	bf.s	b84 <tan_dat_tbl+0xa28>
     bcc:	8f fc       	bf.s	bc8 <tan_dat_tbl+0xa6c>
     bce:	90 1d       	mov.w	c0c <tan_dat_tbl+0xab0>,r0	! 9426
     bd0:	90 3e       	mov.w	c50 <tan_dat_tbl+0xaf4>,r0	! 98a4
     bd2:	90 5f       	mov.w	c94 <tan_dat_tbl+0xb38>,r0	! 9d33
     bd4:	90 81       	mov.w	cda <tan_dat_tbl+0xb7e>,r0	! a1f9
     bd6:	90 a2       	mov.w	d1e <tan_dat_tbl+0xbc2>,r0	! a6af
     bd8:	90 c3       	mov.w	d62 <tan_dat_tbl+0xc06>,r0	! ab7a
     bda:	90 e4       	mov.w	da6 <tan_dat_tbl+0xc4a>,r0	! b05b
     bdc:	91 05       	mov.w	bea <tan_dat_tbl+0xa8e>,r1	! 91ee
     bde:	91 26       	mov.w	c2e <tan_dat_tbl+0xad2>,r1	! 9663
     be0:	91 48       	mov.w	c74 <tan_dat_tbl+0xb18>,r1	! 9b0b
     be2:	91 69       	mov.w	cb8 <tan_dat_tbl+0xb5c>,r1	! 9fa5
     be4:	91 8a       	mov.w	cfc <tan_dat_tbl+0xba0>,r1	! a451
     be6:	91 ab       	mov.w	d40 <tan_dat_tbl+0xbe4>,r1	! a912
     be8:	91 cd       	mov.w	d86 <tan_dat_tbl+0xc2a>,r1	! ae0d
     bea:	91 ee       	mov.w	dca <tan_dat_tbl+0xc6e>,r1	! b2fa
     bec:	92 0f       	mov.w	c0e <tan_dat_tbl+0xab2>,r2	! 9448
     bee:	92 31       	mov.w	c54 <tan_dat_tbl+0xaf8>,r2	! 98e8
     bf0:	92 52       	mov.w	c98 <tan_dat_tbl+0xb3c>,r2	! 9d78
     bf2:	92 73       	mov.w	cdc <tan_dat_tbl+0xb80>,r2	! a21c
     bf4:	92 95       	mov.w	d22 <tan_dat_tbl+0xbc6>,r2	! a6f7
     bf6:	92 b6       	mov.w	d66 <tan_dat_tbl+0xc0a>,r2	! abc3
     bf8:	92 d7       	mov.w	daa <tan_dat_tbl+0xc4e>,r2	! b0a5
     bfa:	92 f9       	mov.w	df0 <tan_dat_tbl+0xc94>,r2	! b5c4
     bfc:	93 1a       	mov.w	c34 <tan_dat_tbl+0xad8>,r3	! 96c8
     bfe:	93 3c       	mov.w	c7a <tan_dat_tbl+0xb1e>,r3	! 9b72
     c00:	93 5d       	mov.w	cbe <tan_dat_tbl+0xb62>,r3	! a00d
     c02:	93 7f       	mov.w	d04 <tan_dat_tbl+0xba8>,r3	! a4df
     c04:	93 a0       	mov.w	d48 <tan_dat_tbl+0xbec>,r3	! a9a3
     c06:	93 c2       	mov.w	d8e <tan_dat_tbl+0xc32>,r3	! aea0
     c08:	93 e3       	mov.w	dd2 <tan_dat_tbl+0xc76>,r3	! b38f
     c0a:	94 05       	mov.w	c18 <tan_dat_tbl+0xabc>,r4	! 94f0
     c0c:	94 26       	mov.w	c5c <tan_dat_tbl+0xb00>,r4	! 9970
     c0e:	94 48       	mov.w	ca2 <tan_dat_tbl+0xb46>,r4	! 9e26
     c10:	94 69       	mov.w	ce6 <tan_dat_tbl+0xb8a>,r4	! a2cc
     c12:	94 8b       	mov.w	d2c <tan_dat_tbl+0xbd0>,r4	! a7aa
     c14:	94 ac       	mov.w	d70 <tan_dat_tbl+0xc14>,r4	! ac7a
     c16:	94 ce       	mov.w	db6 <tan_dat_tbl+0xc5a>,r4	! b184
     c18:	94 f0       	mov.w	dfc <tan_dat_tbl+0xca0>,r4	! b6a7
     c1a:	95 11       	mov.w	c40 <tan_dat_tbl+0xae4>,r5	! 9794
     c1c:	95 33       	mov.w	c86 <tan_dat_tbl+0xb2a>,r5	! 9c41
     c1e:	95 55       	mov.w	ccc <tan_dat_tbl+0xb70>,r5	! a103
     c20:	95 76       	mov.w	d10 <tan_dat_tbl+0xbb4>,r5	! a5b5
     c22:	95 98       	mov.w	d56 <tan_dat_tbl+0xbfa>,r5	! aaa0
     c24:	95 ba       	mov.w	d9c <tan_dat_tbl+0xc40>,r5	! afa2
     c26:	95 dc       	mov.w	de2 <tan_dat_tbl+0xc86>,r5	! b4bc
     c28:	95 fd       	mov.w	e26 <tan_dat_tbl+0xcca>,r5	! b9c8
     c2a:	96 1f       	mov.w	c6c <tan_dat_tbl+0xb10>,r6	! 9a82
     c2c:	96 41       	mov.w	cb2 <tan_dat_tbl+0xb56>,r6	! 9f3c
     c2e:	96 63       	mov.w	cf8 <tan_dat_tbl+0xb9c>,r6	! a40a
     c30:	96 84       	mov.w	d3c <tan_dat_tbl+0xbe0>,r6	! a8ca
     c32:	96 a6       	mov.w	d82 <tan_dat_tbl+0xc26>,r6	! adc3
     c34:	96 c8       	mov.w	dc8 <tan_dat_tbl+0xc6c>,r6	! b2d4
     c36:	96 ea       	mov.w	e0e <tan_dat_tbl+0xcb2>,r6	! b7fe
     c38:	97 0c       	mov.w	c54 <tan_dat_tbl+0xaf8>,r7	! 98e8
     c3a:	97 2e       	mov.w	c9a <tan_dat_tbl+0xb3e>,r7	! 9d9b
     c3c:	97 50       	mov.w	ce0 <tan_dat_tbl+0xb84>,r7	! a262
     c3e:	97 72       	mov.w	d26 <tan_dat_tbl+0xbca>,r7	! a73e
     c40:	97 94       	mov.w	d6c <tan_dat_tbl+0xc10>,r7	! ac31
     c42:	97 b5       	mov.w	db0 <tan_dat_tbl+0xc54>,r7	! b115
     c44:	97 d7       	mov.w	df6 <tan_dat_tbl+0xc9a>,r7	! b636
     c46:	97 f9       	mov.w	e3c <tan_dat_tbl+0xce0>,r7	! bb70
     c48:	98 1b       	mov.w	c82 <tan_dat_tbl+0xb26>,r8	! 9bfc
     c4a:	98 3d       	mov.w	cc8 <tan_dat_tbl+0xb6c>,r8	! a0bc
     c4c:	98 5f       	mov.w	d0e <tan_dat_tbl+0xbb2>,r8	! a591
     c4e:	98 82       	mov.w	d56 <tan_dat_tbl+0xbfa>,r8	! aaa0
     c50:	98 a4       	mov.w	d9c <tan_dat_tbl+0xc40>,r8	! afa2
     c52:	98 c6       	mov.w	de2 <tan_dat_tbl+0xc86>,r8	! b4bc
     c54:	98 e8       	mov.w	e28 <tan_dat_tbl+0xccc>,r8	! b9ef
     c56:	99 0a       	mov.w	c6e <tan_dat_tbl+0xb12>,r9	! 9aa4
     c58:	99 2c       	mov.w	cb4 <tan_dat_tbl+0xb58>,r9	! 9f5f
     c5a:	99 4e       	mov.w	cfa <tan_dat_tbl+0xb9e>,r9	! a42e
     c5c:	99 70       	mov.w	d40 <tan_dat_tbl+0xbe4>,r9	! a912
     c5e:	99 92       	mov.w	d86 <tan_dat_tbl+0xc2a>,r9	! ae0d
     c60:	99 b5       	mov.w	dce <tan_dat_tbl+0xc72>,r9	! b344
     c62:	99 d7       	mov.w	e14 <tan_dat_tbl+0xcb8>,r9	! b870
     c64:	99 f9       	mov.w	e5a <tan_dat_tbl+0xcfe>,r9	! bdb5
     c66:	9a 1b       	mov.w	ca0 <tan_dat_tbl+0xb44>,r10	! 9e03
     c68:	9a 3e       	mov.w	ce8 <tan_dat_tbl+0xb8c>,r10	! a2ef
     c6a:	9a 60       	mov.w	d2e <tan_dat_tbl+0xbd2>,r10	! a7ce
     c6c:	9a 82       	mov.w	d74 <tan_dat_tbl+0xc18>,r10	! acc3
     c6e:	9a a4       	mov.w	dba <tan_dat_tbl+0xc5e>,r10	! b1cf
     c70:	9a c7       	mov.w	e02 <tan_dat_tbl+0xca6>,r10	! b719
     c72:	9a e9       	mov.w	e48 <tan_dat_tbl+0xcec>,r10	! bc58
     c74:	9b 0b       	mov.w	c8e <tan_dat_tbl+0xb32>,r11	! 9ccb
     c76:	9b 2e       	mov.w	cd6 <tan_dat_tbl+0xb7a>,r11	! a1b2
     c78:	9b 50       	mov.w	d1c <tan_dat_tbl+0xbc0>,r11	! a68b
     c7a:	9b 72       	mov.w	d62 <tan_dat_tbl+0xc06>,r11	! ab7a
     c7c:	9b 95       	mov.w	daa <tan_dat_tbl+0xc4e>,r11	! b0a5
     c7e:	9b b7       	mov.w	df0 <tan_dat_tbl+0xc94>,r11	! b5c4
     c80:	9b da       	mov.w	e38 <tan_dat_tbl+0xcdc>,r11	! bb23
     c82:	9b fc       	mov.w	e7e <tan_dat_tbl+0xd22>,r11	! c076
     c84:	9c 1f       	mov.w	cc6 <tan_dat_tbl+0xb6a>,r12	! a099
     c86:	9c 41       	mov.w	d0c <tan_dat_tbl+0xbb0>,r12	! a56e
     c88:	9c 64       	mov.w	d54 <tan_dat_tbl+0xbf8>,r12	! aa7c
     c8a:	9c 86       	mov.w	d9a <tan_dat_tbl+0xc3e>,r12	! af7d
     c8c:	9c a9       	mov.w	de2 <tan_dat_tbl+0xc86>,r12	! b4bc
     c8e:	9c cb       	mov.w	e28 <tan_dat_tbl+0xccc>,r12	! b9ef
     c90:	9c ee       	mov.w	e70 <tan_dat_tbl+0xd14>,r12	! bf63
     c92:	9d 10       	mov.w	cb6 <tan_dat_tbl+0xb5a>,r13	! 9f82
     c94:	9d 33       	mov.w	cfe <tan_dat_tbl+0xba2>,r13	! a475
     c96:	9d 56       	mov.w	d46 <tan_dat_tbl+0xbea>,r13	! a97e
     c98:	9d 78       	mov.w	d8c <tan_dat_tbl+0xc30>,r13	! ae7b
     c9a:	9d 9b       	mov.w	dd4 <tan_dat_tbl+0xc78>,r13	! b3b5
     c9c:	9d be       	mov.w	e1c <tan_dat_tbl+0xcc0>,r13	! b909
     c9e:	9d e0       	mov.w	e62 <tan_dat_tbl+0xd06>,r13	! be51
     ca0:	9e 03       	mov.w	caa <tan_dat_tbl+0xb4e>,r14	! 9eb1
     ca2:	9e 26       	mov.w	cf2 <tan_dat_tbl+0xb96>,r14	! a3a0
     ca4:	9e 48       	mov.w	d38 <tan_dat_tbl+0xbdc>,r14	! a882
     ca6:	9e 6b       	mov.w	d80 <tan_dat_tbl+0xc24>,r14	! ad9f
     ca8:	9e 8e       	mov.w	dc8 <tan_dat_tbl+0xc6c>,r14	! b2d4
     caa:	9e b1       	mov.w	e10 <tan_dat_tbl+0xcb4>,r14	! b824
     cac:	9e d4       	mov.w	e58 <tan_dat_tbl+0xcfc>,r14	! bd8e
     cae:	9e f6       	mov.w	e9e <tan_dat_tbl+0xd42>,r14	! c2ee
     cb0:	9f 19       	mov.w	ce6 <tan_dat_tbl+0xb8a>,r15	! a2cc
     cb2:	9f 3c       	mov.w	d2e <tan_dat_tbl+0xbd2>,r15	! a7ce
     cb4:	9f 5f       	mov.w	d76 <tan_dat_tbl+0xc1a>,r15	! ace7
     cb6:	9f 82       	mov.w	dbe <tan_dat_tbl+0xc62>,r15	! b219
     cb8:	9f a5       	mov.w	e06 <tan_dat_tbl+0xcaa>,r15	! b765
     cba:	9f c8       	mov.w	e4e <tan_dat_tbl+0xcf2>,r15	! bccc
     cbc:	9f eb       	mov.w	e96 <tan_dat_tbl+0xd3a>,r15	! c250
     cbe:	a0 0d       	bra	cdc <tan_dat_tbl+0xb80>
     cc0:	a0 30       	bra	d24 <tan_dat_tbl+0xbc8>
     cc2:	a0 53       	bra	d6c <tan_dat_tbl+0xc10>
     cc4:	a0 76       	bra	db4 <tan_dat_tbl+0xc58>
     cc6:	a0 99       	bra	dfc <tan_dat_tbl+0xca0>
     cc8:	a0 bc       	bra	e44 <tan_dat_tbl+0xce8>
     cca:	a0 e0       	bra	e8e <tan_dat_tbl+0xd32>
     ccc:	a1 03       	bra	ed6 <tan_dat_tbl+0xd7a>
     cce:	a1 26       	bra	f1e <tan_dat_tbl+0xdc2>
     cd0:	a1 49       	bra	f66 <tan_dat_tbl+0xe0a>
     cd2:	a1 6c       	bra	fae <tan_dat_tbl+0xe52>
     cd4:	a1 8f       	bra	ff6 <tan_dat_tbl+0xe9a>
     cd6:	a1 b2       	bra	103e <tan_dat_tbl+0xee2>
     cd8:	a1 d5       	bra	1086 <tan_dat_tbl+0xf2a>
     cda:	a1 f9       	bra	10d0 <tan_dat_tbl+0xf74>
     cdc:	a2 1c       	bra	1118 <tan_dat_tbl+0xfbc>
     cde:	a2 3f       	bra	1160 <tan_dat_tbl+0x1004>
     ce0:	a2 62       	bra	11a8 <tan_dat_tbl+0x104c>
     ce2:	a2 85       	bra	11f0 <tan_dat_tbl+0x1094>
     ce4:	a2 a9       	bra	123a <tan_dat_tbl+0x10de>
     ce6:	a2 cc       	bra	1282 <tan_dat_tbl+0x1126>
     ce8:	a2 ef       	bra	12ca <tan_dat_tbl+0x116e>
     cea:	a3 13       	bra	1314 <tan_dat_tbl+0x11b8>
     cec:	a3 36       	bra	135c <tan_dat_tbl+0x1200>
     cee:	a3 59       	bra	13a4 <tan_dat_tbl+0x1248>
     cf0:	a3 7d       	bra	13ee <tan_dat_tbl+0x1292>
     cf2:	a3 a0       	bra	1436 <tan_dat_tbl+0x12da>
     cf4:	a3 c3       	bra	147e <tan_dat_tbl+0x1322>
     cf6:	a3 e7       	bra	14c8 <tan_dat_tbl+0x136c>
     cf8:	a4 0a       	bra	1510 <tan_dat_tbl+0x13b4>
     cfa:	a4 2e       	bra	155a <tan_dat_tbl+0x13fe>
     cfc:	a4 51       	bra	15a2 <tan_dat_tbl+0x1446>
     cfe:	a4 75       	bra	15ec <tan_dat_tbl+0x1490>
     d00:	a4 98       	bra	1634 <tan_dat_tbl+0x14d8>
     d02:	a4 bc       	bra	167e <tan_dat_tbl+0x1522>
     d04:	a4 df       	bra	16c6 <tan_dat_tbl+0x156a>
     d06:	a5 03       	bra	1710 <tan_dat_tbl+0x15b4>
     d08:	a5 27       	bra	175a <tan_dat_tbl+0x15fe>
     d0a:	a5 4a       	bra	17a2 <tan_dat_tbl+0x1646>
     d0c:	a5 6e       	bra	17ec <tan_dat_tbl+0x1690>
     d0e:	a5 91       	bra	1834 <tan_dat_tbl+0x16d8>
     d10:	a5 b5       	bra	187e <tan_dat_tbl+0x1722>
     d12:	a5 d9       	bra	18c8 <tan_dat_tbl+0x176c>
     d14:	a5 fc       	bra	1910 <tan_dat_tbl+0x17b4>
     d16:	a6 20       	bra	195a <tan_dat_tbl+0x17fe>
     d18:	a6 44       	bra	19a4 <tan_dat_tbl+0x1848>
     d1a:	a6 68       	bra	19ee <tan_dat_tbl+0x1892>
     d1c:	a6 8b       	bra	1a36 <tan_dat_tbl+0x18da>
     d1e:	a6 af       	bra	1a80 <tan_dat_tbl+0x1924>
     d20:	a6 d3       	bra	1aca <tan_dat_tbl+0x196e>
     d22:	a6 f7       	bra	1b14 <tan_dat_tbl+0x19b8>
     d24:	a7 1b       	bra	1b5e <tan_dat_tbl+0x1a02>
     d26:	a7 3e       	bra	1ba6 <tan_dat_tbl+0x1a4a>
     d28:	a7 62       	bra	1bf0 <tan_dat_tbl+0x1a94>
     d2a:	a7 86       	bra	1c3a <tan_dat_tbl+0x1ade>
     d2c:	a7 aa       	bra	1c84 <tan_dat_tbl+0x1b28>
     d2e:	a7 ce       	bra	1cce <tan_dat_tbl+0x1b72>
     d30:	a7 f2       	bra	1d18 <tan_dat_tbl+0x1bbc>
     d32:	a8 16       	bra	fffffd62 <tan_dat_tbl+0xfffffc06>
     d34:	a8 3a       	bra	fffffdac <tan_dat_tbl+0xfffffc50>
     d36:	a8 5e       	bra	fffffdf6 <tan_dat_tbl+0xfffffc9a>
     d38:	a8 82       	bra	fffffe40 <tan_dat_tbl+0xfffffce4>
     d3a:	a8 a6       	bra	fffffe8a <tan_dat_tbl+0xfffffd2e>
     d3c:	a8 ca       	bra	fffffed4 <tan_dat_tbl+0xfffffd78>
     d3e:	a8 ee       	bra	ffffff1e <tan_dat_tbl+0xfffffdc2>
     d40:	a9 12       	bra	ffffff68 <tan_dat_tbl+0xfffffe0c>
     d42:	a9 36       	bra	ffffffb2 <tan_dat_tbl+0xfffffe56>
     d44:	a9 5a       	bra	fffffffc <tan_dat_tbl+0xfffffea0>
     d46:	a9 7e       	bra	46 <tan_jmp_tbl+0x1e>
     d48:	a9 a3       	bra	92 <tan_jmp_tbl+0x6a>
     d4a:	a9 c7       	bra	dc <tan_jmp_tbl+0xb4>
     d4c:	a9 eb       	bra	126 <tan_jmp_tbl+0xfe>
     d4e:	aa 0f       	bra	170 <tan_dat_tbl+0x14>
     d50:	aa 33       	bra	1ba <tan_dat_tbl+0x5e>
     d52:	aa 58       	bra	206 <tan_dat_tbl+0xaa>
     d54:	aa 7c       	bra	250 <tan_dat_tbl+0xf4>
     d56:	aa a0       	bra	29a <tan_dat_tbl+0x13e>
     d58:	aa c5       	bra	2e6 <tan_dat_tbl+0x18a>
     d5a:	aa e9       	bra	330 <tan_dat_tbl+0x1d4>
     d5c:	ab 0d       	bra	37a <tan_dat_tbl+0x21e>
     d5e:	ab 32       	bra	3c6 <tan_dat_tbl+0x26a>
     d60:	ab 56       	bra	410 <tan_dat_tbl+0x2b4>
     d62:	ab 7a       	bra	45a <tan_dat_tbl+0x2fe>
     d64:	ab 9f       	bra	4a6 <tan_dat_tbl+0x34a>
     d66:	ab c3       	bra	4f0 <tan_dat_tbl+0x394>
     d68:	ab e8       	bra	53c <tan_dat_tbl+0x3e0>
     d6a:	ac 0c       	bra	586 <tan_dat_tbl+0x42a>
     d6c:	ac 31       	bra	5d2 <tan_dat_tbl+0x476>
     d6e:	ac 55       	bra	61c <tan_dat_tbl+0x4c0>
     d70:	ac 7a       	bra	668 <tan_dat_tbl+0x50c>
     d72:	ac 9e       	bra	6b2 <tan_dat_tbl+0x556>
     d74:	ac c3       	bra	6fe <tan_dat_tbl+0x5a2>
     d76:	ac e7       	bra	748 <tan_dat_tbl+0x5ec>
     d78:	ad 0c       	bra	794 <tan_dat_tbl+0x638>
     d7a:	ad 31       	bra	7e0 <tan_dat_tbl+0x684>
     d7c:	ad 55       	bra	82a <tan_dat_tbl+0x6ce>
     d7e:	ad 7a       	bra	876 <tan_dat_tbl+0x71a>
     d80:	ad 9f       	bra	8c2 <tan_dat_tbl+0x766>
     d82:	ad c3       	bra	90c <tan_dat_tbl+0x7b0>
     d84:	ad e8       	bra	958 <tan_dat_tbl+0x7fc>
     d86:	ae 0d       	bra	9a4 <tan_dat_tbl+0x848>
     d88:	ae 32       	bra	9f0 <tan_dat_tbl+0x894>
     d8a:	ae 56       	bra	a3a <tan_dat_tbl+0x8de>
     d8c:	ae 7b       	bra	a86 <tan_dat_tbl+0x92a>
     d8e:	ae a0       	bra	ad2 <tan_dat_tbl+0x976>
     d90:	ae c5       	bra	b1e <tan_dat_tbl+0x9c2>
     d92:	ae ea       	bra	b6a <tan_dat_tbl+0xa0e>
     d94:	af 0f       	bra	bb6 <tan_dat_tbl+0xa5a>
     d96:	af 33       	bra	c00 <tan_dat_tbl+0xaa4>
     d98:	af 58       	bra	c4c <tan_dat_tbl+0xaf0>
     d9a:	af 7d       	bra	c98 <tan_dat_tbl+0xb3c>
     d9c:	af a2       	bra	ce4 <tan_dat_tbl+0xb88>
     d9e:	af c7       	bra	d30 <tan_dat_tbl+0xbd4>
     da0:	af ec       	bra	d7c <tan_dat_tbl+0xc20>
     da2:	b0 11       	bsr	dc8 <tan_dat_tbl+0xc6c>
     da4:	b0 36       	bsr	e14 <tan_dat_tbl+0xcb8>
     da6:	b0 5b       	bsr	e60 <tan_dat_tbl+0xd04>
     da8:	b0 80       	bsr	eac <tan_dat_tbl+0xd50>
     daa:	b0 a5       	bsr	ef8 <tan_dat_tbl+0xd9c>
     dac:	b0 cb       	bsr	f46 <tan_dat_tbl+0xdea>
     dae:	b0 f0       	bsr	f92 <tan_dat_tbl+0xe36>
     db0:	b1 15       	bsr	fde <tan_dat_tbl+0xe82>
     db2:	b1 3a       	bsr	102a <tan_dat_tbl+0xece>
     db4:	b1 5f       	bsr	1076 <tan_dat_tbl+0xf1a>
     db6:	b1 84       	bsr	10c2 <tan_dat_tbl+0xf66>
     db8:	b1 aa       	bsr	1110 <tan_dat_tbl+0xfb4>
     dba:	b1 cf       	bsr	115c <tan_dat_tbl+0x1000>
     dbc:	b1 f4       	bsr	11a8 <tan_dat_tbl+0x104c>
     dbe:	b2 19       	bsr	11f4 <tan_dat_tbl+0x1098>
     dc0:	b2 3f       	bsr	1242 <tan_dat_tbl+0x10e6>
     dc2:	b2 64       	bsr	128e <tan_dat_tbl+0x1132>
     dc4:	b2 89       	bsr	12da <tan_dat_tbl+0x117e>
     dc6:	b2 af       	bsr	1328 <tan_dat_tbl+0x11cc>
     dc8:	b2 d4       	bsr	1374 <tan_dat_tbl+0x1218>
     dca:	b2 fa       	bsr	13c2 <tan_dat_tbl+0x1266>
     dcc:	b3 1f       	bsr	140e <tan_dat_tbl+0x12b2>
     dce:	b3 44       	bsr	145a <tan_dat_tbl+0x12fe>
     dd0:	b3 6a       	bsr	14a8 <tan_dat_tbl+0x134c>
     dd2:	b3 8f       	bsr	14f4 <tan_dat_tbl+0x1398>
     dd4:	b3 b5       	bsr	1542 <tan_dat_tbl+0x13e6>
     dd6:	b3 da       	bsr	158e <tan_dat_tbl+0x1432>
     dd8:	b4 00       	bsr	15dc <tan_dat_tbl+0x1480>
     dda:	b4 26       	bsr	162a <tan_dat_tbl+0x14ce>
     ddc:	b4 4b       	bsr	1676 <tan_dat_tbl+0x151a>
     dde:	b4 71       	bsr	16c4 <tan_dat_tbl+0x1568>
     de0:	b4 96       	bsr	1710 <tan_dat_tbl+0x15b4>
     de2:	b4 bc       	bsr	175e <tan_dat_tbl+0x1602>
     de4:	b4 e2       	bsr	17ac <tan_dat_tbl+0x1650>
     de6:	b5 07       	bsr	17f8 <tan_dat_tbl+0x169c>
     de8:	b5 2d       	bsr	1846 <tan_dat_tbl+0x16ea>
     dea:	b5 53       	bsr	1894 <tan_dat_tbl+0x1738>
     dec:	b5 79       	bsr	18e2 <tan_dat_tbl+0x1786>
     dee:	b5 9e       	bsr	192e <tan_dat_tbl+0x17d2>
     df0:	b5 c4       	bsr	197c <tan_dat_tbl+0x1820>
     df2:	b5 ea       	bsr	19ca <tan_dat_tbl+0x186e>
     df4:	b6 10       	bsr	1a18 <tan_dat_tbl+0x18bc>
     df6:	b6 36       	bsr	1a66 <tan_dat_tbl+0x190a>
     df8:	b6 5c       	bsr	1ab4 <tan_dat_tbl+0x1958>
     dfa:	b6 81       	bsr	1b00 <tan_dat_tbl+0x19a4>
     dfc:	b6 a7       	bsr	1b4e <tan_dat_tbl+0x19f2>
     dfe:	b6 cd       	bsr	1b9c <tan_dat_tbl+0x1a40>
     e00:	b6 f3       	bsr	1bea <tan_dat_tbl+0x1a8e>
     e02:	b7 19       	bsr	1c38 <tan_dat_tbl+0x1adc>
     e04:	b7 3f       	bsr	1c86 <tan_dat_tbl+0x1b2a>
     e06:	b7 65       	bsr	1cd4 <tan_dat_tbl+0x1b78>
     e08:	b7 8b       	bsr	1d22 <tan_dat_tbl+0x1bc6>
     e0a:	b7 b1       	bsr	1d70 <tan_dat_tbl+0x1c14>
     e0c:	b7 d7       	bsr	1dbe <tan_dat_tbl+0x1c62>
     e0e:	b7 fe       	bsr	1e0e <tan_dat_tbl+0x1cb2>
     e10:	b8 24       	bsr	fffffe5c <tan_dat_tbl+0xfffffd00>
     e12:	b8 4a       	bsr	fffffeaa <tan_dat_tbl+0xfffffd4e>
     e14:	b8 70       	bsr	fffffef8 <tan_dat_tbl+0xfffffd9c>
     e16:	b8 96       	bsr	ffffff46 <tan_dat_tbl+0xfffffdea>
     e18:	b8 bc       	bsr	ffffff94 <tan_dat_tbl+0xfffffe38>
     e1a:	b8 e3       	bsr	ffffffe4 <tan_dat_tbl+0xfffffe88>
     e1c:	b9 09       	bsr	32 <tan_jmp_tbl+0xa>
     e1e:	b9 2f       	bsr	80 <tan_jmp_tbl+0x58>
     e20:	b9 55       	bsr	ce <tan_jmp_tbl+0xa6>
     e22:	b9 7c       	bsr	11e <tan_jmp_tbl+0xf6>
     e24:	b9 a2       	bsr	16c <tan_dat_tbl+0x10>
     e26:	b9 c8       	bsr	1ba <tan_dat_tbl+0x5e>
     e28:	b9 ef       	bsr	20a <tan_dat_tbl+0xae>
     e2a:	ba 15       	bsr	258 <tan_dat_tbl+0xfc>
     e2c:	ba 3c       	bsr	2a8 <tan_dat_tbl+0x14c>
     e2e:	ba 62       	bsr	2f6 <tan_dat_tbl+0x19a>
     e30:	ba 89       	bsr	346 <tan_dat_tbl+0x1ea>
     e32:	ba af       	bsr	394 <tan_dat_tbl+0x238>
     e34:	ba d6       	bsr	3e4 <tan_dat_tbl+0x288>
     e36:	ba fc       	bsr	432 <tan_dat_tbl+0x2d6>
     e38:	bb 23       	bsr	482 <tan_dat_tbl+0x326>
     e3a:	bb 49       	bsr	4d0 <tan_dat_tbl+0x374>
     e3c:	bb 70       	bsr	520 <tan_dat_tbl+0x3c4>
     e3e:	bb 96       	bsr	56e <tan_dat_tbl+0x412>
     e40:	bb bd       	bsr	5be <tan_dat_tbl+0x462>
     e42:	bb e4       	bsr	60e <tan_dat_tbl+0x4b2>
     e44:	bc 0a       	bsr	65c <tan_dat_tbl+0x500>
     e46:	bc 31       	bsr	6ac <tan_dat_tbl+0x550>
     e48:	bc 58       	bsr	6fc <tan_dat_tbl+0x5a0>
     e4a:	bc 7f       	bsr	74c <tan_dat_tbl+0x5f0>
     e4c:	bc a5       	bsr	79a <tan_dat_tbl+0x63e>
     e4e:	bc cc       	bsr	7ea <tan_dat_tbl+0x68e>
     e50:	bc f3       	bsr	83a <tan_dat_tbl+0x6de>
     e52:	bd 1a       	bsr	88a <tan_dat_tbl+0x72e>
     e54:	bd 41       	bsr	8da <tan_dat_tbl+0x77e>
     e56:	bd 68       	bsr	92a <tan_dat_tbl+0x7ce>
     e58:	bd 8e       	bsr	978 <tan_dat_tbl+0x81c>
     e5a:	bd b5       	bsr	9c8 <tan_dat_tbl+0x86c>
     e5c:	bd dc       	bsr	a18 <tan_dat_tbl+0x8bc>
     e5e:	be 03       	bsr	a68 <tan_dat_tbl+0x90c>
     e60:	be 2a       	bsr	ab8 <tan_dat_tbl+0x95c>
     e62:	be 51       	bsr	b08 <tan_dat_tbl+0x9ac>
     e64:	be 78       	bsr	b58 <tan_dat_tbl+0x9fc>
     e66:	be 9f       	bsr	ba8 <tan_dat_tbl+0xa4c>
     e68:	be c6       	bsr	bf8 <tan_dat_tbl+0xa9c>
     e6a:	be ee       	bsr	c4a <tan_dat_tbl+0xaee>
     e6c:	bf 15       	bsr	c9a <tan_dat_tbl+0xb3e>
     e6e:	bf 3c       	bsr	cea <tan_dat_tbl+0xb8e>
     e70:	bf 63       	bsr	d3a <tan_dat_tbl+0xbde>
     e72:	bf 8a       	bsr	d8a <tan_dat_tbl+0xc2e>
     e74:	bf b1       	bsr	dda <tan_dat_tbl+0xc7e>
     e76:	bf d9       	bsr	e2c <tan_dat_tbl+0xcd0>
     e78:	c0 00       	mov.b	r0,@(0,gbr)
     e7a:	c0 27       	mov.b	r0,@(39,gbr)
     e7c:	c0 4e       	mov.b	r0,@(78,gbr)
     e7e:	c0 76       	mov.b	r0,@(118,gbr)
     e80:	c0 9d       	mov.b	r0,@(157,gbr)
     e82:	c0 c5       	mov.b	r0,@(197,gbr)
     e84:	c0 ec       	mov.b	r0,@(236,gbr)
     e86:	c1 13       	mov.w	r0,@(38,gbr)
     e88:	c1 3b       	mov.w	r0,@(118,gbr)
     e8a:	c1 62       	mov.w	r0,@(196,gbr)
     e8c:	c1 8a       	mov.w	r0,@(276,gbr)
     e8e:	c1 b1       	mov.w	r0,@(354,gbr)
     e90:	c1 d9       	mov.w	r0,@(434,gbr)
     e92:	c2 00       	mov.l	r0,@(0,gbr)
     e94:	c2 28       	mov.l	r0,@(160,gbr)
     e96:	c2 50       	mov.l	r0,@(320,gbr)
     e98:	c2 77       	mov.l	r0,@(476,gbr)
     e9a:	c2 9f       	mov.l	r0,@(636,gbr)
     e9c:	c2 c6       	mov.l	r0,@(792,gbr)
     e9e:	c2 ee       	mov.l	r0,@(952,gbr)
     ea0:	c3 16       	trapa	#22
     ea2:	c3 3e       	trapa	#62
     ea4:	c3 65       	trapa	#101
     ea6:	c3 8d       	trapa	#-115
     ea8:	c3 b5       	trapa	#-75
     eaa:	c3 dd       	trapa	#-35
     eac:	c4 05       	mov.b	@(5,gbr),r0
     eae:	c4 2d       	mov.b	@(45,gbr),r0
     eb0:	c4 54       	mov.b	@(84,gbr),r0
     eb2:	c4 7c       	mov.b	@(124,gbr),r0
     eb4:	c4 a4       	mov.b	@(164,gbr),r0
     eb6:	c4 cc       	mov.b	@(204,gbr),r0
     eb8:	c4 f4       	mov.b	@(244,gbr),r0
     eba:	c5 1c       	mov.w	@(56,gbr),r0
     ebc:	c5 44       	mov.w	@(136,gbr),r0
     ebe:	c5 6c       	mov.w	@(216,gbr),r0
     ec0:	c5 95       	mov.w	@(298,gbr),r0
     ec2:	c5 bd       	mov.w	@(378,gbr),r0
     ec4:	c5 e5       	mov.w	@(458,gbr),r0
     ec6:	c6 0d       	mov.l	@(52,gbr),r0
     ec8:	c6 35       	mov.l	@(212,gbr),r0
     eca:	c6 5d       	mov.l	@(372,gbr),r0
     ecc:	c6 86       	mov.l	@(536,gbr),r0
     ece:	c6 ae       	mov.l	@(696,gbr),r0
     ed0:	c6 d6       	mov.l	@(856,gbr),r0
     ed2:	c6 fe       	mov.l	@(1016,gbr),r0
     ed4:	c7 27       	mova	f74 <tan_dat_tbl+0xe18>,r0
     ed6:	c7 4f       	mova	1014 <tan_dat_tbl+0xeb8>,r0
     ed8:	c7 77       	mova	10b8 <tan_dat_tbl+0xf5c>,r0
     eda:	c7 a0       	mova	115c <tan_dat_tbl+0x1000>,r0
     edc:	c7 c8       	mova	1200 <tan_dat_tbl+0x10a4>,r0
     ede:	c7 f1       	mova	12a4 <tan_dat_tbl+0x1148>,r0
     ee0:	c8 19       	tst	#25,r0
     ee2:	c8 42       	tst	#66,r0
     ee4:	c8 6a       	tst	#106,r0
     ee6:	c8 93       	tst	#-109,r0
     ee8:	c8 bb       	tst	#-69,r0
     eea:	c8 e4       	tst	#-28,r0
     eec:	c9 0d       	and	#13,r0
     eee:	c9 35       	and	#53,r0
     ef0:	c9 5e       	and	#94,r0
     ef2:	c9 87       	and	#-121,r0
     ef4:	c9 af       	and	#-81,r0
     ef6:	c9 d8       	and	#-40,r0
     ef8:	ca 01       	xor	#1,r0
     efa:	ca 2a       	xor	#42,r0
     efc:	ca 52       	xor	#82,r0
     efe:	ca 7b       	xor	#123,r0
     f00:	ca a4       	xor	#-92,r0
     f02:	ca cd       	xor	#-51,r0
     f04:	ca f6       	xor	#-10,r0
     f06:	cb 1f       	or	#31,r0
     f08:	cb 48       	or	#72,r0
     f0a:	cb 71       	or	#113,r0
     f0c:	cb 9a       	or	#-102,r0
     f0e:	cb c3       	or	#-61,r0
     f10:	cb ec       	or	#-20,r0
     f12:	cc 15       	tst.b	#21,@(r0,gbr)
     f14:	cc 3e       	tst.b	#62,@(r0,gbr)
     f16:	cc 67       	tst.b	#103,@(r0,gbr)
     f18:	cc 91       	tst.b	#-111,@(r0,gbr)
     f1a:	cc ba       	tst.b	#-70,@(r0,gbr)
     f1c:	cc e3       	tst.b	#-29,@(r0,gbr)
     f1e:	cd 0c       	and.b	#12,@(r0,gbr)
     f20:	cd 35       	and.b	#53,@(r0,gbr)
     f22:	cd 5f       	and.b	#95,@(r0,gbr)
     f24:	cd 88       	and.b	#-120,@(r0,gbr)
     f26:	cd b1       	and.b	#-79,@(r0,gbr)
     f28:	cd db       	and.b	#-37,@(r0,gbr)
     f2a:	ce 04       	xor.b	#4,@(r0,gbr)
     f2c:	ce 2e       	xor.b	#46,@(r0,gbr)
     f2e:	ce 57       	xor.b	#87,@(r0,gbr)
     f30:	ce 81       	xor.b	#-127,@(r0,gbr)
     f32:	ce aa       	xor.b	#-86,@(r0,gbr)
     f34:	ce d4       	xor.b	#-44,@(r0,gbr)
     f36:	ce fd       	xor.b	#-3,@(r0,gbr)
     f38:	cf 27       	or.b	#39,@(r0,gbr)
     f3a:	cf 50       	or.b	#80,@(r0,gbr)
     f3c:	cf 7a       	or.b	#122,@(r0,gbr)
     f3e:	cf a4       	or.b	#-92,@(r0,gbr)
     f40:	cf cd       	or.b	#-51,@(r0,gbr)
     f42:	cf f7       	or.b	#-9,@(r0,gbr)
     f44:	d0 21       	mov.l	fcc <tan_dat_tbl+0xe70>,r0	! db75dba1
     f46:	d0 4a       	mov.l	1070 <tan_dat_tbl+0xf14>,r0	! e9d1e9ff
     f48:	d0 74       	mov.l	111c <tan_dat_tbl+0xfc0>,r0	! f9caf9fc
     f4a:	d0 9e       	mov.l	11c4 <tan_dat_tbl+0x1068>,r0	! 8535854f
     f4c:	d0 c8       	mov.l	1270 <tan_dat_tbl+0x1114>,r0	! 8e518e6d
     f4e:	d0 f2       	mov.l	1318 <tan_dat_tbl+0x11bc>,r0	! 97e29801
     f50:	d1 1c       	mov.l	fc4 <tan_dat_tbl+0xe68>,r1	! dac7daf3
     f52:	d1 46       	mov.l	106c <tan_dat_tbl+0xf10>,r1	! e975e9a3
     f54:	d1 6f       	mov.l	1114 <tan_dat_tbl+0xfb8>,r1	! f906f937
     f56:	d1 99       	mov.l	11bc <tan_dat_tbl+0x1060>,r1	! 84cd84e7
     f58:	d1 c3       	mov.l	1268 <tan_dat_tbl+0x110c>,r1	! 8de18dfd
     f5a:	d1 ed       	mov.l	1310 <tan_dat_tbl+0x11b4>,r1	! 976a9788
     f5c:	d2 18       	mov.l	fc0 <tan_dat_tbl+0xe64>,r2	! da70da9c
     f5e:	d2 42       	mov.l	1068 <tan_dat_tbl+0xf0c>,r2	! e919e947
     f60:	d2 6c       	mov.l	1114 <tan_dat_tbl+0xfb8>,r2	! f906f937
     f62:	d2 96       	mov.l	11bc <tan_dat_tbl+0x1060>,r2	! 84cd84e7
     f64:	d2 c0       	mov.l	1268 <tan_dat_tbl+0x110c>,r2	! 8de18dfd
     f66:	d2 ea       	mov.l	1310 <tan_dat_tbl+0x11b4>,r2	! 976a9788
     f68:	d3 14       	mov.l	fbc <tan_dat_tbl+0xe60>,r3	! da1ada45
     f6a:	d3 3f       	mov.l	1068 <tan_dat_tbl+0xf0c>,r3	! e919e947
     f6c:	d3 69       	mov.l	1114 <tan_dat_tbl+0xfb8>,r3	! f906f937
     f6e:	d3 93       	mov.l	11bc <tan_dat_tbl+0x1060>,r3	! 84cd84e7
     f70:	d3 bd       	mov.l	1268 <tan_dat_tbl+0x110c>,r3	! 8de18dfd
     f72:	d3 e8       	mov.l	1314 <tan_dat_tbl+0x11b8>,r3	! 97a697c4
     f74:	d4 12       	mov.l	fc0 <tan_dat_tbl+0xe64>,r4	! da70da9c
     f76:	d4 3d       	mov.l	106c <tan_dat_tbl+0xf10>,r4	! e975e9a3
     f78:	d4 67       	mov.l	1118 <tan_dat_tbl+0xfbc>,r4	! f968f999
     f7a:	d4 91       	mov.l	11c0 <tan_dat_tbl+0x1064>,r4	! 8501851b
     f7c:	d4 bc       	mov.l	1270 <tan_dat_tbl+0x1114>,r4	! 8e518e6d
     f7e:	d4 e6       	mov.l	1318 <tan_dat_tbl+0x11bc>,r4	! 97e29801
     f80:	d5 11       	mov.l	fc8 <tan_dat_tbl+0xe6c>,r5	! db1edb4a
     f82:	d5 3b       	mov.l	1070 <tan_dat_tbl+0xf14>,r5	! e9d1e9ff
     f84:	d5 66       	mov.l	1120 <tan_dat_tbl+0xfc4>,r5	! fa2dfa5e
     f86:	d5 91       	mov.l	11cc <tan_dat_tbl+0x1070>,r5	! 859e85b8
     f88:	d5 bb       	mov.l	1278 <tan_dat_tbl+0x111c>,r5	! 8ec28ede
     f8a:	d5 e6       	mov.l	1324 <tan_dat_tbl+0x11c8>,r5	! 989898b7
     f8c:	d6 11       	mov.l	fd4 <tan_dat_tbl+0xe78>,r6	! dc24dc50
     f8e:	d6 3b       	mov.l	107c <tan_dat_tbl+0xf20>,r6	! eae6eb15
     f90:	d6 66       	mov.l	112c <tan_dat_tbl+0xfd0>,r6	! fb54fb85
     f92:	d6 91       	mov.l	11d8 <tan_dat_tbl+0x107c>,r6	! 863c8656
     f94:	d6 bc       	mov.l	1288 <tan_dat_tbl+0x112c>,r6	! 8fa48fc1
     f96:	d6 e7       	mov.l	1334 <tan_dat_tbl+0x11d8>,r6	! 998d99ab
     f98:	d7 11       	mov.l	fe0 <tan_dat_tbl+0xe84>,r7	! dd2bdd57
     f9a:	d7 3c       	mov.l	108c <tan_dat_tbl+0xf30>,r7	! ec5aec88
     f9c:	d7 67       	mov.l	113c <tan_dat_tbl+0xfe0>,r7	! fce0fd12
     f9e:	d7 92       	mov.l	11e8 <tan_dat_tbl+0x108c>,r7	! 8710872a
     fa0:	d7 bd       	mov.l	1298 <tan_dat_tbl+0x113c>,r7	! 908890a5
     fa2:	d7 e8       	mov.l	1344 <tan_dat_tbl+0x11e8>,r7	! 9a839aa2
     fa4:	d8 13       	mov.l	ff4 <tan_dat_tbl+0xe98>,r8	! dee3df10
     fa6:	d8 3e       	mov.l	10a0 <tan_dat_tbl+0xf44>,r8	! ee2dee5c
     fa8:	d8 69       	mov.l	1150 <tan_dat_tbl+0xff4>,r8	! fed3ff05
     faa:	d8 94       	mov.l	11fc <tan_dat_tbl+0x10a0>,r8	! 881a8835
     fac:	d8 bf       	mov.l	12ac <tan_dat_tbl+0x1150>,r8	! 91a791c4
     fae:	d8 eb       	mov.l	135c <tan_dat_tbl+0x1200>,r8	! 9bf79c17
     fb0:	d9 16       	mov.l	100c <tan_dat_tbl+0xeb0>,r9	! e0f8e124
     fb2:	d9 41       	mov.l	10b8 <tan_dat_tbl+0xf5c>,r9	! f062f091
     fb4:	d9 6c       	mov.l	1168 <tan_dat_tbl+0x100c>,r9	! 809780b0
     fb6:	d9 98       	mov.l	1218 <tan_dat_tbl+0x10bc>,r9	! 899389af
     fb8:	d9 c3       	mov.l	12c8 <tan_dat_tbl+0x116c>,r9	! 933d935b
     fba:	d9 ee       	mov.l	1374 <tan_dat_tbl+0x1218>,r9	! 9d709d90
     fbc:	da 1a       	mov.l	1028 <tan_dat_tbl+0xecc>,r10	! e36ae397
     fbe:	da 45       	mov.l	10d4 <tan_dat_tbl+0xf78>,r10	! f2fcf32b
     fc0:	da 70       	mov.l	1184 <tan_dat_tbl+0x1028>,r10	! 81fa8214
     fc2:	da 9c       	mov.l	1234 <tan_dat_tbl+0x10d8>,r10	! 8b118b2c
     fc4:	da c7       	mov.l	12e4 <tan_dat_tbl+0x1188>,r10	! 94d994f6
     fc6:	da f3       	mov.l	1394 <tan_dat_tbl+0x1238>,r10	! 9f6d9f8d
     fc8:	db 1e       	mov.l	1044 <tan_dat_tbl+0xee8>,r11	! e5e3e610
     fca:	db 4a       	mov.l	10f4 <tan_dat_tbl+0xf98>,r11	! f5fcf62d
     fcc:	db 75       	mov.l	11a4 <tan_dat_tbl+0x1048>,r11	! 839583af
     fce:	db a1       	mov.l	1254 <tan_dat_tbl+0x10f8>,r11	! 8cca8ce6
     fd0:	db cd       	mov.l	1308 <tan_dat_tbl+0x11ac>,r11	! 96f1970f
     fd2:	db f8       	mov.l	13b4 <tan_dat_tbl+0x1258>,r11	! a172a193
     fd4:	dc 24       	mov.l	1068 <tan_dat_tbl+0xf0c>,r12	! e919e947
     fd6:	dc 50       	mov.l	1118 <tan_dat_tbl+0xfbc>,r12	! f968f999
     fd8:	dc 7c       	mov.l	11cc <tan_dat_tbl+0x1070>,r12	! 859e85b8
     fda:	dc a7       	mov.l	1278 <tan_dat_tbl+0x111c>,r12	! 8ec28ede
     fdc:	dc d3       	mov.l	132c <tan_dat_tbl+0x11d0>,r12	! 99129931
     fde:	dc ff       	mov.l	13dc <tan_dat_tbl+0x1280>,r12	! a404a425
     fe0:	dd 2b       	mov.l	1090 <tan_dat_tbl+0xf34>,r13	! ecb7ece6
     fe2:	dd 57       	mov.l	1140 <tan_dat_tbl+0xfe4>,r13	! fd44fd75
     fe4:	dd 83       	mov.l	11f4 <tan_dat_tbl+0x1098>,r13	! 87b087ca
     fe6:	dd af       	mov.l	12a4 <tan_dat_tbl+0x1148>,r13	! 91349151
     fe8:	dd db       	mov.l	1358 <tan_dat_tbl+0x11fc>,r13	! 9bb99bd8
     fea:	de 07       	mov.l	1008 <tan_dat_tbl+0xeac>,r14	! e09fe0cb
     fec:	de 33       	mov.l	10bc <tan_dat_tbl+0xf60>,r14	! f0c1f0f0
     fee:	de 5f       	mov.l	116c <tan_dat_tbl+0x1010>,r14	! 80c980e2
     ff0:	de 8b       	mov.l	1220 <tan_dat_tbl+0x10c4>,r14	! 8a008a1b
     ff2:	de b7       	mov.l	12d0 <tan_dat_tbl+0x1174>,r14	! 93b293d0
     ff4:	de e3       	mov.l	1384 <tan_dat_tbl+0x1228>,r14	! 9e6e9e8e
     ff6:	df 10       	mov.l	1038 <tan_dat_tbl+0xedc>,r15	! e4d3e500
     ff8:	df 3c       	mov.l	10ec <tan_dat_tbl+0xf90>,r15	! f53bf56c
     ffa:	df 68       	mov.l	119c <tan_dat_tbl+0x1040>,r15	! 832e8348
     ffc:	df 94       	mov.l	1250 <tan_dat_tbl+0x10f4>,r15	! 8c938cae
     ffe:	df c1       	mov.l	1304 <tan_dat_tbl+0x11a8>,r15	! 96b596d3
    1000:	df ed       	mov.l	13b8 <tan_dat_tbl+0x125c>,r15	! a1b3a1d4
    1002:	e0 19       	mov	#25,r0
    1004:	e0 46       	mov	#70,r0
    1006:	e0 72       	mov	#114,r0
    1008:	e0 9f       	mov	#-97,r0
    100a:	e0 cb       	mov	#-53,r0
    100c:	e0 f8       	mov	#-8,r0
    100e:	e1 24       	mov	#36,r1
    1010:	e1 51       	mov	#81,r1
    1012:	e1 7d       	mov	#125,r1
    1014:	e1 aa       	mov	#-86,r1
    1016:	e1 d7       	mov	#-41,r1
    1018:	e2 03       	mov	#3,r2
    101a:	e2 30       	mov	#48,r2
    101c:	e2 5d       	mov	#93,r2
    101e:	e2 8a       	mov	#-118,r2
    1020:	e2 b7       	mov	#-73,r2
    1022:	e2 e3       	mov	#-29,r2
    1024:	e3 10       	mov	#16,r3
    1026:	e3 3d       	mov	#61,r3
    1028:	e3 6a       	mov	#106,r3
    102a:	e3 97       	mov	#-105,r3
    102c:	e3 c4       	mov	#-60,r3
    102e:	e3 f1       	mov	#-15,r3
    1030:	e4 1e       	mov	#30,r4
    1032:	e4 4b       	mov	#75,r4
    1034:	e4 79       	mov	#121,r4
    1036:	e4 a6       	mov	#-90,r4
    1038:	e4 d3       	mov	#-45,r4
    103a:	e5 00       	mov	#0,r5
    103c:	e5 2d       	mov	#45,r5
    103e:	e5 5b       	mov	#91,r5
    1040:	e5 88       	mov	#-120,r5
    1042:	e5 b5       	mov	#-75,r5
    1044:	e5 e3       	mov	#-29,r5
    1046:	e6 10       	mov	#16,r6
    1048:	e6 3e       	mov	#62,r6
    104a:	e6 6b       	mov	#107,r6
    104c:	e6 99       	mov	#-103,r6
    104e:	e6 c6       	mov	#-58,r6
    1050:	e6 f4       	mov	#-12,r6
    1052:	e7 21       	mov	#33,r7
    1054:	e7 4f       	mov	#79,r7
    1056:	e7 7d       	mov	#125,r7
    1058:	e7 aa       	mov	#-86,r7
    105a:	e7 d8       	mov	#-40,r7
    105c:	e8 06       	mov	#6,r8
    105e:	e8 34       	mov	#52,r8
    1060:	e8 61       	mov	#97,r8
    1062:	e8 8f       	mov	#-113,r8
    1064:	e8 bd       	mov	#-67,r8
    1066:	e8 eb       	mov	#-21,r8
    1068:	e9 19       	mov	#25,r9
    106a:	e9 47       	mov	#71,r9
    106c:	e9 75       	mov	#117,r9
    106e:	e9 a3       	mov	#-93,r9
    1070:	e9 d1       	mov	#-47,r9
    1072:	e9 ff       	mov	#-1,r9
    1074:	ea 2e       	mov	#46,r10
    1076:	ea 5c       	mov	#92,r10
    1078:	ea 8a       	mov	#-118,r10
    107a:	ea b8       	mov	#-72,r10
    107c:	ea e6       	mov	#-26,r10
    107e:	eb 15       	mov	#21,r11
    1080:	eb 43       	mov	#67,r11
    1082:	eb 71       	mov	#113,r11
    1084:	eb a0       	mov	#-96,r11
    1086:	eb ce       	mov	#-50,r11
    1088:	eb fd       	mov	#-3,r11
    108a:	ec 2b       	mov	#43,r12
    108c:	ec 5a       	mov	#90,r12
    108e:	ec 88       	mov	#-120,r12
    1090:	ec b7       	mov	#-73,r12
    1092:	ec e6       	mov	#-26,r12
    1094:	ed 14       	mov	#20,r13
    1096:	ed 43       	mov	#67,r13
    1098:	ed 72       	mov	#114,r13
    109a:	ed a1       	mov	#-95,r13
    109c:	ed cf       	mov	#-49,r13
    109e:	ed fe       	mov	#-2,r13
    10a0:	ee 2d       	mov	#45,r14
    10a2:	ee 5c       	mov	#92,r14
    10a4:	ee 8b       	mov	#-117,r14
    10a6:	ee ba       	mov	#-70,r14
    10a8:	ee e9       	mov	#-23,r14
    10aa:	ef 18       	mov	#24,r15
    10ac:	ef 47       	mov	#71,r15
    10ae:	ef 76       	mov	#118,r15
    10b0:	ef a5       	mov	#-91,r15
    10b2:	ef d4       	mov	#-44,r15
    10b4:	f0 04       	fcmp/eq	fr0,fr0
    10b6:	f0 33       	fdiv	fr3,fr0
    10b8:	f0 62       	fmul	fr6,fr0
    10ba:	f0 91       	fsub	fr9,fr0
    10bc:	f0 c1       	fsub	fr12,fr0
    10be:	f0 f0       	fadd	fr15,fr0
    10c0:	f1 20       	fadd	fr2,fr1
    10c2:	f1 4f       	.word 0xf14f
    10c4:	f1 7e       	fmac	fr0,fr7,fr1
    10c6:	f1 ae       	fmac	fr0,fr10,fr1
    10c8:	f1 de       	fmac	fr0,fr13,fr1
    10ca:	f2 0d       	fsts	fpul,fr2
    10cc:	f2 3d       	ftrc	fr2,fpul
    10ce:	f2 6c       	fmov	fr6,fr2
    10d0:	f2 9c       	fmov	fr9,fr2
    10d2:	f2 cc       	fmov	fr12,fr2
    10d4:	f2 fc       	fmov	fr15,fr2
    10d6:	f3 2b       	fmov	fr2,@-r3
    10d8:	f3 5b       	fmov	fr5,@-r3
    10da:	f3 8b       	fmov	fr8,@-r3
    10dc:	f3 bb       	fmov	fr11,@-r3
    10de:	f3 eb       	fmov	fr14,@-r3
    10e0:	f4 1b       	fmov	fr1,@-r4
    10e2:	f4 4b       	fmov	fr4,@-r4
    10e4:	f4 7b       	fmov	fr7,@-r4
    10e6:	f4 ab       	fmov	fr10,@-r4
    10e8:	f4 db       	fmov	fr13,@-r4
    10ea:	f5 0b       	fmov	fr0,@-r5
    10ec:	f5 3b       	fmov	fr3,@-r5
    10ee:	f5 6c       	fmov	fr6,fr5
    10f0:	f5 9c       	fmov	fr9,fr5
    10f2:	f5 cc       	fmov	fr12,fr5
    10f4:	f5 fc       	fmov	fr15,fr5
    10f6:	f6 2d       	float	fpul,fr6
    10f8:	f6 5d       	fabs	fr6
    10fa:	f6 8e       	fmac	fr0,fr8,fr6
    10fc:	f6 be       	fmac	fr0,fr11,fr6
    10fe:	f6 ef       	.word 0xf6ef
    1100:	f7 1f       	.word 0xf71f
    1102:	f7 50       	fadd	fr5,fr7
    1104:	f7 80       	fadd	fr8,fr7
    1106:	f7 b1       	fsub	fr11,fr7
    1108:	f7 e2       	fmul	fr14,fr7
    110a:	f8 12       	fmul	fr1,fr8
    110c:	f8 43       	fdiv	fr4,fr8
    110e:	f8 74       	fcmp/eq	fr7,fr8
    1110:	f8 a5       	fcmp/gt	fr10,fr8
    1112:	f8 d6       	fmov	@(r0,r13),fr8
    1114:	f9 06       	fmov	@(r0,r0),fr9
    1116:	f9 37       	fmov	fr3,@(r0,r9)
    1118:	f9 68       	fmov	@r6,fr9
    111a:	f9 99       	fmov	@r9+,fr9
    111c:	f9 ca       	fmov	fr12,@r9
    111e:	f9 fc       	fmov	fr15,fr9
    1120:	fa 2d       	float	fpul,fr10
    1122:	fa 5e       	fmac	fr0,fr5,fr10
    1124:	fa 8f       	.word 0xfa8f
    1126:	fa c0       	fadd	fr12,fr10
    1128:	fa f1       	fsub	fr15,fr10
    112a:	fb 23       	fdiv	fr2,fr11
    112c:	fb 54       	fcmp/eq	fr5,fr11
    112e:	fb 85       	fcmp/gt	fr8,fr11
    1130:	fb b7       	fmov	fr11,@(r0,r11)
    1132:	fb e8       	fmov	@r14,fr11
    1134:	fc 1a       	fmov	fr1,@r12
    1136:	fc 4b       	fmov	fr4,@-r12
    1138:	fc 7d       	fsrra	fr12
    113a:	fc af       	.word 0xfcaf
    113c:	fc e0       	fadd	fr14,fr12
    113e:	fd 12       	fmul	fr1,fr13
    1140:	fd 44       	fcmp/eq	fr4,fr13
    1142:	fd 75       	fcmp/gt	fr7,fr13
    1144:	fd a7       	fmov	fr10,@(r0,r13)
    1146:	fd d9       	fmov	@r13+,fr13
    1148:	fe 0b       	fmov	fr0,@-r14
    114a:	fe 3d       	ftrc	fr14,fpul
    114c:	fe 6f       	.word 0xfe6f
    114e:	fe a1       	fsub	fr10,fr14
    1150:	fe d3       	fdiv	fr13,fr14
    1152:	ff 05       	fcmp/gt	fr0,fr15
    1154:	ff 37       	fmov	fr3,@(r0,r15)
    1156:	ff 69       	fmov	@r6+,fr15
    1158:	ff 9b       	fmov	fr9,@-r15
    115a:	ff cd       	.word 0xffcd
    115c:	80 00       	mov.b	r0,@(0,r0)
    115e:	80 19       	mov.b	r0,@(9,r1)
    1160:	80 32       	mov.b	r0,@(2,r3)
    1162:	80 4b       	mov.b	r0,@(11,r4)
    1164:	80 64       	mov.b	r0,@(4,r6)
    1166:	80 7d       	mov.b	r0,@(13,r7)
    1168:	80 97       	mov.b	r0,@(7,r9)
    116a:	80 b0       	mov.b	r0,@(0,r11)
    116c:	80 c9       	mov.b	r0,@(9,r12)
    116e:	80 e2       	mov.b	r0,@(2,r14)
    1170:	80 fc       	mov.b	r0,@(12,r15)
    1172:	81 15       	mov.w	r0,@(10,r1)
    1174:	81 2e       	mov.w	r0,@(28,r2)
    1176:	81 48       	mov.w	r0,@(16,r4)
    1178:	81 61       	mov.w	r0,@(2,r6)
    117a:	81 7b       	mov.w	r0,@(22,r7)
    117c:	81 94       	mov.w	r0,@(8,r9)
    117e:	81 ae       	mov.w	r0,@(28,r10)
    1180:	81 c7       	mov.w	r0,@(14,r12)
    1182:	81 e1       	mov.w	r0,@(2,r14)
    1184:	81 fa       	mov.w	r0,@(20,r15)
    1186:	82 14       	.word 0x8214
    1188:	82 2d       	.word 0x822d
    118a:	82 47       	.word 0x8247
    118c:	82 60       	.word 0x8260
    118e:	82 7a       	.word 0x827a
    1190:	82 94       	.word 0x8294
    1192:	82 ad       	.word 0x82ad
    1194:	82 c7       	.word 0x82c7
    1196:	82 e1       	.word 0x82e1
    1198:	82 fa       	.word 0x82fa
    119a:	83 14       	.word 0x8314
    119c:	83 2e       	.word 0x832e
    119e:	83 48       	.word 0x8348
    11a0:	83 61       	.word 0x8361
    11a2:	83 7b       	.word 0x837b
    11a4:	83 95       	.word 0x8395
    11a6:	83 af       	.word 0x83af
    11a8:	83 c9       	.word 0x83c9
    11aa:	83 e3       	.word 0x83e3
    11ac:	83 fd       	.word 0x83fd
    11ae:	84 16       	mov.b	@(6,r1),r0
    11b0:	84 30       	mov.b	@(0,r3),r0
    11b2:	84 4a       	mov.b	@(10,r4),r0
    11b4:	84 64       	mov.b	@(4,r6),r0
    11b6:	84 7e       	mov.b	@(14,r7),r0
    11b8:	84 98       	mov.b	@(8,r9),r0
    11ba:	84 b3       	mov.b	@(3,r11),r0
    11bc:	84 cd       	mov.b	@(13,r12),r0
    11be:	84 e7       	mov.b	@(7,r14),r0
    11c0:	85 01       	mov.w	@(2,r0),r0
    11c2:	85 1b       	mov.w	@(22,r1),r0
    11c4:	85 35       	mov.w	@(10,r3),r0
    11c6:	85 4f       	mov.w	@(30,r4),r0
    11c8:	85 6a       	mov.w	@(20,r6),r0
    11ca:	85 84       	mov.w	@(8,r8),r0
    11cc:	85 9e       	mov.w	@(28,r9),r0
    11ce:	85 b8       	mov.w	@(16,r11),r0
    11d0:	85 d3       	mov.w	@(6,r13),r0
    11d2:	85 ed       	mov.w	@(26,r14),r0
    11d4:	86 07       	.word 0x8607
    11d6:	86 22       	.word 0x8622
    11d8:	86 3c       	.word 0x863c
    11da:	86 56       	.word 0x8656
    11dc:	86 71       	.word 0x8671
    11de:	86 8b       	.word 0x868b
    11e0:	86 a6       	.word 0x86a6
    11e2:	86 c0       	.word 0x86c0
    11e4:	86 db       	.word 0x86db
    11e6:	86 f5       	.word 0x86f5
    11e8:	87 10       	.word 0x8710
    11ea:	87 2a       	.word 0x872a
    11ec:	87 45       	.word 0x8745
    11ee:	87 60       	.word 0x8760
    11f0:	87 7a       	.word 0x877a
    11f2:	87 95       	.word 0x8795
    11f4:	87 b0       	.word 0x87b0
    11f6:	87 ca       	.word 0x87ca
    11f8:	87 e5       	.word 0x87e5
    11fa:	88 00       	cmp/eq	#0,r0
    11fc:	88 1a       	cmp/eq	#26,r0
    11fe:	88 35       	cmp/eq	#53,r0
    1200:	88 50       	cmp/eq	#80,r0
    1202:	88 6b       	cmp/eq	#107,r0
    1204:	88 86       	cmp/eq	#-122,r0
    1206:	88 a1       	cmp/eq	#-95,r0
    1208:	88 bb       	cmp/eq	#-69,r0
    120a:	88 d6       	cmp/eq	#-42,r0
    120c:	88 f1       	cmp/eq	#-15,r0
    120e:	89 0c       	bt	122a <tan_dat_tbl+0x10ce>
    1210:	89 27       	bt	1262 <tan_dat_tbl+0x1106>
    1212:	89 42       	bt	129a <tan_dat_tbl+0x113e>
    1214:	89 5d       	bt	12d2 <tan_dat_tbl+0x1176>
    1216:	89 78       	bt	130a <tan_dat_tbl+0x11ae>
    1218:	89 93       	bt	1142 <tan_dat_tbl+0xfe6>
    121a:	89 af       	bt	117c <tan_dat_tbl+0x1020>
    121c:	89 ca       	bt	11b4 <tan_dat_tbl+0x1058>
    121e:	89 e5       	bt	11ec <tan_dat_tbl+0x1090>
    1220:	8a 00       	.word 0x8a00
    1222:	8a 1b       	.word 0x8a1b
    1224:	8a 36       	.word 0x8a36
    1226:	8a 52       	.word 0x8a52
    1228:	8a 6d       	.word 0x8a6d
    122a:	8a 88       	.word 0x8a88
    122c:	8a a3       	.word 0x8aa3
    122e:	8a bf       	.word 0x8abf
    1230:	8a da       	.word 0x8ada
    1232:	8a f5       	.word 0x8af5
    1234:	8b 11       	bf	125a <tan_dat_tbl+0x10fe>
    1236:	8b 2c       	bf	1292 <tan_dat_tbl+0x1136>
    1238:	8b 48       	bf	12cc <tan_dat_tbl+0x1170>
    123a:	8b 63       	bf	1304 <tan_dat_tbl+0x11a8>
    123c:	8b 7f       	bf	133e <tan_dat_tbl+0x11e2>
    123e:	8b 9a       	bf	1176 <tan_dat_tbl+0x101a>
    1240:	8b b6       	bf	11b0 <tan_dat_tbl+0x1054>
    1242:	8b d1       	bf	11e8 <tan_dat_tbl+0x108c>
    1244:	8b ed       	bf	1222 <tan_dat_tbl+0x10c6>
    1246:	8c 08       	.word 0x8c08
    1248:	8c 24       	.word 0x8c24
    124a:	8c 40       	.word 0x8c40
    124c:	8c 5b       	.word 0x8c5b
    124e:	8c 77       	.word 0x8c77
    1250:	8c 93       	.word 0x8c93
    1252:	8c ae       	.word 0x8cae
    1254:	8c ca       	.word 0x8cca
    1256:	8c e6       	.word 0x8ce6
    1258:	8d 02       	bt.s	1260 <tan_dat_tbl+0x1104>
    125a:	8d 1e       	bt.s	129a <tan_dat_tbl+0x113e>
    125c:	8d 39       	bt.s	12d2 <tan_dat_tbl+0x1176>
    125e:	8d 55       	bt.s	130c <tan_dat_tbl+0x11b0>
    1260:	8d 71       	bt.s	1346 <tan_dat_tbl+0x11ea>
    1262:	8d 8d       	bt.s	1180 <tan_dat_tbl+0x1024>
    1264:	8d a9       	bt.s	11ba <tan_dat_tbl+0x105e>
    1266:	8d c5       	bt.s	11f4 <tan_dat_tbl+0x1098>
    1268:	8d e1       	bt.s	122e <tan_dat_tbl+0x10d2>
    126a:	8d fd       	bt.s	1268 <tan_dat_tbl+0x110c>
    126c:	8e 19       	.word 0x8e19
    126e:	8e 35       	.word 0x8e35
    1270:	8e 51       	.word 0x8e51
    1272:	8e 6d       	.word 0x8e6d
    1274:	8e 89       	.word 0x8e89
    1276:	8e a6       	.word 0x8ea6
    1278:	8e c2       	.word 0x8ec2
    127a:	8e de       	.word 0x8ede
    127c:	8e fa       	.word 0x8efa
    127e:	8f 17       	bf.s	12b0 <tan_dat_tbl+0x1154>
    1280:	8f 33       	bf.s	12ea <tan_dat_tbl+0x118e>
    1282:	8f 4f       	bf.s	1324 <tan_dat_tbl+0x11c8>
    1284:	8f 6b       	bf.s	135e <tan_dat_tbl+0x1202>
    1286:	8f 88       	bf.s	119a <tan_dat_tbl+0x103e>
    1288:	8f a4       	bf.s	11d4 <tan_dat_tbl+0x1078>
    128a:	8f c1       	bf.s	1210 <tan_dat_tbl+0x10b4>
    128c:	8f dd       	bf.s	124a <tan_dat_tbl+0x10ee>
    128e:	8f f9       	bf.s	1284 <tan_dat_tbl+0x1128>
    1290:	90 16       	mov.w	12c0 <tan_dat_tbl+0x1164>,r0	! 92c9
    1292:	90 32       	mov.w	12fa <tan_dat_tbl+0x119e>,r0	! 9620
    1294:	90 4f       	mov.w	1336 <tan_dat_tbl+0x11da>,r0	! 99ab
    1296:	90 6c       	mov.w	1372 <tan_dat_tbl+0x1216>,r0	! 9d51
    1298:	90 88       	mov.w	13ac <tan_dat_tbl+0x1250>,r0	! a0f0
    129a:	90 a5       	mov.w	13e8 <tan_dat_tbl+0x128c>,r0	! a4cc
    129c:	90 c1       	mov.w	1422 <tan_dat_tbl+0x12c6>,r0	! a8a2
    129e:	90 de       	mov.w	145e <tan_dat_tbl+0x1302>,r0	! acb9
    12a0:	90 fb       	mov.w	149a <tan_dat_tbl+0x133e>,r0	! b0f2
    12a2:	91 17       	mov.w	12d4 <tan_dat_tbl+0x1178>,r1	! 93ed
    12a4:	91 34       	mov.w	1310 <tan_dat_tbl+0x11b4>,r1	! 976a
    12a6:	91 51       	mov.w	134c <tan_dat_tbl+0x11f0>,r1	! 9aff
    12a8:	91 6e       	mov.w	1388 <tan_dat_tbl+0x122c>,r1	! 9eae
    12aa:	91 8a       	mov.w	13c2 <tan_dat_tbl+0x1266>,r1	! a257
    12ac:	91 a7       	mov.w	13fe <tan_dat_tbl+0x12a2>,r1	! a63d
    12ae:	91 c4       	mov.w	143a <tan_dat_tbl+0x12de>,r1	! aa41
    12b0:	91 e1       	mov.w	1476 <tan_dat_tbl+0x131a>,r1	! ae66
    12b2:	91 fe       	mov.w	14b2 <tan_dat_tbl+0x1356>,r1	! b2ac
    12b4:	92 1b       	mov.w	12ee <tan_dat_tbl+0x1192>,r2	! 956d
    12b6:	92 38       	mov.w	132a <tan_dat_tbl+0x11ce>,r2	! 98f4
    12b8:	92 55       	mov.w	1366 <tan_dat_tbl+0x120a>,r2	! 9c94
    12ba:	92 72       	mov.w	13a2 <tan_dat_tbl+0x1246>,r2	! a04f
    12bc:	92 8f       	mov.w	13de <tan_dat_tbl+0x1282>,r2	! a425
    12be:	92 ac       	mov.w	141a <tan_dat_tbl+0x12be>,r2	! a819
    12c0:	92 c9       	mov.w	1456 <tan_dat_tbl+0x12fa>,r2	! ac2c
    12c2:	92 e6       	mov.w	1492 <tan_dat_tbl+0x1336>,r2	! b060
    12c4:	93 03       	mov.w	12ce <tan_dat_tbl+0x1172>,r3	! 9395
    12c6:	93 20       	mov.w	130a <tan_dat_tbl+0x11ae>,r3	! 970f
    12c8:	93 3d       	mov.w	1346 <tan_dat_tbl+0x11ea>,r3	! 9aa2
    12ca:	93 5b       	mov.w	1384 <tan_dat_tbl+0x1228>,r3	! 9e6e
    12cc:	93 78       	mov.w	13c0 <tan_dat_tbl+0x1264>,r3	! a236
    12ce:	93 95       	mov.w	13fc <tan_dat_tbl+0x12a0>,r3	! a61b
    12d0:	93 b2       	mov.w	1438 <tan_dat_tbl+0x12dc>,r3	! aa1e
    12d2:	93 d0       	mov.w	1476 <tan_dat_tbl+0x131a>,r3	! ae66
    12d4:	93 ed       	mov.w	14b2 <tan_dat_tbl+0x1356>,r3	! b2ac
    12d6:	94 0a       	mov.w	12ee <tan_dat_tbl+0x1192>,r4	! 956d
    12d8:	94 28       	mov.w	132c <tan_dat_tbl+0x11d0>,r4	! 9912
    12da:	94 45       	mov.w	1368 <tan_dat_tbl+0x120c>,r4	! 9cb3
    12dc:	94 63       	mov.w	13a6 <tan_dat_tbl+0x124a>,r4	! a08f
    12de:	94 80       	mov.w	13e2 <tan_dat_tbl+0x1286>,r4	! a468
    12e0:	94 9e       	mov.w	1420 <tan_dat_tbl+0x12c4>,r4	! a880
    12e2:	94 bb       	mov.w	145c <tan_dat_tbl+0x1300>,r4	! ac96
    12e4:	94 d9       	mov.w	149a <tan_dat_tbl+0x133e>,r4	! b0f2
    12e6:	94 f6       	mov.w	14d6 <tan_dat_tbl+0x137a>,r4	! b54d
    12e8:	95 14       	mov.w	1314 <tan_dat_tbl+0x11b8>,r5	! 97a6
    12ea:	95 32       	mov.w	1352 <tan_dat_tbl+0x11f6>,r5	! 9b5c
    12ec:	95 4f       	mov.w	138e <tan_dat_tbl+0x1232>,r5	! 9f0d
    12ee:	95 6d       	mov.w	13cc <tan_dat_tbl+0x1270>,r5	! a2fb
    12f0:	95 8b       	mov.w	140a <tan_dat_tbl+0x12ae>,r5	! a708
    12f2:	95 a8       	mov.w	1446 <tan_dat_tbl+0x12ea>,r5	! ab13
    12f4:	95 c6       	mov.w	1484 <tan_dat_tbl+0x1328>,r5	! af62
    12f6:	95 e4       	mov.w	14c2 <tan_dat_tbl+0x1366>,r5	! b3d5
    12f8:	96 02       	mov.w	1300 <tan_dat_tbl+0x11a4>,r6	! 9679
    12fa:	96 20       	mov.w	133e <tan_dat_tbl+0x11e2>,r6	! 9a26
    12fc:	96 3d       	mov.w	137a <tan_dat_tbl+0x121e>,r6	! 9dcf
    12fe:	96 5b       	mov.w	13b8 <tan_dat_tbl+0x125c>,r6	! a1b3
    1300:	96 79       	mov.w	13f6 <tan_dat_tbl+0x129a>,r6	! a5b6
    1302:	96 97       	mov.w	1434 <tan_dat_tbl+0x12d8>,r6	! a9d9
    1304:	96 b5       	mov.w	1472 <tan_dat_tbl+0x1316>,r6	! ae1e
    1306:	96 d3       	mov.w	14b0 <tan_dat_tbl+0x1354>,r6	! b287
    1308:	96 f1       	mov.w	14ee <tan_dat_tbl+0x1392>,r6	! b715
    130a:	97 0f       	mov.w	132c <tan_dat_tbl+0x11d0>,r7	! 9912
    130c:	97 2d       	mov.w	136a <tan_dat_tbl+0x120e>,r7	! 9cd3
    130e:	97 4b       	mov.w	13a8 <tan_dat_tbl+0x124c>,r7	! a0af
    1310:	97 6a       	mov.w	13e8 <tan_dat_tbl+0x128c>,r7	! a4cc
    1312:	97 88       	mov.w	1426 <tan_dat_tbl+0x12ca>,r7	! a8e7
    1314:	97 a6       	mov.w	1464 <tan_dat_tbl+0x1308>,r7	! ad24
    1316:	97 c4       	mov.w	14a2 <tan_dat_tbl+0x1346>,r7	! b184
    1318:	97 e2       	mov.w	14e0 <tan_dat_tbl+0x1384>,r7	! b60a
    131a:	98 01       	mov.w	1320 <tan_dat_tbl+0x11c4>,r8	! 985c
    131c:	98 1f       	mov.w	135e <tan_dat_tbl+0x1202>,r8	! 9c17
    131e:	98 3d       	mov.w	139c <tan_dat_tbl+0x1240>,r8	! 9fee
    1320:	98 5c       	mov.w	13dc <tan_dat_tbl+0x1280>,r8	! a404
    1322:	98 7a       	mov.w	141a <tan_dat_tbl+0x12be>,r8	! a819
    1324:	98 98       	mov.w	1458 <tan_dat_tbl+0x12fc>,r8	! ac4f
    1326:	98 b7       	mov.w	1498 <tan_dat_tbl+0x133c>,r8	! b0cd
    1328:	98 d5       	mov.w	14d6 <tan_dat_tbl+0x137a>,r8	! b54d
    132a:	98 f4       	mov.w	1516 <tan_dat_tbl+0x13ba>,r8	! ba1b
    132c:	99 12       	mov.w	1354 <tan_dat_tbl+0x11f8>,r9	! 9b7b
    132e:	99 31       	mov.w	1394 <tan_dat_tbl+0x1238>,r9	! 9f6d
    1330:	99 4f       	mov.w	13d2 <tan_dat_tbl+0x1276>,r9	! a35e
    1332:	99 6e       	mov.w	1412 <tan_dat_tbl+0x12b6>,r9	! a790
    1334:	99 8d       	mov.w	1452 <tan_dat_tbl+0x12f6>,r9	! abe5
    1336:	99 ab       	mov.w	1490 <tan_dat_tbl+0x1334>,r9	! b03b
    1338:	99 ca       	mov.w	14d0 <tan_dat_tbl+0x1374>,r9	! b4dc
    133a:	99 e9       	mov.w	1510 <tan_dat_tbl+0x13b4>,r9	! b9a6
    133c:	9a 08       	mov.w	1350 <tan_dat_tbl+0x11f4>,r10	! 9b3d
    133e:	9a 26       	mov.w	138e <tan_dat_tbl+0x1232>,r10	! 9f0d
    1340:	9a 45       	mov.w	13ce <tan_dat_tbl+0x1272>,r10	! a31c
    1342:	9a 64       	mov.w	140e <tan_dat_tbl+0x12b2>,r10	! a74c
    1344:	9a 83       	mov.w	144e <tan_dat_tbl+0x12f2>,r10	! ab9f
    1346:	9a a2       	mov.w	148e <tan_dat_tbl+0x1332>,r10	! b017
    1348:	9a c1       	mov.w	14ce <tan_dat_tbl+0x1372>,r10	! b4b6
    134a:	9a e0       	mov.w	150e <tan_dat_tbl+0x13b2>,r10	! b97f
    134c:	9a ff       	mov.w	154e <tan_dat_tbl+0x13f2>,r10	! be74
    134e:	9b 1e       	mov.w	138e <tan_dat_tbl+0x1232>,r11	! 9f0d
    1350:	9b 3d       	mov.w	13ce <tan_dat_tbl+0x1272>,r11	! a31c
    1352:	9b 5c       	mov.w	140e <tan_dat_tbl+0x12b2>,r11	! a74c
    1354:	9b 7b       	mov.w	144e <tan_dat_tbl+0x12f2>,r11	! ab9f
    1356:	9b 9a       	mov.w	148e <tan_dat_tbl+0x1332>,r11	! b017
    1358:	9b b9       	mov.w	14ce <tan_dat_tbl+0x1372>,r11	! b4b6
    135a:	9b d8       	mov.w	150e <tan_dat_tbl+0x13b2>,r11	! b97f
    135c:	9b f7       	mov.w	154e <tan_dat_tbl+0x13f2>,r11	! be74
    135e:	9c 17       	mov.w	1390 <tan_dat_tbl+0x1234>,r12	! 9f2d
    1360:	9c 36       	mov.w	13d0 <tan_dat_tbl+0x1274>,r12	! a33d
    1362:	9c 55       	mov.w	1410 <tan_dat_tbl+0x12b4>,r12	! a76e
    1364:	9c 75       	mov.w	1452 <tan_dat_tbl+0x12f6>,r12	! abe5
    1366:	9c 94       	mov.w	1492 <tan_dat_tbl+0x1336>,r12	! b060
    1368:	9c b3       	mov.w	14d2 <tan_dat_tbl+0x1376>,r12	! b501
    136a:	9c d3       	mov.w	1514 <tan_dat_tbl+0x13b8>,r12	! b9f4
    136c:	9c f2       	mov.w	1554 <tan_dat_tbl+0x13f8>,r12	! beee
    136e:	9d 12       	mov.w	1396 <tan_dat_tbl+0x123a>,r13	! 9f8d
    1370:	9d 31       	mov.w	13d6 <tan_dat_tbl+0x127a>,r13	! a3a0
    1372:	9d 51       	mov.w	1418 <tan_dat_tbl+0x12bc>,r13	! a7f7
    1374:	9d 70       	mov.w	1458 <tan_dat_tbl+0x12fc>,r13	! ac4f
    1376:	9d 90       	mov.w	149a <tan_dat_tbl+0x133e>,r13	! b0f2
    1378:	9d af       	mov.w	14da <tan_dat_tbl+0x137e>,r13	! b599
    137a:	9d cf       	mov.w	151c <tan_dat_tbl+0x13c0>,r13	! ba91
    137c:	9d ef       	mov.w	155e <tan_dat_tbl+0x1402>,r13	! bfb9
    137e:	9e 0e       	mov.w	139e <tan_dat_tbl+0x1242>,r14	! a00e
    1380:	9e 2e       	mov.w	13e0 <tan_dat_tbl+0x1284>,r14	! a446
    1382:	9e 4e       	mov.w	1422 <tan_dat_tbl+0x12c6>,r14	! a8a2
    1384:	9e 6e       	mov.w	1464 <tan_dat_tbl+0x1308>,r14	! ad24
    1386:	9e 8e       	mov.w	14a6 <tan_dat_tbl+0x134a>,r14	! b1ce
    1388:	9e ae       	mov.w	14e8 <tan_dat_tbl+0x138c>,r14	! b6a3
    138a:	9e cd       	mov.w	1528 <tan_dat_tbl+0x13cc>,r14	! bb7d
    138c:	9e ed       	mov.w	156a <tan_dat_tbl+0x140e>,r14	! c0ae
    138e:	9f 0d       	mov.w	13ac <tan_dat_tbl+0x1250>,r15	! a0f0
    1390:	9f 2d       	mov.w	13ee <tan_dat_tbl+0x1292>,r15	! a530
    1392:	9f 4d       	mov.w	1430 <tan_dat_tbl+0x12d4>,r15	! a994
    1394:	9f 6d       	mov.w	1472 <tan_dat_tbl+0x1316>,r15	! ae1e
    1396:	9f 8d       	mov.w	14b4 <tan_dat_tbl+0x1358>,r15	! b2d1
    1398:	9f ae       	mov.w	14f8 <tan_dat_tbl+0x139c>,r15	! b7d5
    139a:	9f ce       	mov.w	153a <tan_dat_tbl+0x13de>,r15	! bce3
    139c:	9f ee       	mov.w	157c <tan_dat_tbl+0x1420>,r15	! c222
    139e:	a0 0e       	bra	13be <tan_dat_tbl+0x1262>
    13a0:	a0 2e       	bra	1400 <tan_dat_tbl+0x12a4>
    13a2:	a0 4f       	bra	1444 <tan_dat_tbl+0x12e8>
    13a4:	a0 6f       	bra	1486 <tan_dat_tbl+0x132a>
    13a6:	a0 8f       	bra	14c8 <tan_dat_tbl+0x136c>
    13a8:	a0 af       	bra	150a <tan_dat_tbl+0x13ae>
    13aa:	a0 d0       	bra	154e <tan_dat_tbl+0x13f2>
    13ac:	a0 f0       	bra	1590 <tan_dat_tbl+0x1434>
    13ae:	a1 11       	bra	15d4 <tan_dat_tbl+0x1478>
    13b0:	a1 31       	bra	1616 <tan_dat_tbl+0x14ba>
    13b2:	a1 52       	bra	165a <tan_dat_tbl+0x14fe>
    13b4:	a1 72       	bra	169c <tan_dat_tbl+0x1540>
    13b6:	a1 93       	bra	16e0 <tan_dat_tbl+0x1584>
    13b8:	a1 b3       	bra	1722 <tan_dat_tbl+0x15c6>
    13ba:	a1 d4       	bra	1766 <tan_dat_tbl+0x160a>
    13bc:	a1 f5       	bra	17aa <tan_dat_tbl+0x164e>
    13be:	a2 15       	bra	17ec <tan_dat_tbl+0x1690>
    13c0:	a2 36       	bra	1830 <tan_dat_tbl+0x16d4>
    13c2:	a2 57       	bra	1874 <tan_dat_tbl+0x1718>
    13c4:	a2 78       	bra	18b8 <tan_dat_tbl+0x175c>
    13c6:	a2 99       	bra	18fc <tan_dat_tbl+0x17a0>
    13c8:	a2 b9       	bra	193e <tan_dat_tbl+0x17e2>
    13ca:	a2 da       	bra	1982 <tan_dat_tbl+0x1826>
    13cc:	a2 fb       	bra	19c6 <tan_dat_tbl+0x186a>
    13ce:	a3 1c       	bra	1a0a <tan_dat_tbl+0x18ae>
    13d0:	a3 3d       	bra	1a4e <tan_dat_tbl+0x18f2>
    13d2:	a3 5e       	bra	1a92 <tan_dat_tbl+0x1936>
    13d4:	a3 7f       	bra	1ad6 <tan_dat_tbl+0x197a>
    13d6:	a3 a0       	bra	1b1a <tan_dat_tbl+0x19be>
    13d8:	a3 c1       	bra	1b5e <tan_dat_tbl+0x1a02>
    13da:	a3 e3       	bra	1ba4 <tan_dat_tbl+0x1a48>
    13dc:	a4 04       	bra	1be8 <tan_dat_tbl+0x1a8c>
    13de:	a4 25       	bra	1c2c <tan_dat_tbl+0x1ad0>
    13e0:	a4 46       	bra	1c70 <tan_dat_tbl+0x1b14>
    13e2:	a4 68       	bra	1cb6 <tan_dat_tbl+0x1b5a>
    13e4:	a4 89       	bra	1cfa <tan_dat_tbl+0x1b9e>
    13e6:	a4 aa       	bra	1d3e <tan_dat_tbl+0x1be2>
    13e8:	a4 cc       	bra	1d84 <tan_dat_tbl+0x1c28>
    13ea:	a4 ed       	bra	1dc8 <tan_dat_tbl+0x1c6c>
    13ec:	a5 0e       	bra	1e0c <tan_dat_tbl+0x1cb0>
    13ee:	a5 30       	bra	1e52 <tan_dat_tbl+0x1cf6>
    13f0:	a5 51       	bra	1e96 <tan_dat_tbl+0x1d3a>
    13f2:	a5 73       	bra	1edc <tan_dat_tbl+0x1d80>
    13f4:	a5 95       	bra	1f22 <tan_dat_tbl+0x1dc6>
    13f6:	a5 b6       	bra	1f66 <tan_dat_tbl+0x1e0a>
    13f8:	a5 d8       	bra	1fac <tan_dat_tbl+0x1e50>
    13fa:	a5 fa       	bra	1ff2 <tan_dat_tbl+0x1e96>
    13fc:	a6 1b       	bra	2036 <tan_dat_tbl+0x1eda>
    13fe:	a6 3d       	bra	207c <tan_dat_tbl+0x1f20>
    1400:	a6 5f       	bra	20c2 <tan_dat_tbl+0x1f66>
    1402:	a6 81       	bra	2108 <tan_dat_tbl+0x1fac>
    1404:	a6 a2       	bra	214c <tan_dat_tbl+0x1ff0>
    1406:	a6 c4       	bra	2192 <tan_dat_tbl+0x2036>
    1408:	a6 e6       	bra	21d8 <tan_dat_tbl+0x207c>
    140a:	a7 08       	bra	221e <tan_dat_tbl+0x20c2>
    140c:	a7 2a       	bra	2264 <tan_dat_tbl+0x2108>
    140e:	a7 4c       	bra	22aa <tan_dat_tbl+0x214e>
    1410:	a7 6e       	bra	22f0 <tan_dat_tbl+0x2194>
    1412:	a7 90       	bra	2336 <tan_dat_tbl+0x21da>
    1414:	a7 b2       	bra	237c <tan_dat_tbl+0x2220>
    1416:	a7 d5       	bra	23c4 <tan_dat_tbl+0x2268>
    1418:	a7 f7       	bra	240a <tan_dat_tbl+0x22ae>
    141a:	a8 19       	bra	450 <tan_dat_tbl+0x2f4>
    141c:	a8 3b       	bra	496 <tan_dat_tbl+0x33a>
    141e:	a8 5e       	bra	4de <tan_dat_tbl+0x382>
    1420:	a8 80       	bra	524 <tan_dat_tbl+0x3c8>
    1422:	a8 a2       	bra	56a <tan_dat_tbl+0x40e>
    1424:	a8 c5       	bra	5b2 <tan_dat_tbl+0x456>
    1426:	a8 e7       	bra	5f8 <tan_dat_tbl+0x49c>
    1428:	a9 09       	bra	63e <tan_dat_tbl+0x4e2>
    142a:	a9 2c       	bra	686 <tan_dat_tbl+0x52a>
    142c:	a9 4f       	bra	6ce <tan_dat_tbl+0x572>
    142e:	a9 71       	bra	714 <tan_dat_tbl+0x5b8>
    1430:	a9 94       	bra	75c <tan_dat_tbl+0x600>
    1432:	a9 b6       	bra	7a2 <tan_dat_tbl+0x646>
    1434:	a9 d9       	bra	7ea <tan_dat_tbl+0x68e>
    1436:	a9 fc       	bra	832 <tan_dat_tbl+0x6d6>
    1438:	aa 1e       	bra	878 <tan_dat_tbl+0x71c>
    143a:	aa 41       	bra	8c0 <tan_dat_tbl+0x764>
    143c:	aa 64       	bra	908 <tan_dat_tbl+0x7ac>
    143e:	aa 87       	bra	950 <tan_dat_tbl+0x7f4>
    1440:	aa aa       	bra	998 <tan_dat_tbl+0x83c>
    1442:	aa cd       	bra	9e0 <tan_dat_tbl+0x884>
    1444:	aa f0       	bra	a28 <tan_dat_tbl+0x8cc>
    1446:	ab 13       	bra	a70 <tan_dat_tbl+0x914>
    1448:	ab 36       	bra	ab8 <tan_dat_tbl+0x95c>
    144a:	ab 59       	bra	b00 <tan_dat_tbl+0x9a4>
    144c:	ab 7c       	bra	b48 <tan_dat_tbl+0x9ec>
    144e:	ab 9f       	bra	b90 <tan_dat_tbl+0xa34>
    1450:	ab c2       	bra	bd8 <tan_dat_tbl+0xa7c>
    1452:	ab e5       	bra	c20 <tan_dat_tbl+0xac4>
    1454:	ac 09       	bra	c6a <tan_dat_tbl+0xb0e>
    1456:	ac 2c       	bra	cb2 <tan_dat_tbl+0xb56>
    1458:	ac 4f       	bra	cfa <tan_dat_tbl+0xb9e>
    145a:	ac 73       	bra	d44 <tan_dat_tbl+0xbe8>
    145c:	ac 96       	bra	d8c <tan_dat_tbl+0xc30>
    145e:	ac b9       	bra	dd4 <tan_dat_tbl+0xc78>
    1460:	ac dd       	bra	e1e <tan_dat_tbl+0xcc2>
    1462:	ad 00       	bra	e66 <tan_dat_tbl+0xd0a>
    1464:	ad 24       	bra	eb0 <tan_dat_tbl+0xd54>
    1466:	ad 48       	bra	efa <tan_dat_tbl+0xd9e>
    1468:	ad 6b       	bra	f42 <tan_dat_tbl+0xde6>
    146a:	ad 8f       	bra	f8c <tan_dat_tbl+0xe30>
    146c:	ad b3       	bra	fd6 <tan_dat_tbl+0xe7a>
    146e:	ad d6       	bra	101e <tan_dat_tbl+0xec2>
    1470:	ad fa       	bra	1068 <tan_dat_tbl+0xf0c>
    1472:	ae 1e       	bra	10b2 <tan_dat_tbl+0xf56>
    1474:	ae 42       	bra	10fc <tan_dat_tbl+0xfa0>
    1476:	ae 66       	bra	1146 <tan_dat_tbl+0xfea>
    1478:	ae 89       	bra	118e <tan_dat_tbl+0x1032>
    147a:	ae ad       	bra	11d8 <tan_dat_tbl+0x107c>
    147c:	ae d1       	bra	1222 <tan_dat_tbl+0x10c6>
    147e:	ae f5       	bra	126c <tan_dat_tbl+0x1110>
    1480:	af 19       	bra	12b6 <tan_dat_tbl+0x115a>
    1482:	af 3e       	bra	1302 <tan_dat_tbl+0x11a6>
    1484:	af 62       	bra	134c <tan_dat_tbl+0x11f0>
    1486:	af 86       	bra	1396 <tan_dat_tbl+0x123a>
    1488:	af aa       	bra	13e0 <tan_dat_tbl+0x1284>
    148a:	af ce       	bra	142a <tan_dat_tbl+0x12ce>
    148c:	af f3       	bra	1476 <tan_dat_tbl+0x131a>
    148e:	b0 17       	bsr	14c0 <tan_dat_tbl+0x1364>
    1490:	b0 3b       	bsr	150a <tan_dat_tbl+0x13ae>
    1492:	b0 60       	bsr	1556 <tan_dat_tbl+0x13fa>
    1494:	b0 84       	bsr	15a0 <tan_dat_tbl+0x1444>
    1496:	b0 a9       	bsr	15ec <tan_dat_tbl+0x1490>
    1498:	b0 cd       	bsr	1636 <tan_dat_tbl+0x14da>
    149a:	b0 f2       	bsr	1682 <tan_dat_tbl+0x1526>
    149c:	b1 16       	bsr	16cc <tan_dat_tbl+0x1570>
    149e:	b1 3b       	bsr	1718 <tan_dat_tbl+0x15bc>
    14a0:	b1 60       	bsr	1764 <tan_dat_tbl+0x1608>
    14a2:	b1 84       	bsr	17ae <tan_dat_tbl+0x1652>
    14a4:	b1 a9       	bsr	17fa <tan_dat_tbl+0x169e>
    14a6:	b1 ce       	bsr	1846 <tan_dat_tbl+0x16ea>
    14a8:	b1 f3       	bsr	1892 <tan_dat_tbl+0x1736>
    14aa:	b2 18       	bsr	18de <tan_dat_tbl+0x1782>
    14ac:	b2 3d       	bsr	192a <tan_dat_tbl+0x17ce>
    14ae:	b2 62       	bsr	1976 <tan_dat_tbl+0x181a>
    14b0:	b2 87       	bsr	19c2 <tan_dat_tbl+0x1866>
    14b2:	b2 ac       	bsr	1a0e <tan_dat_tbl+0x18b2>
    14b4:	b2 d1       	bsr	1a5a <tan_dat_tbl+0x18fe>
    14b6:	b2 f6       	bsr	1aa6 <tan_dat_tbl+0x194a>
    14b8:	b3 1b       	bsr	1af2 <tan_dat_tbl+0x1996>
    14ba:	b3 40       	bsr	1b3e <tan_dat_tbl+0x19e2>
    14bc:	b3 65       	bsr	1b8a <tan_dat_tbl+0x1a2e>
    14be:	b3 8b       	bsr	1bd8 <tan_dat_tbl+0x1a7c>
    14c0:	b3 b0       	bsr	1c24 <tan_dat_tbl+0x1ac8>
    14c2:	b3 d5       	bsr	1c70 <tan_dat_tbl+0x1b14>
    14c4:	b3 fb       	bsr	1cbe <tan_dat_tbl+0x1b62>
    14c6:	b4 20       	bsr	1d0a <tan_dat_tbl+0x1bae>
    14c8:	b4 46       	bsr	1d58 <tan_dat_tbl+0x1bfc>
    14ca:	b4 6b       	bsr	1da4 <tan_dat_tbl+0x1c48>
    14cc:	b4 91       	bsr	1df2 <tan_dat_tbl+0x1c96>
    14ce:	b4 b6       	bsr	1e3e <tan_dat_tbl+0x1ce2>
    14d0:	b4 dc       	bsr	1e8c <tan_dat_tbl+0x1d30>
    14d2:	b5 01       	bsr	1ed8 <tan_dat_tbl+0x1d7c>
    14d4:	b5 27       	bsr	1f26 <tan_dat_tbl+0x1dca>
    14d6:	b5 4d       	bsr	1f74 <tan_dat_tbl+0x1e18>
    14d8:	b5 73       	bsr	1fc2 <tan_dat_tbl+0x1e66>
    14da:	b5 99       	bsr	2010 <tan_dat_tbl+0x1eb4>
    14dc:	b5 be       	bsr	205c <tan_dat_tbl+0x1f00>
    14de:	b5 e4       	bsr	20aa <tan_dat_tbl+0x1f4e>
    14e0:	b6 0a       	bsr	20f8 <tan_dat_tbl+0x1f9c>
    14e2:	b6 30       	bsr	2146 <tan_dat_tbl+0x1fea>
    14e4:	b6 56       	bsr	2194 <tan_dat_tbl+0x2038>
    14e6:	b6 7d       	bsr	21e4 <tan_dat_tbl+0x2088>
    14e8:	b6 a3       	bsr	2232 <tan_dat_tbl+0x20d6>
    14ea:	b6 c9       	bsr	2280 <tan_dat_tbl+0x2124>
    14ec:	b6 ef       	bsr	22ce <tan_dat_tbl+0x2172>
    14ee:	b7 15       	bsr	231c <tan_dat_tbl+0x21c0>
    14f0:	b7 3c       	bsr	236c <tan_dat_tbl+0x2210>
    14f2:	b7 62       	bsr	23ba <tan_dat_tbl+0x225e>
    14f4:	b7 88       	bsr	2408 <tan_dat_tbl+0x22ac>
    14f6:	b7 af       	bsr	2458 <tan_dat_tbl+0x22fc>
    14f8:	b7 d5       	bsr	24a6 <tan_dat_tbl+0x234a>
    14fa:	b7 fc       	bsr	24f6 <tan_dat_tbl+0x239a>
    14fc:	b8 22       	bsr	544 <tan_dat_tbl+0x3e8>
    14fe:	b8 49       	bsr	594 <tan_dat_tbl+0x438>
    1500:	b8 6f       	bsr	5e2 <tan_dat_tbl+0x486>
    1502:	b8 96       	bsr	632 <tan_dat_tbl+0x4d6>
    1504:	b8 bd       	bsr	682 <tan_dat_tbl+0x526>
    1506:	b8 e4       	bsr	6d2 <tan_dat_tbl+0x576>
    1508:	b9 0a       	bsr	720 <tan_dat_tbl+0x5c4>
    150a:	b9 31       	bsr	770 <tan_dat_tbl+0x614>
    150c:	b9 58       	bsr	7c0 <tan_dat_tbl+0x664>
    150e:	b9 7f       	bsr	810 <tan_dat_tbl+0x6b4>
    1510:	b9 a6       	bsr	860 <tan_dat_tbl+0x704>
    1512:	b9 cd       	bsr	8b0 <tan_dat_tbl+0x754>
    1514:	b9 f4       	bsr	900 <tan_dat_tbl+0x7a4>
    1516:	ba 1b       	bsr	950 <tan_dat_tbl+0x7f4>
    1518:	ba 42       	bsr	9a0 <tan_dat_tbl+0x844>
    151a:	ba 6a       	bsr	9f2 <tan_dat_tbl+0x896>
    151c:	ba 91       	bsr	a42 <tan_dat_tbl+0x8e6>
    151e:	ba b8       	bsr	a92 <tan_dat_tbl+0x936>
    1520:	ba e0       	bsr	ae4 <tan_dat_tbl+0x988>
    1522:	bb 07       	bsr	b34 <tan_dat_tbl+0x9d8>
    1524:	bb 2e       	bsr	b84 <tan_dat_tbl+0xa28>
    1526:	bb 56       	bsr	bd6 <tan_dat_tbl+0xa7a>
    1528:	bb 7d       	bsr	c26 <tan_dat_tbl+0xaca>
    152a:	bb a5       	bsr	c78 <tan_dat_tbl+0xb1c>
    152c:	bb cc       	bsr	cc8 <tan_dat_tbl+0xb6c>
    152e:	bb f4       	bsr	d1a <tan_dat_tbl+0xbbe>
    1530:	bc 1c       	bsr	d6c <tan_dat_tbl+0xc10>
    1532:	bc 43       	bsr	dbc <tan_dat_tbl+0xc60>
    1534:	bc 6b       	bsr	e0e <tan_dat_tbl+0xcb2>
    1536:	bc 93       	bsr	e60 <tan_dat_tbl+0xd04>
    1538:	bc bb       	bsr	eb2 <tan_dat_tbl+0xd56>
    153a:	bc e3       	bsr	f04 <tan_dat_tbl+0xda8>
    153c:	bd 0b       	bsr	f56 <tan_dat_tbl+0xdfa>
    153e:	bd 33       	bsr	fa8 <tan_dat_tbl+0xe4c>
    1540:	bd 5b       	bsr	ffa <tan_dat_tbl+0xe9e>
    1542:	bd 83       	bsr	104c <tan_dat_tbl+0xef0>
    1544:	bd ab       	bsr	109e <tan_dat_tbl+0xf42>
    1546:	bd d3       	bsr	10f0 <tan_dat_tbl+0xf94>
    1548:	bd fb       	bsr	1142 <tan_dat_tbl+0xfe6>
    154a:	be 24       	bsr	1196 <tan_dat_tbl+0x103a>
    154c:	be 4c       	bsr	11e8 <tan_dat_tbl+0x108c>
    154e:	be 74       	bsr	123a <tan_dat_tbl+0x10de>
    1550:	be 9d       	bsr	128e <tan_dat_tbl+0x1132>
    1552:	be c5       	bsr	12e0 <tan_dat_tbl+0x1184>
    1554:	be ee       	bsr	1334 <tan_dat_tbl+0x11d8>
    1556:	bf 16       	bsr	1386 <tan_dat_tbl+0x122a>
    1558:	bf 3f       	bsr	13da <tan_dat_tbl+0x127e>
    155a:	bf 68       	bsr	142e <tan_dat_tbl+0x12d2>
    155c:	bf 90       	bsr	1480 <tan_dat_tbl+0x1324>
    155e:	bf b9       	bsr	14d4 <tan_dat_tbl+0x1378>
    1560:	bf e2       	bsr	1528 <tan_dat_tbl+0x13cc>
    1562:	c0 0b       	mov.b	r0,@(11,gbr)
    1564:	c0 34       	mov.b	r0,@(52,gbr)
    1566:	c0 5c       	mov.b	r0,@(92,gbr)
    1568:	c0 85       	mov.b	r0,@(133,gbr)
    156a:	c0 ae       	mov.b	r0,@(174,gbr)
    156c:	c0 d7       	mov.b	r0,@(215,gbr)
    156e:	c1 01       	mov.w	r0,@(2,gbr)
    1570:	c1 2a       	mov.w	r0,@(84,gbr)
    1572:	c1 53       	mov.w	r0,@(166,gbr)
    1574:	c1 7c       	mov.w	r0,@(248,gbr)
    1576:	c1 a6       	mov.w	r0,@(332,gbr)
    1578:	c1 cf       	mov.w	r0,@(414,gbr)
    157a:	c1 f8       	mov.w	r0,@(496,gbr)
    157c:	c2 22       	mov.l	r0,@(136,gbr)
    157e:	c2 4b       	mov.l	r0,@(300,gbr)
    1580:	c2 75       	mov.l	r0,@(468,gbr)
    1582:	c2 9e       	mov.l	r0,@(632,gbr)
    1584:	c2 c8       	mov.l	r0,@(800,gbr)
    1586:	c2 f2       	mov.l	r0,@(968,gbr)
    1588:	c3 1b       	trapa	#27
    158a:	c3 45       	trapa	#69
    158c:	c3 6f       	trapa	#111
    158e:	c3 99       	trapa	#-103
    1590:	c3 c3       	trapa	#-61
    1592:	c3 ed       	trapa	#-19
    1594:	c4 17       	mov.b	@(23,gbr),r0
    1596:	c4 41       	mov.b	@(65,gbr),r0
    1598:	c4 6b       	mov.b	@(107,gbr),r0
    159a:	c4 95       	mov.b	@(149,gbr),r0
    159c:	c4 c0       	mov.b	@(192,gbr),r0
    159e:	c4 ea       	mov.b	@(234,gbr),r0
    15a0:	c5 14       	mov.w	@(40,gbr),r0
    15a2:	c5 3f       	mov.w	@(126,gbr),r0
    15a4:	c5 69       	mov.w	@(210,gbr),r0
    15a6:	c5 93       	mov.w	@(294,gbr),r0
    15a8:	c5 be       	mov.w	@(380,gbr),r0
    15aa:	c5 e9       	mov.w	@(466,gbr),r0
    15ac:	c6 13       	mov.l	@(76,gbr),r0
    15ae:	c6 3e       	mov.l	@(248,gbr),r0
    15b0:	c6 69       	mov.l	@(420,gbr),r0
    15b2:	c6 93       	mov.l	@(588,gbr),r0
    15b4:	c6 be       	mov.l	@(760,gbr),r0
    15b6:	c6 e9       	mov.l	@(932,gbr),r0
    15b8:	c7 14       	mova	160c <tan_dat_tbl+0x14b0>,r0
    15ba:	c7 3f       	mova	16b8 <tan_dat_tbl+0x155c>,r0
    15bc:	c7 6a       	mova	1768 <tan_dat_tbl+0x160c>,r0
    15be:	c7 95       	mova	1814 <tan_dat_tbl+0x16b8>,r0
    15c0:	c7 c0       	mova	18c4 <tan_dat_tbl+0x1768>,r0
    15c2:	c7 ec       	mova	1974 <tan_dat_tbl+0x1818>,r0
    15c4:	c8 17       	tst	#23,r0
    15c6:	c8 42       	tst	#66,r0
    15c8:	c8 6d       	tst	#109,r0
    15ca:	c8 99       	tst	#-103,r0
    15cc:	c8 c4       	tst	#-60,r0
    15ce:	c8 f0       	tst	#-16,r0
    15d0:	c9 1b       	and	#27,r0
    15d2:	c9 47       	and	#71,r0
    15d4:	c9 73       	and	#115,r0
    15d6:	c9 9e       	and	#-98,r0
    15d8:	c9 ca       	and	#-54,r0
    15da:	c9 f6       	and	#-10,r0
    15dc:	ca 22       	xor	#34,r0
    15de:	ca 4e       	xor	#78,r0
    15e0:	ca 7a       	xor	#122,r0
    15e2:	ca a6       	xor	#-90,r0
    15e4:	ca d2       	xor	#-46,r0
    15e6:	ca fe       	xor	#-2,r0
    15e8:	cb 2a       	or	#42,r0
    15ea:	cb 56       	or	#86,r0
    15ec:	cb 83       	or	#-125,r0
    15ee:	cb af       	or	#-81,r0
    15f0:	cb dc       	or	#-36,r0
    15f2:	cc 08       	tst.b	#8,@(r0,gbr)
    15f4:	cc 35       	tst.b	#53,@(r0,gbr)
    15f6:	cc 61       	tst.b	#97,@(r0,gbr)
    15f8:	cc 8e       	tst.b	#-114,@(r0,gbr)
    15fa:	cc ba       	tst.b	#-70,@(r0,gbr)
    15fc:	cc e7       	tst.b	#-25,@(r0,gbr)
    15fe:	cd 14       	and.b	#20,@(r0,gbr)
    1600:	cd 41       	and.b	#65,@(r0,gbr)
    1602:	cd 6e       	and.b	#110,@(r0,gbr)
    1604:	cd 9b       	and.b	#-101,@(r0,gbr)
    1606:	cd c8       	and.b	#-56,@(r0,gbr)
    1608:	cd f5       	and.b	#-11,@(r0,gbr)
    160a:	ce 22       	xor.b	#34,@(r0,gbr)
    160c:	ce 4f       	xor.b	#79,@(r0,gbr)
    160e:	ce 7c       	xor.b	#124,@(r0,gbr)
    1610:	ce aa       	xor.b	#-86,@(r0,gbr)
    1612:	ce d7       	xor.b	#-41,@(r0,gbr)
    1614:	cf 04       	or.b	#4,@(r0,gbr)
    1616:	cf 32       	or.b	#50,@(r0,gbr)
    1618:	cf 5f       	or.b	#95,@(r0,gbr)
    161a:	cf 8d       	or.b	#-115,@(r0,gbr)
    161c:	cf bb       	or.b	#-69,@(r0,gbr)
    161e:	cf e8       	or.b	#-24,@(r0,gbr)
    1620:	d0 16       	mov.l	167c <tan_dat_tbl+0x1520>,r0	! d88ed8bf
    1622:	d0 44       	mov.l	1734 <tan_dat_tbl+0x15d8>,r0	! eb1deb54
    1624:	d0 72       	mov.l	17f0 <tan_dat_tbl+0x1694>,r0	! 805e807e
    1626:	d0 a0       	mov.l	18a8 <tan_dat_tbl+0x174c>,r0	! 8c948cb9
    1628:	d0 ce       	mov.l	1964 <tan_dat_tbl+0x1808>,r0	! 9b2e9b59
    162a:	d0 fc       	mov.l	1a1c <tan_dat_tbl+0x18c0>,r0	! ac2dac61
    162c:	d1 2a       	mov.l	16d8 <tan_dat_tbl+0x157c>,r1	! e18ce1bf
    162e:	d1 58       	mov.l	1790 <tan_dat_tbl+0x1634>,r1	! 7aa97ac6
    1630:	d1 86       	mov.l	184c <tan_dat_tbl+0x16f0>,r1	! 863f8661
    1632:	d1 b4       	mov.l	1904 <tan_dat_tbl+0x17a8>,r1	! 936c9394
    1634:	d1 e3       	mov.l	19c4 <tan_dat_tbl+0x1868>,r1	! a3aaa3da
    1636:	d2 11       	mov.l	167c <tan_dat_tbl+0x1520>,r2	! d88ed8bf
    1638:	d2 40       	mov.l	173c <tan_dat_tbl+0x15e0>,r2	! ebfaec31
    163a:	d2 6e       	mov.l	17f4 <tan_dat_tbl+0x1698>,r2	! 809d80bd
    163c:	d2 9d       	mov.l	18b4 <tan_dat_tbl+0x1758>,r2	! 8d718d96
    163e:	d2 cb       	mov.l	196c <tan_dat_tbl+0x1810>,r2	! 9bdc9c07
    1640:	d2 fa       	mov.l	1a2c <tan_dat_tbl+0x18d0>,r2	! adceae03
    1642:	d3 29       	mov.l	16e8 <tan_dat_tbl+0x158c>,r3	! e32be35f
    1644:	d3 57       	mov.l	17a4 <tan_dat_tbl+0x1648>,r3	! 7bd17bef
    1646:	d3 86       	mov.l	1860 <tan_dat_tbl+0x1704>,r3	! 879587b8
    1648:	d3 b5       	mov.l	1920 <tan_dat_tbl+0x17c4>,r3	! 959e95c6
    164a:	d3 e4       	mov.l	19dc <tan_dat_tbl+0x1880>,r3	! a5e9a61a
    164c:	d4 13       	mov.l	169c <tan_dat_tbl+0x1540>,r4	! db9fdbd1
    164e:	d4 42       	mov.l	1758 <tan_dat_tbl+0x15fc>,r4	! ef07ef40
    1650:	d4 71       	mov.l	1818 <tan_dat_tbl+0x16bc>,r4	! 82df8300
    1652:	d4 a1       	mov.l	18d8 <tan_dat_tbl+0x177c>,r4	! 9015903b
    1654:	d4 d0       	mov.l	1998 <tan_dat_tbl+0x183c>,r4	! 9fae9fdb
    1656:	d4 ff       	mov.l	1a54 <tan_dat_tbl+0x18f8>,r4	! b201b238
    1658:	d5 2f       	mov.l	1718 <tan_dat_tbl+0x15bc>,r5	! e823e859
    165a:	d5 5e       	mov.l	17d4 <tan_dat_tbl+0x1678>,r5	! 7ea97ec8
    165c:	d5 8e       	mov.l	1898 <tan_dat_tbl+0x173c>,r5	! 8b718b96
    165e:	d5 bd       	mov.l	1954 <tan_dat_tbl+0x17f8>,r5	! 99d79a02
    1660:	d5 ed       	mov.l	1a18 <tan_dat_tbl+0x18bc>,r5	! abc6abf9
    1662:	d6 1d       	mov.l	16d8 <tan_dat_tbl+0x157c>,r6	! e18ce1bf
    1664:	d6 4c       	mov.l	1798 <tan_dat_tbl+0x163c>,r6	! 7b1f7b3c
    1666:	d6 7c       	mov.l	1858 <tan_dat_tbl+0x16fc>,r6	! 870c872e
    1668:	d6 ac       	mov.l	191c <tan_dat_tbl+0x17c0>,r6	! 954c9575
    166a:	d6 dc       	mov.l	19dc <tan_dat_tbl+0x1880>,r6	! a5e9a61a
    166c:	d7 0c       	mov.l	16a0 <tan_dat_tbl+0x1544>,r7	! dc02dc34
    166e:	d7 3c       	mov.l	1760 <tan_dat_tbl+0x1604>,r7	! 77f47811
    1670:	d7 6c       	mov.l	1824 <tan_dat_tbl+0x16c8>,r7	! 83a383c4
    1672:	d7 9c       	mov.l	18e4 <tan_dat_tbl+0x1788>,r7	! 90fb9121
    1674:	d7 cd       	mov.l	19ac <tan_dat_tbl+0x1850>,r7	! a178a1a7
    1676:	d7 fd       	mov.l	1a6c <tan_dat_tbl+0x1910>,r7	! b49cb4d5
    1678:	d8 2d       	mov.l	1730 <tan_dat_tbl+0x15d4>,r8	! eaafeae6
    167a:	d8 5e       	mov.l	17f4 <tan_dat_tbl+0x1698>,r8	! 809d80bd
    167c:	d8 8e       	mov.l	18b8 <tan_dat_tbl+0x175c>,r8	! 8dbb8de0
    167e:	d8 bf       	mov.l	197c <tan_dat_tbl+0x1820>,r8	! 9d3b9d67
    1680:	d8 ef       	mov.l	1a40 <tan_dat_tbl+0x18e4>,r8	! afe2b018
    1682:	d9 20       	mov.l	1704 <tan_dat_tbl+0x15a8>,r9	! e60ce641
    1684:	d9 51       	mov.l	17cc <tan_dat_tbl+0x1670>,r9	! 7e2e7e4c
    1686:	d9 82       	mov.l	1890 <tan_dat_tbl+0x1734>,r9	! 8ae18b05
    1688:	d9 b3       	mov.l	1958 <tan_dat_tbl+0x17fc>,r9	! 9a2c9a57
    168a:	d9 e4       	mov.l	1a1c <tan_dat_tbl+0x18c0>,r9	! ac2dac61
    168c:	da 15       	mov.l	16e4 <tan_dat_tbl+0x1588>,r10	! e2c3e2f7
    168e:	da 46       	mov.l	17a8 <tan_dat_tbl+0x164c>,r10	! 7c0c7c2a
    1690:	da 77       	mov.l	1870 <tan_dat_tbl+0x1714>,r10	! 88ab88ce
    1692:	da a8       	mov.l	1934 <tan_dat_tbl+0x17d8>,r10	! 97379761
    1694:	da d9       	mov.l	19fc <tan_dat_tbl+0x18a0>,r10	! a8fea930
    1696:	db 0b       	mov.l	16c4 <tan_dat_tbl+0x1568>,r11	! df8bdfbe
    1698:	db 3c       	mov.l	178c <tan_dat_tbl+0x1630>,r11	! 7a6e7a8c
    169a:	db 6d       	mov.l	1850 <tan_dat_tbl+0x16f4>,r11	! 868386a5
    169c:	db 9f       	mov.l	191c <tan_dat_tbl+0x17c0>,r11	! 954c9575
    169e:	db d1       	mov.l	19e4 <tan_dat_tbl+0x1888>,r11	! a6aca6dd
    16a0:	dc 02       	mov.l	16ac <tan_dat_tbl+0x1550>,r12	! dd2edd60
    16a2:	dc 34       	mov.l	1774 <tan_dat_tbl+0x1618>,r12	! 7912792f
    16a4:	dc 66       	mov.l	1840 <tan_dat_tbl+0x16e4>,r12	! 85758596
    16a6:	dc 98       	mov.l	1908 <tan_dat_tbl+0x17ac>,r12	! 93bb93e3
    16a8:	dc c9       	mov.l	19d0 <tan_dat_tbl+0x1874>,r12	! a4c8a4f8
    16aa:	dc fb       	mov.l	1a98 <tan_dat_tbl+0x193c>,r12	! b992b9cd
    16ac:	dd 2e       	mov.l	1768 <tan_dat_tbl+0x160c>,r13	! 78667883
    16ae:	dd 60       	mov.l	1830 <tan_dat_tbl+0x16d4>,r13	! 846a848b
    16b0:	dd 92       	mov.l	18fc <tan_dat_tbl+0x17a0>,r13	! 92ce92f5
    16b2:	dd c4       	mov.l	19c4 <tan_dat_tbl+0x1868>,r13	! a3aaa3da
    16b4:	dd f6       	mov.l	1a90 <tan_dat_tbl+0x1934>,r13	! b8a6b8e1
    16b6:	de 29       	mov.l	175c <tan_dat_tbl+0x1600>,r14	! 77bc77d8
    16b8:	de 5b       	mov.l	1828 <tan_dat_tbl+0x16cc>,r14	! 83e58406
    16ba:	de 8e       	mov.l	18f4 <tan_dat_tbl+0x1798>,r14	! 92319258
    16bc:	de c0       	mov.l	19c0 <tan_dat_tbl+0x1864>,r14	! a34ca37b
    16be:	de f3       	mov.l	1a8c <tan_dat_tbl+0x1930>,r14	! b831b86c
    16c0:	df 26       	mov.l	175c <tan_dat_tbl+0x1600>,r15	! 77bc77d8
    16c2:	df 59       	mov.l	1828 <tan_dat_tbl+0x16cc>,r15	! 83e58406
    16c4:	df 8b       	mov.l	18f4 <tan_dat_tbl+0x1798>,r15	! 92319258
    16c6:	df be       	mov.l	19c0 <tan_dat_tbl+0x1864>,r15	! a34ca37b
    16c8:	df f1       	mov.l	1a90 <tan_dat_tbl+0x1934>,r15	! b8a6b8e1
    16ca:	e0 24       	mov	#36,r0
    16cc:	e0 58       	mov	#88,r0
    16ce:	e0 8b       	mov	#-117,r0
    16d0:	e0 be       	mov	#-66,r0
    16d2:	e0 f1       	mov	#-15,r0
    16d4:	e1 25       	mov	#37,r1
    16d6:	e1 58       	mov	#88,r1
    16d8:	e1 8c       	mov	#-116,r1
    16da:	e1 bf       	mov	#-65,r1
    16dc:	e1 f3       	mov	#-13,r1
    16de:	e2 27       	mov	#39,r2
    16e0:	e2 5b       	mov	#91,r2
    16e2:	e2 8f       	mov	#-113,r2
    16e4:	e2 c3       	mov	#-61,r2
    16e6:	e2 f7       	mov	#-9,r2
    16e8:	e3 2b       	mov	#43,r3
    16ea:	e3 5f       	mov	#95,r3
    16ec:	e3 93       	mov	#-109,r3
    16ee:	e3 c7       	mov	#-57,r3
    16f0:	e3 fc       	mov	#-4,r3
    16f2:	e4 30       	mov	#48,r4
    16f4:	e4 65       	mov	#101,r4
    16f6:	e4 9a       	mov	#-102,r4
    16f8:	e4 ce       	mov	#-50,r4
    16fa:	e5 03       	mov	#3,r5
    16fc:	e5 38       	mov	#56,r5
    16fe:	e5 6d       	mov	#109,r5
    1700:	e5 a2       	mov	#-94,r5
    1702:	e5 d7       	mov	#-41,r5
    1704:	e6 0c       	mov	#12,r6
    1706:	e6 41       	mov	#65,r6
    1708:	e6 76       	mov	#118,r6
    170a:	e6 ac       	mov	#-84,r6
    170c:	e6 e1       	mov	#-31,r6
    170e:	e7 17       	mov	#23,r7
    1710:	e7 4c       	mov	#76,r7
    1712:	e7 82       	mov	#-126,r7
    1714:	e7 b7       	mov	#-73,r7
    1716:	e7 ed       	mov	#-19,r7
    1718:	e8 23       	mov	#35,r8
    171a:	e8 59       	mov	#89,r8
    171c:	e8 8f       	mov	#-113,r8
    171e:	e8 c5       	mov	#-59,r8
    1720:	e8 fb       	mov	#-5,r8
    1722:	e9 32       	mov	#50,r9
    1724:	e9 68       	mov	#104,r9
    1726:	e9 9e       	mov	#-98,r9
    1728:	e9 d5       	mov	#-43,r9
    172a:	ea 0b       	mov	#11,r10
    172c:	ea 42       	mov	#66,r10
    172e:	ea 79       	mov	#121,r10
    1730:	ea af       	mov	#-81,r10
    1732:	ea e6       	mov	#-26,r10
    1734:	eb 1d       	mov	#29,r11
    1736:	eb 54       	mov	#84,r11
    1738:	eb 8b       	mov	#-117,r11
    173a:	eb c2       	mov	#-62,r11
    173c:	eb fa       	mov	#-6,r11
    173e:	ec 31       	mov	#49,r12
    1740:	ec 68       	mov	#104,r12
    1742:	ec a0       	mov	#-96,r12
    1744:	ec d7       	mov	#-41,r12
    1746:	ed 0f       	mov	#15,r13
    1748:	ed 47       	mov	#71,r13
    174a:	ed 7e       	mov	#126,r13
    174c:	ed b6       	mov	#-74,r13
    174e:	ed ee       	mov	#-18,r13
    1750:	ee 26       	mov	#38,r14
    1752:	ee 5e       	mov	#94,r14
    1754:	ee 97       	mov	#-105,r14
    1756:	ee cf       	mov	#-49,r14
    1758:	ef 07       	mov	#7,r15
    175a:	ef 40       	mov	#64,r15
    175c:	77 bc       	add	#-68,r7
    175e:	77 d8       	add	#-40,r7
    1760:	77 f4       	add	#-12,r7
    1762:	78 11       	add	#17,r8
    1764:	78 2d       	add	#45,r8
    1766:	78 4a       	add	#74,r8
    1768:	78 66       	add	#102,r8
    176a:	78 83       	add	#-125,r8
    176c:	78 9f       	add	#-97,r8
    176e:	78 bc       	add	#-68,r8
    1770:	78 d9       	add	#-39,r8
    1772:	78 f5       	add	#-11,r8
    1774:	79 12       	add	#18,r9
    1776:	79 2f       	add	#47,r9
    1778:	79 4c       	add	#76,r9
    177a:	79 69       	add	#105,r9
    177c:	79 85       	add	#-123,r9
    177e:	79 a2       	add	#-94,r9
    1780:	79 bf       	add	#-65,r9
    1782:	79 dc       	add	#-36,r9
    1784:	79 fa       	add	#-6,r9
    1786:	7a 17       	add	#23,r10
    1788:	7a 34       	add	#52,r10
    178a:	7a 51       	add	#81,r10
    178c:	7a 6e       	add	#110,r10
    178e:	7a 8c       	add	#-116,r10
    1790:	7a a9       	add	#-87,r10
    1792:	7a c6       	add	#-58,r10
    1794:	7a e4       	add	#-28,r10
    1796:	7b 01       	add	#1,r11
    1798:	7b 1f       	add	#31,r11
    179a:	7b 3c       	add	#60,r11
    179c:	7b 5a       	add	#90,r11
    179e:	7b 78       	add	#120,r11
    17a0:	7b 95       	add	#-107,r11
    17a2:	7b b3       	add	#-77,r11
    17a4:	7b d1       	add	#-47,r11
    17a6:	7b ef       	add	#-17,r11
    17a8:	7c 0c       	add	#12,r12
    17aa:	7c 2a       	add	#42,r12
    17ac:	7c 48       	add	#72,r12
    17ae:	7c 66       	add	#102,r12
    17b0:	7c 84       	add	#-124,r12
    17b2:	7c a2       	add	#-94,r12
    17b4:	7c c1       	add	#-63,r12
    17b6:	7c df       	add	#-33,r12
    17b8:	7c fd       	add	#-3,r12
    17ba:	7d 1b       	add	#27,r13
    17bc:	7d 3a       	add	#58,r13
    17be:	7d 58       	add	#88,r13
    17c0:	7d 76       	add	#118,r13
    17c2:	7d 95       	add	#-107,r13
    17c4:	7d b3       	add	#-77,r13
    17c6:	7d d2       	add	#-46,r13
    17c8:	7d f0       	add	#-16,r13
    17ca:	7e 0f       	add	#15,r14
    17cc:	7e 2e       	add	#46,r14
    17ce:	7e 4c       	add	#76,r14
    17d0:	7e 6b       	add	#107,r14
    17d2:	7e 8a       	add	#-118,r14
    17d4:	7e a9       	add	#-87,r14
    17d6:	7e c8       	add	#-56,r14
    17d8:	7e e7       	add	#-25,r14
    17da:	7f 06       	add	#6,r15
    17dc:	7f 25       	add	#37,r15
    17de:	7f 44       	add	#68,r15
    17e0:	7f 63       	add	#99,r15
    17e2:	7f 82       	add	#-126,r15
    17e4:	7f a2       	add	#-94,r15
    17e6:	7f c1       	add	#-63,r15
    17e8:	7f e0       	add	#-32,r15
    17ea:	80 00       	mov.b	r0,@(0,r0)
    17ec:	80 1f       	mov.b	r0,@(15,r1)
    17ee:	80 3f       	mov.b	r0,@(15,r3)
    17f0:	80 5e       	mov.b	r0,@(14,r5)
    17f2:	80 7e       	mov.b	r0,@(14,r7)
    17f4:	80 9d       	mov.b	r0,@(13,r9)
    17f6:	80 bd       	mov.b	r0,@(13,r11)
    17f8:	80 dd       	mov.b	r0,@(13,r13)
    17fa:	80 fd       	mov.b	r0,@(13,r15)
    17fc:	81 1c       	mov.w	r0,@(24,r1)
    17fe:	81 3c       	mov.w	r0,@(24,r3)
    1800:	81 5c       	mov.w	r0,@(24,r5)
    1802:	81 7c       	mov.w	r0,@(24,r7)
    1804:	81 9c       	mov.w	r0,@(24,r9)
    1806:	81 bc       	mov.w	r0,@(24,r11)
    1808:	81 dc       	mov.w	r0,@(24,r13)
    180a:	81 fd       	mov.w	r0,@(26,r15)
    180c:	82 1d       	.word 0x821d
    180e:	82 3d       	.word 0x823d
    1810:	82 5d       	.word 0x825d
    1812:	82 7e       	.word 0x827e
    1814:	82 9e       	.word 0x829e
    1816:	82 bf       	.word 0x82bf
    1818:	82 df       	.word 0x82df
    181a:	83 00       	.word 0x8300
    181c:	83 20       	.word 0x8320
    181e:	83 41       	.word 0x8341
    1820:	83 62       	.word 0x8362
    1822:	83 83       	.word 0x8383
    1824:	83 a3       	.word 0x83a3
    1826:	83 c4       	.word 0x83c4
    1828:	83 e5       	.word 0x83e5
    182a:	84 06       	mov.b	@(6,r0),r0
    182c:	84 27       	mov.b	@(7,r2),r0
    182e:	84 48       	mov.b	@(8,r4),r0
    1830:	84 6a       	mov.b	@(10,r6),r0
    1832:	84 8b       	mov.b	@(11,r8),r0
    1834:	84 ac       	mov.b	@(12,r10),r0
    1836:	84 cd       	mov.b	@(13,r12),r0
    1838:	84 ef       	mov.b	@(15,r14),r0
    183a:	85 10       	mov.w	@(0,r1),r0
    183c:	85 32       	mov.w	@(4,r3),r0
    183e:	85 53       	mov.w	@(6,r5),r0
    1840:	85 75       	mov.w	@(10,r7),r0
    1842:	85 96       	mov.w	@(12,r9),r0
    1844:	85 b8       	mov.w	@(16,r11),r0
    1846:	85 da       	mov.w	@(20,r13),r0
    1848:	85 fc       	mov.w	@(24,r15),r0
    184a:	86 1d       	.word 0x861d
    184c:	86 3f       	.word 0x863f
    184e:	86 61       	.word 0x8661
    1850:	86 83       	.word 0x8683
    1852:	86 a5       	.word 0x86a5
    1854:	86 c8       	.word 0x86c8
    1856:	86 ea       	.word 0x86ea
    1858:	87 0c       	.word 0x870c
    185a:	87 2e       	.word 0x872e
    185c:	87 51       	.word 0x8751
    185e:	87 73       	.word 0x8773
    1860:	87 95       	.word 0x8795
    1862:	87 b8       	.word 0x87b8
    1864:	87 da       	.word 0x87da
    1866:	87 fd       	.word 0x87fd
    1868:	88 20       	cmp/eq	#32,r0
    186a:	88 43       	cmp/eq	#67,r0
    186c:	88 65       	cmp/eq	#101,r0
    186e:	88 88       	cmp/eq	#-120,r0
    1870:	88 ab       	cmp/eq	#-85,r0
    1872:	88 ce       	cmp/eq	#-50,r0
    1874:	88 f1       	cmp/eq	#-15,r0
    1876:	89 14       	bt	18a2 <tan_dat_tbl+0x1746>
    1878:	89 37       	bt	18ea <tan_dat_tbl+0x178e>
    187a:	89 5a       	bt	1932 <tan_dat_tbl+0x17d6>
    187c:	89 7e       	bt	197c <tan_dat_tbl+0x1820>
    187e:	89 a1       	bt	17c4 <tan_dat_tbl+0x1668>
    1880:	89 c4       	bt	180c <tan_dat_tbl+0x16b0>
    1882:	89 e8       	bt	1856 <tan_dat_tbl+0x16fa>
    1884:	8a 0b       	.word 0x8a0b
    1886:	8a 2f       	.word 0x8a2f
    1888:	8a 52       	.word 0x8a52
    188a:	8a 76       	.word 0x8a76
    188c:	8a 9a       	.word 0x8a9a
    188e:	8a be       	.word 0x8abe
    1890:	8a e1       	.word 0x8ae1
    1892:	8b 05       	bf	18a0 <tan_dat_tbl+0x1744>
    1894:	8b 29       	bf	18ea <tan_dat_tbl+0x178e>
    1896:	8b 4d       	bf	1934 <tan_dat_tbl+0x17d8>
    1898:	8b 71       	bf	197e <tan_dat_tbl+0x1822>
    189a:	8b 96       	bf	17ca <tan_dat_tbl+0x166e>
    189c:	8b ba       	bf	1814 <tan_dat_tbl+0x16b8>
    189e:	8b de       	bf	185e <tan_dat_tbl+0x1702>
    18a0:	8c 02       	.word 0x8c02
    18a2:	8c 27       	.word 0x8c27
    18a4:	8c 4b       	.word 0x8c4b
    18a6:	8c 70       	.word 0x8c70
    18a8:	8c 94       	.word 0x8c94
    18aa:	8c b9       	.word 0x8cb9
    18ac:	8c de       	.word 0x8cde
    18ae:	8d 02       	bt.s	18b6 <tan_dat_tbl+0x175a>
    18b0:	8d 27       	bt.s	1902 <tan_dat_tbl+0x17a6>
    18b2:	8d 4c       	bt.s	194e <tan_dat_tbl+0x17f2>
    18b4:	8d 71       	bt.s	199a <tan_dat_tbl+0x183e>
    18b6:	8d 96       	bt.s	17e6 <tan_dat_tbl+0x168a>
    18b8:	8d bb       	bt.s	1832 <tan_dat_tbl+0x16d6>
    18ba:	8d e0       	bt.s	187e <tan_dat_tbl+0x1722>
    18bc:	8e 05       	.word 0x8e05
    18be:	8e 2b       	.word 0x8e2b
    18c0:	8e 50       	.word 0x8e50
    18c2:	8e 75       	.word 0x8e75
    18c4:	8e 9b       	.word 0x8e9b
    18c6:	8e c0       	.word 0x8ec0
    18c8:	8e e6       	.word 0x8ee6
    18ca:	8f 0c       	bf.s	18e6 <tan_dat_tbl+0x178a>
    18cc:	8f 31       	bf.s	1932 <tan_dat_tbl+0x17d6>
    18ce:	8f 57       	bf.s	1980 <tan_dat_tbl+0x1824>
    18d0:	8f 7d       	bf.s	19ce <tan_dat_tbl+0x1872>
    18d2:	8f a3       	bf.s	181c <tan_dat_tbl+0x16c0>
    18d4:	8f c9       	bf.s	186a <tan_dat_tbl+0x170e>
    18d6:	8f ef       	bf.s	18b8 <tan_dat_tbl+0x175c>
    18d8:	90 15       	mov.w	1906 <tan_dat_tbl+0x17aa>,r0	! 9394
    18da:	90 3b       	mov.w	1954 <tan_dat_tbl+0x17f8>,r0	! 99d7
    18dc:	90 61       	mov.w	19a2 <tan_dat_tbl+0x1846>,r0	! a092
    18de:	90 88       	mov.w	19f2 <tan_dat_tbl+0x1896>,r0	! a805
    18e0:	90 ae       	mov.w	1a40 <tan_dat_tbl+0x18e4>,r0	! afe2
    18e2:	90 d4       	mov.w	1a8e <tan_dat_tbl+0x1932>,r0	! b86c
    18e4:	90 fb       	mov.w	1ade <tan_dat_tbl+0x1982>,r0	! c1fb
    18e6:	91 21       	mov.w	192c <tan_dat_tbl+0x17d0>,r1	! 9693
    18e8:	91 48       	mov.w	197c <tan_dat_tbl+0x1820>,r1	! 9d3b
    18ea:	91 6f       	mov.w	19cc <tan_dat_tbl+0x1870>,r1	! a468
    18ec:	91 95       	mov.w	1a1a <tan_dat_tbl+0x18be>,r1	! abf9
    18ee:	91 bc       	mov.w	1a6a <tan_dat_tbl+0x190e>,r1	! b464
    18f0:	91 e3       	mov.w	1aba <tan_dat_tbl+0x195e>,r1	! bd92
    18f2:	92 0a       	mov.w	190a <tan_dat_tbl+0x17ae>,r2	! 93e3
    18f4:	92 31       	mov.w	195a <tan_dat_tbl+0x17fe>,r2	! 9a57
    18f6:	92 58       	mov.w	19aa <tan_dat_tbl+0x184e>,r2	! a14a
    18f8:	92 7f       	mov.w	19fa <tan_dat_tbl+0x189e>,r2	! a8cc
    18fa:	92 a7       	mov.w	1a4c <tan_dat_tbl+0x18f0>,r2	! b127
    18fc:	92 ce       	mov.w	1a9c <tan_dat_tbl+0x1940>,r2	! ba08
    18fe:	92 f5       	mov.w	1aec <tan_dat_tbl+0x1990>,r2	! c3be
    1900:	93 1d       	mov.w	193e <tan_dat_tbl+0x17e2>,r3	! 9807
    1902:	93 44       	mov.w	198e <tan_dat_tbl+0x1832>,r3	! 9ecc
    1904:	93 6c       	mov.w	19e0 <tan_dat_tbl+0x1884>,r3	! a64b
    1906:	93 94       	mov.w	1a32 <tan_dat_tbl+0x18d6>,r3	! ae6d
    1908:	93 bb       	mov.w	1a82 <tan_dat_tbl+0x1926>,r3	! b70f
    190a:	93 e3       	mov.w	1ad4 <tan_dat_tbl+0x1978>,r3	! c0bc
    190c:	94 0b       	mov.w	1926 <tan_dat_tbl+0x17ca>,r4	! 9618
    190e:	94 33       	mov.w	1978 <tan_dat_tbl+0x181c>,r4	! 9ce3
    1910:	94 5b       	mov.w	19ca <tan_dat_tbl+0x186e>,r4	! a439
    1912:	94 83       	mov.w	1a1c <tan_dat_tbl+0x18c0>,r4	! ac2d
    1914:	94 ab       	mov.w	1a6e <tan_dat_tbl+0x1912>,r4	! b4d5
    1916:	94 d3       	mov.w	1ac0 <tan_dat_tbl+0x1964>,r4	! be4b
    1918:	94 fc       	mov.w	1b14 <tan_dat_tbl+0x19b8>,r4	! c8f3
    191a:	95 24       	mov.w	1966 <tan_dat_tbl+0x180a>,r5	! 9b59
    191c:	95 4c       	mov.w	19b8 <tan_dat_tbl+0x185c>,r5	! a290
    191e:	95 75       	mov.w	1a0c <tan_dat_tbl+0x18b0>,r5	! aa92
    1920:	95 9e       	mov.w	1a60 <tan_dat_tbl+0x1904>,r5	! b34d
    1922:	95 c6       	mov.w	1ab2 <tan_dat_tbl+0x1956>,r5	! bc9d
    1924:	95 ef       	mov.w	1b06 <tan_dat_tbl+0x19aa>,r5	! c719
    1926:	96 18       	mov.w	195a <tan_dat_tbl+0x17fe>,r6	! 9a57
    1928:	96 41       	mov.w	19ae <tan_dat_tbl+0x1852>,r6	! a1a7
    192a:	96 6a       	mov.w	1a02 <tan_dat_tbl+0x18a6>,r6	! a995
    192c:	96 93       	mov.w	1a56 <tan_dat_tbl+0x18fa>,r6	! b238
    192e:	96 bc       	mov.w	1aaa <tan_dat_tbl+0x194e>,r6	! bbab
    1930:	96 e5       	mov.w	1afe <tan_dat_tbl+0x19a2>,r6	! c60e
    1932:	97 0e       	mov.w	1952 <tan_dat_tbl+0x17f6>,r7	! 99ac
    1934:	97 37       	mov.w	19a6 <tan_dat_tbl+0x184a>,r7	! a0ee
    1936:	97 61       	mov.w	19fc <tan_dat_tbl+0x18a0>,r7	! a8fe
    1938:	97 8a       	mov.w	1a50 <tan_dat_tbl+0x18f4>,r7	! b194
    193a:	97 b4       	mov.w	1aa6 <tan_dat_tbl+0x194a>,r7	! bb33
    193c:	97 de       	mov.w	1afc <tan_dat_tbl+0x19a0>,r7	! c5cc
    193e:	98 07       	mov.w	1950 <tan_dat_tbl+0x17f4>,r8	! 9982
    1940:	98 31       	mov.w	19a6 <tan_dat_tbl+0x184a>,r8	! a0ee
    1942:	98 5b       	mov.w	19fc <tan_dat_tbl+0x18a0>,r8	! a8fe
    1944:	98 85       	mov.w	1a52 <tan_dat_tbl+0x18f6>,r8	! b1ca
    1946:	98 af       	mov.w	1aa8 <tan_dat_tbl+0x194c>,r8	! bb6f
    1948:	98 d9       	mov.w	1afe <tan_dat_tbl+0x19a2>,r8	! c60e
    194a:	99 03       	mov.w	1954 <tan_dat_tbl+0x17f8>,r9	! 99d7
    194c:	99 2d       	mov.w	19aa <tan_dat_tbl+0x184e>,r9	! a14a
    194e:	99 58       	mov.w	1a02 <tan_dat_tbl+0x18a6>,r9	! a995
    1950:	99 82       	mov.w	1a58 <tan_dat_tbl+0x18fc>,r9	! b26f
    1952:	99 ac       	mov.w	1aae <tan_dat_tbl+0x1952>,r9	! bc24
    1954:	99 d7       	mov.w	1b06 <tan_dat_tbl+0x19aa>,r9	! c719
    1956:	9a 02       	mov.w	195e <tan_dat_tbl+0x1802>,r10	! 9aad
    1958:	9a 2c       	mov.w	19b4 <tan_dat_tbl+0x1858>,r10	! a232
    195a:	9a 57       	mov.w	1a0c <tan_dat_tbl+0x18b0>,r10	! aa92
    195c:	9a 82       	mov.w	1a64 <tan_dat_tbl+0x1908>,r10	! b3bc
    195e:	9a ad       	mov.w	1abc <tan_dat_tbl+0x1960>,r10	! bdcf
    1960:	9a d8       	mov.w	1b14 <tan_dat_tbl+0x19b8>,r10	! c8f3
    1962:	9b 03       	mov.w	196c <tan_dat_tbl+0x1810>,r11	! 9bdc
    1964:	9b 2e       	mov.w	19c4 <tan_dat_tbl+0x1868>,r11	! a3aa
    1966:	9b 59       	mov.w	1a1c <tan_dat_tbl+0x18c0>,r11	! ac2d
    1968:	9b 85       	mov.w	1a76 <tan_dat_tbl+0x191a>,r11	! b5b8
    196a:	9b b0       	mov.w	1ace <tan_dat_tbl+0x1972>,r11	! bfff
    196c:	9b dc       	mov.w	1b28 <tan_dat_tbl+0x19cc>,r11	! cba5
    196e:	9c 07       	mov.w	1980 <tan_dat_tbl+0x1824>,r12	! 9d93
    1970:	9c 33       	mov.w	19da <tan_dat_tbl+0x187e>,r12	! a5b9
    1972:	9c 5f       	mov.w	1a34 <tan_dat_tbl+0x18d8>,r12	! aea2
    1974:	9c 8b       	mov.w	1a8e <tan_dat_tbl+0x1932>,r12	! b86c
    1976:	9c b7       	mov.w	1ae8 <tan_dat_tbl+0x198c>,r12	! c33c
    1978:	9c e3       	mov.w	1b42 <tan_dat_tbl+0x19e6>,r12	! cf41
    197a:	9d 0f       	mov.w	199c <tan_dat_tbl+0x1840>,r13	! a009
    197c:	9d 3b       	mov.w	19f6 <tan_dat_tbl+0x189a>,r13	! a868
    197e:	9d 67       	mov.w	1a50 <tan_dat_tbl+0x18f4>,r13	! b194
    1980:	9d 93       	mov.w	1aaa <tan_dat_tbl+0x194e>,r13	! bbab
    1982:	9d c0       	mov.w	1b06 <tan_dat_tbl+0x19aa>,r13	! c719
    1984:	9d ec       	mov.w	1b60 <tan_dat_tbl+0x1a04>,r13	! 34e4
    1986:	9e 19       	mov.w	19bc <tan_dat_tbl+0x1860>,r14	! a2ed
    1988:	9e 46       	mov.w	1a18 <tan_dat_tbl+0x18bc>,r14	! abc6
    198a:	9e 72       	mov.w	1a72 <tan_dat_tbl+0x1916>,r14	! b546
    198c:	9e 9f       	mov.w	1ace <tan_dat_tbl+0x1972>,r14	! bfff
    198e:	9e cc       	mov.w	1b2a <tan_dat_tbl+0x19ce>,r14	! cbeb
    1990:	9e f9       	mov.w	1b86 <tan_dat_tbl+0x1a2a>,r14	! 3650
    1992:	9f 26       	mov.w	19e2 <tan_dat_tbl+0x1886>,r15	! a67b
    1994:	9f 53       	mov.w	1a3e <tan_dat_tbl+0x18e2>,r15	! afac
    1996:	9f 81       	mov.w	1a9c <tan_dat_tbl+0x1940>,r15	! ba08
    1998:	9f ae       	mov.w	1af8 <tan_dat_tbl+0x199c>,r15	! c547
    199a:	9f db       	mov.w	1b54 <tan_dat_tbl+0x19f8>,r15	! d1d2
    199c:	a0 09       	bra	19b2 <tan_dat_tbl+0x1856>
    199e:	a0 37       	bra	1a10 <tan_dat_tbl+0x18b4>
    19a0:	a0 64       	bra	1a6c <tan_dat_tbl+0x1910>
    19a2:	a0 92       	bra	1aca <tan_dat_tbl+0x196e>
    19a4:	a0 c0       	bra	1b28 <tan_dat_tbl+0x19cc>
    19a6:	a0 ee       	bra	1b86 <tan_dat_tbl+0x1a2a>
    19a8:	a1 1c       	bra	1be4 <tan_dat_tbl+0x1a88>
    19aa:	a1 4a       	bra	1c42 <tan_dat_tbl+0x1ae6>
    19ac:	a1 78       	bra	1ca0 <tan_dat_tbl+0x1b44>
    19ae:	a1 a7       	bra	1d00 <tan_dat_tbl+0x1ba4>
    19b0:	a1 d5       	bra	1d5e <tan_dat_tbl+0x1c02>
    19b2:	a2 04       	bra	1dbe <tan_dat_tbl+0x1c62>
    19b4:	a2 32       	bra	1e1c <tan_dat_tbl+0x1cc0>
    19b6:	a2 61       	bra	1e7c <tan_dat_tbl+0x1d20>
    19b8:	a2 90       	bra	1edc <tan_dat_tbl+0x1d80>
    19ba:	a2 be       	bra	1f3a <tan_dat_tbl+0x1dde>
    19bc:	a2 ed       	bra	1f9a <tan_dat_tbl+0x1e3e>
    19be:	a3 1c       	bra	1ffa <tan_dat_tbl+0x1e9e>
    19c0:	a3 4c       	bra	205c <tan_dat_tbl+0x1f00>
    19c2:	a3 7b       	bra	20bc <tan_dat_tbl+0x1f60>
    19c4:	a3 aa       	bra	211c <tan_dat_tbl+0x1fc0>
    19c6:	a3 da       	bra	217e <tan_dat_tbl+0x2022>
    19c8:	a4 09       	bra	21de <tan_dat_tbl+0x2082>
    19ca:	a4 39       	bra	2240 <tan_dat_tbl+0x20e4>
    19cc:	a4 68       	bra	22a0 <tan_dat_tbl+0x2144>
    19ce:	a4 98       	bra	2302 <tan_dat_tbl+0x21a6>
    19d0:	a4 c8       	bra	2364 <tan_dat_tbl+0x2208>
    19d2:	a4 f8       	bra	23c6 <tan_dat_tbl+0x226a>
    19d4:	a5 28       	bra	2428 <tan_dat_tbl+0x22cc>
    19d6:	a5 58       	bra	248a <tan_dat_tbl+0x232e>
    19d8:	a5 89       	bra	24ee <tan_dat_tbl+0x2392>
    19da:	a5 b9       	bra	2550 <tan_dat_tbl+0x23f4>
    19dc:	a5 e9       	bra	25b2 <tan_dat_tbl+0x2456>
    19de:	a6 1a       	bra	2616 <tan_dat_tbl+0x24ba>
    19e0:	a6 4b       	bra	267a <tan_dat_tbl+0x251e>
    19e2:	a6 7b       	bra	26dc <tan_dat_tbl+0x2580>
    19e4:	a6 ac       	bra	2740 <tan_dat_tbl+0x25e4>
    19e6:	a6 dd       	bra	27a4 <tan_dat_tbl+0x2648>
    19e8:	a7 0e       	bra	2808 <tan_dat_tbl+0x26ac>
    19ea:	a7 3f       	bra	286c <tan_dat_tbl+0x2710>
    19ec:	a7 71       	bra	28d2 <tan_dat_tbl+0x2776>
    19ee:	a7 a2       	bra	2936 <tan_dat_tbl+0x27da>
    19f0:	a7 d3       	bra	299a <tan_dat_tbl+0x283e>
    19f2:	a8 05       	bra	a00 <tan_dat_tbl+0x8a4>
    19f4:	a8 37       	bra	a66 <tan_dat_tbl+0x90a>
    19f6:	a8 68       	bra	aca <tan_dat_tbl+0x96e>
    19f8:	a8 9a       	bra	b30 <tan_dat_tbl+0x9d4>
    19fa:	a8 cc       	bra	b96 <tan_dat_tbl+0xa3a>
    19fc:	a8 fe       	bra	bfc <tan_dat_tbl+0xaa0>
    19fe:	a9 30       	bra	c62 <tan_dat_tbl+0xb06>
    1a00:	a9 63       	bra	cca <tan_dat_tbl+0xb6e>
    1a02:	a9 95       	bra	d30 <tan_dat_tbl+0xbd4>
    1a04:	a9 c7       	bra	d96 <tan_dat_tbl+0xc3a>
    1a06:	a9 fa       	bra	dfe <tan_dat_tbl+0xca2>
    1a08:	aa 2d       	bra	e66 <tan_dat_tbl+0xd0a>
    1a0a:	aa 5f       	bra	ecc <tan_dat_tbl+0xd70>
    1a0c:	aa 92       	bra	f34 <tan_dat_tbl+0xdd8>
    1a0e:	aa c5       	bra	f9c <tan_dat_tbl+0xe40>
    1a10:	aa f8       	bra	1004 <tan_dat_tbl+0xea8>
    1a12:	ab 2b       	bra	106c <tan_dat_tbl+0xf10>
    1a14:	ab 5f       	bra	10d6 <tan_dat_tbl+0xf7a>
    1a16:	ab 92       	bra	113e <tan_dat_tbl+0xfe2>
    1a18:	ab c6       	bra	11a8 <tan_dat_tbl+0x104c>
    1a1a:	ab f9       	bra	1210 <tan_dat_tbl+0x10b4>
    1a1c:	ac 2d       	bra	127a <tan_dat_tbl+0x111e>
    1a1e:	ac 61       	bra	12e4 <tan_dat_tbl+0x1188>
    1a20:	ac 95       	bra	134e <tan_dat_tbl+0x11f2>
    1a22:	ac c9       	bra	13b8 <tan_dat_tbl+0x125c>
    1a24:	ac fd       	bra	1422 <tan_dat_tbl+0x12c6>
    1a26:	ad 31       	bra	148c <tan_dat_tbl+0x1330>
    1a28:	ad 65       	bra	14f6 <tan_dat_tbl+0x139a>
    1a2a:	ad 9a       	bra	1562 <tan_dat_tbl+0x1406>
    1a2c:	ad ce       	bra	15cc <tan_dat_tbl+0x1470>
    1a2e:	ae 03       	bra	1638 <tan_dat_tbl+0x14dc>
    1a30:	ae 38       	bra	16a4 <tan_dat_tbl+0x1548>
    1a32:	ae 6d       	bra	1710 <tan_dat_tbl+0x15b4>
    1a34:	ae a2       	bra	177c <tan_dat_tbl+0x1620>
    1a36:	ae d7       	bra	17e8 <tan_dat_tbl+0x168c>
    1a38:	af 0c       	bra	1854 <tan_dat_tbl+0x16f8>
    1a3a:	af 41       	bra	18c0 <tan_dat_tbl+0x1764>
    1a3c:	af 77       	bra	192e <tan_dat_tbl+0x17d2>
    1a3e:	af ac       	bra	199a <tan_dat_tbl+0x183e>
    1a40:	af e2       	bra	1a08 <tan_dat_tbl+0x18ac>
    1a42:	b0 18       	bsr	1a76 <tan_dat_tbl+0x191a>
    1a44:	b0 4e       	bsr	1ae4 <tan_dat_tbl+0x1988>
    1a46:	b0 84       	bsr	1b52 <tan_dat_tbl+0x19f6>
    1a48:	b0 ba       	bsr	1bc0 <tan_dat_tbl+0x1a64>
    1a4a:	b0 f0       	bsr	1c2e <tan_dat_tbl+0x1ad2>
    1a4c:	b1 27       	bsr	1c9e <tan_dat_tbl+0x1b42>
    1a4e:	b1 5d       	bsr	1d0c <tan_dat_tbl+0x1bb0>
    1a50:	b1 94       	bsr	1d7c <tan_dat_tbl+0x1c20>
    1a52:	b1 ca       	bsr	1dea <tan_dat_tbl+0x1c8e>
    1a54:	b2 01       	bsr	1e5a <tan_dat_tbl+0x1cfe>
    1a56:	b2 38       	bsr	1eca <tan_dat_tbl+0x1d6e>
    1a58:	b2 6f       	bsr	1f3a <tan_dat_tbl+0x1dde>
    1a5a:	b2 a6       	bsr	1faa <tan_dat_tbl+0x1e4e>
    1a5c:	b2 de       	bsr	201c <tan_dat_tbl+0x1ec0>
    1a5e:	b3 15       	bsr	208c <tan_dat_tbl+0x1f30>
    1a60:	b3 4d       	bsr	20fe <tan_dat_tbl+0x1fa2>
    1a62:	b3 84       	bsr	216e <tan_dat_tbl+0x2012>
    1a64:	b3 bc       	bsr	21e0 <tan_dat_tbl+0x2084>
    1a66:	b3 f4       	bsr	2252 <tan_dat_tbl+0x20f6>
    1a68:	b4 2c       	bsr	22c4 <tan_dat_tbl+0x2168>
    1a6a:	b4 64       	bsr	2336 <tan_dat_tbl+0x21da>
    1a6c:	b4 9c       	bsr	23a8 <tan_dat_tbl+0x224c>
    1a6e:	b4 d5       	bsr	241c <tan_dat_tbl+0x22c0>
    1a70:	b5 0d       	bsr	248e <tan_dat_tbl+0x2332>
    1a72:	b5 46       	bsr	2502 <tan_dat_tbl+0x23a6>
    1a74:	b5 7f       	bsr	2576 <tan_dat_tbl+0x241a>
    1a76:	b5 b8       	bsr	25ea <tan_dat_tbl+0x248e>
    1a78:	b5 f1       	bsr	265e <tan_dat_tbl+0x2502>
    1a7a:	b6 2a       	bsr	26d2 <tan_dat_tbl+0x2576>
    1a7c:	b6 63       	bsr	2746 <tan_dat_tbl+0x25ea>
    1a7e:	b6 9c       	bsr	27ba <tan_dat_tbl+0x265e>
    1a80:	b6 d6       	bsr	2830 <tan_dat_tbl+0x26d4>
    1a82:	b7 0f       	bsr	28a4 <tan_dat_tbl+0x2748>
    1a84:	b7 49       	bsr	291a <tan_dat_tbl+0x27be>
    1a86:	b7 83       	bsr	2990 <tan_dat_tbl+0x2834>
    1a88:	b7 bd       	bsr	2a06 <tan_dat_tbl+0x28aa>
    1a8a:	b7 f7       	bsr	2a7c <tan_dat_tbl+0x2920>
    1a8c:	b8 31       	bsr	af2 <tan_dat_tbl+0x996>
    1a8e:	b8 6c       	bsr	b6a <tan_dat_tbl+0xa0e>
    1a90:	b8 a6       	bsr	be0 <tan_dat_tbl+0xa84>
    1a92:	b8 e1       	bsr	c58 <tan_dat_tbl+0xafc>
    1a94:	b9 1c       	bsr	cd0 <tan_dat_tbl+0xb74>
    1a96:	b9 57       	bsr	d48 <tan_dat_tbl+0xbec>
    1a98:	b9 92       	bsr	dc0 <tan_dat_tbl+0xc64>
    1a9a:	b9 cd       	bsr	e38 <tan_dat_tbl+0xcdc>
    1a9c:	ba 08       	bsr	eb0 <tan_dat_tbl+0xd54>
    1a9e:	ba 44       	bsr	f2a <tan_dat_tbl+0xdce>
    1aa0:	ba 7f       	bsr	fa2 <tan_dat_tbl+0xe46>
    1aa2:	ba bb       	bsr	101c <tan_dat_tbl+0xec0>
    1aa4:	ba f7       	bsr	1096 <tan_dat_tbl+0xf3a>
    1aa6:	bb 33       	bsr	1110 <tan_dat_tbl+0xfb4>
    1aa8:	bb 6f       	bsr	118a <tan_dat_tbl+0x102e>
    1aaa:	bb ab       	bsr	1204 <tan_dat_tbl+0x10a8>
    1aac:	bb e8       	bsr	1280 <tan_dat_tbl+0x1124>
    1aae:	bc 24       	bsr	12fa <tan_dat_tbl+0x119e>
    1ab0:	bc 61       	bsr	1376 <tan_dat_tbl+0x121a>
    1ab2:	bc 9d       	bsr	13f0 <tan_dat_tbl+0x1294>
    1ab4:	bc da       	bsr	146c <tan_dat_tbl+0x1310>
    1ab6:	bd 17       	bsr	14e8 <tan_dat_tbl+0x138c>
    1ab8:	bd 55       	bsr	1566 <tan_dat_tbl+0x140a>
    1aba:	bd 92       	bsr	15e2 <tan_dat_tbl+0x1486>
    1abc:	bd cf       	bsr	165e <tan_dat_tbl+0x1502>
    1abe:	be 0d       	bsr	16dc <tan_dat_tbl+0x1580>
    1ac0:	be 4b       	bsr	175a <tan_dat_tbl+0x15fe>
    1ac2:	be 89       	bsr	17d8 <tan_dat_tbl+0x167c>
    1ac4:	be c7       	bsr	1856 <tan_dat_tbl+0x16fa>
    1ac6:	bf 05       	bsr	18d4 <tan_dat_tbl+0x1778>
    1ac8:	bf 43       	bsr	1952 <tan_dat_tbl+0x17f6>
    1aca:	bf 82       	bsr	19d2 <tan_dat_tbl+0x1876>
    1acc:	bf c0       	bsr	1a50 <tan_dat_tbl+0x18f4>
    1ace:	bf ff       	bsr	1ad0 <tan_dat_tbl+0x1974>
    1ad0:	c0 3e       	mov.b	r0,@(62,gbr)
    1ad2:	c0 7d       	mov.b	r0,@(125,gbr)
    1ad4:	c0 bc       	mov.b	r0,@(188,gbr)
    1ad6:	c0 fc       	mov.b	r0,@(252,gbr)
    1ad8:	c1 3b       	mov.w	r0,@(118,gbr)
    1ada:	c1 7b       	mov.w	r0,@(246,gbr)
    1adc:	c1 bb       	mov.w	r0,@(374,gbr)
    1ade:	c1 fb       	mov.w	r0,@(502,gbr)
    1ae0:	c2 3b       	mov.l	r0,@(236,gbr)
    1ae2:	c2 7b       	mov.l	r0,@(492,gbr)
    1ae4:	c2 bb       	mov.l	r0,@(748,gbr)
    1ae6:	c2 fc       	mov.l	r0,@(1008,gbr)
    1ae8:	c3 3c       	trapa	#60
    1aea:	c3 7d       	trapa	#125
    1aec:	c3 be       	trapa	#-66
    1aee:	c3 ff       	trapa	#-1
    1af0:	c4 41       	mov.b	@(65,gbr),r0
    1af2:	c4 82       	mov.b	@(130,gbr),r0
    1af4:	c4 c4       	mov.b	@(196,gbr),r0
    1af6:	c5 05       	mov.w	@(10,gbr),r0
    1af8:	c5 47       	mov.w	@(142,gbr),r0
    1afa:	c5 89       	mov.w	@(274,gbr),r0
    1afc:	c5 cc       	mov.w	@(408,gbr),r0
    1afe:	c6 0e       	mov.l	@(56,gbr),r0
    1b00:	c6 51       	mov.l	@(324,gbr),r0
    1b02:	c6 93       	mov.l	@(588,gbr),r0
    1b04:	c6 d6       	mov.l	@(856,gbr),r0
    1b06:	c7 19       	mova	1b6c <tan_dat_tbl+0x1a10>,r0
    1b08:	c7 5c       	mova	1c7c <tan_dat_tbl+0x1b20>,r0
    1b0a:	c7 a0       	mova	1d8c <tan_dat_tbl+0x1c30>,r0
    1b0c:	c7 e3       	mova	1e9c <tan_dat_tbl+0x1d40>,r0
    1b0e:	c8 27       	tst	#39,r0
    1b10:	c8 6b       	tst	#107,r0
    1b12:	c8 af       	tst	#-81,r0
    1b14:	c8 f3       	tst	#-13,r0
    1b16:	c9 37       	and	#55,r0
    1b18:	c9 7b       	and	#123,r0
    1b1a:	c9 c0       	and	#-64,r0
    1b1c:	ca 05       	xor	#5,r0
    1b1e:	ca 4a       	xor	#74,r0
    1b20:	ca 8f       	xor	#-113,r0
    1b22:	ca d4       	xor	#-44,r0
    1b24:	cb 1a       	or	#26,r0
    1b26:	cb 5f       	or	#95,r0
    1b28:	cb a5       	or	#-91,r0
    1b2a:	cb eb       	or	#-21,r0
    1b2c:	cc 31       	tst.b	#49,@(r0,gbr)
    1b2e:	cc 78       	tst.b	#120,@(r0,gbr)
    1b30:	cc be       	tst.b	#-66,@(r0,gbr)
    1b32:	cd 05       	and.b	#5,@(r0,gbr)
    1b34:	cd 4c       	and.b	#76,@(r0,gbr)
    1b36:	cd 93       	and.b	#-109,@(r0,gbr)
    1b38:	cd da       	and.b	#-38,@(r0,gbr)
    1b3a:	ce 21       	xor.b	#33,@(r0,gbr)
    1b3c:	ce 69       	xor.b	#105,@(r0,gbr)
    1b3e:	ce b1       	xor.b	#-79,@(r0,gbr)
    1b40:	ce f9       	xor.b	#-7,@(r0,gbr)
    1b42:	cf 41       	or.b	#65,@(r0,gbr)
    1b44:	cf 89       	or.b	#-119,@(r0,gbr)
    1b46:	cf d1       	or.b	#-47,@(r0,gbr)
    1b48:	d0 1a       	mov.l	1bb4 <tan_dat_tbl+0x1a58>,r0	! 38233838
    1b4a:	d0 63       	mov.l	1cd8 <tan_dat_tbl+0x1b7c>,r0	! 46ff471f
    1b4c:	d0 ac       	mov.l	1e00 <tan_dat_tbl+0x1ca4>,r0	! 6025605f
    1b4e:	d0 f5       	mov.l	1f24 <tan_dat_tbl+0x1dc8>,r0	! 925392d8
    1b50:	d1 3e       	mov.l	1c4c <tan_dat_tbl+0x1af0>,r1	! 3f0d3f27
    1b52:	d1 88       	mov.l	1d74 <tan_dat_tbl+0x1c18>,r1	! 526a5296
    1b54:	d1 d2       	mov.l	1ea0 <tan_dat_tbl+0x1d44>,r1	! 767c76d4
    1b56:	d2 1b       	mov.l	1bc4 <tan_dat_tbl+0x1a68>,r2	! 38cc38e1
    1b58:	d2 66       	mov.l	1cf4 <tan_dat_tbl+0x1b98>,r2	! 48d148f3
    1b5a:	d2 b0       	mov.l	1e1c <tan_dat_tbl+0x1cc0>,r2	! 637063ae
    1b5c:	34 be       	addc	r11,r4
    1b5e:	34 d1       	.word 0x34d1
    1b60:	34 e4       	div1	r14,r4
    1b62:	34 f6       	cmp/hi	r15,r4
    1b64:	35 09       	.word 0x3509
    1b66:	35 1c       	add	r1,r5
    1b68:	35 2f       	addv	r2,r5
    1b6a:	35 42       	cmp/hs	r4,r5
    1b6c:	35 55       	dmulu.l	r5,r5
    1b6e:	35 68       	sub	r6,r5
    1b70:	35 7b       	subv	r7,r5
    1b72:	35 8e       	addc	r8,r5
    1b74:	35 a1       	.word 0x35a1
    1b76:	35 b5       	dmulu.l	r11,r5
    1b78:	35 c8       	sub	r12,r5
    1b7a:	35 db       	subv	r13,r5
    1b7c:	35 ef       	addv	r14,r5
    1b7e:	36 02       	cmp/hs	r0,r6
    1b80:	36 16       	cmp/hi	r1,r6
    1b82:	36 29       	.word 0x3629
    1b84:	36 3d       	dmuls.l	r3,r6
    1b86:	36 50       	cmp/eq	r5,r6
    1b88:	36 64       	div1	r6,r6
    1b8a:	36 78       	sub	r7,r6
    1b8c:	36 8c       	add	r8,r6
    1b8e:	36 9f       	addv	r9,r6
    1b90:	36 b3       	cmp/ge	r11,r6
    1b92:	36 c7       	cmp/gt	r12,r6
    1b94:	36 db       	subv	r13,r6
    1b96:	36 ef       	addv	r14,r6
    1b98:	37 04       	div1	r0,r7
    1b9a:	37 18       	sub	r1,r7
    1b9c:	37 2c       	add	r2,r7
    1b9e:	37 40       	cmp/eq	r4,r7
    1ba0:	37 55       	dmulu.l	r5,r7
    1ba2:	37 69       	.word 0x3769
    1ba4:	37 7d       	dmuls.l	r7,r7
    1ba6:	37 92       	cmp/hs	r9,r7
    1ba8:	37 a6       	cmp/hi	r10,r7
    1baa:	37 bb       	subv	r11,r7
    1bac:	37 d0       	cmp/eq	r13,r7
    1bae:	37 e4       	div1	r14,r7
    1bb0:	37 f9       	.word 0x37f9
    1bb2:	38 0e       	addc	r0,r8
    1bb4:	38 23       	cmp/ge	r2,r8
    1bb6:	38 38       	sub	r3,r8
    1bb8:	38 4d       	dmuls.l	r4,r8
    1bba:	38 62       	cmp/hs	r6,r8
    1bbc:	38 77       	cmp/gt	r7,r8
    1bbe:	38 8c       	add	r8,r8
    1bc0:	38 a1       	.word 0x38a1
    1bc2:	38 b7       	cmp/gt	r11,r8
    1bc4:	38 cc       	add	r12,r8
    1bc6:	38 e1       	.word 0x38e1
    1bc8:	38 f7       	cmp/gt	r15,r8
    1bca:	39 0c       	add	r0,r9
    1bcc:	39 22       	cmp/hs	r2,r9
    1bce:	39 37       	cmp/gt	r3,r9
    1bd0:	39 4d       	dmuls.l	r4,r9
    1bd2:	39 63       	cmp/ge	r6,r9
    1bd4:	39 79       	.word 0x3979
    1bd6:	39 8f       	addv	r8,r9
    1bd8:	39 a5       	dmulu.l	r10,r9
    1bda:	39 ba       	subc	r11,r9
    1bdc:	39 d1       	.word 0x39d1
    1bde:	39 e7       	cmp/gt	r14,r9
    1be0:	39 fd       	dmuls.l	r15,r9
    1be2:	3a 13       	cmp/ge	r1,r10
    1be4:	3a 29       	.word 0x3a29
    1be6:	3a 40       	cmp/eq	r4,r10
    1be8:	3a 56       	cmp/hi	r5,r10
    1bea:	3a 6d       	dmuls.l	r6,r10
    1bec:	3a 83       	cmp/ge	r8,r10
    1bee:	3a 9a       	subc	r9,r10
    1bf0:	3a b0       	cmp/eq	r11,r10
    1bf2:	3a c7       	cmp/gt	r12,r10
    1bf4:	3a de       	addc	r13,r10
    1bf6:	3a f5       	dmulu.l	r15,r10
    1bf8:	3b 0c       	add	r0,r11
    1bfa:	3b 23       	cmp/ge	r2,r11
    1bfc:	3b 3a       	subc	r3,r11
    1bfe:	3b 51       	.word 0x3b51
    1c00:	3b 68       	sub	r6,r11
    1c02:	3b 7f       	addv	r7,r11
    1c04:	3b 97       	cmp/gt	r9,r11
    1c06:	3b ae       	addc	r10,r11
    1c08:	3b c6       	cmp/hi	r12,r11
    1c0a:	3b dd       	dmuls.l	r13,r11
    1c0c:	3b f5       	dmulu.l	r15,r11
    1c0e:	3c 0c       	add	r0,r12
    1c10:	3c 24       	div1	r2,r12
    1c12:	3c 3c       	add	r3,r12
    1c14:	3c 54       	div1	r5,r12
    1c16:	3c 6c       	add	r6,r12
    1c18:	3c 84       	div1	r8,r12
    1c1a:	3c 9c       	add	r9,r12
    1c1c:	3c b4       	div1	r11,r12
    1c1e:	3c cc       	add	r12,r12
    1c20:	3c e4       	div1	r14,r12
    1c22:	3c fd       	dmuls.l	r15,r12
    1c24:	3d 15       	dmulu.l	r1,r13
    1c26:	3d 2e       	addc	r2,r13
    1c28:	3d 46       	cmp/hi	r4,r13
    1c2a:	3d 5f       	addv	r5,r13
    1c2c:	3d 78       	sub	r7,r13
    1c2e:	3d 91       	.word 0x3d91
    1c30:	3d a9       	.word 0x3da9
    1c32:	3d c2       	cmp/hs	r12,r13
    1c34:	3d db       	subv	r13,r13
    1c36:	3d f4       	div1	r15,r13
    1c38:	3e 0e       	addc	r0,r14
    1c3a:	3e 27       	cmp/gt	r2,r14
    1c3c:	3e 40       	cmp/eq	r4,r14
    1c3e:	3e 5a       	subc	r5,r14
    1c40:	3e 73       	cmp/ge	r7,r14
    1c42:	3e 8d       	dmuls.l	r8,r14
    1c44:	3e a6       	cmp/hi	r10,r14
    1c46:	3e c0       	cmp/eq	r12,r14
    1c48:	3e da       	subc	r13,r14
    1c4a:	3e f3       	cmp/ge	r15,r14
    1c4c:	3f 0d       	dmuls.l	r0,r15
    1c4e:	3f 27       	cmp/gt	r2,r15
    1c50:	3f 41       	.word 0x3f41
    1c52:	3f 5c       	add	r5,r15
    1c54:	3f 76       	cmp/hi	r7,r15
    1c56:	3f 90       	cmp/eq	r9,r15
    1c58:	3f ab       	subv	r10,r15
    1c5a:	3f c5       	dmulu.l	r12,r15
    1c5c:	3f e0       	cmp/eq	r14,r15
    1c5e:	3f fa       	subc	r15,r15
    1c60:	40 15       	cmp/pl	r0
    1c62:	40 30       	.word 0x4030
    1c64:	40 4b       	.word 0x404b
    1c66:	40 66       	lds.l	@r0+,fpscr
    1c68:	40 81       	.word 0x4081
    1c6a:	40 9c       	shad	r9,r0
    1c6c:	40 b7       	ldc.l	@r0+,r3_bank
    1c6e:	40 d2       	.word 0x40d2
    1c70:	40 ee       	ldc	r0,r6_bank
    1c72:	41 09       	shlr2	r1
    1c74:	41 25       	rotcr	r1
    1c76:	41 41       	.word 0x4141
    1c78:	41 5c       	shad	r5,r1
    1c7a:	41 78       	.word 0x4178
    1c7c:	41 94       	.word 0x4194
    1c7e:	41 b0       	.word 0x41b0
    1c80:	41 cc       	shad	r12,r1
    1c82:	41 e8       	.word 0x41e8
    1c84:	42 05       	rotr	r2
    1c86:	42 21       	shar	r2
    1c88:	42 3d       	shld	r3,r2
    1c8a:	42 5a       	lds	r2,fpul
    1c8c:	42 77       	ldc.l	@r2+,r7_bank
    1c8e:	42 93       	stc.l	r1_bank,@-r2
    1c90:	42 b0       	.word 0x42b0
    1c92:	42 cd       	shld	r12,r2
    1c94:	42 ea       	.word 0x42ea
    1c96:	43 07       	ldc.l	@r3+,sr
    1c98:	43 24       	rotcl	r3
    1c9a:	43 42       	.word 0x4342
    1c9c:	43 5f       	mac.w	@r5+,@r3+
    1c9e:	43 7c       	shad	r7,r3
    1ca0:	43 9a       	.word 0x439a
    1ca2:	43 b8       	.word 0x43b8
    1ca4:	43 d5       	.word 0x43d5
    1ca6:	43 f3       	stc.l	r7_bank,@-r3
    1ca8:	44 11       	cmp/pz	r4
    1caa:	44 2f       	mac.w	@r2+,@r4+
    1cac:	44 4d       	shld	r4,r4
    1cae:	44 6c       	shad	r6,r4
    1cb0:	44 8a       	.word 0x448a
    1cb2:	44 a8       	.word 0x44a8
    1cb4:	44 c7       	ldc.l	@r4+,r4_bank
    1cb6:	44 e6       	.word 0x44e6
    1cb8:	45 04       	rotl	r5
    1cba:	45 23       	stc.l	vbr,@-r5
    1cbc:	45 42       	.word 0x4542
    1cbe:	45 61       	.word 0x4561
    1cc0:	45 80       	.word 0x4580
    1cc2:	45 a0       	.word 0x45a0
    1cc4:	45 bf       	mac.w	@r11+,@r5+
    1cc6:	45 df       	mac.w	@r13+,@r5+
    1cc8:	45 fe       	ldc	r5,r7_bank
    1cca:	46 1e       	ldc	r6,gbr
    1ccc:	46 3e       	ldc	r6,ssr
    1cce:	46 5d       	shld	r5,r6
    1cd0:	46 7d       	shld	r7,r6
    1cd2:	46 9e       	ldc	r6,r1_bank
    1cd4:	46 be       	ldc	r6,r3_bank
    1cd6:	46 de       	ldc	r6,r5_bank
    1cd8:	46 ff       	mac.w	@r15+,@r6+
    1cda:	47 1f       	mac.w	@r1+,@r7+
    1cdc:	47 40       	.word 0x4740
    1cde:	47 61       	.word 0x4761
    1ce0:	47 81       	.word 0x4781
    1ce2:	47 a2       	.word 0x47a2
    1ce4:	47 c4       	.word 0x47c4
    1ce6:	47 e5       	.word 0x47e5
    1ce8:	48 06       	lds.l	@r8+,mach
    1cea:	48 28       	shll16	r8
    1cec:	48 49       	.word 0x4849
    1cee:	48 6b       	.word 0x486b
    1cf0:	48 8d       	shld	r8,r8
    1cf2:	48 af       	mac.w	@r10+,@r8+
    1cf4:	48 d1       	.word 0x48d1
    1cf6:	48 f3       	stc.l	r7_bank,@-r8
    1cf8:	49 15       	cmp/pl	r9
    1cfa:	49 38       	.word 0x4938
    1cfc:	49 5a       	lds	r9,fpul
    1cfe:	49 7d       	shld	r7,r9
    1d00:	49 9f       	mac.w	@r9+,@r9+
    1d02:	49 c2       	.word 0x49c2
    1d04:	49 e5       	.word 0x49e5
    1d06:	4a 09       	shlr2	r10
    1d08:	4a 2c       	shad	r2,r10
    1d0a:	4a 4f       	mac.w	@r4+,@r10+
    1d0c:	4a 73       	stc.l	r7_bank,@-r10
    1d0e:	4a 96       	.word 0x4a96
    1d10:	4a ba       	.word 0x4aba
    1d12:	4a de       	ldc	r10,r5_bank
    1d14:	4b 02       	sts.l	mach,@-r11
    1d16:	4b 26       	lds.l	@r11+,pr
    1d18:	4b 4b       	.word 0x4b4b
    1d1a:	4b 6f       	mac.w	@r6+,@r11+
    1d1c:	4b 93       	stc.l	r1_bank,@-r11
    1d1e:	4b b8       	.word 0x4bb8
    1d20:	4b dd       	shld	r13,r11
    1d22:	4c 02       	sts.l	mach,@-r12
    1d24:	4c 27       	ldc.l	@r12+,vbr
    1d26:	4c 4c       	shad	r4,r12
    1d28:	4c 72       	.word 0x4c72
    1d2a:	4c 97       	ldc.l	@r12+,r1_bank
    1d2c:	4c bd       	shld	r11,r12
    1d2e:	4c e3       	stc.l	r6_bank,@-r12
    1d30:	4d 08       	shll2	r13
    1d32:	4d 2e       	ldc	r13,vbr
    1d34:	4d 55       	.word 0x4d55
    1d36:	4d 7b       	.word 0x4d7b
    1d38:	4d a2       	.word 0x4da2
    1d3a:	4d c8       	.word 0x4dc8
    1d3c:	4d ef       	mac.w	@r14+,@r13+
    1d3e:	4e 16       	lds.l	@r14+,macl
    1d40:	4e 3d       	shld	r3,r14
    1d42:	4e 64       	.word 0x4e64
    1d44:	4e 8b       	.word 0x4e8b
    1d46:	4e b3       	stc.l	r3_bank,@-r14
    1d48:	4e db       	.word 0x4edb
    1d4a:	4f 02       	sts.l	mach,@-r15
    1d4c:	4f 2a       	lds	r15,pr
    1d4e:	4f 52       	sts.l	fpul,@-r15
    1d50:	4f 7b       	.word 0x4f7b
    1d52:	4f a3       	stc.l	r2_bank,@-r15
    1d54:	4f cc       	shad	r12,r15
    1d56:	4f f4       	.word 0x4ff4
    1d58:	50 1d       	mov.l	@(52,r1),r0
    1d5a:	50 46       	mov.l	@(24,r4),r0
    1d5c:	50 6f       	mov.l	@(60,r6),r0
    1d5e:	50 99       	mov.l	@(36,r9),r0
    1d60:	50 c2       	mov.l	@(8,r12),r0
    1d62:	50 ec       	mov.l	@(48,r14),r0
    1d64:	51 16       	mov.l	@(24,r1),r1
    1d66:	51 40       	mov.l	@(0,r4),r1
    1d68:	51 6a       	mov.l	@(40,r6),r1
    1d6a:	51 94       	mov.l	@(16,r9),r1
    1d6c:	51 bf       	mov.l	@(60,r11),r1
    1d6e:	51 e9       	mov.l	@(36,r14),r1
    1d70:	52 14       	mov.l	@(16,r1),r2
    1d72:	52 3f       	mov.l	@(60,r3),r2
    1d74:	52 6a       	mov.l	@(40,r6),r2
    1d76:	52 96       	mov.l	@(24,r9),r2
    1d78:	52 c1       	mov.l	@(4,r12),r2
    1d7a:	52 ed       	mov.l	@(52,r14),r2
    1d7c:	53 19       	mov.l	@(36,r1),r3
    1d7e:	53 45       	mov.l	@(20,r4),r3
    1d80:	53 71       	mov.l	@(4,r7),r3
    1d82:	53 9d       	mov.l	@(52,r9),r3
    1d84:	53 ca       	mov.l	@(40,r12),r3
    1d86:	53 f7       	mov.l	@(28,r15),r3
    1d88:	54 24       	mov.l	@(16,r2),r4
    1d8a:	54 51       	mov.l	@(4,r5),r4
    1d8c:	54 7e       	mov.l	@(56,r7),r4
    1d8e:	54 ac       	mov.l	@(48,r10),r4
    1d90:	54 d9       	mov.l	@(36,r13),r4
    1d92:	55 07       	mov.l	@(28,r0),r5
    1d94:	55 35       	mov.l	@(20,r3),r5
    1d96:	55 63       	mov.l	@(12,r6),r5
    1d98:	55 92       	mov.l	@(8,r9),r5
    1d9a:	55 c0       	mov.l	@(0,r12),r5
    1d9c:	55 ef       	mov.l	@(60,r14),r5
    1d9e:	56 1e       	mov.l	@(56,r1),r6
    1da0:	56 4d       	mov.l	@(52,r4),r6
    1da2:	56 7d       	mov.l	@(52,r7),r6
    1da4:	56 ac       	mov.l	@(48,r10),r6
    1da6:	56 dc       	mov.l	@(48,r13),r6
    1da8:	57 0c       	mov.l	@(48,r0),r7
    1daa:	57 3c       	mov.l	@(48,r3),r7
    1dac:	57 6c       	mov.l	@(48,r6),r7
    1dae:	57 9d       	mov.l	@(52,r9),r7
    1db0:	57 ce       	mov.l	@(56,r12),r7
    1db2:	57 ff       	mov.l	@(60,r15),r7
    1db4:	58 30       	mov.l	@(0,r3),r8
    1db6:	58 61       	mov.l	@(4,r6),r8
    1db8:	58 93       	mov.l	@(12,r9),r8
    1dba:	58 c5       	mov.l	@(20,r12),r8
    1dbc:	58 f7       	mov.l	@(28,r15),r8
    1dbe:	59 29       	mov.l	@(36,r2),r9
    1dc0:	59 5c       	mov.l	@(48,r5),r9
    1dc2:	59 8e       	mov.l	@(56,r8),r9
    1dc4:	59 c1       	mov.l	@(4,r12),r9
    1dc6:	59 f4       	mov.l	@(16,r15),r9
    1dc8:	5a 28       	mov.l	@(32,r2),r10
    1dca:	5a 5b       	mov.l	@(44,r5),r10
    1dcc:	5a 8f       	mov.l	@(60,r8),r10
    1dce:	5a c3       	mov.l	@(12,r12),r10
    1dd0:	5a f7       	mov.l	@(28,r15),r10
    1dd2:	5b 2c       	mov.l	@(48,r2),r11
    1dd4:	5b 60       	mov.l	@(0,r6),r11
    1dd6:	5b 95       	mov.l	@(20,r9),r11
    1dd8:	5b ca       	mov.l	@(40,r12),r11
    1dda:	5c 00       	mov.l	@(0,r0),r12
    1ddc:	5c 35       	mov.l	@(20,r3),r12
    1dde:	5c 6b       	mov.l	@(44,r6),r12
    1de0:	5c a1       	mov.l	@(4,r10),r12
    1de2:	5c d8       	mov.l	@(32,r13),r12
    1de4:	5d 0e       	mov.l	@(56,r0),r13
    1de6:	5d 45       	mov.l	@(20,r4),r13
    1de8:	5d 7c       	mov.l	@(48,r7),r13
    1dea:	5d b3       	mov.l	@(12,r11),r13
    1dec:	5d eb       	mov.l	@(44,r14),r13
    1dee:	5e 23       	mov.l	@(12,r2),r14
    1df0:	5e 5b       	mov.l	@(44,r5),r14
    1df2:	5e 93       	mov.l	@(12,r9),r14
    1df4:	5e cc       	mov.l	@(48,r12),r14
    1df6:	5f 05       	mov.l	@(20,r0),r15
    1df8:	5f 3e       	mov.l	@(56,r3),r15
    1dfa:	5f 77       	mov.l	@(28,r7),r15
    1dfc:	5f b1       	mov.l	@(4,r11),r15
    1dfe:	5f eb       	mov.l	@(44,r14),r15
    1e00:	60 25       	mov.w	@r2+,r0
    1e02:	60 5f       	exts.w	r5,r0
    1e04:	60 9a       	negc	r9,r0
    1e06:	60 d5       	mov.w	@r13+,r0
    1e08:	61 10       	mov.b	@r1,r1
    1e0a:	61 4c       	extu.b	r4,r1
    1e0c:	61 87       	not	r8,r1
    1e0e:	61 c4       	mov.b	@r12+,r1
    1e10:	62 00       	mov.b	@r0,r2
    1e12:	62 3d       	extu.w	r3,r2
    1e14:	62 79       	swap.w	r7,r2
    1e16:	62 b7       	not	r11,r2
    1e18:	62 f4       	mov.b	@r15+,r2
    1e1a:	63 32       	mov.l	@r3,r3
    1e1c:	63 70       	mov.b	@r7,r3
    1e1e:	63 ae       	exts.b	r10,r3
    1e20:	63 ed       	extu.w	r14,r3
    1e22:	64 2c       	extu.b	r2,r4
    1e24:	64 6b       	neg	r6,r4
    1e26:	64 ab       	neg	r10,r4
    1e28:	64 eb       	neg	r14,r4
    1e2a:	65 2b       	neg	r2,r5
    1e2c:	65 6c       	extu.b	r6,r5
    1e2e:	65 ad       	extu.w	r10,r5
    1e30:	65 ee       	exts.b	r14,r5
    1e32:	66 2f       	exts.w	r2,r6
    1e34:	66 71       	mov.w	@r7,r6
    1e36:	66 b3       	mov	r11,r6
    1e38:	66 f6       	mov.l	@r15+,r6
    1e3a:	67 38       	swap.b	r3,r7
    1e3c:	67 7b       	neg	r7,r7
    1e3e:	67 bf       	exts.w	r11,r7
    1e40:	68 03       	mov	r0,r8
    1e42:	68 47       	not	r4,r8
    1e44:	68 8b       	neg	r8,r8
    1e46:	68 d0       	mov.b	@r13,r8
    1e48:	69 15       	mov.w	@r1+,r9
    1e4a:	69 5b       	neg	r5,r9
    1e4c:	69 a1       	mov.w	@r10,r9
    1e4e:	69 e7       	not	r14,r9
    1e50:	6a 2d       	extu.w	r2,r10
    1e52:	6a 74       	mov.b	@r7+,r10
    1e54:	6a bc       	extu.b	r11,r10
    1e56:	6b 03       	mov	r0,r11
    1e58:	6b 4b       	neg	r4,r11
    1e5a:	6b 94       	mov.b	@r9+,r11
    1e5c:	6b dc       	extu.b	r13,r11
    1e5e:	6c 26       	mov.l	@r2+,r12
    1e60:	6c 6f       	exts.w	r6,r12
    1e62:	6c b9       	swap.w	r11,r12
    1e64:	6d 03       	mov	r0,r13
    1e66:	6d 4e       	exts.b	r4,r13
    1e68:	6d 99       	swap.w	r9,r13
    1e6a:	6d e5       	mov.w	@r14+,r13
    1e6c:	6e 30       	mov.b	@r3,r14
    1e6e:	6e 7d       	extu.w	r7,r14
    1e70:	6e c9       	swap.w	r12,r14
    1e72:	6f 17       	not	r1,r15
    1e74:	6f 64       	mov.b	@r6+,r15
    1e76:	6f b2       	mov.l	@r11,r15
    1e78:	70 00       	add	#0,r0
    1e7a:	70 4f       	add	#79,r0
    1e7c:	70 9e       	add	#-98,r0
    1e7e:	70 ee       	add	#-18,r0
    1e80:	71 3e       	add	#62,r1
    1e82:	71 8e       	add	#-114,r1
    1e84:	71 df       	add	#-33,r1
    1e86:	72 31       	add	#49,r2
    1e88:	72 82       	add	#-126,r2
    1e8a:	72 d5       	add	#-43,r2
    1e8c:	73 27       	add	#39,r3
    1e8e:	73 7b       	add	#123,r3
    1e90:	73 ce       	add	#-50,r3
    1e92:	74 22       	add	#34,r4
    1e94:	74 77       	add	#119,r4
    1e96:	74 cc       	add	#-52,r4
    1e98:	75 21       	add	#33,r5
    1e9a:	75 77       	add	#119,r5
    1e9c:	75 ce       	add	#-50,r5
    1e9e:	76 25       	add	#37,r6
    1ea0:	76 7c       	add	#124,r6
    1ea2:	76 d4       	add	#-44,r6
    1ea4:	77 2d       	add	#45,r7
    1ea6:	77 86       	add	#-122,r7
    1ea8:	77 df       	add	#-33,r7
    1eaa:	78 39       	add	#57,r8
    1eac:	78 94       	add	#-108,r8
    1eae:	78 ef       	add	#-17,r8
    1eb0:	79 4a       	add	#74,r9
    1eb2:	79 a6       	add	#-90,r9
    1eb4:	7a 03       	add	#3,r10
    1eb6:	7a 60       	add	#96,r10
    1eb8:	7a be       	add	#-66,r10
    1eba:	7b 1c       	add	#28,r11
    1ebc:	7b 7b       	add	#123,r11
    1ebe:	7b db       	add	#-37,r11
    1ec0:	7c 3b       	add	#59,r12
    1ec2:	7c 9b       	add	#-101,r12
    1ec4:	7c fc       	add	#-4,r12
    1ec6:	7d 5e       	add	#94,r13
    1ec8:	7d c0       	add	#-64,r13
    1eca:	7e 23       	add	#35,r14
    1ecc:	7e 87       	add	#-121,r14
    1ece:	7e eb       	add	#-21,r14
    1ed0:	7f 50       	add	#80,r15
    1ed2:	7f b5       	add	#-75,r15
    1ed4:	80 1b       	mov.b	r0,@(11,r1)
    1ed6:	80 81       	mov.b	r0,@(1,r8)
    1ed8:	80 e9       	mov.b	r0,@(9,r14)
    1eda:	81 50       	mov.w	r0,@(0,r5)
    1edc:	81 b9       	mov.w	r0,@(18,r11)
    1ede:	82 22       	.word 0x8222
    1ee0:	82 8c       	.word 0x828c
    1ee2:	82 f6       	.word 0x82f6
    1ee4:	83 62       	.word 0x8362
    1ee6:	83 cd       	.word 0x83cd
    1ee8:	84 3a       	mov.b	@(10,r3),r0
    1eea:	84 a7       	mov.b	@(7,r10),r0
    1eec:	85 15       	mov.w	@(10,r1),r0
    1eee:	85 84       	mov.w	@(8,r8),r0
    1ef0:	85 f3       	mov.w	@(6,r15),r0
    1ef2:	86 63       	.word 0x8663
    1ef4:	86 d4       	.word 0x86d4
    1ef6:	87 45       	.word 0x8745
    1ef8:	87 b7       	.word 0x87b7
    1efa:	88 2a       	cmp/eq	#42,r0
    1efc:	88 9e       	cmp/eq	#-98,r0
    1efe:	89 13       	bt	1f28 <tan_dat_tbl+0x1dcc>
    1f00:	89 88       	bt	1e14 <tan_dat_tbl+0x1cb8>
    1f02:	89 fe       	bt	1f02 <tan_dat_tbl+0x1da6>
    1f04:	8a 75       	.word 0x8a75
    1f06:	8a ec       	.word 0x8aec
    1f08:	8b 65       	bf	1fd6 <tan_dat_tbl+0x1e7a>
    1f0a:	8b de       	bf	1eca <tan_dat_tbl+0x1d6e>
    1f0c:	8c 58       	.word 0x8c58
    1f0e:	8c d3       	.word 0x8cd3
    1f10:	8d 4e       	bt.s	1fb0 <tan_dat_tbl+0x1e54>
    1f12:	8d cb       	bt.s	1eac <tan_dat_tbl+0x1d50>
    1f14:	8e 48       	.word 0x8e48
    1f16:	8e c6       	.word 0x8ec6
    1f18:	8f 46       	bf.s	1fa8 <tan_dat_tbl+0x1e4c>
    1f1a:	8f c6       	bf.s	1eaa <tan_dat_tbl+0x1d4e>
    1f1c:	90 46       	mov.w	1fac <tan_dat_tbl+0x1e50>,r0	! c0b
    1f1e:	90 c8       	mov.w	20b2 <tan_dat_tbl+0x1f56>,r0	! 1eaa
    1f20:	91 4b       	mov.w	1fba <tan_dat_tbl+0x1e5e>,r1	! c73
    1f22:	91 ce       	mov.w	20c2 <tan_dat_tbl+0x1f66>,r1	! 21da
    1f24:	92 53       	mov.w	1fce <tan_dat_tbl+0x1e72>,r2	! d13
    1f26:	92 d8       	mov.w	20da <tan_dat_tbl+0x1f7e>,r2	! 281b
    1f28:	93 5f       	mov.w	1fea <tan_dat_tbl+0x1e8e>,r3	! e12
    1f2a:	93 e6       	mov.w	20fa <tan_dat_tbl+0x1f9e>,r3	! 3535
    1f2c:	94 6e       	mov.w	200c <tan_dat_tbl+0x1eb0>,r4	! f7f
    1f2e:	94 f7       	mov.w	2120 <tan_dat_tbl+0x1fc4>,r4	! 56ea
    1f30:	95 82       	mov.w	2038 <tan_dat_tbl+0x1edc>,r5	! 11d7
    1f32:	96 0d       	mov.w	1f50 <tan_dat_tbl+0x1df4>,r6	! 9eb4
    1f34:	96 99       	mov.w	206a <tan_dat_tbl+0x1f0e>,r6	! 1588
    1f36:	97 26       	mov.w	1f86 <tan_dat_tbl+0x1e2a>,r7	! b10
    1f38:	97 b5       	mov.w	20a6 <tan_dat_tbl+0x1f4a>,r7	! 1ca4
    1f3a:	98 44       	mov.w	1fc6 <tan_dat_tbl+0x1e6a>,r8	! cd1
    1f3c:	98 d4       	mov.w	20e8 <tan_dat_tbl+0x1f8c>,r8	! 2cf3
    1f3e:	99 66       	mov.w	200e <tan_dat_tbl+0x1eb2>,r9	! f97
    1f40:	99 f8       	mov.w	2134 <tan_dat_tbl+0x1fd8>,r9	! 8260
    1f42:	9a 8c       	mov.w	205e <tan_dat_tbl+0x1f02>,r10	! 1484
    1f44:	9b 20       	mov.w	1f88 <tan_dat_tbl+0x1e2c>,r11	! b1d
    1f46:	9b b6       	mov.w	20b6 <tan_dat_tbl+0x1f5a>,r11	! 1f67
    1f48:	9c 4d       	mov.w	1fe6 <tan_dat_tbl+0x1e8a>,r12	! deb
    1f4a:	9c e5       	mov.w	2118 <tan_dat_tbl+0x1fbc>,r12	! 4cb0
    1f4c:	9d 7e       	mov.w	204c <tan_dat_tbl+0x1ef0>,r13	! 1327
    1f4e:	9e 19       	mov.w	1f84 <tan_dat_tbl+0x1e28>,r14	! b04
    1f50:	9e b4       	mov.w	20bc <tan_dat_tbl+0x1f60>,r14	! 2095
    1f52:	9f 51       	mov.w	1ff8 <tan_dat_tbl+0x1e9c>,r15	! ea0
    1f54:	9f ef       	mov.w	2136 <tan_dat_tbl+0x1fda>,r15	! 893d
    1f56:	a0 8e       	bra	2076 <tan_dat_tbl+0x1f1a>
    1f58:	a1 2e       	bra	21b8 <tan_dat_tbl+0x205c>
    1f5a:	a1 d0       	bra	22fe <tan_dat_tbl+0x21a2>
    1f5c:	0a 27       	mul.l	r2,r10
    1f5e:	0a 31       	.word 0x0a31
    1f60:	0a 3b       	.word 0x0a3b
    1f62:	0a 46       	mov.l	r4,@(r0,r10)
    1f64:	0a 50       	.word 0x0a50
    1f66:	0a 5b       	.word 0x0a5b
    1f68:	0a 65       	mov.w	r6,@(r0,r10)
    1f6a:	0a 70       	.word 0x0a70
    1f6c:	0a 7b       	.word 0x0a7b
    1f6e:	0a 86       	mov.l	r8,@(r0,r10)
    1f70:	0a 91       	.word 0x0a91
    1f72:	0a 9c       	mov.b	@(r0,r9),r10
    1f74:	0a a7       	mul.l	r10,r10
    1f76:	0a b3       	ocbwb	@r10
    1f78:	0a be       	mov.l	@(r0,r11),r10
    1f7a:	0a ca       	.word 0x0aca
    1f7c:	0a d5       	mov.w	r13,@(r0,r10)
    1f7e:	0a e1       	.word 0x0ae1
    1f80:	0a ed       	mov.w	@(r0,r14),r10
    1f82:	0a f8       	.word 0x0af8
    1f84:	0b 04       	mov.b	r0,@(r0,r11)
    1f86:	0b 10       	.word 0x0b10
    1f88:	0b 1d       	mov.w	@(r0,r1),r11
    1f8a:	0b 29       	movt	r11
    1f8c:	0b 35       	mov.w	r3,@(r0,r11)
    1f8e:	0b 42       	stc	spc,r11
    1f90:	0b 4e       	mov.l	@(r0,r4),r11
    1f92:	0b 5b       	.word 0x0b5b
    1f94:	0b 68       	.word 0x0b68
    1f96:	0b 75       	mov.w	r7,@(r0,r11)
    1f98:	0b 82       	stc	r0_bank,r11
    1f9a:	0b 8f       	mac.l	@r8+,@r11+
    1f9c:	0b 9c       	mov.b	@(r0,r9),r11
    1f9e:	0b aa       	.word 0x0baa
    1fa0:	0b b7       	mul.l	r11,r11
    1fa2:	0b c5       	mov.w	r12,@(r0,r11)
    1fa4:	0b d3       	.word 0x0bd3
    1fa6:	0b e0       	.word 0x0be0
    1fa8:	0b ee       	mov.l	@(r0,r14),r11
    1faa:	0b fd       	mov.w	@(r0,r15),r11
    1fac:	0c 0b       	.word 0x0c0b
    1fae:	0c 19       	.word 0x0c19
    1fb0:	0c 28       	.word 0x0c28
    1fb2:	0c 37       	mul.l	r3,r12
    1fb4:	0c 45       	mov.w	r4,@(r0,r12)
    1fb6:	0c 54       	mov.b	r5,@(r0,r12)
    1fb8:	0c 63       	.word 0x0c63
    1fba:	0c 73       	.word 0x0c73
    1fbc:	0c 82       	stc	r0_bank,r12
    1fbe:	0c 92       	stc	r1_bank,r12
    1fc0:	0c a1       	.word 0x0ca1
    1fc2:	0c b1       	.word 0x0cb1
    1fc4:	0c c1       	.word 0x0cc1
    1fc6:	0c d1       	.word 0x0cd1
    1fc8:	0c e2       	stc	r6_bank,r12
    1fca:	0c f2       	stc	r7_bank,r12
    1fcc:	0d 03       	bsrf	r13
    1fce:	0d 13       	.word 0x0d13
    1fd0:	0d 24       	mov.b	r2,@(r0,r13)
    1fd2:	0d 36       	mov.l	r3,@(r0,r13)
    1fd4:	0d 47       	mul.l	r4,r13
    1fd6:	0d 58       	.word 0x0d58
    1fd8:	0d 6a       	sts	fpscr,r13
    1fda:	0d 7c       	mov.b	@(r0,r7),r13
    1fdc:	0d 8e       	mov.l	@(r0,r8),r13
    1fde:	0d a0       	.word 0x0da0
    1fe0:	0d b3       	ocbwb	@r13
    1fe2:	0d c5       	mov.w	r12,@(r0,r13)
    1fe4:	0d d8       	.word 0x0dd8
    1fe6:	0d eb       	.word 0x0deb
    1fe8:	0d fe       	mov.l	@(r0,r15),r13
    1fea:	0e 12       	stc	gbr,r14
    1fec:	0e 25       	mov.w	r2,@(r0,r14)
    1fee:	0e 39       	.word 0x0e39
    1ff0:	0e 4d       	mov.w	@(r0,r4),r14
    1ff2:	0e 62       	stc	r6_bank,r14
    1ff4:	0e 76       	mov.l	r7,@(r0,r14)
    1ff6:	0e 8b       	.word 0x0e8b
    1ff8:	0e a0       	.word 0x0ea0
    1ffa:	0e b5       	mov.w	r11,@(r0,r14)
    1ffc:	0e cb       	.word 0x0ecb
    1ffe:	0e e0       	.word 0x0ee0
    2000:	0e f6       	mov.l	r15,@(r0,r14)
    2002:	0f 0c       	mov.b	@(r0,r0),r15
    2004:	0f 23       	braf	r15
    2006:	0f 3a       	stc	sgr,r15
    2008:	0f 51       	.word 0x0f51
    200a:	0f 68       	.word 0x0f68
    200c:	0f 7f       	mac.l	@r7+,@r15+
    200e:	0f 97       	mul.l	r9,r15
    2010:	0f af       	mac.l	@r10+,@r15+
    2012:	0f c8       	.word 0x0fc8
    2014:	0f e1       	.word 0x0fe1
    2016:	0f fa       	stc	dbr,r15
    2018:	10 13       	mov.l	r1,@(12,r0)
    201a:	10 2c       	mov.l	r2,@(48,r0)
    201c:	10 46       	mov.l	r4,@(24,r0)
    201e:	10 61       	mov.l	r6,@(4,r0)
    2020:	10 7b       	mov.l	r7,@(44,r0)
    2022:	10 96       	mov.l	r9,@(24,r0)
    2024:	10 b2       	mov.l	r11,@(8,r0)
    2026:	10 cd       	mov.l	r12,@(52,r0)
    2028:	10 e9       	mov.l	r14,@(36,r0)
    202a:	11 06       	mov.l	r0,@(24,r1)
    202c:	11 22       	mov.l	r2,@(8,r1)
    202e:	11 3f       	mov.l	r3,@(60,r1)
    2030:	11 5d       	mov.l	r5,@(52,r1)
    2032:	11 7b       	mov.l	r7,@(44,r1)
    2034:	11 99       	mov.l	r9,@(36,r1)
    2036:	11 b8       	mov.l	r11,@(32,r1)
    2038:	11 d7       	mov.l	r13,@(28,r1)
    203a:	11 f7       	mov.l	r15,@(28,r1)
    203c:	12 17       	mov.l	r1,@(28,r2)
    203e:	12 37       	mov.l	r3,@(28,r2)
    2040:	12 58       	mov.l	r5,@(32,r2)
    2042:	12 79       	mov.l	r7,@(36,r2)
    2044:	12 9b       	mov.l	r9,@(44,r2)
    2046:	12 bd       	mov.l	r11,@(52,r2)
    2048:	12 e0       	mov.l	r14,@(0,r2)
    204a:	13 04       	mov.l	r0,@(16,r3)
    204c:	13 27       	mov.l	r2,@(28,r3)
    204e:	13 4c       	mov.l	r4,@(48,r3)
    2050:	13 71       	mov.l	r7,@(4,r3)
    2052:	13 96       	mov.l	r9,@(24,r3)
    2054:	13 bc       	mov.l	r11,@(48,r3)
    2056:	13 e3       	mov.l	r14,@(12,r3)
    2058:	14 0a       	mov.l	r0,@(40,r4)
    205a:	14 32       	mov.l	r3,@(8,r4)
    205c:	14 5a       	mov.l	r5,@(40,r4)
    205e:	14 84       	mov.l	r8,@(16,r4)
    2060:	14 ad       	mov.l	r10,@(52,r4)
    2062:	14 d8       	mov.l	r13,@(32,r4)
    2064:	15 03       	mov.l	r0,@(12,r5)
    2066:	15 2f       	mov.l	r2,@(60,r5)
    2068:	15 5b       	mov.l	r5,@(44,r5)
    206a:	15 88       	mov.l	r8,@(32,r5)
    206c:	15 b6       	mov.l	r11,@(24,r5)
    206e:	15 e5       	mov.l	r14,@(20,r5)
    2070:	16 15       	mov.l	r1,@(20,r6)
    2072:	16 45       	mov.l	r4,@(20,r6)
    2074:	16 76       	mov.l	r7,@(24,r6)
    2076:	16 a8       	mov.l	r10,@(32,r6)
    2078:	16 db       	mov.l	r13,@(44,r6)
    207a:	17 0f       	mov.l	r0,@(60,r7)
    207c:	17 44       	mov.l	r4,@(16,r7)
    207e:	17 7a       	mov.l	r7,@(40,r7)
    2080:	17 b0       	mov.l	r11,@(0,r7)
    2082:	17 e8       	mov.l	r14,@(32,r7)
    2084:	18 21       	mov.l	r2,@(4,r8)
    2086:	18 5b       	mov.l	r5,@(44,r8)
    2088:	18 96       	mov.l	r9,@(24,r8)
    208a:	18 d2       	mov.l	r13,@(8,r8)
    208c:	19 0f       	mov.l	r0,@(60,r9)
    208e:	19 4d       	mov.l	r4,@(52,r9)
    2090:	19 8d       	mov.l	r8,@(52,r9)
    2092:	19 ce       	mov.l	r12,@(56,r9)
    2094:	1a 10       	mov.l	r1,@(0,r10)
    2096:	1a 53       	mov.l	r5,@(12,r10)
    2098:	1a 98       	mov.l	r9,@(32,r10)
    209a:	1a de       	mov.l	r13,@(56,r10)
    209c:	1b 26       	mov.l	r2,@(24,r11)
    209e:	1b 6f       	mov.l	r6,@(60,r11)
    20a0:	1b ba       	mov.l	r11,@(40,r11)
    20a2:	1c 06       	mov.l	r0,@(24,r12)
    20a4:	1c 54       	mov.l	r5,@(16,r12)
    20a6:	1c a4       	mov.l	r10,@(16,r12)
    20a8:	1c f6       	mov.l	r15,@(24,r12)
    20aa:	1d 49       	mov.l	r4,@(36,r13)
    20ac:	1d 9e       	mov.l	r9,@(56,r13)
    20ae:	1d f6       	mov.l	r15,@(24,r13)
    20b0:	1e 4f       	mov.l	r4,@(60,r14)
    20b2:	1e aa       	mov.l	r10,@(40,r14)
    20b4:	1f 08       	mov.l	r0,@(32,r15)
    20b6:	1f 67       	mov.l	r6,@(28,r15)
    20b8:	1f ca       	mov.l	r12,@(40,r15)
    20ba:	20 2e       	mulu.w	r2,r0
    20bc:	20 95       	mov.w	r9,@-r0
    20be:	20 ff       	muls.w	r15,r0
    20c0:	21 6b       	or	r6,r1
    20c2:	21 da       	xor	r13,r1
    20c4:	22 4c       	cmp/str	r4,r2
    20c6:	22 c2       	mov.l	r12,@r2
    20c8:	23 3a       	xor	r3,r3
    20ca:	23 b6       	mov.l	r11,@-r3
    20cc:	24 35       	mov.w	r3,@-r4
    20ce:	24 b7       	div0s	r11,r4
    20d0:	25 3e       	mulu.w	r3,r5
    20d2:	25 c8       	tst	r12,r5
    20d4:	26 56       	mov.l	r5,@-r6
    20d6:	26 e9       	and	r14,r6
    20d8:	27 80       	mov.b	r8,@r7
    20da:	28 1b       	or	r1,r8
    20dc:	28 bc       	cmp/str	r11,r8
    20de:	29 61       	mov.w	r6,@r9
    20e0:	2a 0c       	cmp/str	r0,r10
    20e2:	2a bd       	xtrct	r11,r10
    20e4:	2b 73       	.word 0x2b73
    20e6:	2c 30       	mov.b	r3,@r12
    20e8:	2c f3       	.word 0x2cf3
    20ea:	2d bd       	xtrct	r11,r13
    20ec:	2e 8e       	mulu.w	r8,r14
    20ee:	2f 67       	div0s	r6,r15
    20f0:	30 48       	sub	r4,r0
    20f2:	31 31       	.word 0x3131
    20f4:	32 23       	cmp/ge	r2,r2
    20f6:	33 1f       	addv	r1,r3
    20f8:	34 25       	dmulu.l	r2,r4
    20fa:	35 35       	dmulu.l	r3,r5
    20fc:	36 51       	.word 0x3651
    20fe:	37 79       	.word 0x3779
    2100:	38 ae       	addc	r10,r8
    2102:	39 f0       	cmp/eq	r15,r9
    2104:	3b 42       	cmp/hs	r4,r11
    2106:	3c a2       	cmp/hs	r10,r12
    2108:	3e 14       	div1	r1,r14
    210a:	3f 98       	sub	r9,r15
    210c:	41 2f       	mac.w	@r2+,@r1+
    210e:	42 db       	.word 0x42db
    2110:	44 9d       	shld	r9,r4
    2112:	46 78       	.word 0x4678
    2114:	48 6d       	shld	r6,r8
    2116:	4a 7f       	mac.w	@r7+,@r10+
    2118:	4c b0       	.word 0x4cb0
    211a:	4f 03       	stc.l	sr,@-r15
    211c:	51 7b       	mov.l	@(44,r7),r1
    211e:	54 1c       	mov.l	@(48,r1),r4
    2120:	56 ea       	mov.l	@(40,r14),r6
    2122:	59 e9       	mov.l	@(36,r14),r9
    2124:	5d 1f       	mov.l	@(60,r1),r13
    2126:	60 92       	mov.l	@r9,r0
    2128:	64 49       	swap.w	r4,r4
    212a:	68 4c       	extu.b	r4,r8
    212c:	6c a5       	mov.w	@r10+,r12
    212e:	71 5e       	add	#94,r1
    2130:	76 86       	add	#-122,r6
    2132:	7c 2b       	add	#43,r12
    2134:	82 60       	.word 0x8260
    2136:	89 3d       	bt	21b4 <tan_dat_tbl+0x2058>
    2138:	90 dd       	mov.w	22f6 <tan_dat_tbl+0x219a>,r0
    213a:	99 62       	mov.w	2202 <tan_dat_tbl+0x20a6>,r9
    213c:	a2 f8       	bra	2730 <tan_dat_tbl+0x25d4>
    213e:	ad d6       	bra	1cee <tan_dat_tbl+0x1b92>
    2140:	ba 41       	bsr	15c6 <tan_dat_tbl+0x146a>
    2142:	c8 95       	tst	#-107,r0
    2144:	d9 4c       	mov.l	2278 <tan_dat_tbl+0x211c>,r9
    2146:	ed 0d       	mov	#13,r13
    2148:	ff ff       	.word 0xffff
    214a:	ff ff       	.word 0xffff
    214c:	ff ff       	.word 0xffff
    214e:	ff ff       	.word 0xffff
    2150:	ff ff       	.word 0xffff
    2152:	ff ff       	.word 0xffff
    2154:	ff ff       	.word 0xffff
    2156:	ff ff       	.word 0xffff
    2158:	ff ff       	.word 0xffff
    215a:	ff ff       	.word 0xffff
