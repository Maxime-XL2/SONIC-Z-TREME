
sglC19.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispSprite4P>:
   0:	d0 32       	mov.l	cc <IMM_SpriteEntry>,r0	! 0 <_slDispSprite4P>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	62 53       	mov	r5,r2
   8:	4f 26       	lds.l	@r15+,pr
   a:	c6 0c       	mov.l	@(48,gbr),r0
   c:	63 65       	mov.w	@r6+,r3
   e:	67 03       	mov	r0,r7
  10:	43 08       	shll2	r3
  12:	c6 0f       	mov.l	@(60,gbr),r0
  14:	43 00       	shll	r3
  16:	33 0c       	add	r0,r3
  18:	50 31       	mov.l	@(4,r3),r0
  1a:	61 65       	mov.w	@r6+,r1
  1c:	63 65       	mov.w	@r6+,r3
  1e:	17 02       	mov.l	r0,@(8,r7)
  20:	60 65       	mov.w	@r6+,r0
  22:	65 65       	mov.w	@r6+,r5
  24:	43 28       	shll16	r3
  26:	23 1d       	xtrct	r1,r3
  28:	17 31       	mov.l	r3,@(4,r7)
  2a:	22 0d       	xtrct	r0,r2
  2c:	17 27       	mov.l	r2,@(28,r7)
  2e:	27 51       	mov.w	r5,@r7
  30:	2f e6       	mov.l	r14,@-r15
  32:	2f d6       	mov.l	r13,@-r15
  34:	2f c6       	mov.l	r12,@-r15
  36:	2f b6       	mov.l	r11,@-r15
  38:	2f a6       	mov.l	r10,@-r15
  3a:	2f 96       	mov.l	r9,@-r15
  3c:	2f 86       	mov.l	r8,@-r15
  3e:	c6 26       	mov.l	@(152,gbr),r0
  40:	6c 03       	mov	r0,r12
  42:	6b 09       	swap.w	r0,r11
  44:	4b 28       	shll16	r11
  46:	c6 23       	mov.l	@(140,gbr),r0
  48:	4c 28       	shll16	r12
  4a:	6e 03       	mov	r0,r14
  4c:	4e 28       	shll16	r14
  4e:	40 29       	shlr16	r0
  50:	6d 09       	swap.w	r0,r13
  52:	62 46       	mov.l	@r4+,r2
  54:	65 46       	mov.l	@r4+,r5
  56:	60 23       	mov	r2,r0
  58:	30 bc       	add	r11,r0
  5a:	30 d6       	cmp/hi	r13,r0
  5c:	8d 2c       	bt.s	b8 <dsp4_09>
  5e:	60 53       	mov	r5,r0
  60:	30 cc       	add	r12,r0
  62:	30 e6       	cmp/hi	r14,r0
  64:	8d 28       	bt.s	b8 <dsp4_09>
  66:	62 29       	swap.w	r2,r2
  68:	25 2d       	xtrct	r2,r5
  6a:	62 46       	mov.l	@r4+,r2
  6c:	61 46       	mov.l	@r4+,r1
  6e:	60 23       	mov	r2,r0
  70:	30 bc       	add	r11,r0
  72:	30 d6       	cmp/hi	r13,r0
  74:	8d 20       	bt.s	b8 <dsp4_09>
  76:	60 13       	mov	r1,r0
  78:	30 cc       	add	r12,r0
  7a:	30 e6       	cmp/hi	r14,r0
  7c:	8d 1c       	bt.s	b8 <dsp4_09>
  7e:	62 29       	swap.w	r2,r2
  80:	21 2d       	xtrct	r2,r1
  82:	62 46       	mov.l	@r4+,r2
  84:	69 46       	mov.l	@r4+,r9
  86:	60 23       	mov	r2,r0
  88:	30 bc       	add	r11,r0
  8a:	30 d6       	cmp/hi	r13,r0
  8c:	8d 14       	bt.s	b8 <dsp4_09>
  8e:	60 93       	mov	r9,r0
  90:	30 cc       	add	r12,r0
  92:	30 e6       	cmp/hi	r14,r0
  94:	8d 10       	bt.s	b8 <dsp4_09>
  96:	62 29       	swap.w	r2,r2
  98:	29 2d       	xtrct	r2,r9
  9a:	62 46       	mov.l	@r4+,r2
  9c:	66 46       	mov.l	@r4+,r6
  9e:	60 23       	mov	r2,r0
  a0:	30 bc       	add	r11,r0
  a2:	30 d6       	cmp/hi	r13,r0
  a4:	8d 08       	bt.s	b8 <dsp4_09>
  a6:	60 63       	mov	r6,r0
  a8:	30 cc       	add	r12,r0
  aa:	30 e6       	cmp/hi	r14,r0
  ac:	8d 04       	bt.s	b8 <dsp4_09>
  ae:	62 29       	swap.w	r2,r2
  b0:	d0 07       	mov.l	d0 <IMM_SetSprPosition>,r0	! 0 <_slDispSprite4P>
  b2:	26 2d       	xtrct	r2,r6
  b4:	40 2b       	jmp	@r0
  b6:	00 09       	nop	

000000b8 <dsp4_09>:
  b8:	68 f6       	mov.l	@r15+,r8
  ba:	69 f6       	mov.l	@r15+,r9
  bc:	6a f6       	mov.l	@r15+,r10
  be:	6b f6       	mov.l	@r15+,r11
  c0:	6c f6       	mov.l	@r15+,r12
  c2:	6d f6       	mov.l	@r15+,r13
  c4:	6e f6       	mov.l	@r15+,r14
  c6:	00 0b       	rts	
  c8:	e0 00       	mov	#0,r0
	...

000000cc <IMM_SpriteEntry>:
  cc:	00 00       	.word 0x0000
	...

000000d0 <IMM_SetSprPosition>:
  d0:	00 00       	.word 0x0000
	...
