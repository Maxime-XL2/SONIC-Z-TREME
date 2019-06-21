
sglB040.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slKtableRA>:
   0:	c5 ba       	mov.w	@(372,gbr),r0
   2:	40 19       	shlr8	r0
   4:	40 18       	shll8	r0
   6:	20 5b       	or	r5,r0
   8:	c1 ba       	mov.w	r0,@(372,gbr)
   a:	d1 11       	mov.l	50 <IMM_LABEL0>,r1	! 60ffe80
   c:	21 51       	mov.w	r5,@r1
   e:	60 43       	mov	r4,r0
  10:	c2 9f       	mov.l	r0,@(636,gbr)
  12:	c5 bb       	mov.w	@(374,gbr),r0
  14:	62 43       	mov	r4,r2
  16:	e1 02       	mov	#2,r1
  18:	40 19       	shlr8	r0
  1a:	40 18       	shll8	r0
  1c:	25 18       	tst	r1,r5
  1e:	8f 01       	bf.s	24 <ska_1w>
  20:	42 01       	shlr	r2
  22:	42 01       	shlr	r2

00000024 <ska_1w>:
  24:	42 29       	shlr16	r2
  26:	e3 07       	mov	#7,r3
  28:	22 39       	and	r3,r2
  2a:	20 2b       	or	r2,r0
  2c:	c1 bb       	mov.w	r0,@(374,gbr)
  2e:	62 43       	mov	r4,r2
  30:	25 18       	tst	r1,r5
  32:	8f 01       	bf.s	38 <skaa_1w>
  34:	42 01       	shlr	r2
  36:	42 01       	shlr	r2

00000038 <skaa_1w>:
  38:	42 28       	shll16	r2
  3a:	60 23       	mov	r2,r0
  3c:	c2 9c       	mov.l	r0,@(624,gbr)
  3e:	e0 20       	mov	#32,r0
  40:	25 08       	tst	r0,r5
  42:	89 02       	bt	4a <ska_dot_ps>
  44:	d1 03       	mov.l	54 <IMM_rbank_set>,r1	! 0 <_slKtableRA>
  46:	41 2b       	jmp	@r1
  48:	e5 01       	mov	#1,r5

0000004a <ska_dot_ps>:
  4a:	00 0b       	rts	
  4c:	00 09       	nop	
	...

00000050 <IMM_LABEL0>:
  50:	06 0f       	mac.l	@r0+,@r6+
  52:	fe 80       	fadd	fr8,fr14

00000054 <IMM_rbank_set>:
  54:	00 00       	.word 0x0000
	...
