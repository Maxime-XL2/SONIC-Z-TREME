
sglH00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SLPROG>:
   0:	d3 04       	mov.l	14 <IMM_SmpcSemaphore>,r3	! 60fffb8
   2:	43 1b       	tas.b	@r3
   4:	00 29       	movt	r0
   6:	00 0b       	rts	
   8:	70 ff       	add	#-1,r0

0000000a <_slSendSmpcSemaphore>:
   a:	d3 02       	mov.l	14 <IMM_SmpcSemaphore>,r3	! 60fffb8
   c:	21 1a       	xor	r1,r1
   e:	23 10       	mov.b	r1,@r3
  10:	00 0b       	rts	
  12:	60 43       	mov	r4,r0

00000014 <IMM_SmpcSemaphore>:
  14:	06 0f       	mac.l	@r0+,@r6+
  16:	ff b8       	fmov	@r11,fr15

00000018 <_slGetPortDir1>:
  18:	d2 18       	mov.l	7c <IMM_SmpcPortDir1>,r2	! 60fffc0
  1a:	60 20       	mov.b	@r2,r0
  1c:	00 0b       	rts	
  1e:	c9 7f       	and	#127,r0

00000020 <_slGetPortDir2>:
  20:	d2 17       	mov.l	80 <IMM_SmpcPortDir2>,r2	! 60fffc1
  22:	60 20       	mov.b	@r2,r0
  24:	00 0b       	rts	
  26:	c9 7f       	and	#127,r0

00000028 <_slSetPortDir1>:
  28:	4f 22       	sts.l	pr,@-r15
  2a:	bf e9       	bsr	0 <SLPROG>
  2c:	00 09       	nop	
  2e:	88 00       	cmp/eq	#0,r0
  30:	8b 0c       	bf	4c <_slSetPortDir1_90>
  32:	b2 2e       	bsr	492 <_slCheckIntBackSet>
  34:	00 09       	nop	
  36:	88 00       	cmp/eq	#0,r0
  38:	8b 06       	bf	48 <_slSetPortDir1_80>
  3a:	60 43       	mov	r4,r0
  3c:	d2 0f       	mov.l	7c <IMM_SmpcPortDir1>,r2	! 60fffc0
  3e:	c9 7f       	and	#127,r0
  40:	d3 10       	mov.l	84 <IMM_SMPC_REG_DDR1>,r3	! 20100079
  42:	22 00       	mov.b	r0,@r2
  44:	23 00       	mov.b	r0,@r3
  46:	e0 00       	mov	#0,r0

00000048 <_slSetPortDir1_80>:
  48:	bf df       	bsr	a <_slSendSmpcSemaphore>
  4a:	64 03       	mov	r0,r4

0000004c <_slSetPortDir1_90>:
  4c:	4f 26       	lds.l	@r15+,pr
  4e:	00 0b       	rts	
  50:	00 09       	nop	

00000052 <_slSetPortDir2>:
  52:	4f 22       	sts.l	pr,@-r15
  54:	bf d4       	bsr	0 <SLPROG>
  56:	00 09       	nop	
  58:	88 00       	cmp/eq	#0,r0
  5a:	8b 0c       	bf	76 <slSetPortDir2_90>
  5c:	b2 19       	bsr	492 <_slCheckIntBackSet>
  5e:	00 09       	nop	
  60:	88 00       	cmp/eq	#0,r0
  62:	8b 06       	bf	72 <slSetPortDir2_80>
  64:	60 43       	mov	r4,r0
  66:	d2 06       	mov.l	80 <IMM_SmpcPortDir2>,r2	! 60fffc1
  68:	c9 7f       	and	#127,r0
  6a:	d3 07       	mov.l	88 <IMM_SMPC_REG_DDR2>,r3	! 2010007b
  6c:	22 00       	mov.b	r0,@r2
  6e:	23 00       	mov.b	r0,@r3
  70:	e0 00       	mov	#0,r0

00000072 <slSetPortDir2_80>:
  72:	bf ca       	bsr	a <_slSendSmpcSemaphore>
  74:	64 03       	mov	r0,r4

00000076 <slSetPortDir2_90>:
  76:	4f 26       	lds.l	@r15+,pr
  78:	00 0b       	rts	
  7a:	00 09       	nop	

0000007c <IMM_SmpcPortDir1>:
  7c:	06 0f       	mac.l	@r0+,@r6+
  7e:	ff c0       	fadd	fr12,fr15

00000080 <IMM_SmpcPortDir2>:
  80:	06 0f       	mac.l	@r0+,@r6+
  82:	ff c1       	fsub	fr12,fr15

00000084 <IMM_SMPC_REG_DDR1>:
  84:	20 10       	mov.b	r1,@r0
  86:	00 79       	.word 0x0079

00000088 <IMM_SMPC_REG_DDR2>:
  88:	20 10       	mov.b	r1,@r0
  8a:	00 7b       	.word 0x007b

0000008c <_slGetPortData1>:
  8c:	d2 08       	mov.l	b0 <IMM_SMPC_REG_PDR1>,r2	! 20100075
  8e:	60 20       	mov.b	@r2,r0
  90:	00 0b       	rts	
  92:	c9 7f       	and	#127,r0

00000094 <_slGetPortData2>:
  94:	d2 07       	mov.l	b4 <IMM_SMPC_REG_PDR2>,r2	! 20100077
  96:	60 20       	mov.b	@r2,r0
  98:	00 0b       	rts	
  9a:	c9 7f       	and	#127,r0

0000009c <_slSetPortData1>:
  9c:	60 43       	mov	r4,r0
  9e:	d3 04       	mov.l	b0 <IMM_SMPC_REG_PDR1>,r3	! 20100075
  a0:	c9 7f       	and	#127,r0
  a2:	00 0b       	rts	
  a4:	23 00       	mov.b	r0,@r3

000000a6 <_slSetPortData2>:
  a6:	60 43       	mov	r4,r0
  a8:	d3 02       	mov.l	b4 <IMM_SMPC_REG_PDR2>,r3	! 20100077
  aa:	c9 7f       	and	#127,r0
  ac:	00 0b       	rts	
  ae:	23 00       	mov.b	r0,@r3

000000b0 <IMM_SMPC_REG_PDR1>:
  b0:	20 10       	mov.b	r1,@r0
  b2:	00 75       	mov.w	r7,@(r0,r0)

000000b4 <IMM_SMPC_REG_PDR2>:
  b4:	20 10       	mov.b	r1,@r0
  b6:	00 77       	mul.l	r7,r0

000000b8 <_slGetPortSelect1>:
  b8:	d2 1e       	mov.l	134 <IMM_SmpcPortSelect>,r2	! 60fffc2
  ba:	60 20       	mov.b	@r2,r0
  bc:	c8 01       	tst	#1,r0
  be:	00 0b       	rts	
  c0:	00 29       	movt	r0

000000c2 <_slGetPortSelect2>:
  c2:	d2 1c       	mov.l	134 <IMM_SmpcPortSelect>,r2	! 60fffc2
  c4:	60 20       	mov.b	@r2,r0
  c6:	c8 02       	tst	#2,r0
  c8:	00 0b       	rts	
  ca:	00 29       	movt	r0

000000cc <_slSetPortSelect1>:
  cc:	4f 22       	sts.l	pr,@-r15
  ce:	bf 97       	bsr	0 <SLPROG>
  d0:	00 09       	nop	
  d2:	88 00       	cmp/eq	#0,r0
  d4:	8b 11       	bf	fa <_slSetPortSelect1_90>
  d6:	b1 dc       	bsr	492 <_slCheckIntBackSet>
  d8:	00 09       	nop	
  da:	88 00       	cmp/eq	#0,r0
  dc:	8b 0b       	bf	f6 <_slSetPortSelect1_80>
  de:	d3 16       	mov.l	138 <IMM_SMPC_REG_IOSEL>,r3	! 2010007d
  e0:	e1 00       	mov	#0,r1
  e2:	d2 14       	mov.l	134 <IMM_SmpcPortSelect>,r2	! 60fffc2
  e4:	64 4c       	extu.b	r4,r4
  e6:	60 20       	mov.b	@r2,r0
  e8:	34 10       	cmp/eq	r1,r4
  ea:	8d 01       	bt.s	f0 <_slSetPortSelect1_10>
  ec:	cb 01       	or	#1,r0
  ee:	ca 01       	xor	#1,r0

000000f0 <_slSetPortSelect1_10>:
  f0:	22 00       	mov.b	r0,@r2
  f2:	23 00       	mov.b	r0,@r3
  f4:	e0 00       	mov	#0,r0

000000f6 <_slSetPortSelect1_80>:
  f6:	bf 88       	bsr	a <_slSendSmpcSemaphore>
  f8:	64 03       	mov	r0,r4

000000fa <_slSetPortSelect1_90>:
  fa:	4f 26       	lds.l	@r15+,pr
  fc:	00 0b       	rts	
  fe:	00 09       	nop	

00000100 <_slSetPortSelect2>:
 100:	4f 22       	sts.l	pr,@-r15
 102:	bf 7d       	bsr	0 <SLPROG>
 104:	00 09       	nop	
 106:	88 00       	cmp/eq	#0,r0
 108:	8b 11       	bf	12e <_slSetPortSelect2_90>
 10a:	b1 c2       	bsr	492 <_slCheckIntBackSet>
 10c:	00 09       	nop	
 10e:	88 00       	cmp/eq	#0,r0
 110:	8b 0b       	bf	12a <_slSetPortSelect2_80>
 112:	d3 09       	mov.l	138 <IMM_SMPC_REG_IOSEL>,r3	! 2010007d
 114:	e1 00       	mov	#0,r1
 116:	d2 07       	mov.l	134 <IMM_SmpcPortSelect>,r2	! 60fffc2
 118:	64 4c       	extu.b	r4,r4
 11a:	60 20       	mov.b	@r2,r0
 11c:	34 10       	cmp/eq	r1,r4
 11e:	8d 01       	bt.s	124 <_slSetPortSelect2_10>
 120:	cb 02       	or	#2,r0
 122:	ca 02       	xor	#2,r0

00000124 <_slSetPortSelect2_10>:
 124:	22 00       	mov.b	r0,@r2
 126:	23 00       	mov.b	r0,@r3
 128:	e0 00       	mov	#0,r0

0000012a <_slSetPortSelect2_80>:
 12a:	bf 6e       	bsr	a <_slSendSmpcSemaphore>
 12c:	64 03       	mov	r0,r4

0000012e <_slSetPortSelect2_90>:
 12e:	4f 26       	lds.l	@r15+,pr
 130:	00 0b       	rts	
 132:	00 09       	nop	

00000134 <IMM_SmpcPortSelect>:
 134:	06 0f       	mac.l	@r0+,@r6+
 136:	ff c2       	fmul	fr12,fr15

00000138 <IMM_SMPC_REG_IOSEL>:
 138:	20 10       	mov.b	r1,@r0
 13a:	00 7d       	mov.w	@(r0,r7),r0

0000013c <_slGetPortExt1>:
 13c:	d2 1c       	mov.l	1b0 <IMM_SmpcPortExt>,r2	! 60fffc3
 13e:	60 20       	mov.b	@r2,r0
 140:	c8 01       	tst	#1,r0
 142:	00 0b       	rts	
 144:	00 29       	movt	r0

00000146 <_slGetPortExt2>:
 146:	d2 1a       	mov.l	1b0 <IMM_SmpcPortExt>,r2	! 60fffc3
 148:	60 20       	mov.b	@r2,r0
 14a:	c8 02       	tst	#2,r0
 14c:	00 0b       	rts	
 14e:	00 29       	movt	r0

