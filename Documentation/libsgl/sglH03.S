
sglH03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SLPROG>:
   0:	d2 33       	mov.l	d0 <IMM_SMPC_REG_OREG>,r2	! 20100021
   2:	d3 36       	mov.l	dc <IMM_SmpcStatusBuf>,r3	! 0 <SLPROG>
   4:	60 20       	mov.b	@r2,r0
   6:	72 02       	add	#2,r2
   8:	23 00       	mov.b	r0,@r3
   a:	73 04       	add	#4,r3
   c:	e1 07       	mov	#7,r1

0000000e <_slGetSmpcStatus_10>:
   e:	60 20       	mov.b	@r2,r0
  10:	72 02       	add	#2,r2
  12:	23 00       	mov.b	r0,@r3
  14:	73 01       	add	#1,r3
  16:	41 10       	dt	r1
  18:	8b f9       	bf	e <_slGetSmpcStatus_10>
  1a:	73 01       	add	#1,r3
  1c:	e1 04       	mov	#4,r1

0000001e <_slGetSmpcStatus_20>:
  1e:	60 20       	mov.b	@r2,r0
  20:	72 02       	add	#2,r2
  22:	23 00       	mov.b	r0,@r3
  24:	73 01       	add	#1,r3
  26:	41 10       	dt	r1
  28:	8b f9       	bf	1e <_slGetSmpcStatus_20>
  2a:	e1 04       	mov	#4,r1

0000002c <_slGetSmpcStatus_30>:
  2c:	60 20       	mov.b	@r2,r0
  2e:	72 02       	add	#2,r2
  30:	23 00       	mov.b	r0,@r3
  32:	73 01       	add	#1,r3
  34:	41 10       	dt	r1
  36:	8b f9       	bf	2c <_slGetSmpcStatus_30>
  38:	00 0b       	rts	
  3a:	00 09       	nop	

0000003c <_slGetSmpcResult>:
  3c:	2f 46       	mov.l	r4,@-r15
  3e:	d2 28       	mov.l	e0 <IMM_SmpcResOffset>,r2	! 60fff98
  40:	d1 24       	mov.l	d4 <IMM_SMPC_RESULT_SIZE>,r1	! 200
  42:	60 22       	mov.l	@r2,r0
  44:	d3 24       	mov.l	d8 <IMM_Smpc_Result>,r3	! 0 <SLPROG>
  46:	30 12       	cmp/hs	r1,r0
  48:	89 09       	bt	5e <_slGetSmpcResult_20>
  4a:	63 32       	mov.l	@r3,r3
  4c:	d2 20       	mov.l	d0 <IMM_SMPC_REG_OREG>,r2	! 20100021
  4e:	e1 20       	mov	#32,r1

00000050 <_slGetSmpcResult_10>:
  50:	64 20       	mov.b	@r2,r4
  52:	72 02       	add	#2,r2
  54:	03 44       	mov.b	r4,@(r0,r3)
  56:	70 01       	add	#1,r0
  58:	41 10       	dt	r1
  5a:	8b f9       	bf	50 <_slGetSmpcResult_10>
  5c:	d2 20       	mov.l	e0 <IMM_SmpcResOffset>,r2	! 60fff98

0000005e <_slGetSmpcResult_20>:
  5e:	64 f6       	mov.l	@r15+,r4
  60:	00 0b       	rts	
  62:	22 02       	mov.l	r0,@r2

00000064 <_slSmpcIntBack>:
  64:	2f 06       	mov.l	r0,@-r15
  66:	2f 46       	mov.l	r4,@-r15
  68:	2f 36       	mov.l	r3,@-r15
  6a:	2f 26       	mov.l	r2,@-r15
  6c:	2f 16       	mov.l	r1,@-r15
  6e:	4f 22       	sts.l	pr,@-r15
  70:	4f 02       	sts.l	mach,@-r15
  72:	d2 15       	mov.l	c8 <IMM_SMPC_REG_sr>,r2	! 20100061
  74:	4f 12       	sts.l	macl,@-r15
  76:	60 20       	mov.b	@r2,r0
  78:	c8 80       	tst	#-128,r0
  7a:	8f 04       	bf.s	86 <_slSmpcIntBack_10>
  7c:	64 03       	mov	r0,r4
  7e:	bf bf       	bsr	0 <SLPROG>
  80:	00 09       	nop	
  82:	a0 02       	bra	8a <_slSmpcIntBack_20>
  84:	00 09       	nop	

