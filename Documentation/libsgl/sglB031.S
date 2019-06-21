
sglB031.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slMapNbg0>:
   0:	60 43       	mov	r4,r0
   2:	c2 7f       	mov.l	r0,@(508,gbr)
   4:	e3 0b       	mov	#11,r3
   6:	c5 78       	mov.w	@(240,gbr),r0
   8:	91 50       	mov.w	ac <IMM_VDP2_PNB>,r1	! 8000
   a:	20 18       	tst	r1,r0
   c:	8b 00       	bf	10 <smsn0_word_ex>
   e:	73 01       	add	#1,r3

00000010 <smsn0_word_ex>:
  10:	c5 74       	mov.w	@(232,gbr),r0
  12:	c8 01       	tst	#1,r0
  14:	8b 00       	bf	18 <smsn0_char_ex>
  16:	73 02       	add	#2,r3

00000018 <smsn0_char_ex>:
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
  42:	c4 fd       	mov.b	@(253,gbr),r0
  44:	c9 f0       	and	#-16,r0
  46:	20 2b       	or	r2,r0
  48:	c0 fd       	mov.b	r0,@(253,gbr)
  4a:	60 33       	mov	r3,r0
  4c:	c8 10       	tst	#16,r0
  4e:	89 03       	bt	58 <ms16_ps01179>
  50:	44 29       	shlr16	r4
  52:	45 29       	shlr16	r5
  54:	46 29       	shlr16	r6
  56:	47 29       	shlr16	r7

00000058 <ms16_ps01179>:
  58:	c8 08       	tst	#8,r0
  5a:	89 03       	bt	64 <ms8_ps01179>
  5c:	44 19       	shlr8	r4
  5e:	45 19       	shlr8	r5
  60:	46 19       	shlr8	r6
  62:	47 19       	shlr8	r7

00000064 <ms8_ps01179>:
  64:	c8 04       	tst	#4,r0
  66:	89 07       	bt	78 <ms4_ps01179>
  68:	44 09       	shlr2	r4
  6a:	44 09       	shlr2	r4
  6c:	45 09       	shlr2	r5
  6e:	45 09       	shlr2	r5
  70:	46 09       	shlr2	r6
  72:	46 09       	shlr2	r6
  74:	47 09       	shlr2	r7
  76:	47 09       	shlr2	r7

00000078 <ms4_ps01179>:
  78:	c8 02       	tst	#2,r0
  7a:	89 03       	bt	84 <ms2_ps01179>
  7c:	44 09       	shlr2	r4
  7e:	45 09       	shlr2	r5
  80:	46 09       	shlr2	r6
  82:	47 09       	shlr2	r7

00000084 <ms2_ps01179>:
  84:	c8 01       	tst	#1,r0
  86:	89 03       	bt	90 <ms1_ps01179>
  88:	44 01       	shlr	r4
  8a:	45 01       	shlr	r5
  8c:	46 01       	shlr	r6
  8e:	47 01       	shlr	r7

00000090 <ms1_ps01179>:
  90:	e1 3f       	mov	#63,r1
  92:	24 19       	and	r1,r4
  94:	25 19       	and	r1,r5
  96:	26 19       	and	r1,r6
  98:	27 19       	and	r1,r7
  9a:	45 18       	shll8	r5
  9c:	24 5b       	or	r5,r4
  9e:	60 43       	mov	r4,r0
  a0:	c1 80       	mov.w	r0,@(256,gbr)
  a2:	47 18       	shll8	r7
  a4:	26 7b       	or	r7,r6
  a6:	60 63       	mov	r6,r0
  a8:	00 0b       	rts	
  aa:	c1 81       	mov.w	r0,@(258,gbr)

000000ac <IMM_VDP2_PNB>:
  ac:	80 00       	mov.b	r0,@(0,r0)
	...