00000150 <_slSetPortExt1>:
 150:	4f 22       	sts.l	pr,@-r15
 152:	bf 55       	bsr	0 <SLPROG>
 154:	00 09       	nop	
 156:	88 00       	cmp/eq	#0,r0
 158:	8b 0f       	bf	17a <_slSetPortExt1_90>
 15a:	b1 9a       	bsr	492 <_slCheckIntBackSet>
 15c:	00 09       	nop	
 15e:	d3 15       	mov.l	1b4 <IMM_SMPC_REG_EXLE>,r3	! 2010007f
 160:	e1 00       	mov	#0,r1
 162:	d2 13       	mov.l	1b0 <IMM_SmpcPortExt>,r2	! 60fffc3
 164:	64 4c       	extu.b	r4,r4
 166:	60 20       	mov.b	@r2,r0
 168:	34 10       	cmp/eq	r1,r4
 16a:	8d 01       	bt.s	170 <_slSetPortExt1_10>
 16c:	cb 01       	or	#1,r0
 16e:	ca 01       	xor	#1,r0

00000170 <_slSetPortExt1_10>:
 170:	22 00       	mov.b	r0,@r2
 172:	23 00       	mov.b	r0,@r3
 174:	e0 00       	mov	#0,r0

00000176 <_slSetPortExt1_80>:
 176:	bf 48       	bsr	a <_slSendSmpcSemaphore>
 178:	64 03       	mov	r0,r4

0000017a <_slSetPortExt1_90>:
 17a:	4f 26       	lds.l	@r15+,pr
 17c:	00 0b       	rts	
 17e:	00 09       	nop	

00000180 <_slSetPortExt2>:
 180:	4f 22       	sts.l	pr,@-r15
 182:	bf 3d       	bsr	0 <SLPROG>
 184:	00 09       	nop	
 186:	88 00       	cmp/eq	#0,r0
 188:	8b 0f       	bf	1aa <_slSetPortExt2_90>
 18a:	b1 82       	bsr	492 <_slCheckIntBackSet>
 18c:	00 09       	nop	
 18e:	d3 09       	mov.l	1b4 <IMM_SMPC_REG_EXLE>,r3	! 2010007f
 190:	e1 00       	mov	#0,r1
 192:	d2 07       	mov.l	1b0 <IMM_SmpcPortExt>,r2	! 60fffc3
 194:	64 4c       	extu.b	r4,r4
 196:	60 20       	mov.b	@r2,r0
 198:	34 10       	cmp/eq	r1,r4
 19a:	8d 01       	bt.s	1a0 <_slSetPortExt2_10>
 19c:	cb 02       	or	#2,r0
 19e:	ca 02       	xor	#2,r0

000001a0 <_slSetPortExt2_10>:
 1a0:	22 00       	mov.b	r0,@r2
 1a2:	23 00       	mov.b	r0,@r3
 1a4:	e0 00       	mov	#0,r0

000001a6 <_slSetPortExt2_80>:
 1a6:	bf 30       	bsr	a <_slSendSmpcSemaphore>
 1a8:	64 03       	mov	r0,r4

000001aa <_slSetPortExt2_90>:
 1aa:	4f 26       	lds.l	@r15+,pr
 1ac:	00 0b       	rts	
 1ae:	00 09       	nop	

000001b0 <IMM_SmpcPortExt>:
 1b0:	06 0f       	mac.l	@r0+,@r6+
 1b2:	ff c3       	fdiv	fr12,fr15

000001b4 <IMM_SMPC_REG_EXLE>:
 1b4:	20 10       	mov.b	r1,@r0
 1b6:	00 7f       	mac.l	@r7+,@r0+

000001b8 <_slGetSmpcComTbl>:
 1b8:	64 4c       	extu.b	r4,r4
 1ba:	c7 03       	mova	1c8 <smpc_com_tbl>,r0
 1bc:	e1 04       	mov	#4,r1
 1be:	62 03       	mov	r0,r2
 1c0:	21 4e       	mulu.w	r4,r1
 1c2:	00 1a       	sts	macl,r0
 1c4:	00 0b       	rts	
 1c6:	30 2c       	add	r2,r0

000001c8 <smpc_com_tbl>:
 1c8:	00 00       	.word 0x0000
 1ca:	00 03       	bsrf	r0
 1cc:	02 00       	.word 0x0200
 1ce:	00 01       	.word 0x0001
 1d0:	03 00       	.word 0x0300
 1d2:	00 01       	.word 0x0001
 1d4:	06 00       	.word 0x0600
 1d6:	00 03       	bsrf	r0
 1d8:	07 00       	.word 0x0700
 1da:	00 03       	bsrf	r0
 1dc:	08 00       	.word 0x0800
 1de:	00 03       	bsrf	r0
 1e0:	09 00       	.word 0x0900
 1e2:	00 03       	bsrf	r0
 1e4:	0d 04       	mov.b	r0,@(r0,r13)
 1e6:	00 03       	bsrf	r0
 1e8:	0e 08       	.word 0x0e08
 1ea:	00 01       	.word 0x0001
 1ec:	0f 08       	.word 0x0f08
 1ee:	00 01       	.word 0x0001
 1f0:	18 00       	mov.l	r0,@(0,r8)
 1f2:	00 03       	bsrf	r0
 1f4:	19 00       	mov.l	r0,@(0,r9)
 1f6:	00 03       	bsrf	r0
 1f8:	1a 00       	mov.l	r0,@(0,r10)
 1fa:	00 03       	bsrf	r0
 1fc:	10 0c       	mov.l	r0,@(48,r0)
 1fe:	04 01       	.word 0x0401
 200:	10 10       	mov.l	r1,@(0,r0)
 202:	04 01       	.word 0x0401
 204:	17 14       	mov.l	r1,@(16,r7)
 206:	08 03       	bsrf	r8
 208:	16 18       	mov.l	r1,@(32,r6)
 20a:	0c 03       	bsrf	r12

0000020c <_slIntBackCondition>:
 20c:	4f 22       	sts.l	pr,@-r15
 20e:	bf 53       	bsr	b8 <_slGetPortSelect1>
 210:	00 09       	nop	
 212:	88 01       	cmp/eq	#1,r0
 214:	8b 09       	bf	22a <_slIntBackCondition_10>
 216:	be ff       	bsr	18 <_slGetPortDir1>
 218:	00 09       	nop	
 21a:	20 08       	tst	r0,r0
 21c:	8f 14       	bf.s	248 <_slIntBackCondition_90>
 21e:	e0 ff       	mov	#-1,r0
 220:	bf 8c       	bsr	13c <_slGetPortExt1>
 222:	00 09       	nop	
 224:	88 01       	cmp/eq	#1,r0
 226:	8f 0f       	bf.s	248 <_slIntBackCondition_90>
 228:	e0 ff       	mov	#-1,r0

0000022a <_slIntBackCondition_10>:
 22a:	bf 4a       	bsr	c2 <_slGetPortSelect2>
 22c:	00 09       	nop	
 22e:	88 01       	cmp/eq	#1,r0
 230:	8b 09       	bf	246 <_slIntBackCondition_20>
 232:	be f5       	bsr	20 <_slGetPortDir2>
 234:	00 09       	nop	
 236:	20 08       	tst	r0,r0
 238:	8f 06       	bf.s	248 <_slIntBackCondition_90>
 23a:	e0 ff       	mov	#-1,r0
 23c:	bf 83       	bsr	146 <_slGetPortExt2>
 23e:	00 09       	nop	
 240:	88 01       	cmp/eq	#1,r0
 242:	8f 01       	bf.s	248 <_slIntBackCondition_90>
 244:	e0 ff       	mov	#-1,r0

00000246 <_slIntBackCondition_20>:
 246:	e0 00       	mov	#0,r0

00000248 <_slIntBackCondition_90>:
 248:	4f 26       	lds.l	@r15+,pr
 24a:	00 0b       	rts	
 24c:	00 09       	nop	

0000024e <_slIntBackSelect>:
 24e:	4f 22       	sts.l	pr,@-r15
 250:	bf 32       	bsr	b8 <_slGetPortSelect1>
 252:	00 09       	nop	
 254:	88 01       	cmp/eq	#1,r0
 256:	8d 06       	bt.s	266 <_slIntBackSelect_90>
 258:	e0 00       	mov	#0,r0
 25a:	bf 32       	bsr	c2 <_slGetPortSelect2>
 25c:	00 09       	nop	
 25e:	88 01       	cmp/eq	#1,r0
 260:	8d 01       	bt.s	266 <_slIntBackSelect_90>
 262:	e0 00       	mov	#0,r0
 264:	e0 ff       	mov	#-1,r0

00000266 <_slIntBackSelect_90>:
 266:	4f 26       	lds.l	@r15+,pr
 268:	00 0b       	rts	
 26a:	00 09       	nop	

0000026c <_slIntBackPortMode>:
 26c:	4f 22       	sts.l	pr,@-r15
 26e:	bf 23       	bsr	b8 <_slGetPortSelect1>
 270:	00 09       	nop	
 272:	88 01       	cmp/eq	#1,r0
 274:	89 01       	bt	27a <_slIntBackPortMode_10>
 276:	e0 30       	mov	#48,r0
 278:	24 0b       	or	r0,r4

0000027a <_slIntBackPortMode_10>:
 27a:	bf 22       	bsr	c2 <_slGetPortSelect2>
 27c:	00 09       	nop	
 27e:	88 01       	cmp/eq	#1,r0
 280:	89 01       	bt	286 <_slIntBackPortMode_20>
 282:	e0 c0       	mov	#-64,r0
 284:	24 0b       	or	r0,r4

00000286 <_slIntBackPortMode_20>:
 286:	4f 26       	lds.l	@r15+,pr
 288:	00 0b       	rts	
 28a:	60 43       	mov	r4,r0

0000028c <_slSmpcGetShooting>:
 28c:	d1 14       	mov.l	2e0 <IMM_SmpcDirOffset_1>,r1	! 60fff9c
 28e:	d3 79       	mov.l	474 <IMM_Smpc_Result_1>,r3	! ab8 <_Smpc_Result>
 290:	60 12       	mov.l	@r1,r0
 292:	d2 12       	mov.l	2dc <IMM_SMPC_RESULT_SIZE_1>,r2	! 200
 294:	63 32       	mov.l	@r3,r3
 296:	70 07       	add	#7,r0
 298:	21 02       	mov.l	r0,@r1
 29a:	33 0c       	add	r0,r3
 29c:	42 01       	shlr	r2
 29e:	33 2c       	add	r2,r3
 2a0:	d2 10       	mov.l	2e4 <IMM_SCRL_TVSTAT>,r2	! 25f80004
 2a2:	91 25       	mov.w	2f0 <IMM_SMPC_MSK_EXLTFG>,r1	! 200
 2a4:	60 21       	mov.w	@r2,r0
 2a6:	20 18       	tst	r1,r0
 2a8:	8f 05       	bf.s	2b6 <_slSmpcGetShooting_10>
 2aa:	20 0a       	xor	r0,r0
 2ac:	23 04       	mov.b	r0,@-r3
 2ae:	23 04       	mov.b	r0,@-r3
 2b0:	23 04       	mov.b	r0,@-r3
 2b2:	a0 0d       	bra	2d0 <_slSmpcGetShooting_20>
 2b4:	23 04       	mov.b	r0,@-r3