00000086 <_slSmpcIntBack_10>:
  86:	bf d9       	bsr	3c <_slGetSmpcResult>
  88:	00 09       	nop	

0000008a <_slSmpcIntBack_20>:
  8a:	d1 17       	mov.l	e8 <IMM_SmpcPerControl>,r1	! 60fffbe
  8c:	60 43       	mov	r4,r0
  8e:	d2 17       	mov.l	ec <IMM_SmpcPerCommand>,r2	! 60fffbf
  90:	21 00       	mov.b	r0,@r1
  92:	d3 0e       	mov.l	cc <IMM_SMPC_REG_IREG>,r3	! 20100001
  94:	c8 20       	tst	#32,r0
  96:	89 05       	bt	a4 <_slSmpcIntBack_30>
  98:	60 20       	mov.b	@r2,r0
  9a:	ca 80       	xor	#-128,r0
  9c:	22 00       	mov.b	r0,@r2
  9e:	80 30       	mov.b	r0,@(0,r3)
  a0:	a0 08       	bra	b4 <_slSmpcIntBack_90>
  a2:	00 09       	nop	

000000a4 <_slSmpcIntBack_30>:
  a4:	d3 0f       	mov.l	e4 <IMM_SmpcChangeFlag>,r3	! 60fffb9
  a6:	c8 80       	tst	#-128,r0
  a8:	8d 04       	bt.s	b4 <_slSmpcIntBack_90>
  aa:	43 1b       	tas.b	@r3
  ac:	60 20       	mov.b	@r2,r0
  ae:	cb 40       	or	#64,r0
  b0:	22 00       	mov.b	r0,@r2
  b2:	80 30       	mov.b	r0,@(0,r3)

000000b4 <_slSmpcIntBack_90>:
  b4:	4f 16       	lds.l	@r15+,macl
  b6:	4f 06       	lds.l	@r15+,mach
  b8:	4f 26       	lds.l	@r15+,pr
  ba:	61 f6       	mov.l	@r15+,r1
  bc:	62 f6       	mov.l	@r15+,r2
  be:	63 f6       	mov.l	@r15+,r3
  c0:	64 f6       	mov.l	@r15+,r4
  c2:	00 0b       	rts	
  c4:	60 f6       	mov.l	@r15+,r0
	...

000000c8 <IMM_SMPC_REG_sr>:
  c8:	20 10       	mov.b	r1,@r0
  ca:	00 61       	.word 0x0061

000000cc <IMM_SMPC_REG_IREG>:
  cc:	20 10       	mov.b	r1,@r0
  ce:	00 01       	.word 0x0001

000000d0 <IMM_SMPC_REG_OREG>:
  d0:	20 10       	mov.b	r1,@r0
  d2:	00 21       	.word 0x0021

000000d4 <IMM_SMPC_RESULT_SIZE>:
  d4:	00 00       	.word 0x0000
  d6:	02 00       	.word 0x0200

000000d8 <IMM_Smpc_Result>:
  d8:	00 00       	.word 0x0000
	...

000000dc <IMM_SmpcStatusBuf>:
  dc:	00 00       	.word 0x0000
	...

000000e0 <IMM_SmpcResOffset>:
  e0:	06 0f       	mac.l	@r0+,@r6+
  e2:	ff 98       	fmov	@r9,fr15

000000e4 <IMM_SmpcChangeFlag>:
  e4:	06 0f       	mac.l	@r0+,@r6+
  e6:	ff b9       	fmov	@r11+,fr15

000000e8 <IMM_SmpcPerControl>:
  e8:	06 0f       	mac.l	@r0+,@r6+
  ea:	ff be       	fmac	fr0,fr11,fr15

000000ec <IMM_SmpcPerCommand>:
  ec:	06 0f       	mac.l	@r0+,@r6+
  ee:	ff bf       	.word 0xffbf
