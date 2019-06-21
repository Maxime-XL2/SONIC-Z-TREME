
sglB032.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slMapNbg1>:
   0:	60 43       	mov	r4,r0
   2:	c2 80       	mov.l	r0,@(512,gbr)
   4:	e3 0b       	mov	#11,r3
   6:	c5 79       	mov.w	@(242,gbr),r0
   8:	91 53       	mov.w	b2 <IMM_VDP2_PNB2>,r1	! 8000
   a:	20 18       	tst	r1,r0
   c:	8b 00       	bf	10 <smsn1_word_ex>
   e:	73 01       	add	#1,r3

00000010 <smsn1_word_ex>:
  10:	c5 74       	mov.w	@(232,gbr),r0
  12:	40 19       	shlr8	r0
  14:	c8 01       	tst	#1,r0
  16:	8b 00       	bf	1a <smsn1_char_ex>
  18:	73 02       	add	#2,r3

0000001a <smsn1_char_ex>:
  1a:	60 33       	mov	r3,r0
  1c:	70 06       	add	#6,r0
  1e:	62 43       	mov	r4,r2
  20:	c8 10       	tst	#16,r0
  22:	89 00       	bt	26 <s16_ps01178>
  24:	42 29       	shlr16	r2

00000026 <s16_ps01178>:
  26:	c8 08       	tst	#8,r0
  28:	89 00       	bt	2c <s8_ps01178>
  2a:	42 19       	shlr8	r2

0000002c <s8_ps01178>:
  2c:	c8 04       	tst	#4,r0
  2e:	89 01       	bt	34 <s4_ps01178>
  30:	42 09       	shlr2	r2
  32:	42 09       	shlr2	r2

00000034 <s4_ps01178>:
  34:	c8 02       	tst	#2,r0
  36:	89 00       	bt	3a <s2_ps01178>
  38:	42 09       	shlr2	r2

0000003a <s2_ps01178>:
  3a:	c8 01       	tst	#1,r0
  3c:	89 00       	bt	40 <s1_ps01178>
  3e:	42 01       	shlr	r2

00000040 <s1_ps01178>:
  40:	e1 07       	mov	#7,r1
  42:	22 19       	and	r1,r2
  44:	c4 fd       	mov.b	@(253,gbr),r0
  46:	42 08       	shll2	r2
  48:	c9 0f       	and	#15,r0
  4a:	42 08       	shll2	r2
  4c:	20 2b       	or	r2,r0
  4e:	c0 fd       	mov.b	r0,@(253,gbr)
  50:	60 33       	mov	r3,r0
  52:	c8 10       	tst	#16,r0
  54:	89 03       	bt	5e <ms16_ps01179>
  56:	44 29       	shlr16	r4
  58:	45 29       	shlr16	r5
  5a:	46 29       	shlr16	r6
  5c:	47 29       	shlr16	r7

0000005e <ms16_ps01179>:
  5e:	c8 08       	tst	#8,r0
  60:	89 03       	bt	6a <ms8_ps01179>
  62:	44 19       	shlr8	r4
  64:	45 19       	shlr8	r5
  66:	46 19       	shlr8	r6
  68:	47 19       	shlr8	r7

0000006a <ms8_ps01179>:
  6a:	c8 04       	tst	#4,r0
  6c:	89 07       	bt	7e <ms4_ps01179>
  6e:	44 09       	shlr2	r4
  70:	44 09       	shlr2	r4
  72:	45 09       	shlr2	r5
  74:	45 09       	shlr2	r5
  76:	46 09       	shlr2	r6
  78:	46 09       	shlr2	r6
  7a:	47 09       	shlr2	r7
  7c:	47 09       	shlr2	r7

0000007e <ms4_ps01179>:
  7e:	c8 02       	tst	#2,r0
  80:	89 03       	bt	8a <ms2_ps01179>
  82:	44 09       	shlr2	r4
  84:	45 09       	shlr2	r5
  86:	46 09       	shlr2	r6
  88:	47 09       	shlr2	r7

0000008a <ms2_ps01179>:
  8a:	c8 01       	tst	#1,r0
  8c:	89 03       	bt	96 <ms1_ps01179>
  8e:	44 01       	shlr	r4
  90:	45 01       	shlr	r5
  92:	46 01       	shlr	r6
  94:	47 01       	shlr	r7

00000096 <ms1_ps01179>:
  96:	e1 3f       	mov	#63,r1
  98:	24 19       	and	r1,r4
  9a:	25 19       	and	r1,r5
  9c:	26 19       	and	r1,r6
  9e:	27 19       	and	r1,r7
  a0:	45 18       	shll8	r5
  a2:	24 5b       	or	r5,r4
  a4:	60 43       	mov	r4,r0
  a6:	c1 82       	mov.w	r0,@(260,gbr)
  a8:	47 18       	shll8	r7
  aa:	26 7b       	or	r7,r6
  ac:	60 63       	mov	r6,r0
  ae:	00 0b       	rts	
  b0:	c1 83       	mov.w	r0,@(262,gbr)

000000b2 <IMM_VDP2_PNB2>:
  b2:	80 00       	mov.b	r0,@(0,r0)