000002b6 <_slSmpcGetShooting_10>:
 2b6:	d2 0d       	mov.l	2ec <IMM_SCRL_VCNT>,r2	! 25f8000a
 2b8:	91 1b       	mov.w	2f2 <IMM_SMPC_MSK_HVCNT>,r1	! 3ff
 2ba:	60 21       	mov.w	@r2,r0
 2bc:	d2 0a       	mov.l	2e8 <IMM_SCRL_HCNT>,r2	! 25f80008
 2be:	20 19       	and	r1,r0
 2c0:	23 04       	mov.b	r0,@-r3
 2c2:	40 19       	shlr8	r0
 2c4:	23 04       	mov.b	r0,@-r3
 2c6:	60 21       	mov.w	@r2,r0
 2c8:	20 19       	and	r1,r0
 2ca:	23 04       	mov.b	r0,@-r3
 2cc:	40 19       	shlr8	r0
 2ce:	23 04       	mov.b	r0,@-r3

000002d0 <_slSmpcGetShooting_20>:
 2d0:	23 44       	mov.b	r4,@-r3
 2d2:	e0 25       	mov	#37,r0
 2d4:	23 04       	mov.b	r0,@-r3
 2d6:	e0 f1       	mov	#-15,r0
 2d8:	00 0b       	rts	
 2da:	23 04       	mov.b	r0,@-r3

000002dc <IMM_SMPC_RESULT_SIZE_1>:
 2dc:	00 00       	.word 0x0000
 2de:	02 00       	.word 0x0200

000002e0 <IMM_SmpcDirOffset_1>:
 2e0:	06 0f       	mac.l	@r0+,@r6+
 2e2:	ff 9c       	fmov	fr9,fr15

000002e4 <IMM_SCRL_TVSTAT>:
 2e4:	25 f8       	tst	r15,r5
 2e6:	00 04       	mov.b	r0,@(r0,r0)

000002e8 <IMM_SCRL_HCNT>:
 2e8:	25 f8       	tst	r15,r5
 2ea:	00 08       	clrt	

000002ec <IMM_SCRL_VCNT>:
 2ec:	25 f8       	tst	r15,r5
 2ee:	00 0a       	sts	mach,r0

000002f0 <IMM_SMPC_MSK_EXLTFG>:
 2f0:	02 00       	.word 0x0200

000002f2 <IMM_SMPC_MSK_HVCNT>:
 2f2:	03 ff       	mac.l	@r15+,@r3+

000002f4 <_slSmpcDirectAccess>:
 2f4:	2f 46       	mov.l	r4,@-r15
 2f6:	4f 22       	sts.l	pr,@-r15
 2f8:	d2 17       	mov.l	358 <IMM_SynchCount>,r2	! 60ffc13
 2fa:	be dd       	bsr	b8 <_slGetPortSelect1>
 2fc:	64 20       	mov.b	@r2,r4
 2fe:	88 01       	cmp/eq	#1,r0
 300:	8d 11       	bt.s	326 <_slSmpcDirectAccess_20>
 302:	60 43       	mov	r4,r0
 304:	88 01       	cmp/eq	#1,r0
 306:	8b 08       	bf	31a <_slSmpcDirectAccess_10>
 308:	2f 46       	mov.l	r4,@-r15
 30a:	bf 21       	bsr	150 <_slSetPortExt1>
 30c:	e4 01       	mov	#1,r4
 30e:	be bd       	bsr	8c <_slGetPortData1>
 310:	00 09       	nop	
 312:	bf bb       	bsr	28c <_slSmpcGetShooting>
 314:	64 03       	mov	r0,r4
 316:	a0 06       	bra	326 <_slSmpcDirectAccess_20>
 318:	64 f6       	mov.l	@r15+,r4

0000031a <_slSmpcDirectAccess_10>:
 31a:	88 00       	cmp/eq	#0,r0
 31c:	8b 03       	bf	326 <_slSmpcDirectAccess_20>
 31e:	2f 46       	mov.l	r4,@-r15
 320:	bf 16       	bsr	150 <_slSetPortExt1>
 322:	e4 00       	mov	#0,r4
 324:	64 f6       	mov.l	@r15+,r4

00000326 <_slSmpcDirectAccess_20>:
 326:	be cc       	bsr	c2 <_slGetPortSelect2>
 328:	00 09       	nop	
 32a:	88 01       	cmp/eq	#1,r0
 32c:	8d 11       	bt.s	352 <_slSmpcDirectAccess_90>
 32e:	60 43       	mov	r4,r0
 330:	88 00       	cmp/eq	#0,r0
 332:	8b 08       	bf	346 <_slSmpcDirectAccess_30>
 334:	2f 46       	mov.l	r4,@-r15
 336:	bf 23       	bsr	180 <_slSetPortExt2>
 338:	e4 01       	mov	#1,r4
 33a:	be ab       	bsr	94 <_slGetPortData2>
 33c:	00 09       	nop	
 33e:	bf a5       	bsr	28c <_slSmpcGetShooting>
 340:	64 03       	mov	r0,r4
 342:	a0 06       	bra	352 <_slSmpcDirectAccess_90>
 344:	64 f6       	mov.l	@r15+,r4

00000346 <_slSmpcDirectAccess_30>:
 346:	88 01       	cmp/eq	#1,r0
 348:	8b 03       	bf	352 <_slSmpcDirectAccess_90>
 34a:	2f 46       	mov.l	r4,@-r15
 34c:	bf 18       	bsr	180 <_slSetPortExt2>
 34e:	e4 00       	mov	#0,r4
 350:	64 f6       	mov.l	@r15+,r4

00000352 <_slSmpcDirectAccess_90>:
 352:	4f 26       	lds.l	@r15+,pr
 354:	00 0b       	rts	
 356:	64 f6       	mov.l	@r15+,r4

00000358 <IMM_SynchCount>:
 358:	06 0f       	mac.l	@r0+,@r6+
 35a:	fc 13       	fdiv	fr1,fr12

0000035c <_slClearPeripheral>:
 35c:	d3 cc       	mov.l	690 <IMM_Smpc_Peripheral>,r3	! abc <_Smpc_Peripheral>
 35e:	d2 cd       	mov.l	694 <IMM_Smpc_ResultSize>,r2	! ac0 <_Smpc_ResultSize>
 360:	63 32       	mov.l	@r3,r3
 362:	62 21       	mov.w	@r2,r2
 364:	e1 1e       	mov	#30,r1
 366:	e0 ff       	mov	#-1,r0

00000368 <_slClearPeripheral_10>:
 368:	80 30       	mov.b	r0,@(0,r3)
 36a:	41 10       	dt	r1
 36c:	8f fc       	bf.s	368 <_slClearPeripheral_10>
 36e:	33 2c       	add	r2,r3
 370:	00 0b       	rts	
 372:	00 09       	nop	

00000374 <_slInitPeripheral>:
 374:	2f 46       	mov.l	r4,@-r15
 376:	4f 22       	sts.l	pr,@-r15
 378:	d2 3d       	mov.l	470 <IMM_Smpc_Status>,r2	! ab4 <_Smpc_Status>
 37a:	d3 3e       	mov.l	474 <IMM_Smpc_Result_1>,r3	! ab8 <_Smpc_Result>
 37c:	d0 3e       	mov.l	478 <IMM_SmpcStatusBuf_2>,r0	! ae4 <_SmpcStatusBuf>
 37e:	d1 3f       	mov.l	47c <IMM_SmpcResultBuf>,r1	! af8 <_SmpcResultBuf>
 380:	22 02       	mov.l	r0,@r2
 382:	23 12       	mov.l	r1,@r3
 384:	d2 c2       	mov.l	690 <IMM_Smpc_Peripheral>,r2	! abc <_Smpc_Peripheral>
 386:	d3 c3       	mov.l	694 <IMM_Smpc_ResultSize>,r3	! ac0 <_Smpc_ResultSize>
 388:	d0 3d       	mov.l	480 <IMM_SmpcPeripheralBuf>,r0	! cf8 <_SmpcPeripheralBuf>
 38a:	91 7b       	mov.w	484 <IMM_SmpcResultSize>,r1	! 18 <_slGetPortDir1>
 38c:	22 02       	mov.l	r0,@r2
 38e:	23 11       	mov.w	r1,@r3
 390:	d2 36       	mov.l	46c <IMM_CTRL_PER_BUFFER>,r2	! 60fffb8
 392:	e0 80       	mov	#-128,r0
 394:	d3 34       	mov.l	468 <IMM_CTRL_PER_SYSTEM>,r3	! 60fff90
 396:	80 20       	mov.b	r0,@(0,r2)
 398:	d1 ec       	mov.l	74c <IMM_Per_Connect1>,r1	! ac2 <_Per_Connect1>
 39a:	20 0a       	xor	r0,r0
 39c:	21 00       	mov.b	r0,@r1
 39e:	24 4a       	xor	r4,r4
 3a0:	80 21       	mov.b	r0,@(1,r2)
 3a2:	d1 eb       	mov.l	750 <IMM_Per_Connect2>,r1	! ac3 <_Per_Connect2>
 3a4:	80 22       	mov.b	r0,@(2,r2)
 3a6:	21 00       	mov.b	r0,@r1
 3a8:	80 23       	mov.b	r0,@(3,r2)
 3aa:	13 40       	mov.l	r4,@(0,r3)
 3ac:	80 24       	mov.b	r0,@(4,r2)
 3ae:	13 41       	mov.l	r4,@(4,r3)
 3b0:	80 25       	mov.b	r0,@(5,r2)
 3b2:	13 42       	mov.l	r4,@(8,r3)
 3b4:	80 26       	mov.b	r0,@(6,r2)
 3b6:	13 43       	mov.l	r4,@(12,r3)
 3b8:	80 27       	mov.b	r0,@(7,r2)
 3ba:	13 44       	mov.l	r4,@(16,r3)
 3bc:	80 28       	mov.b	r0,@(8,r2)
 3be:	13 45       	mov.l	r4,@(20,r3)
 3c0:	80 29       	mov.b	r0,@(9,r2)
 3c2:	13 46       	mov.l	r4,@(24,r3)
 3c4:	80 2a       	mov.b	r0,@(10,r2)
 3c6:	13 47       	mov.l	r4,@(28,r3)
 3c8:	80 2b       	mov.b	r0,@(11,r2)
 3ca:	13 48       	mov.l	r4,@(32,r3)
 3cc:	80 2c       	mov.b	r0,@(12,r2)
 3ce:	13 49       	mov.l	r4,@(36,r3)
 3d0:	d1 f4       	mov.l	7a4 <IMM_SmpcCommandCash>,r1	! ac4 <_SmpcCommandCash>
 3d2:	e2 ff       	mov	#-1,r2
 3d4:	bf c2       	bsr	35c <_slClearPeripheral>
 3d6:	01 24       	mov.b	r2,@(r0,r1)
 3d8:	be 17       	bsr	a <_slSendSmpcSemaphore>
 3da:	00 09       	nop	
 3dc:	be 24       	bsr	28 <_slSetPortDir1>
 3de:	24 4a       	xor	r4,r4
 3e0:	be 37       	bsr	52 <_slSetPortDir2>
 3e2:	24 4a       	xor	r4,r4
 3e4:	be 72       	bsr	cc <_slSetPortSelect1>
 3e6:	e4 01       	mov	#1,r4
 3e8:	be 8a       	bsr	100 <_slSetPortSelect2>
 3ea:	e4 01       	mov	#1,r4
 3ec:	be b0       	bsr	150 <_slSetPortExt1>
 3ee:	e4 01       	mov	#1,r4
 3f0:	be c6       	bsr	180 <_slSetPortExt2>
 3f2:	e4 01       	mov	#1,r4
 3f4:	b2 21       	bsr	83a <_slSetOptimize>
 3f6:	e4 01       	mov	#1,r4
 3f8:	b2 3f       	bsr	87a <_slSetPortMode1>
 3fa:	e4 00       	mov	#0,r4
 3fc:	b2 5c       	bsr	8b8 <_slSetPortMode2>
 3fe:	e4 00       	mov	#0,r4
 400:	4f 26       	lds.l	@r15+,pr
 402:	00 0b       	rts	
 404:	64 f6       	mov.l	@r15+,r4

