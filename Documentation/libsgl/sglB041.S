
sglB041.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slKtableRB>:
   0:	c5 ba       	mov.w	@(372,gbr),r0
   2:	62 53       	mov	r5,r2
   4:	42 18       	shll8	r2
   6:	c9 ff       	and	#-1,r0
   8:	20 2b       	or	r2,r0
   a:	c1 ba       	mov.w	r0,@(372,gbr)
   c:	d1 10       	mov.l	50 <IMM_LABEL0>,r1	! 60ffee8
   e:	21 51       	mov.w	r5,@r1
  10:	d1 10       	mov.l	54 <IMM_LABEL1>,r1	! 60ffee4
  12:	21 42       	mov.l	r4,@r1
  14:	c5 bb       	mov.w	@(374,gbr),r0
  16:	62 43       	mov	r4,r2
  18:	e1 02       	mov	#2,r1
  1a:	c9 ff       	and	#-1,r0
  1c:	25 18       	tst	r1,r5
  1e:	8f 01       	bf.s	24 <skb_1w>
  20:	42 01       	shlr	r2
  22:	42 01       	shlr	r2

00000024 <skb_1w>:
  24:	42 29       	shlr16	r2
  26:	e3 07       	mov	#7,r3
  28:	22 39       	and	r3,r2
  2a:	42 18       	shll8	r2
  2c:	20 2b       	or	r2,r0
  2e:	c1 bb       	mov.w	r0,@(374,gbr)
  30:	62 43       	mov	r4,r2
  32:	25 18       	tst	r1,r5
  34:	8f 01       	bf.s	3a <skba_1w>
  36:	42 01       	shlr	r2
  38:	42 01       	shlr	r2

0000003a <skba_1w>:
  3a:	42 28       	shll16	r2
  3c:	60 23       	mov	r2,r0
  3e:	c2 b6       	mov.l	r0,@(728,gbr)
  40:	e0 20       	mov	#32,r0
  42:	25 08       	tst	r0,r5
  44:	89 02       	bt	4c <skb_dot_ps>
  46:	d1 04       	mov.l	58 <IMM_rbank_set>,r1	! 0 <_slKtableRB>
  48:	41 2b       	jmp	@r1
  4a:	e5 01       	mov	#1,r5

0000004c <skb_dot_ps>:
  4c:	00 0b       	rts	
  4e:	00 09       	nop	

00000050 <IMM_LABEL0>:
  50:	06 0f       	mac.l	@r0+,@r6+
  52:	fe e8       	fmov	@r14,fr14

00000054 <IMM_LABEL1>:
  54:	06 0f       	mac.l	@r0+,@r6+
  56:	fe e4       	fcmp/eq	fr14,fr14

00000058 <IMM_rbank_set>:
  58:	00 00       	.word 0x0000
	...
