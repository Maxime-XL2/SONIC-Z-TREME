
sglB034.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slMapNbg3>:
   0:	60 43       	mov	r4,r0
   2:	c2 82       	mov.l	r0,@(520,gbr)
   4:	e3 0b       	mov	#11,r3
   6:	c5 7b       	mov.w	@(246,gbr),r0
   8:	91 52       	mov.w	b0 <IMM_VDP2_PNB3>,r1	! 8000
   a:	20 18       	tst	r1,r0
   c:	8b 00       	bf	10 <smsn3_word_ex>
   e:	73 01       	add	#1,r3

00000010 <smsn3_word_ex>:
  10:	c5 75       	mov.w	@(234,gbr),r0
  12:	c8 10       	tst	#16,r0
  14:	8b 00       	bf	18 <smsn3_char_ex>
  16:	73 02       	add	#2,r3

00000018 <smsn3_char_ex>:
  18:	60 33       	mov	r3,r0
  1a:	70 06       	add	#6,r0
  1c:	62 43       	mov	r4,r2
  1e:	c8 10       	tst	#16,r0
  20:	89 00       	bt	24 <s16_ps01178>
  22:	42 29       	shlr16	r2

00000024 <s16_ps01178>:
  24:	c8 08       	tst	#8,r0
  26:	89 00       	bt	2a <s8_ps01178>
  28:	42 19       	shlr8	r2

0000002a <s8_ps01178>:
  2a:	c8 04       	tst	#4,r0
  2c:	89 01       	bt	32 <s4_ps01178>
  2e:	42 09       	shlr2	r2
  30:	42 09       	shlr2	r2

00000032 <s4_ps01178>:
  32:	c8 02       	tst	#2,r0
  34:	89 00       	bt	38 <s2_ps01178>
  36:	42 09       	shlr2	r2

00000038 <s2_ps01178>:
  38:	c8 01       	tst	#1,r0
  3a:	89 00       	bt	3e <s1_ps01178>
  3c:	42 01       	shlr	r2

0000003e <s1_ps01178>:
  3e:	e1 07       	mov	#7,r1
  40:	22 19       	and	r1,r2
  42:	c4 fc       	mov.b	@(252,gbr),r0
  44:	42 08       	shll2	r2
  46:	c9 0f       	and	#15,r0
  48:	42 08       	shll2	r2
  4a:	20 2b       	or	r2,r0
  4c:	c0 fc       	mov.b	r0,@(252,gbr)
  4e:	60 33       	mov	r3,r0
  50:	c8 10       	tst	#16,r0
  52:	89 03       	bt	5c <ms16_ps01179>
  54:	44 29       	shlr16	r4
  56:	45 29       	shlr16	r5
  58:	46 29       	shlr16	r6
  5a:	47 29       	shlr16	r7

0000005c <ms16_ps01179>:
  5c:	c8 08       	tst	#8,r0
  5e:	89 03       	bt	68 <ms8_ps01179>
  60:	44 19       	shlr8	r4
  62:	45 19       	shlr8	r5
  64:	46 19       	shlr8	r6
  66:	47 19       	shlr8	r7

00000068 <ms8_ps01179>:
  68:	c8 04       	tst	#4,r0
  6a:	89 07       	bt	7c <ms4_ps01179>
  6c:	44 09       	shlr2	r4
  6e:	44 09       	shlr2	r4
  70:	45 09       	shlr2	r5
  72:	45 09       	shlr2	r5
  74:	46 09       	shlr2	r6
  76:	46 09       	shlr2	r6
  78:	47 09       	shlr2	r7
  7a:	47 09       	shlr2	r7

0000007c <ms4_ps01179>:
  7c:	c8 02       	tst	#2,r0
  7e:	89 03       	bt	88 <ms2_ps01179>
  80:	44 09       	shlr2	r4
  82:	45 09       	shlr2	r5
  84:	46 09       	shlr2	r6
  86:	47 09       	shlr2	r7

00000088 <ms2_ps01179>:
  88:	c8 01       	tst	#1,r0
  8a:	89 03       	bt	94 <ms1_ps01179>
  8c:	44 01       	shlr	r4
  8e:	45 01       	shlr	r5
  90:	46 01       	shlr	r6
  92:	47 01       	shlr	r7

00000094 <ms1_ps01179>:
  94:	e1 3f       	mov	#63,r1
  96:	24 19       	and	r1,r4
  98:	25 19       	and	r1,r5
  9a:	26 19       	and	r1,r6
  9c:	27 19       	and	r1,r7
  9e:	45 18       	shll8	r5
  a0:	24 5b       	or	r5,r4
  a2:	60 43       	mov	r4,r0
  a4:	c1 86       	mov.w	r0,@(268,gbr)
  a6:	47 18       	shll8	r7
  a8:	26 7b       	or	r7,r6
  aa:	60 63       	mov	r6,r0
  ac:	00 0b       	rts	
  ae:	c1 87       	mov.w	r0,@(270,gbr)

000000b0 <IMM_VDP2_PNB3>:
  b0:	80 00       	mov.b	r0,@(0,r0)
	...