00000406 <_slSetResultBuffer>:
 406:	4f 22       	sts.l	pr,@-r15
 408:	bd fa       	bsr	0 <SLPROG>
 40a:	00 09       	nop	
 40c:	88 00       	cmp/eq	#0,r0
 40e:	8b 0d       	bf	42c <_slSetResultBuffer_90>
 410:	b0 3f       	bsr	492 <_slCheckIntBackSet>
 412:	00 09       	nop	
 414:	88 00       	cmp/eq	#0,r0
 416:	8b 07       	bf	428 <_slSetResultBuffer_80>
 418:	d1 16       	mov.l	474 <IMM_Smpc_Result_1>,r1	! ab8 <_Smpc_Result>
 41a:	d2 9d       	mov.l	690 <IMM_Smpc_Peripheral>,r2	! abc <_Smpc_Peripheral>
 41c:	d3 9d       	mov.l	694 <IMM_Smpc_ResultSize>,r3	! ac0 <_Smpc_ResultSize>
 41e:	21 42       	mov.l	r4,@r1
 420:	22 52       	mov.l	r5,@r2
 422:	bf 9b       	bsr	35c <_slClearPeripheral>
 424:	23 61       	mov.w	r6,@r3
 426:	e0 00       	mov	#0,r0

00000428 <_slSetResultBuffer_80>:
 428:	bd ef       	bsr	a <_slSendSmpcSemaphore>
 42a:	64 03       	mov	r0,r4

0000042c <_slSetResultBuffer_90>:
 42c:	4f 26       	lds.l	@r15+,pr
 42e:	00 0b       	rts	
 430:	00 09       	nop	

00000432 <_slRequestQueue>:
 432:	e1 00       	mov	#0,r1
 434:	35 10       	cmp/eq	r1,r5
 436:	8f 14       	bf.s	462 <_slRequestQueue_90>
 438:	e5 ff       	mov	#-1,r5
 43a:	d3 dc       	mov.l	7ac <IMM_SmpcComWtPtr>,r3	! 60fff90
 43c:	d2 da       	mov.l	7a8 <IMM_SmpcComRdPtr>,r2	! 60fff94
 43e:	60 32       	mov.l	@r3,r0
 440:	61 22       	mov.l	@r2,r1
 442:	64 03       	mov	r0,r4
 444:	70 01       	add	#1,r0
 446:	c9 1f       	and	#31,r0
 448:	30 10       	cmp/eq	r1,r0
 44a:	8d 0a       	bt.s	462 <_slRequestQueue_90>
 44c:	e5 ff       	mov	#-1,r5
 44e:	d2 d5       	mov.l	7a4 <IMM_SmpcCommandCash>,r2	! ac4 <_SmpcCommandCash>
 450:	23 02       	mov.l	r0,@r3
 452:	e1 ff       	mov	#-1,r1
 454:	d5 05       	mov.l	46c <IMM_CTRL_PER_BUFFER>,r5	! 60fffb8
 456:	02 14       	mov.b	r1,@(r0,r2)
 458:	84 54       	mov.b	@(4,r5),r0
 45a:	e5 00       	mov	#0,r5
 45c:	61 03       	mov	r0,r1
 45e:	60 43       	mov	r4,r0
 460:	02 14       	mov.b	r1,@(r0,r2)

00000462 <_slRequestQueue_90>:
 462:	00 0b       	rts	
 464:	60 53       	mov	r5,r0
	...

00000468 <IMM_CTRL_PER_SYSTEM>:
 468:	06 0f       	mac.l	@r0+,@r6+
 46a:	ff 90       	fadd	fr9,fr15

0000046c <IMM_CTRL_PER_BUFFER>:
 46c:	06 0f       	mac.l	@r0+,@r6+
 46e:	ff b8       	fmov	@r11,fr15

00000470 <IMM_Smpc_Status>:
 470:	00 00       	.word 0x0000
 472:	0a b4       	mov.b	r11,@(r0,r10)

00000474 <IMM_Smpc_Result_1>:
 474:	00 00       	.word 0x0000
 476:	0a b8       	.word 0x0ab8

00000478 <IMM_SmpcStatusBuf_2>:
 478:	00 00       	.word 0x0000
 47a:	0a e4       	mov.b	r14,@(r0,r10)

0000047c <IMM_SmpcResultBuf>:
 47c:	00 00       	.word 0x0000
 47e:	0a f8       	.word 0x0af8

00000480 <IMM_SmpcPeripheralBuf>:
 480:	00 00       	.word 0x0000
 482:	0c f8       	.word 0x0cf8

00000484 <IMM_SmpcResultSize>:
 484:	00 18       	sett	

00000486 <_slCheckIntBackReq>:
 486:	d2 d1       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 488:	60 20       	mov.b	@r2,r0
 48a:	c8 04       	tst	#4,r0
 48c:	00 29       	movt	r0
 48e:	00 0b       	rts	
 490:	70 ff       	add	#-1,r0

00000492 <_slCheckIntBackSet>:
 492:	d2 ce       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 494:	60 20       	mov.b	@r2,r0
 496:	c8 02       	tst	#2,r0
 498:	00 29       	movt	r0
 49a:	00 0b       	rts	
 49c:	70 ff       	add	#-1,r0

0000049e <_slIntBackCancel>:
 49e:	2f 46       	mov.l	r4,@-r15
 4a0:	4f 22       	sts.l	pr,@-r15
 4a2:	bd ad       	bsr	0 <SLPROG>
 4a4:	00 09       	nop	
 4a6:	88 00       	cmp/eq	#0,r0
 4a8:	8b 06       	bf	4b8 <_slIntBackCancel_90>
 4aa:	d2 c8       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 4ac:	64 03       	mov	r0,r4
 4ae:	60 20       	mov.b	@r2,r0
 4b0:	cb 02       	or	#2,r0
 4b2:	ca 02       	xor	#2,r0
 4b4:	bd a9       	bsr	a <_slSendSmpcSemaphore>
 4b6:	22 00       	mov.b	r0,@r2

000004b8 <_slIntBackCancel_90>:
 4b8:	4f 26       	lds.l	@r15+,pr
 4ba:	00 0b       	rts	
 4bc:	64 f6       	mov.l	@r15+,r4

000004be <_slSetIntBack>:
 4be:	d2 c3       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 4c0:	60 20       	mov.b	@r2,r0
 4c2:	cb 02       	or	#2,r0
 4c4:	00 0b       	rts	
 4c6:	22 00       	mov.b	r0,@r2

000004c8 <_slCheckReset>:
 4c8:	d2 c0       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 4ca:	60 20       	mov.b	@r2,r0
 4cc:	c8 01       	tst	#1,r0
 4ce:	00 0b       	rts	
 4d0:	00 29       	movt	r0

000004d2 <_slClearReset>:
 4d2:	2f 46       	mov.l	r4,@-r15
 4d4:	4f 22       	sts.l	pr,@-r15
 4d6:	bd 93       	bsr	0 <SLPROG>
 4d8:	00 09       	nop	
 4da:	88 00       	cmp/eq	#0,r0
 4dc:	8b 09       	bf	4f2 <_slClearReset_90>
 4de:	64 03       	mov	r0,r4
 4e0:	d2 ba       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 4e2:	21 1a       	xor	r1,r1
 4e4:	d3 0d       	mov.l	51c <IMM_SmpcResetCount>,r3	! 60fffbb
 4e6:	60 20       	mov.b	@r2,r0
 4e8:	23 10       	mov.b	r1,@r3
 4ea:	cb 01       	or	#1,r0
 4ec:	ca 01       	xor	#1,r0
 4ee:	bd 8c       	bsr	a <_slSendSmpcSemaphore>
 4f0:	22 00       	mov.b	r0,@r2

000004f2 <_slClearReset_90>:
 4f2:	4f 26       	lds.l	@r15+,pr
 4f4:	00 0b       	rts	
 4f6:	64 f6       	mov.l	@r15+,r4

000004f8 <_slUpdateResetCount>:
 4f8:	d2 b0       	mov.l	7bc <IMM_SMPC_REG_sr>,r2	! 20100061
 4fa:	d3 08       	mov.l	51c <IMM_SmpcResetCount>,r3	! 60fffbb
 4fc:	60 20       	mov.b	@r2,r0
 4fe:	61 30       	mov.b	@r3,r1
 500:	c8 10       	tst	#16,r0
 502:	89 09       	bt	518 <_slUpdateResetCount_20>
 504:	e0 03       	mov	#3,r0
 506:	71 01       	add	#1,r1
 508:	d2 b0       	mov.l	7cc <IMM_SmpcControlFlag>,r2	! 60fffba
 50a:	30 16       	cmp/hi	r1,r0
 50c:	89 03       	bt	516 <_slUpdateResetCount_10>
 50e:	60 20       	mov.b	@r2,r0
 510:	21 1a       	xor	r1,r1
 512:	cb 01       	or	#1,r0
 514:	22 00       	mov.b	r0,@r2

00000516 <_slUpdateResetCount_10>:
 516:	23 10       	mov.b	r1,@r3

00000518 <_slUpdateResetCount_20>:
 518:	00 0b       	rts	
 51a:	00 09       	nop	

0000051c <IMM_SmpcResetCount>:
 51c:	06 0f       	mac.l	@r0+,@r6+
 51e:	ff bb       	fmov	fr11,@-r15

00000520 <_slSetPeripheral>:
 520:	2f 66       	mov.l	r6,@-r15
 522:	2f 96       	mov.l	r9,@-r15
 524:	2f 86       	mov.l	r8,@-r15
 526:	2f 76       	mov.l	r7,@-r15
 528:	4f 22       	sts.l	pr,@-r15
 52a:	28 8a       	xor	r8,r8
 52c:	2f 56       	mov.l	r5,@-r15
 52e:	2f 46       	mov.l	r4,@-r15
 530:	64 42       	mov.l	@r4,r4
 532:	65 52       	mov.l	@r5,r5
 534:	d2 57       	mov.l	694 <IMM_Smpc_ResultSize>,r2	! ac0 <_Smpc_ResultSize>
 536:	60 44       	mov.b	@r4+,r0
 538:	69 21       	mov.w	@r2,r9
 53a:	88 f0       	cmp/eq	#-16,r0
 53c:	8d 0a       	bt.s	554 <_slSetPeripheral_10>
 53e:	c9 0f       	and	#15,r0
 540:	20 08       	tst	r0,r0
 542:	8b 07       	bf	554 <_slSetPeripheral_10>
 544:	74 ff       	add	#-1,r4
 546:	61 40       	mov.b	@r4,r1
 548:	e2 f0       	mov	#-16,r2
 54a:	41 09       	shlr2	r1
 54c:	41 09       	shlr2	r1
 54e:	21 2b       	or	r2,r1
 550:	24 10       	mov.b	r1,@r4
 552:	70 01       	add	#1,r0

00000554 <_slSetPeripheral_10>:
 554:	66 03       	mov	r0,r6
 556:	e7 0f       	mov	#15,r7

