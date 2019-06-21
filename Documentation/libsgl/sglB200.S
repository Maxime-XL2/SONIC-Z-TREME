
sglB200.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCharRbg0>:
   0:	24 5b       	or	r5,r4
   2:	60 43       	mov	r4,r0
   4:	c0 ea       	mov.b	r0,@(234,gbr)
   6:	e1 14       	mov	#20,r1
   8:	a0 62       	bra	d0 <AdjustPNCN>
   a:	e2 38       	mov	#56,r2

0000000c <_slCharNbg0>:
   c:	24 5b       	or	r5,r4
   e:	60 43       	mov	r4,r0
  10:	c0 e9       	mov.b	r0,@(233,gbr)
  12:	e1 04       	mov	#4,r1
  14:	a0 5c       	bra	d0 <AdjustPNCN>
  16:	e2 30       	mov	#48,r2

00000018 <_slCharNbg1>:
  18:	24 5b       	or	r5,r4
  1a:	60 43       	mov	r4,r0
  1c:	c0 e8       	mov.b	r0,@(232,gbr)
  1e:	e1 08       	mov	#8,r1
  20:	a0 56       	bra	d0 <AdjustPNCN>
  22:	e2 32       	mov	#50,r2

00000024 <_slCharNbg2>:
  24:	c4 eb       	mov.b	@(235,gbr),r0
  26:	e1 f0       	mov	#-16,r1
  28:	20 19       	and	r1,r0
  2a:	44 09       	shlr2	r4
  2c:	44 01       	shlr	r4
  2e:	20 4b       	or	r4,r0
  30:	20 5b       	or	r5,r0
  32:	c0 eb       	mov.b	r0,@(235,gbr)
  34:	e1 0c       	mov	#12,r1
  36:	a0 4b       	bra	d0 <AdjustPNCN>
  38:	e2 34       	mov	#52,r2

0000003a <_slCharNbg3>:
  3a:	c4 eb       	mov.b	@(235,gbr),r0
  3c:	44 00       	shll	r4
  3e:	c9 0f       	and	#15,r0
  40:	45 08       	shll2	r5
  42:	45 08       	shll2	r5
  44:	24 5b       	or	r5,r4
  46:	20 4b       	or	r4,r0
  48:	c0 eb       	mov.b	r0,@(235,gbr)
  4a:	60 53       	mov	r5,r0
  4c:	e1 10       	mov	#16,r1
  4e:	a0 3f       	bra	d0 <AdjustPNCN>
  50:	e2 36       	mov	#54,r2

00000052 <_slPageRbg0>:
  52:	4f 22       	sts.l	pr,@-r15
  54:	d0 2e       	mov.l	110 <IMM_rbank_set>,r0	! 0 <_slCharRbg0>
  56:	2f 56       	mov.l	r5,@-r15
  58:	40 0b       	jsr	@r0
  5a:	e5 03       	mov	#3,r5
  5c:	65 f6       	mov.l	@r15+,r5
  5e:	4f 26       	lds.l	@r15+,pr
  60:	c4 ea       	mov.b	@(234,gbr),r0
  62:	e1 14       	mov	#20,r1
  64:	a0 11       	bra	8a <page_set_com>
  66:	e2 38       	mov	#56,r2

00000068 <_slPageNbg1>:
  68:	c4 e8       	mov.b	@(232,gbr),r0
  6a:	e1 08       	mov	#8,r1
  6c:	a0 0d       	bra	8a <page_set_com>
  6e:	e2 32       	mov	#50,r2

00000070 <_slPageNbg2>:
  70:	c4 eb       	mov.b	@(235,gbr),r0
  72:	e1 0c       	mov	#12,r1
  74:	a0 09       	bra	8a <page_set_com>
  76:	e2 34       	mov	#52,r2

00000078 <_slPageNbg3>:
  78:	c4 eb       	mov.b	@(235,gbr),r0
  7a:	e1 10       	mov	#16,r1
  7c:	40 09       	shlr2	r0
  7e:	40 09       	shlr2	r0
  80:	a0 03       	bra	8a <page_set_com>
  82:	e2 36       	mov	#54,r2

