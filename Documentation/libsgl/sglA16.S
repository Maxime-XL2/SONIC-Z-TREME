
sglA16.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLookAt>:
   0:	2f 86       	mov.l	r8,@-r15
   2:	2f b6       	mov.l	r11,@-r15
   4:	2f a6       	mov.l	r10,@-r15
   6:	2f 96       	mov.l	r9,@-r15
   8:	4f 22       	sts.l	pr,@-r15
   a:	68 43       	mov	r4,r8
   c:	d0 2b       	mov.l	bc <IMM_slRotZ>,r0	! 0 <_slLookAt>
   e:	69 53       	mov	r5,r9
  10:	40 0b       	jsr	@r0
  12:	64 63       	mov	r6,r4
  14:	5a 80       	mov.l	@(0,r8),r10
  16:	50 90       	mov.l	@(0,r9),r0
  18:	3a 08       	sub	r0,r10
  1a:	3a ad       	dmuls.l	r10,r10
  1c:	52 82       	mov.l	@(8,r8),r2
  1e:	5b 92       	mov.l	@(8,r9),r11
  20:	00 0a       	sts	mach,r0
  22:	3b 28       	sub	r2,r11
  24:	01 1a       	sts	macl,r1
  26:	3b bd       	dmuls.l	r11,r11
  28:	00 08       	clrt	
  2a:	07 1a       	sts	macl,r7
  2c:	06 0a       	sts	mach,r6
  2e:	37 1e       	addc	r1,r7
  30:	59 91       	mov.l	@(4,r9),r9
  32:	36 0e       	addc	r0,r6
  34:	50 81       	mov.l	@(4,r8),r0
  36:	39 08       	sub	r0,r9
  38:	39 9d       	dmuls.l	r9,r9
  3a:	00 08       	clrt	
  3c:	05 1a       	sts	macl,r5
  3e:	04 0a       	sts	mach,r4
  40:	d2 1f       	mov.l	c0 <IMM_slSquartDbl>,r2	! 0 <_slLookAt>
  42:	35 7e       	addc	r7,r5
  44:	42 0b       	jsr	@r2
  46:	34 6e       	addc	r6,r4
  48:	61 93       	mov	r9,r1
  4a:	e9 ff       	mov	#-1,r9
  4c:	49 18       	shll8	r9
  4e:	19 00       	mov.l	r0,@(0,r9)
  50:	62 19       	swap.w	r1,r2
  52:	62 2f       	exts.w	r2,r2
  54:	19 24       	mov.l	r2,@(16,r9)
  56:	41 28       	shll16	r1
  58:	19 15       	mov.l	r1,@(20,r9)
  5a:	64 63       	mov	r6,r4
  5c:	d2 18       	mov.l	c0 <IMM_slSquartDbl>,r2	! 0 <_slLookAt>
  5e:	66 03       	mov	r0,r6
  60:	42 0b       	jsr	@r2
  62:	65 73       	mov	r7,r5
  64:	67 03       	mov	r0,r7
  66:	54 97       	mov.l	@(28,r9),r4
  68:	19 60       	mov.l	r6,@(0,r9)
  6a:	62 09       	swap.w	r0,r2
  6c:	62 2f       	exts.w	r2,r2
  6e:	19 24       	mov.l	r2,@(16,r9)
  70:	40 28       	shll16	r0
  72:	19 05       	mov.l	r0,@(20,r9)
  74:	2f 76       	mov.l	r7,@-r15
  76:	55 97       	mov.l	@(28,r9),r5
  78:	d0 12       	mov.l	c4 <IMM_slRotXSC>,r0	! 0 <_slLookAt>
  7a:	19 70       	mov.l	r7,@(0,r9)
  7c:	62 a9       	swap.w	r10,r2
  7e:	62 2f       	exts.w	r2,r2
  80:	19 24       	mov.l	r2,@(16,r9)
  82:	4a 28       	shll16	r10
  84:	19 a5       	mov.l	r10,@(20,r9)
  86:	40 0b       	jsr	@r0
  88:	00 09       	nop	
  8a:	60 f6       	mov.l	@r15+,r0
  8c:	54 97       	mov.l	@(28,r9),r4
  8e:	d1 0e       	mov.l	c8 <IMM_slRotYSC>,r1	! 0 <_slLookAt>
  90:	19 00       	mov.l	r0,@(0,r9)
  92:	62 b9       	swap.w	r11,r2
  94:	62 2f       	exts.w	r2,r2
  96:	19 24       	mov.l	r2,@(16,r9)
  98:	4b 28       	shll16	r11
  9a:	19 b5       	mov.l	r11,@(20,r9)
  9c:	41 0b       	jsr	@r1
  9e:	55 97       	mov.l	@(28,r9),r5
  a0:	56 82       	mov.l	@(8,r8),r6
  a2:	55 81       	mov.l	@(4,r8),r5
  a4:	66 6b       	neg	r6,r6
  a6:	54 80       	mov.l	@(0,r8),r4
  a8:	d0 08       	mov.l	cc <IMM_slTranslate>,r0	! 0 <_slLookAt>
  aa:	65 5b       	neg	r5,r5
  ac:	40 0b       	jsr	@r0
  ae:	64 4b       	neg	r4,r4
  b0:	4f 26       	lds.l	@r15+,pr
  b2:	69 f6       	mov.l	@r15+,r9
  b4:	6a f6       	mov.l	@r15+,r10
  b6:	6b f6       	mov.l	@r15+,r11
  b8:	00 0b       	rts	
  ba:	68 f6       	mov.l	@r15+,r8

000000bc <IMM_slRotZ>:
  bc:	00 00       	.word 0x0000
	...

000000c0 <IMM_slSquartDbl>:
  c0:	00 00       	.word 0x0000
	...

000000c4 <IMM_slRotXSC>:
  c4:	00 00       	.word 0x0000
	...

000000c8 <IMM_slRotYSC>:
  c8:	00 00       	.word 0x0000
	...

000000cc <IMM_slTranslate>:
  cc:	00 00       	.word 0x0000
	...