00000558 <_slSetPeripheral_20>:
 558:	26 68       	tst	r6,r6
 55a:	89 05       	bt	568 <_slSetPeripheral_30>
 55c:	60 40       	mov.b	@r4,r0
 55e:	76 ff       	add	#-1,r6
 560:	88 ff       	cmp/eq	#-1,r0
 562:	89 04       	bt	56e <_slSetPeripheral_40>
 564:	a0 03       	bra	56e <_slSetPeripheral_40>
 566:	78 01       	add	#1,r8

00000568 <_slSetPeripheral_30>:
 568:	74 ff       	add	#-1,r4
 56a:	e0 ff       	mov	#-1,r0
 56c:	24 00       	mov.b	r0,@r4

0000056e <_slSetPeripheral_40>:
 56e:	61 03       	mov	r0,r1
 570:	e2 f0       	mov	#-16,r2
 572:	62 2c       	extu.b	r2,r2
 574:	22 19       	and	r1,r2
 576:	d0 11       	mov.l	5bc <IMM_smpc_pfr_tbl>,r0	! 0 <SLPROG>
 578:	42 09       	shlr2	r2
 57a:	00 2e       	mov.l	@(r0,r2),r0
 57c:	e2 0f       	mov	#15,r2
 57e:	22 19       	and	r1,r2
 580:	02 2c       	mov.b	@(r0,r2),r2
 582:	d0 0d       	mov.l	5b8 <IMM_smpc_ptf_tbl>,r0	! 0 <SLPROG>
 584:	62 2c       	extu.b	r2,r2
 586:	00 2e       	mov.l	@(r0,r2),r0
 588:	2f 66       	mov.l	r6,@-r15
 58a:	2f 56       	mov.l	r5,@-r15
 58c:	40 0b       	jsr	@r0
 58e:	66 93       	mov	r9,r6
 590:	65 f6       	mov.l	@r15+,r5
 592:	66 f6       	mov.l	@r15+,r6
 594:	35 9c       	add	r9,r5
 596:	47 10       	dt	r7
 598:	8f de       	bf.s	558 <_slSetPeripheral_20>
 59a:	64 03       	mov	r0,r4
 59c:	60 43       	mov	r4,r0
 59e:	61 53       	mov	r5,r1
 5a0:	64 f6       	mov.l	@r15+,r4
 5a2:	65 f6       	mov.l	@r15+,r5
 5a4:	24 02       	mov.l	r0,@r4
 5a6:	25 12       	mov.l	r1,@r5
 5a8:	60 83       	mov	r8,r0
 5aa:	4f 26       	lds.l	@r15+,pr
 5ac:	67 f6       	mov.l	@r15+,r7
 5ae:	68 f6       	mov.l	@r15+,r8
 5b0:	69 f6       	mov.l	@r15+,r9
 5b2:	00 0b       	rts	
 5b4:	66 f6       	mov.l	@r15+,r6
	...

000005b8 <IMM_smpc_ptf_tbl>:
 5b8:	00 00       	.word 0x0000
	...

000005bc <IMM_smpc_pfr_tbl>:
 5bc:	00 00       	.word 0x0000
	...

000005c0 <_slSetResultData>:
 5c0:	2f 46       	mov.l	r4,@-r15
 5c2:	2f 56       	mov.l	r5,@-r15
 5c4:	4f 22       	sts.l	pr,@-r15
 5c6:	d4 30       	mov.l	688 <IMM_SmpcResPointer>,r4	! 60fffa0
 5c8:	d5 30       	mov.l	68c <IMM_SmpcPerPointer>,r5	! 60fffa4
 5ca:	d0 7b       	mov.l	7b8 <IMM_Smpc_Result_2>,r0	! ab8 <_Smpc_Result>
 5cc:	d1 30       	mov.l	690 <IMM_Smpc_Peripheral>,r1	! abc <_Smpc_Peripheral>
 5ce:	60 02       	mov.l	@r0,r0
 5d0:	61 12       	mov.l	@r1,r1
 5d2:	24 02       	mov.l	r0,@r4
 5d4:	d2 2f       	mov.l	694 <IMM_Smpc_ResultSize>,r2	! ac0 <_Smpc_ResultSize>
 5d6:	25 12       	mov.l	r1,@r5
 5d8:	62 21       	mov.w	@r2,r2
 5da:	e3 0f       	mov	#15,r3
 5dc:	23 2e       	mulu.w	r2,r3
 5de:	d2 7c       	mov.l	7d0 <IMM_SmpcPerControl>,r2	! 60fffbe
 5e0:	03 1a       	sts	macl,r3
 5e2:	60 20       	mov.b	@r2,r0
 5e4:	31 3c       	add	r3,r1
 5e6:	2f 06       	mov.l	r0,@-r15
 5e8:	c9 03       	and	#3,r0
 5ea:	88 03       	cmp/eq	#3,r0
 5ec:	8d 06       	bt.s	5fc <_slSetResultData_10>
 5ee:	20 0a       	xor	r0,r0
 5f0:	2f 46       	mov.l	r4,@-r15
 5f2:	bf 95       	bsr	520 <_slSetPeripheral>
 5f4:	2f 56       	mov.l	r5,@-r15
 5f6:	65 f6       	mov.l	@r15+,r5
 5f8:	64 f6       	mov.l	@r15+,r4
 5fa:	61 52       	mov.l	@r5,r1

000005fc <_slSetResultData_10>:
 5fc:	d3 53       	mov.l	74c <IMM_Per_Connect1>,r3	! ac2 <_Per_Connect1>
 5fe:	25 12       	mov.l	r1,@r5
 600:	23 00       	mov.b	r0,@r3
 602:	60 f6       	mov.l	@r15+,r0
 604:	c9 0c       	and	#12,r0
 606:	88 0c       	cmp/eq	#12,r0
 608:	8d 05       	bt.s	616 <_slSetResultData_20>
 60a:	20 0a       	xor	r0,r0
 60c:	2f 46       	mov.l	r4,@-r15
 60e:	bf 87       	bsr	520 <_slSetPeripheral>
 610:	2f 56       	mov.l	r5,@-r15
 612:	65 f6       	mov.l	@r15+,r5
 614:	64 f6       	mov.l	@r15+,r4

00000616 <_slSetResultData_20>:
 616:	d3 4e       	mov.l	750 <IMM_Per_Connect2>,r3	! ac3 <_Per_Connect2>
 618:	23 00       	mov.b	r0,@r3
 61a:	4f 26       	lds.l	@r15+,pr
 61c:	65 f6       	mov.l	@r15+,r5
 61e:	00 0b       	rts	
 620:	64 f6       	mov.l	@r15+,r4

00000622 <_slSetDirectResult>:
 622:	2f 46       	mov.l	r4,@-r15
 624:	2f 56       	mov.l	r5,@-r15
 626:	4f 22       	sts.l	pr,@-r15
 628:	d4 17       	mov.l	688 <IMM_SmpcResPointer>,r4	! 60fffa0
 62a:	d5 18       	mov.l	68c <IMM_SmpcPerPointer>,r5	! 60fffa4
 62c:	d0 62       	mov.l	7b8 <IMM_Smpc_Result_2>,r0	! ab8 <_Smpc_Result>
 62e:	d1 18       	mov.l	690 <IMM_Smpc_Peripheral>,r1	! abc <_Smpc_Peripheral>
 630:	60 02       	mov.l	@r0,r0
 632:	d2 14       	mov.l	684 <IMM_SMPC_RESULT_SIZE_2>,r2	! 200
 634:	61 12       	mov.l	@r1,r1
 636:	42 01       	shlr	r2
 638:	30 2c       	add	r2,r0
 63a:	24 02       	mov.l	r0,@r4
 63c:	d2 15       	mov.l	694 <IMM_Smpc_ResultSize>,r2	! ac0 <_Smpc_ResultSize>
 63e:	25 12       	mov.l	r1,@r5
 640:	62 21       	mov.w	@r2,r2
 642:	e3 0f       	mov	#15,r3
 644:	23 2e       	mulu.w	r2,r3
 646:	03 1a       	sts	macl,r3
 648:	31 3c       	add	r3,r1
 64a:	bd 35       	bsr	b8 <_slGetPortSelect1>
 64c:	2f 16       	mov.l	r1,@-r15
 64e:	61 f6       	mov.l	@r15+,r1
 650:	88 01       	cmp/eq	#1,r0
 652:	89 07       	bt	664 <_slSetDirectResult_10>
 654:	2f 46       	mov.l	r4,@-r15
 656:	bf 63       	bsr	520 <_slSetPeripheral>
 658:	2f 56       	mov.l	r5,@-r15
 65a:	65 f6       	mov.l	@r15+,r5
 65c:	64 f6       	mov.l	@r15+,r4
 65e:	d3 3b       	mov.l	74c <IMM_Per_Connect1>,r3	! ac2 <_Per_Connect1>
 660:	61 52       	mov.l	@r5,r1
 662:	23 00       	mov.b	r0,@r3

00000664 <_slSetDirectResult_10>:
 664:	bd 2d       	bsr	c2 <_slGetPortSelect2>
 666:	25 12       	mov.l	r1,@r5
 668:	88 01       	cmp/eq	#1,r0
 66a:	89 06       	bt	67a <_slSetDirectResult_20>
 66c:	2f 46       	mov.l	r4,@-r15
 66e:	bf 57       	bsr	520 <_slSetPeripheral>
 670:	2f 56       	mov.l	r5,@-r15
 672:	65 f6       	mov.l	@r15+,r5
 674:	d3 36       	mov.l	750 <IMM_Per_Connect2>,r3	! ac3 <_Per_Connect2>
 676:	64 f6       	mov.l	@r15+,r4
 678:	23 00       	mov.b	r0,@r3

0000067a <_slSetDirectResult_20>:
 67a:	4f 26       	lds.l	@r15+,pr
 67c:	65 f6       	mov.l	@r15+,r5
 67e:	00 0b       	rts	
 680:	64 f6       	mov.l	@r15+,r4
	...

00000684 <IMM_SMPC_RESULT_SIZE_2>:
 684:	00 00       	.word 0x0000
 686:	02 00       	.word 0x0200

00000688 <IMM_SmpcResPointer>:
 688:	06 0f       	mac.l	@r0+,@r6+
 68a:	ff a0       	fadd	fr10,fr15

0000068c <IMM_SmpcPerPointer>:
 68c:	06 0f       	mac.l	@r0+,@r6+
 68e:	ff a4       	fcmp/eq	fr10,fr15

00000690 <IMM_Smpc_Peripheral>:
 690:	00 00       	.word 0x0000
 692:	0a bc       	mov.b	@(r0,r11),r10

00000694 <IMM_Smpc_ResultSize>:
 694:	00 00       	.word 0x0000
 696:	0a c0       	.word 0x0ac0

00000698 <_slSmpcCashSend>:
 698:	2f 46       	mov.l	r4,@-r15
 69a:	2f 66       	mov.l	r6,@-r15
 69c:	2f 56       	mov.l	r5,@-r15
 69e:	4f 22       	sts.l	pr,@-r15
 6a0:	d0 43       	mov.l	7b0 <IMM_SMPC_SYS_CHGSCUIM>,r0	! 6000344
 6a2:	94 87       	mov.w	7b4 <IMM_SMPC_MSK_SYSENA>,r4	! 80 <IMM_SmpcPortDir2>
 6a4:	60 02       	mov.l	@r0,r0
 6a6:	95 86       	mov.w	7b6 <IMM_SMPC_MSK_SYSDIS>,r5	! 0 <SLPROG>
 6a8:	40 0b       	jsr	@r0
 6aa:	00 09       	nop	
 6ac:	d6 3e       	mov.l	7a8 <IMM_SmpcComRdPtr>,r6	! 60fff94
 6ae:	bc a7       	bsr	0 <SLPROG>
 6b0:	e5 00       	mov	#0,r5
 6b2:	88 00       	cmp/eq	#0,r0
 6b4:	8b 45       	bf	742 <_slSmpcCashSend_90>
 6b6:	60 62       	mov.l	@r6,r0