00000084 <_slPageNbg0>:
  84:	c4 e9       	mov.b	@(233,gbr),r0
  86:	e1 04       	mov	#4,r1
  88:	e2 30       	mov	#48,r2

0000008a <page_set_com>:
  8a:	63 03       	mov	r0,r3
  8c:	d0 1f       	mov.l	10c <IMM_SCROLL_PTR>,r0	! 60ffde0
  8e:	01 46       	mov.l	r4,@(r0,r1)
  90:	e0 01       	mov	#1,r0
  92:	23 08       	tst	r0,r3
  94:	8d 08       	bt.s	a8 <chnm_1x1>
  96:	e1 1f       	mov	#31,r1
  98:	63 43       	mov	r4,r3
  9a:	43 09       	shlr2	r3
  9c:	43 09       	shlr2	r3
  9e:	43 01       	shlr	r3
  a0:	e0 03       	mov	#3,r0
  a2:	20 39       	and	r3,r0
  a4:	26 0b       	or	r0,r6
  a6:	e1 1c       	mov	#28,r1

000000a8 <chnm_1x1>:
  a8:	44 00       	shll	r4
  aa:	44 29       	shlr16	r4
  ac:	21 49       	and	r4,r1
  ae:	21 6b       	or	r6,r1
  b0:	45 19       	shlr8	r5
  b2:	c5 67       	mov.w	@(206,gbr),r0
  b4:	40 19       	shlr8	r0
  b6:	c8 20       	tst	#32,r0
  b8:	8d 01       	bt.s	be <spsc_col_set>
  ba:	45 01       	shlr	r5
  bc:	45 01       	shlr	r5

000000be <spsc_col_set>:
  be:	e0 07       	mov	#7,r0
  c0:	25 09       	and	r0,r5
  c2:	45 00       	shll	r5
  c4:	45 08       	shll2	r5
  c6:	45 08       	shll2	r5
  c8:	21 5b       	or	r5,r1
  ca:	d0 0f       	mov.l	108 <IMM_CTRL_SCROLL>,r0	! 60ffcc0
  cc:	00 0b       	rts	
  ce:	02 15       	mov.w	r1,@(r0,r2)

000000d0 <AdjustPNCN>:
  d0:	d3 0d       	mov.l	108 <IMM_CTRL_SCROLL>,r3	! 60ffcc0
  d2:	c8 01       	tst	#1,r0
  d4:	8f 0b       	bf.s	ee <adpc_10>
  d6:	32 3c       	add	r3,r2
  d8:	d0 0c       	mov.l	10c <IMM_SCROLL_PTR>,r0	! 60ffde0
  da:	03 1e       	mov.l	@(r0,r1),r3
  dc:	e1 1f       	mov	#31,r1
  de:	84 21       	mov.b	@(1,r2),r0
  e0:	43 00       	shll	r3
  e2:	43 29       	shlr16	r3
  e4:	c9 e0       	and	#-32,r0
  e6:	21 39       	and	r3,r1
  e8:	20 1b       	or	r1,r0
  ea:	00 0b       	rts	
  ec:	80 21       	mov.b	r0,@(1,r2)

000000ee <adpc_10>:
  ee:	d0 07       	mov.l	10c <IMM_SCROLL_PTR>,r0	! 60ffde0
  f0:	03 1e       	mov.l	@(r0,r1),r3
  f2:	e1 03       	mov	#3,r1
  f4:	84 21       	mov.b	@(1,r2),r0
  f6:	43 09       	shlr2	r3
  f8:	43 09       	shlr2	r3
  fa:	43 01       	shlr	r3
  fc:	c9 fc       	and	#-4,r0
  fe:	21 39       	and	r3,r1
 100:	20 1b       	or	r1,r0
 102:	00 0b       	rts	
 104:	80 21       	mov.b	r0,@(1,r2)
	...

00000108 <IMM_CTRL_SCROLL>:
 108:	06 0f       	mac.l	@r0+,@r6+
 10a:	fc c0       	fadd	fr12,fr12

0000010c <IMM_SCROLL_PTR>:
 10c:	06 0f       	mac.l	@r0+,@r6+
 10e:	fd e0       	fadd	fr14,fr13

00000110 <IMM_rbank_set>:
 110:	00 00       	.word 0x0000
	...
