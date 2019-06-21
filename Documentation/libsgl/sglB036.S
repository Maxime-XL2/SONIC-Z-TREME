
sglB036.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_sl1MapRB>:
   0:	60 43       	mov	r4,r0
   2:	c2 84       	mov.l	r0,@(528,gbr)
   4:	d0 25       	mov.l	9c <IMM_rbank_set>,r0	! 0 <_sl1MapRB>
   6:	4f 22       	sts.l	pr,@-r15
   8:	40 0b       	jsr	@r0
   a:	e5 02       	mov	#2,r5
   c:	4f 26       	lds.l	@r15+,pr
   e:	e3 0b       	mov	#11,r3
  10:	c5 7c       	mov.w	@(248,gbr),r0
  12:	91 41       	mov.w	98 <IMM_VDP2_PNB4>,r1	! 8000
  14:	20 18       	tst	r1,r0
  16:	8b 00       	bf	1a <smsrb_word_ex>
  18:	73 01       	add	#1,r3

0000001a <smsrb_word_ex>:
  1a:	c5 75       	mov.w	@(234,gbr),r0
  1c:	40 19       	shlr8	r0
  1e:	c8 01       	tst	#1,r0
  20:	8b 00       	bf	24 <smsrb_char_ex>
  22:	73 02       	add	#2,r3

00000024 <smsrb_char_ex>:
  24:	60 33       	mov	r3,r0
  26:	70 06       	add	#6,r0
  28:	62 43       	mov	r4,r2
  2a:	c8 10       	tst	#16,r0
  2c:	89 00       	bt	30 <s16_ps01182>
  2e:	42 29       	shlr16	r2

00000030 <s16_ps01182>:
  30:	c8 08       	tst	#8,r0
  32:	89 00       	bt	36 <s8_ps01182>
  34:	42 19       	shlr8	r2

00000036 <s8_ps01182>:
  36:	c8 04       	tst	#4,r0
  38:	89 01       	bt	3e <s4_ps01182>
  3a:	42 09       	shlr2	r2
  3c:	42 09       	shlr2	r2

0000003e <s4_ps01182>:
  3e:	c8 02       	tst	#2,r0
  40:	89 00       	bt	44 <s2_ps01182>
  42:	42 09       	shlr2	r2

00000044 <s2_ps01182>:
  44:	c8 01       	tst	#1,r0
  46:	89 00       	bt	4a <s1_ps01182>
  48:	42 01       	shlr	r2

0000004a <s1_ps01182>:
  4a:	e1 07       	mov	#7,r1
  4c:	22 19       	and	r1,r2
  4e:	c4 ff       	mov.b	@(255,gbr),r0
  50:	42 08       	shll2	r2
  52:	c9 0f       	and	#15,r0
  54:	42 08       	shll2	r2
  56:	20 2b       	or	r2,r0
  58:	c0 ff       	mov.b	r0,@(255,gbr)
  5a:	60 33       	mov	r3,r0
  5c:	c8 10       	tst	#16,r0
  5e:	89 00       	bt	62 <s16_ps01183>
  60:	44 29       	shlr16	r4

00000062 <s16_ps01183>:
  62:	c8 08       	tst	#8,r0
  64:	89 00       	bt	68 <s8_ps01183>
  66:	44 19       	shlr8	r4

00000068 <s8_ps01183>:
  68:	c8 04       	tst	#4,r0
  6a:	89 01       	bt	70 <s4_ps01183>
  6c:	44 09       	shlr2	r4
  6e:	44 09       	shlr2	r4

00000070 <s4_ps01183>:
  70:	c8 02       	tst	#2,r0
  72:	89 00       	bt	76 <s2_ps01183>
  74:	44 09       	shlr2	r4

00000076 <s2_ps01183>:
  76:	c8 01       	tst	#1,r0
  78:	89 00       	bt	7c <s1_ps01183>
  7a:	44 01       	shlr	r4

0000007c <s1_ps01183>:
  7c:	e1 3f       	mov	#63,r1
  7e:	24 19       	and	r1,r4
  80:	60 43       	mov	r4,r0
  82:	40 18       	shll8	r0
  84:	20 4b       	or	r4,r0
  86:	c1 90       	mov.w	r0,@(288,gbr)
  88:	c1 91       	mov.w	r0,@(290,gbr)
  8a:	c1 92       	mov.w	r0,@(292,gbr)
  8c:	c1 93       	mov.w	r0,@(294,gbr)
  8e:	c1 94       	mov.w	r0,@(296,gbr)
  90:	c1 95       	mov.w	r0,@(298,gbr)
  92:	c1 96       	mov.w	r0,@(300,gbr)
  94:	00 0b       	rts	
  96:	c1 97       	mov.w	r0,@(302,gbr)

00000098 <IMM_VDP2_PNB4>:
  98:	80 00       	mov.b	r0,@(0,r0)
	...

0000009c <IMM_rbank_set>:
  9c:	00 00       	.word 0x0000
	...