000006b8 <_slSmpcCashSend_10>:
 6b8:	d2 3a       	mov.l	7a4 <IMM_SmpcCommandCash>,r2	! ac4 <_SmpcCommandCash>
 6ba:	e1 ff       	mov	#-1,r1
 6bc:	04 2c       	mov.b	@(r0,r2),r4
 6be:	34 10       	cmp/eq	r1,r4
 6c0:	89 12       	bt	6e8 <_slSmpcCashSend_20>
 6c2:	70 01       	add	#1,r0
 6c4:	c9 1f       	and	#31,r0
 6c6:	bd 77       	bsr	1b8 <_slGetSmpcComTbl>
 6c8:	26 02       	mov.l	r0,@r6
 6ca:	b0 85       	bsr	7d8 <_slSendSmpcCommand>
 6cc:	64 03       	mov	r0,r4
 6ce:	e2 84       	mov	#-124,r2
 6d0:	42 08       	shll2	r2
 6d2:	72 02       	add	#2,r2
 6d4:	60 24       	mov.b	@r2+,r0
 6d6:	62 24       	mov.b	@r2+,r2
 6d8:	40 18       	shll8	r0
 6da:	62 2c       	extu.b	r2,r2
 6dc:	20 2b       	or	r2,r0
 6de:	e1 cc       	mov	#-52,r1
 6e0:	30 13       	cmp/ge	r1,r0
 6e2:	89 01       	bt	6e8 <_slSmpcCashSend_20>
 6e4:	af e8       	bra	6b8 <_slSmpcCashSend_10>
 6e6:	60 62       	mov.l	@r6,r0

000006e8 <_slSmpcCashSend_20>:
 6e8:	d6 38       	mov.l	7cc <IMM_SmpcControlFlag>,r6	! 60fffba
 6ea:	be cc       	bsr	486 <_slCheckIntBackReq>
 6ec:	00 09       	nop	
 6ee:	d3 36       	mov.l	7c8 <IMM_SmpcChangeFlag>,r3	! 60fffb9
 6f0:	22 2a       	xor	r2,r2
 6f2:	61 30       	mov.b	@r3,r1
 6f4:	88 00       	cmp/eq	#0,r0
 6f6:	8d 0d       	bt.s	714 <_slSmpcCashSend_40>
 6f8:	23 20       	mov.b	r2,@r3
 6fa:	60 60       	mov.b	@r6,r0
 6fc:	ca 04       	xor	#4,r0
 6fe:	21 18       	tst	r1,r1
 700:	8f 06       	bf.s	710 <_slSmpcCashSend_30>
 702:	26 00       	mov.b	r0,@r6
 704:	d3 11       	mov.l	74c <IMM_Per_Connect1>,r3	! ac2 <_Per_Connect1>
 706:	21 1a       	xor	r1,r1
 708:	23 10       	mov.b	r1,@r3
 70a:	d3 11       	mov.l	750 <IMM_Per_Connect2>,r3	! ac3 <_Per_Connect2>
 70c:	a0 17       	bra	73e <_slSmpcCashSend_80>
 70e:	23 10       	mov.b	r1,@r3

00000710 <_slSmpcCashSend_30>:
 710:	bf 56       	bsr	5c0 <_slSetResultData>
 712:	00 09       	nop	

00000714 <_slSmpcCashSend_40>:
 714:	d2 2b       	mov.l	7c4 <IMM_SmpcDirOffset_2>,r2	! 60fff9c
 716:	20 0a       	xor	r0,r0
 718:	bf 83       	bsr	622 <_slSetDirectResult>
 71a:	22 02       	mov.l	r0,@r2
 71c:	be b9       	bsr	492 <_slCheckIntBackSet>
 71e:	00 09       	nop	
 720:	88 00       	cmp/eq	#0,r0
 722:	89 0c       	bt	73e <_slSmpcCashSend_80>
 724:	60 60       	mov.b	@r6,r0
 726:	21 1a       	xor	r1,r1
 728:	cb 04       	or	#4,r0
 72a:	26 00       	mov.b	r0,@r6
 72c:	d2 24       	mov.l	7c0 <IMM_SmpcResOffset>,r2	! 60fff98
 72e:	d3 29       	mov.l	7d4 <IMM_SmpcPerCommand>,r3	! 60fffbf
 730:	22 12       	mov.l	r1,@r2
 732:	23 10       	mov.b	r1,@r3
 734:	d2 aa       	mov.l	9e0 <IMM_SmpcIntBackCom>,r2	! 60fffbd
 736:	bd 3f       	bsr	1b8 <_slGetSmpcComTbl>
 738:	64 20       	mov.b	@r2,r4
 73a:	b0 4d       	bsr	7d8 <_slSendSmpcCommand>
 73c:	64 03       	mov	r0,r4

0000073e <_slSmpcCashSend_80>:
 73e:	bc 64       	bsr	a <_slSendSmpcSemaphore>
 740:	00 09       	nop	

00000742 <_slSmpcCashSend_90>:
 742:	4f 26       	lds.l	@r15+,pr
 744:	65 f6       	mov.l	@r15+,r5
 746:	66 f6       	mov.l	@r15+,r6
 748:	00 0b       	rts	
 74a:	64 f6       	mov.l	@r15+,r4

0000074c <IMM_Per_Connect1>:
 74c:	00 00       	.word 0x0000
 74e:	0a c2       	stc	r4_bank,r10

00000750 <IMM_Per_Connect2>:
 750:	00 00       	.word 0x0000
 752:	0a c3       	movca.l	r0,@r10

00000754 <_slSmpcCashBlow>:
 754:	2f 46       	mov.l	r4,@-r15
 756:	2f 66       	mov.l	r6,@-r15
 758:	2f 56       	mov.l	r5,@-r15
 75a:	4f 22       	sts.l	pr,@-r15
 75c:	d6 12       	mov.l	7a8 <IMM_SmpcComRdPtr>,r6	! 60fff94
 75e:	bc 4f       	bsr	0 <SLPROG>
 760:	e5 00       	mov	#0,r5
 762:	88 00       	cmp/eq	#0,r0
 764:	8b 19       	bf	79a <_slSmpcCashBlow_90>
 766:	be 8e       	bsr	486 <_slCheckIntBackReq>
 768:	00 09       	nop	
 76a:	88 00       	cmp/eq	#0,r0
 76c:	8d 04       	bt.s	778 <_slSmpcCashBlow_10>
 76e:	60 62       	mov.l	@r6,r0
 770:	d3 15       	mov.l	7c8 <IMM_SmpcChangeFlag>,r3	! 60fffb9
 772:	61 30       	mov.b	@r3,r1
 774:	21 18       	tst	r1,r1
 776:	89 0c       	bt	792 <_slSmpcCashBlow_80>

00000778 <_slSmpcCashBlow_10>:
 778:	d2 0a       	mov.l	7a4 <IMM_SmpcCommandCash>,r2	! ac4 <_SmpcCommandCash>
 77a:	e1 ff       	mov	#-1,r1
 77c:	04 2c       	mov.b	@(r0,r2),r4
 77e:	34 10       	cmp/eq	r1,r4
 780:	89 07       	bt	792 <_slSmpcCashBlow_80>
 782:	70 01       	add	#1,r0
 784:	c9 1f       	and	#31,r0
 786:	bd 17       	bsr	1b8 <_slGetSmpcComTbl>
 788:	26 02       	mov.l	r0,@r6
 78a:	b0 25       	bsr	7d8 <_slSendSmpcCommand>
 78c:	64 03       	mov	r0,r4
 78e:	af f3       	bra	778 <_slSmpcCashBlow_10>
 790:	60 62       	mov.l	@r6,r0

00000792 <_slSmpcCashBlow_80>:
 792:	be b1       	bsr	4f8 <_slUpdateResetCount>
 794:	00 09       	nop	
 796:	bc 38       	bsr	a <_slSendSmpcSemaphore>
 798:	00 09       	nop	

0000079a <_slSmpcCashBlow_90>:
 79a:	4f 26       	lds.l	@r15+,pr
 79c:	65 f6       	mov.l	@r15+,r5
 79e:	66 f6       	mov.l	@r15+,r6
 7a0:	00 0b       	rts	
 7a2:	64 f6       	mov.l	@r15+,r4

000007a4 <IMM_SmpcCommandCash>:
 7a4:	00 00       	.word 0x0000
 7a6:	0a c4       	mov.b	r12,@(r0,r10)

000007a8 <IMM_SmpcComRdPtr>:
 7a8:	06 0f       	mac.l	@r0+,@r6+
 7aa:	ff 94       	fcmp/eq	fr9,fr15

000007ac <IMM_SmpcComWtPtr>:
 7ac:	06 0f       	mac.l	@r0+,@r6+
 7ae:	ff 90       	fadd	fr9,fr15

000007b0 <IMM_SMPC_SYS_CHGSCUIM>:
 7b0:	06 00       	.word 0x0600
 7b2:	03 44       	mov.b	r4,@(r0,r3)

000007b4 <IMM_SMPC_MSK_SYSENA>:
 7b4:	00 80       	.word 0x0080

000007b6 <IMM_SMPC_MSK_SYSDIS>:
	...

000007b8 <IMM_Smpc_Result_2>:
 7b8:	00 00       	.word 0x0000
 7ba:	0a b8       	.word 0x0ab8

000007bc <IMM_SMPC_REG_sr>:
 7bc:	20 10       	mov.b	r1,@r0
 7be:	00 61       	.word 0x0061

000007c0 <IMM_SmpcResOffset>:
 7c0:	06 0f       	mac.l	@r0+,@r6+
 7c2:	ff 98       	fmov	@r9,fr15

000007c4 <IMM_SmpcDirOffset_2>:
 7c4:	06 0f       	mac.l	@r0+,@r6+
 7c6:	ff 9c       	fmov	fr9,fr15

000007c8 <IMM_SmpcChangeFlag>:
 7c8:	06 0f       	mac.l	@r0+,@r6+
 7ca:	ff b9       	fmov	@r11+,fr15

000007cc <IMM_SmpcControlFlag>:
 7cc:	06 0f       	mac.l	@r0+,@r6+
 7ce:	ff ba       	fmov	fr11,@r15

000007d0 <IMM_SmpcPerControl>:
 7d0:	06 0f       	mac.l	@r0+,@r6+
 7d2:	ff be       	fmac	fr0,fr11,fr15

000007d4 <IMM_SmpcPerCommand>:
 7d4:	06 0f       	mac.l	@r0+,@r6+
 7d6:	ff bf       	.word 0xffbf

000007d8 <_slSendSmpcCommand>:
 7d8:	2f 66       	mov.l	r6,@-r15
 7da:	4f 22       	sts.l	pr,@-r15
 7dc:	d6 11       	mov.l	824 <IMM_SMPC_REG_SF>,r6	! 20100063

000007de <_slSendSmpcCommand_10>:
 7de:	60 60       	mov.b	@r6,r0
 7e0:	c8 01       	tst	#1,r0
 7e2:	8b fc       	bf	7de <_slSendSmpcCommand_10>
 7e4:	c7 0b       	mova	814 <smpc_cpr_tbl>,r0
 7e6:	e1 01       	mov	#1,r1
 7e8:	62 03       	mov	r0,r2
 7ea:	84 42       	mov.b	@(2,r4),r0
 7ec:	26 10       	mov.b	r1,@r6
 7ee:	01 2e       	mov.l	@(r0,r2),r1
 7f0:	21 18       	tst	r1,r1
 7f2:	89 01       	bt	7f8 <_slSendSmpcCommand_20>
 7f4:	41 0b       	jsr	@r1
 7f6:	00 09       	nop	

