
sglB035.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_sl1MapRA>:
   0:	60 43       	mov	r4,r0
   2:	c2 83       	mov.l	r0,@(524,gbr)
   4:	4f 22       	sts.l	pr,@-r15
   6:	b0 44       	bsr	92 <rbank_set>
   8:	e5 02       	mov	#2,r5
   a:	4f 26       	lds.l	@r15+,pr
   c:	e3 0b       	mov	#11,r3
   e:	c5 7c       	mov.w	@(248,gbr),r0
  10:	91 3e       	mov.w	90 <IMM_VDP2_PNB4>,r1	! 8000
  12:	20 18       	tst	r1,r0
  14:	8b 00       	bf	18 <smsra_word_ex>
  16:	73 01       	add	#1,r3

00000018 <smsra_word_ex>:
  18:	c5 75       	mov.w	@(234,gbr),r0
  1a:	40 19       	shlr8	r0
  1c:	c8 01       	tst	#1,r0
  1e:	8b 00       	bf	22 <smsra_char_ex>
  20:	73 02       	add	#2,r3

00000022 <smsra_char_ex>:
  22:	60 33       	mov	r3,r0
  24:	70 06       	add	#6,r0
  26:	62 43       	mov	r4,r2
  28:	c8 10       	tst	#16,r0
  2a:	89 00       	bt	2e <s16_ps01182>
  2c:	42 29       	shlr16	r2

0000002e <s16_ps01182>:
  2e:	c8 08       	tst	#8,r0
  30:	89 00       	bt	34 <s8_ps01182>
  32:	42 19       	shlr8	r2

00000034 <s8_ps01182>:
  34:	c8 04       	tst	#4,r0
  36:	89 01       	bt	3c <s4_ps01182>
  38:	42 09       	shlr2	r2
  3a:	42 09       	shlr2	r2

0000003c <s4_ps01182>:
  3c:	c8 02       	tst	#2,r0
  3e:	89 00       	bt	42 <s2_ps01182>
  40:	42 09       	shlr2	r2

00000042 <s2_ps01182>:
  42:	c8 01       	tst	#1,r0
  44:	89 00       	bt	48 <s1_ps01182>
  46:	42 01       	shlr	r2

00000048 <s1_ps01182>:
  48:	e1 07       	mov	#7,r1
  4a:	22 19       	and	r1,r2
  4c:	c4 ff       	mov.b	@(255,gbr),r0
  4e:	c9 f0       	and	#-16,r0
  50:	20 2b       	or	r2,r0
  52:	c0 ff       	mov.b	r0,@(255,gbr)
  54:	60 33       	mov	r3,r0
  56:	c8 10       	tst	#16,r0
  58:	89 00       	bt	5c <s16_ps01183>
  5a:	44 29       	shlr16	r4

0000005c <s16_ps01183>:
  5c:	c8 08       	tst	#8,r0
  5e:	89 00       	bt	62 <s8_ps01183>
  60:	44 19       	shlr8	r4

00000062 <s8_ps01183>:
  62:	c8 04       	tst	#4,r0
  64:	89 01       	bt	6a <s4_ps01183>
  66:	44 09       	shlr2	r4
  68:	44 09       	shlr2	r4

0000006a <s4_ps01183>:
  6a:	c8 02       	tst	#2,r0
  6c:	89 00       	bt	70 <s2_ps01183>
  6e:	44 09       	shlr2	r4

00000070 <s2_ps01183>:
  70:	c8 01       	tst	#1,r0
  72:	89 00       	bt	76 <s1_ps01183>
  74:	44 01       	shlr	r4

00000076 <s1_ps01183>:
  76:	e1 3f       	mov	#63,r1
  78:	24 19       	and	r1,r4
  7a:	60 48       	swap.b	r4,r0
  7c:	20 4b       	or	r4,r0
  7e:	c1 88       	mov.w	r0,@(272,gbr)
  80:	c1 89       	mov.w	r0,@(274,gbr)
  82:	c1 8a       	mov.w	r0,@(276,gbr)
  84:	c1 8b       	mov.w	r0,@(278,gbr)
  86:	c1 8c       	mov.w	r0,@(280,gbr)
  88:	c1 8d       	mov.w	r0,@(282,gbr)
  8a:	c1 8e       	mov.w	r0,@(284,gbr)
  8c:	00 0b       	rts	
  8e:	c1 8f       	mov.w	r0,@(286,gbr)

00000090 <IMM_VDP2_PNB4>:
  90:	80 00       	mov.b	r0,@(0,r0)

00000092 <rbank_set>:
  92:	c5 67       	mov.w	@(206,gbr),r0
  94:	2f 56       	mov.l	r5,@-r15
  96:	e2 03       	mov	#3,r2
  98:	e3 04       	mov	#4,r3
  9a:	61 03       	mov	r0,r1

0000009c <rs_same_loop>:
  9c:	60 13       	mov	r1,r0
  9e:	20 29       	and	r2,r0
  a0:	30 50       	cmp/eq	r5,r0
  a2:	8b 01       	bf	a8 <rs_same_ps>
  a4:	60 27       	not	r2,r0
  a6:	21 09       	and	r0,r1

000000a8 <rs_same_ps>:
  a8:	42 08       	shll2	r2
  aa:	43 10       	dt	r3
  ac:	8f f6       	bf.s	9c <rs_same_loop>
  ae:	45 08       	shll2	r5
  b0:	65 f6       	mov.l	@r15+,r5
  b2:	e2 03       	mov	#3,r2
  b4:	60 49       	swap.w	r4,r0
  b6:	c8 04       	tst	#4,r0
  b8:	89 03       	bt	c2 <rs_not_b>
  ba:	42 08       	shll2	r2
  bc:	42 08       	shll2	r2
  be:	45 08       	shll2	r5
  c0:	45 08       	shll2	r5

000000c2 <rs_not_b>:
  c2:	c8 02       	tst	#2,r0
  c4:	89 01       	bt	ca <rs_not_1>
  c6:	42 08       	shll2	r2
  c8:	45 08       	shll2	r5

000000ca <rs_not_1>:
  ca:	60 27       	not	r2,r0
  cc:	20 19       	and	r1,r0
  ce:	20 5b       	or	r5,r0
  d0:	00 0b       	rts	
  d2:	c1 67       	mov.w	r0,@(206,gbr)