000007f8 <_slSendSmpcCommand_20>:
 7f8:	84 40       	mov.b	@(0,r4),r0
 7fa:	d2 0c       	mov.l	82c <IMM_SMPC_REG_COMREG>,r2	! 2010001f
 7fc:	e1 00       	mov	#0,r1
 7fe:	65 5c       	extu.b	r5,r5
 800:	22 00       	mov.b	r0,@r2
 802:	35 10       	cmp/eq	r1,r5
 804:	89 02       	bt	80c <_slSendSmpcCommand_40>

00000806 <_slSendSmpcCommand_30>:
 806:	60 60       	mov.b	@r6,r0
 808:	c8 01       	tst	#1,r0
 80a:	8b fc       	bf	806 <_slSendSmpcCommand_30>

0000080c <_slSendSmpcCommand_40>:
 80c:	e0 00       	mov	#0,r0
 80e:	4f 26       	lds.l	@r15+,pr
 810:	00 0b       	rts	
 812:	66 f6       	mov.l	@r15+,r6

00000814 <smpc_cpr_tbl>:
	...

00000824 <IMM_SMPC_REG_SF>:
 824:	20 10       	mov.b	r1,@r0
 826:	00 63       	.word 0x0063

00000828 <IMM_SMPC_REG_IREG>:
 828:	20 10       	mov.b	r1,@r0
 82a:	00 01       	.word 0x0001

0000082c <IMM_SMPC_REG_COMREG>:
 82c:	20 10       	mov.b	r1,@r0
 82e:	00 1f       	mac.l	@r1+,@r0+

00000830 <_slGetOptimize>:
 830:	d2 6d       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 832:	60 20       	mov.b	@r2,r0
 834:	c8 02       	tst	#2,r0
 836:	00 0b       	rts	
 838:	00 29       	movt	r0

0000083a <_slSetOptimize>:
 83a:	4f 22       	sts.l	pr,@-r15
 83c:	bb e0       	bsr	0 <SLPROG>
 83e:	00 09       	nop	
 840:	88 00       	cmp/eq	#0,r0
 842:	8b 0a       	bf	85a <_slSetOptimize_90>
 844:	d2 68       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 846:	e1 00       	mov	#0,r1
 848:	64 4c       	extu.b	r4,r4
 84a:	60 20       	mov.b	@r2,r0
 84c:	34 10       	cmp/eq	r1,r4
 84e:	8d 01       	bt.s	854 <_slSetOptimize_10>
 850:	cb 02       	or	#2,r0
 852:	ca 02       	xor	#2,r0

00000854 <_slSetOptimize_10>:
 854:	22 00       	mov.b	r0,@r2
 856:	bb d8       	bsr	a <_slSendSmpcSemaphore>
 858:	e4 00       	mov	#0,r4

0000085a <_slSetOptimize_90>:
 85a:	4f 26       	lds.l	@r15+,pr
 85c:	00 0b       	rts	
 85e:	00 09       	nop	

00000860 <_slGetPortMode1>:
 860:	d2 61       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 862:	60 20       	mov.b	@r2,r0
 864:	c9 30       	and	#48,r0
 866:	40 09       	shlr2	r0
 868:	00 0b       	rts	
 86a:	40 09       	shlr2	r0

0000086c <_slGetPortMode2>:
 86c:	d2 5e       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 86e:	60 20       	mov.b	@r2,r0
 870:	c9 c0       	and	#-64,r0
 872:	40 09       	shlr2	r0
 874:	40 09       	shlr2	r0
 876:	00 0b       	rts	
 878:	40 09       	shlr2	r0

0000087a <_slSetPortMode1>:
 87a:	4f 22       	sts.l	pr,@-r15
 87c:	bb c0       	bsr	0 <SLPROG>
 87e:	00 09       	nop	
 880:	88 00       	cmp/eq	#0,r0
 882:	8b 16       	bf	8b2 <_slSetPortMode1_90>
 884:	e1 02       	mov	#2,r1
 886:	64 4c       	extu.b	r4,r4
 888:	34 10       	cmp/eq	r1,r4
 88a:	8d 10       	bt.s	8ae <_slSetPortMode1_80>
 88c:	e0 ff       	mov	#-1,r0
 88e:	64 4c       	extu.b	r4,r4
 890:	e1 03       	mov	#3,r1
 892:	34 16       	cmp/hi	r1,r4
 894:	8b 00       	bf	898 <_slSetPortMode1_10>
 896:	e4 00       	mov	#0,r4

00000898 <_slSetPortMode1_10>:
 898:	44 08       	shll2	r4
 89a:	d2 53       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 89c:	44 08       	shll2	r4
 89e:	e1 30       	mov	#48,r1
 8a0:	24 19       	and	r1,r4
 8a2:	60 20       	mov.b	@r2,r0
 8a4:	61 17       	not	r1,r1
 8a6:	20 19       	and	r1,r0
 8a8:	20 4b       	or	r4,r0
 8aa:	22 00       	mov.b	r0,@r2
 8ac:	e0 00       	mov	#0,r0

000008ae <_slSetPortMode1_80>:
 8ae:	bb ac       	bsr	a <_slSendSmpcSemaphore>
 8b0:	64 03       	mov	r0,r4

000008b2 <_slSetPortMode1_90>:
 8b2:	4f 26       	lds.l	@r15+,pr
 8b4:	00 0b       	rts	
 8b6:	00 09       	nop	

000008b8 <_slSetPortMode2>:
 8b8:	4f 22       	sts.l	pr,@-r15
 8ba:	bb a1       	bsr	0 <SLPROG>
 8bc:	00 09       	nop	
 8be:	88 00       	cmp/eq	#0,r0
 8c0:	8b 17       	bf	8f2 <_slSetPortMode2_90>
 8c2:	e1 02       	mov	#2,r1
 8c4:	64 4c       	extu.b	r4,r4
 8c6:	34 10       	cmp/eq	r1,r4
 8c8:	8d 11       	bt.s	8ee <_slSetPortMode2_80>
 8ca:	e0 ff       	mov	#-1,r0
 8cc:	64 4c       	extu.b	r4,r4
 8ce:	e1 03       	mov	#3,r1
 8d0:	34 16       	cmp/hi	r1,r4
 8d2:	8b 00       	bf	8d6 <_slSetPortMode2_10>
 8d4:	e4 00       	mov	#0,r4

000008d6 <_slSetPortMode2_10>:
 8d6:	44 08       	shll2	r4
 8d8:	d2 43       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 8da:	44 08       	shll2	r4
 8dc:	e1 c0       	mov	#-64,r1
 8de:	44 08       	shll2	r4
 8e0:	24 19       	and	r1,r4
 8e2:	60 20       	mov.b	@r2,r0
 8e4:	61 17       	not	r1,r1
 8e6:	20 19       	and	r1,r0
 8e8:	20 4b       	or	r4,r0
 8ea:	22 00       	mov.b	r0,@r2
 8ec:	e0 00       	mov	#0,r0

000008ee <_slSetPortMode2_80>:
 8ee:	bb 8c       	bsr	a <_slSendSmpcSemaphore>
 8f0:	64 03       	mov	r0,r4

000008f2 <_slSetPortMode2_90>:
 8f2:	4f 26       	lds.l	@r15+,pr
 8f4:	00 0b       	rts	
 8f6:	00 09       	nop	

000008f8 <_slExecBasicCommand>:
 8f8:	4f 22       	sts.l	pr,@-r15
 8fa:	bd c4       	bsr	486 <_slCheckIntBackReq>
 8fc:	00 09       	nop	
 8fe:	88 00       	cmp/eq	#0,r0
 900:	89 03       	bt	90a <_slExecBasicCommand_10>
 902:	bd 96       	bsr	432 <_slRequestQueue>
 904:	00 09       	nop	
 906:	a0 02       	bra	90e <_slExecBasicCommand_20>
 908:	00 09       	nop	

0000090a <_slExecBasicCommand_10>:
 90a:	bf 65       	bsr	7d8 <_slSendSmpcCommand>
 90c:	00 09       	nop	

0000090e <_slExecBasicCommand_20>:
 90e:	4f 26       	lds.l	@r15+,pr
 910:	00 0b       	rts	
 912:	00 09       	nop	

00000914 <_slExecSystemReset>:
 914:	4f 22       	sts.l	pr,@-r15
 916:	bd b6       	bsr	486 <_slCheckIntBackReq>
 918:	00 09       	nop	
 91a:	88 00       	cmp/eq	#0,r0
 91c:	89 03       	bt	926 <_slExecSystemReset_10>
 91e:	bd 88       	bsr	432 <_slRequestQueue>
 920:	00 09       	nop	
 922:	a0 04       	bra	92e <_slExecSystemReset_30>
 924:	00 09       	nop	

00000926 <_slExecSystemReset_10>:
 926:	bf 57       	bsr	7d8 <_slSendSmpcCommand>
 928:	00 09       	nop	

0000092a <_slExecSystemReset_20>:
 92a:	af fe       	bra	92a <_slExecSystemReset_20>
 92c:	00 09       	nop	

0000092e <_slExecSystemReset_30>:
 92e:	4f 26       	lds.l	@r15+,pr
 930:	00 0b       	rts	
 932:	00 09       	nop	

00000934 <_slExecClockChange>:
 934:	4f 22       	sts.l	pr,@-r15
 936:	bd a6       	bsr	486 <_slCheckIntBackReq>
 938:	00 09       	nop	
 93a:	88 00       	cmp/eq	#0,r0
 93c:	89 03       	bt	946 <_slExecClockChange_10>
 93e:	bd 78       	bsr	432 <_slRequestQueue>
 940:	e5 01       	mov	#1,r5
 942:	a0 0b       	bra	95c <_slExecClockChange_30>
 944:	00 09       	nop	

00000946 <_slExecClockChange_10>:
 946:	d2 59       	mov.l	aac <IMM_SmpcComNumber>,r2	! 60fffbc
 948:	d3 06       	mov.l	964 <IMM_SMPC_SYS_CHGCLOCK>,r3	! 6000320
 94a:	60 20       	mov.b	@r2,r0
 94c:	61 32       	mov.l	@r3,r1
 94e:	88 08       	cmp/eq	#8,r0
 950:	8d 01       	bt.s	956 <_slExecClockChange_20>
 952:	e4 01       	mov	#1,r4
 954:	e4 00       	mov	#0,r4

00000956 <_slExecClockChange_20>:
 956:	41 0b       	jsr	@r1
 958:	00 09       	nop	
 95a:	e0 00       	mov	#0,r0

0000095c <_slExecClockChange_30>:
 95c:	4f 26       	lds.l	@r15+,pr
 95e:	00 0b       	rts	
 960:	00 09       	nop	
	...

00000964 <IMM_SMPC_SYS_CHGCLOCK>:
 964:	06 00       	.word 0x0600
 966:	03 20       	.word 0x0320

00000968 <_slExecGetStatus>:
 968:	4f 22       	sts.l	pr,@-r15
 96a:	bc 4f       	bsr	20c <_slIntBackCondition>
 96c:	00 09       	nop	
 96e:	88 00       	cmp/eq	#0,r0
 970:	8b 13       	bf	99a <_slExecGetStatus_90>
 972:	d4 4e       	mov.l	aac <IMM_SmpcComNumber>,r4	! 60fffbc
 974:	d5 1a       	mov.l	9e0 <IMM_SmpcIntBackCom>,r5	! 60fffbd
 976:	60 40       	mov.b	@r4,r0
 978:	d2 1b       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 97a:	25 00       	mov.b	r0,@r5
 97c:	e1 01       	mov	#1,r1
 97e:	60 20       	mov.b	@r2,r0
 980:	41 18       	shll8	r1
 982:	60 0c       	extu.b	r0,r0
 984:	20 1b       	or	r1,r0
 986:	cb 08       	or	#8,r0
 988:	bc 70       	bsr	26c <_slIntBackPortMode>
 98a:	64 03       	mov	r0,r4
 98c:	40 18       	shll8	r0
 98e:	cb f0       	or	#-16,r0
 990:	40 18       	shll8	r0
 992:	d2 14       	mov.l	9e4 <IMM_SmpcIntBackData>,r2	! 60fffa8
 994:	bd 93       	bsr	4be <_slSetIntBack>
 996:	22 02       	mov.l	r0,@r2
 998:	e0 00       	mov	#0,r0

0000099a <_slExecGetStatus_90>:
 99a:	4f 26       	lds.l	@r15+,pr
 99c:	00 0b       	rts	
 99e:	00 09       	nop	

000009a0 <_slExecGetPeripheral>:
 9a0:	4f 22       	sts.l	pr,@-r15
 9a2:	bc 33       	bsr	20c <_slIntBackCondition>
 9a4:	00 09       	nop	
 9a6:	88 00       	cmp/eq	#0,r0
 9a8:	8b 17       	bf	9da <_slExecGetPeripheral_90>
 9aa:	bc 50       	bsr	24e <_slIntBackSelect>
 9ac:	00 09       	nop	
 9ae:	88 00       	cmp/eq	#0,r0
 9b0:	8b 13       	bf	9da <_slExecGetPeripheral_90>
 9b2:	d4 3e       	mov.l	aac <IMM_SmpcComNumber>,r4	! 60fffbc
 9b4:	d5 0a       	mov.l	9e0 <IMM_SmpcIntBackCom>,r5	! 60fffbd
 9b6:	60 40       	mov.b	@r4,r0
 9b8:	d2 0b       	mov.l	9e8 <IMM_SmpcPerMode>,r2	! 60fffc4
 9ba:	25 00       	mov.b	r0,@r5
 9bc:	e1 00       	mov	#0,r1
 9be:	60 20       	mov.b	@r2,r0
 9c0:	41 18       	shll8	r1
 9c2:	60 0c       	extu.b	r0,r0
 9c4:	20 1b       	or	r1,r0
 9c6:	cb 08       	or	#8,r0
 9c8:	bc 50       	bsr	26c <_slIntBackPortMode>
 9ca:	64 03       	mov	r0,r4
 9cc:	40 18       	shll8	r0
 9ce:	cb f0       	or	#-16,r0
 9d0:	40 18       	shll8	r0
 9d2:	d2 04       	mov.l	9e4 <IMM_SmpcIntBackData>,r2	! 60fffa8
 9d4:	bd 73       	bsr	4be <_slSetIntBack>
 9d6:	22 02       	mov.l	r0,@r2
 9d8:	e0 00       	mov	#0,r0

000009da <_slExecGetPeripheral_90>:
 9da:	4f 26       	lds.l	@r15+,pr
 9dc:	00 0b       	rts	
 9de:	00 09       	nop	

000009e0 <IMM_SmpcIntBackCom>:
 9e0:	06 0f       	mac.l	@r0+,@r6+
 9e2:	ff bd       	.word 0xffbd

000009e4 <IMM_SmpcIntBackData>:
 9e4:	06 0f       	mac.l	@r0+,@r6+
 9e6:	ff a8       	fmov	@r10,fr15

000009e8 <IMM_SmpcPerMode>:
 9e8:	06 0f       	mac.l	@r0+,@r6+
 9ea:	ff c4       	fcmp/eq	fr12,fr15

000009ec <_slExecSetMemory>:
 9ec:	4f 22       	sts.l	pr,@-r15
 9ee:	d2 14       	mov.l	a40 <IMM_SmpcStatusBuf_3>,r2	! ae4 <_SmpcStatusBuf>
 9f0:	d3 11       	mov.l	a38 <IMM_SmpcMemSetData>,r3	! 60fffac
 9f2:	50 24       	mov.l	@(16,r2),r0
 9f4:	bd 47       	bsr	486 <_slCheckIntBackReq>
 9f6:	23 02       	mov.l	r0,@r3
 9f8:	88 00       	cmp/eq	#0,r0
 9fa:	89 03       	bt	a04 <_slExecSetMemory_10>
 9fc:	bd 19       	bsr	432 <_slRequestQueue>
 9fe:	00 09       	nop	
 a00:	a0 02       	bra	a08 <_slExecSetMemory_20>
 a02:	00 09       	nop	

00000a04 <_slExecSetMemory_10>:
 a04:	be e8       	bsr	7d8 <_slSendSmpcCommand>
 a06:	00 09       	nop	

00000a08 <_slExecSetMemory_20>:
 a08:	4f 26       	lds.l	@r15+,pr
 a0a:	00 0b       	rts	
 a0c:	00 09       	nop	

00000a0e <_slExecSetTime>:
 a0e:	4f 22       	sts.l	pr,@-r15
 a10:	d2 0b       	mov.l	a40 <IMM_SmpcStatusBuf_3>,r2	! ae4 <_SmpcStatusBuf>
 a12:	d3 0a       	mov.l	a3c <IMM_SmpcTimeSetData>,r3	! 60fffb0
 a14:	72 04       	add	#4,r2
 a16:	60 26       	mov.l	@r2+,r0
 a18:	61 26       	mov.l	@r2+,r1
 a1a:	23 02       	mov.l	r0,@r3
 a1c:	73 04       	add	#4,r3
 a1e:	bd 32       	bsr	486 <_slCheckIntBackReq>
 a20:	23 12       	mov.l	r1,@r3
 a22:	88 00       	cmp/eq	#0,r0
 a24:	89 03       	bt	a2e <_slExecSetTime_10>
 a26:	bd 04       	bsr	432 <_slRequestQueue>
 a28:	00 09       	nop	
 a2a:	a0 02       	bra	a32 <_slExecSetTime_20>
 a2c:	00 09       	nop	

00000a2e <_slExecSetTime_10>:
 a2e:	be d3       	bsr	7d8 <_slSendSmpcCommand>
 a30:	00 09       	nop	

00000a32 <_slExecSetTime_20>:
 a32:	4f 26       	lds.l	@r15+,pr
 a34:	00 0b       	rts	
 a36:	00 09       	nop	

00000a38 <IMM_SmpcMemSetData>:
 a38:	06 0f       	mac.l	@r0+,@r6+
 a3a:	ff ac       	fmov	fr10,fr15

00000a3c <IMM_SmpcTimeSetData>:
 a3c:	06 0f       	mac.l	@r0+,@r6+
 a3e:	ff b0       	fadd	fr11,fr15

00000a40 <IMM_SmpcStatusBuf_3>:
 a40:	00 00       	.word 0x0000
 a42:	0a e4       	mov.b	r14,@(r0,r10)

00000a44 <_slRequestCommand>:
 a44:	4f 22       	sts.l	pr,@-r15
 a46:	ba db       	bsr	0 <SLPROG>
 a48:	00 09       	nop	
 a4a:	88 00       	cmp/eq	#0,r0
 a4c:	8b 1c       	bf	a88 <_slRequestCommand_90>
 a4e:	e1 11       	mov	#17,r1
 a50:	34 12       	cmp/hs	r1,r4
 a52:	8d 17       	bt.s	a84 <_slRequestCommand_80>
 a54:	e0 ff       	mov	#-1,r0
 a56:	d2 15       	mov.l	aac <IMM_SmpcComNumber>,r2	! 60fffbc
 a58:	bb ae       	bsr	1b8 <_slGetSmpcComTbl>
 a5a:	22 40       	mov.b	r4,@r2
 a5c:	64 03       	mov	r0,r4
 a5e:	84 43       	mov.b	@(3,r4),r0
 a60:	c8 01       	tst	#1,r0
 a62:	8d 0f       	bt.s	a84 <_slRequestCommand_80>
 a64:	e0 ff       	mov	#-1,r0
 a66:	d3 12       	mov.l	ab0 <IMM_SMPC_MSK_MASTER>,r3	! 8000
 a68:	e2 e0       	mov	#-32,r2
 a6a:	61 22       	mov.l	@r2,r1
 a6c:	21 38       	tst	r3,r1
 a6e:	89 03       	bt	a78 <_slRequestCommand_10>
 a70:	84 43       	mov.b	@(3,r4),r0
 a72:	c8 02       	tst	#2,r0
 a74:	8d 06       	bt.s	a84 <_slRequestCommand_80>
 a76:	e0 ff       	mov	#-1,r0

00000a78 <_slRequestCommand_10>:
 a78:	c7 05       	mova	a90 <smpc_exe_tbl>,r0
 a7a:	62 03       	mov	r0,r2
 a7c:	84 41       	mov.b	@(1,r4),r0
 a7e:	01 2e       	mov.l	@(r0,r2),r1
 a80:	41 0b       	jsr	@r1
 a82:	00 09       	nop	

00000a84 <_slRequestCommand_80>:
 a84:	ba c1       	bsr	a <_slSendSmpcSemaphore>
 a86:	64 03       	mov	r0,r4

00000a88 <_slRequestCommand_90>:
 a88:	4f 26       	lds.l	@r15+,pr
 a8a:	00 0b       	rts	
 a8c:	00 09       	nop	
	...

00000a90 <smpc_exe_tbl>:
 a90:	00 00       	.word 0x0000
 a92:	08 f8       	.word 0x08f8
 a94:	00 00       	.word 0x0000
 a96:	09 14       	mov.b	r1,@(r0,r9)
 a98:	00 00       	.word 0x0000
 a9a:	09 34       	mov.b	r3,@(r0,r9)
 a9c:	00 00       	.word 0x0000
 a9e:	09 68       	.word 0x0968
 aa0:	00 00       	.word 0x0000
 aa2:	09 a0       	.word 0x09a0
 aa4:	00 00       	.word 0x0000
 aa6:	09 ec       	mov.b	@(r0,r14),r9
 aa8:	00 00       	.word 0x0000
 aaa:	0a 0e       	mov.l	@(r0,r0),r10

00000aac <IMM_SmpcComNumber>:
 aac:	06 0f       	mac.l	@r0+,@r6+
 aae:	ff bc       	fmov	fr11,fr15

00000ab0 <IMM_SMPC_MSK_MASTER>:
 ab0:	00 00       	.word 0x0000
 ab2:	80 00       	mov.b	r0,@(0,r0)

00000ab4 <_Smpc_Status>:
 ab4:	00 00       	.word 0x0000
	...

00000ab8 <_Smpc_Result>:
 ab8:	00 00       	.word 0x0000
	...

00000abc <_Smpc_Peripheral>:
 abc:	00 00       	.word 0x0000
	...

00000ac0 <_Smpc_ResultSize>:
	...

00000ac2 <_Per_Connect1>:
	...

00000ac3 <_Per_Connect2>:
	...

00000ac4 <_SmpcCommandCash>:
	...

00000ae4 <_SmpcStatusBuf>:
	...

00000af8 <_SmpcResultBuf>:
	...

00000cf8 <_SmpcPeripheralBuf>:
	...
