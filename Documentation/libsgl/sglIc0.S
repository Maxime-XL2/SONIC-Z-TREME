
sglIc0.o:     file format coff-sh


Disassembly of section .text:

00000000 <_slInitSystem>:
   0:	2f 86       	mov.l	r8,@-r15
   2:	2f 96       	mov.l	r9,@-r15
   4:	2f a6       	mov.l	r10,@-r15
   6:	2f b6       	mov.l	r11,@-r15
   8:	2f c6       	mov.l	r12,@-r15
   a:	2f d6       	mov.l	r13,@-r15
   c:	4f 22       	sts.l	pr,@-r15
   e:	68 43       	mov	r4,r8
  10:	6c 53       	mov	r5,r12
  12:	69 63       	mov	r6,r9
  14:	dd 30       	mov.l	d8 <_slInitSystem+0xd8>,r13	! 0 <_slInitSystem>
  16:	4d 0b       	jsr	@r13
  18:	e4 0f       	mov	#15,r4
  1a:	db 30       	mov.l	dc <_slInitSystem+0xdc>,r11	! 0 <_slInitSystem>
  1c:	e1 00       	mov	#0,r1
  1e:	2b 10       	mov.b	r1,@r11
  20:	d1 2f       	mov.l	e0 <_slInitSystem+0xe0>,r1	! 6000324
  22:	e3 1f       	mov	#31,r3
  24:	28 39       	and	r3,r8
  26:	60 83       	mov	r8,r0
  28:	40 09       	shlr2	r0
  2a:	61 12       	mov.l	@r1,r1
  2c:	c9 01       	and	#1,r0
  2e:	31 00       	cmp/eq	r0,r1
  30:	89 03       	bt	3a <_slInitSystem+0x3a>
  32:	d1 2c       	mov.l	e4 <_slInitSystem+0xe4>,r1	! 6000320
  34:	61 12       	mov.l	@r1,r1
  36:	41 0b       	jsr	@r1
  38:	64 03       	mov	r0,r4
  3a:	d1 2b       	mov.l	e8 <_slInitSystem+0xe8>,r1	! 0 <_slInitSystem>
  3c:	41 0b       	jsr	@r1
  3e:	00 09       	nop	
  40:	da 2a       	mov.l	ec <_slInitSystem+0xec>,r10	! 0 <_slInitSystem>
  42:	e5 00       	mov	#0,r5
  44:	4a 0b       	jsr	@r10
  46:	e4 0b       	mov	#11,r4
  48:	d1 29       	mov.l	f0 <_slInitSystem+0xf0>,r1	! 0 <_slInitSystem>
  4a:	41 0b       	jsr	@r1
  4c:	00 09       	nop	
  4e:	d1 29       	mov.l	f4 <_slInitSystem+0xf4>,r1	! 0 <_slInitSystem>
  50:	41 0b       	jsr	@r1
  52:	00 09       	nop	
  54:	d0 28       	mov.l	f8 <_slInitSystem+0xf8>,r0	! 0 <_slInitSystem>
  56:	40 0b       	jsr	@r0
  58:	64 83       	mov	r8,r4
  5a:	d1 28       	mov.l	fc <_slInitSystem+0xfc>,r1	! 0 <_slInitSystem>
  5c:	d3 28       	mov.l	100 <_slInitSystem+0x100>,r3	! 0 <_slInitSystem>
  5e:	21 32       	mov.l	r3,@r1
  60:	65 9e       	exts.b	r9,r5
  62:	d0 28       	mov.l	104 <_slInitSystem+0x104>,r0	! 0 <_slInitSystem>
  64:	40 0b       	jsr	@r0
  66:	64 83       	mov	r8,r4
  68:	d0 27       	mov.l	108 <_slInitSystem+0x108>,r0	! 0 <_slInitSystem>
  6a:	65 c3       	mov	r12,r5
  6c:	40 0b       	jsr	@r0
  6e:	64 83       	mov	r8,r4
  70:	d1 26       	mov.l	10c <_slInitSystem+0x10c>,r1	! 21000000
  72:	e3 ff       	mov	#-1,r3
  74:	21 31       	mov.w	r3,@r1
  76:	d1 26       	mov.l	110 <_slInitSystem+0x110>,r1	! 6000280
  78:	61 12       	mov.l	@r1,r1
  7a:	d4 26       	mov.l	114 <_slInitSystem+0x114>,r4	! 128 <_IntPrioMask>
  7c:	41 0b       	jsr	@r1
  7e:	00 09       	nop	
  80:	d1 25       	mov.l	118 <_slInitSystem+0x118>,r1	! 6000344
  82:	94 28       	mov.w	d6 <_slInitSystem+0xd6>,r4	! f17c
  84:	61 12       	mov.l	@r1,r1
  86:	41 0b       	jsr	@r1
  88:	e5 00       	mov	#0,r5
  8a:	d2 24       	mov.l	11c <_slInitSystem+0x11c>,r2	! 0 <_slInitSystem>
  8c:	e1 05       	mov	#5,r1
  8e:	22 10       	mov.b	r1,@r2
  90:	69 b0       	mov.b	@r11,r9
  92:	e1 7f       	mov	#127,r1
  94:	e4 00       	mov	#0,r4
  96:	21 99       	and	r9,r1
  98:	4d 0b       	jsr	@r13
  9a:	2b 10       	mov.b	r1,@r11
  9c:	d1 20       	mov.l	120 <_slInitSystem+0x120>,r1	! 0 <_slInitSystem>
  9e:	41 0b       	jsr	@r1
  a0:	00 09       	nop	
  a2:	e5 00       	mov	#0,r5
  a4:	4a 0b       	jsr	@r10
  a6:	e4 0d       	mov	#13,r4
  a8:	d8 1e       	mov.l	124 <_slInitSystem+0x124>,r8	! 0 <_slInitSystem>
  aa:	48 0b       	jsr	@r8
  ac:	00 09       	nop	
  ae:	e5 00       	mov	#0,r5
  b0:	4a 0b       	jsr	@r10
  b2:	e4 0e       	mov	#14,r4
  b4:	48 0b       	jsr	@r8
  b6:	00 09       	nop	
  b8:	48 0b       	jsr	@r8
  ba:	00 09       	nop	
  bc:	e1 80       	mov	#-128,r1
  be:	29 19       	and	r1,r9
  c0:	61 b0       	mov.b	@r11,r1
  c2:	21 9b       	or	r9,r1
  c4:	2b 10       	mov.b	r1,@r11
  c6:	4f 26       	lds.l	@r15+,pr
  c8:	6d f6       	mov.l	@r15+,r13
  ca:	6c f6       	mov.l	@r15+,r12
  cc:	6b f6       	mov.l	@r15+,r11
  ce:	6a f6       	mov.l	@r15+,r10
  d0:	69 f6       	mov.l	@r15+,r9
  d2:	00 0b       	rts	
  d4:	68 f6       	mov.l	@r15+,r8
  d6:	f1 7c       	fmov	fr7,fr1
	...
  e0:	06 00       	.word 0x0600
  e2:	03 24       	mov.b	r2,@(r0,r3)
  e4:	06 00       	.word 0x0600
  e6:	03 20       	.word 0x0320
	...
 10c:	21 00       	mov.b	r0,@r1
 10e:	00 00       	.word 0x0000
 110:	06 00       	.word 0x0600
 112:	02 80       	.word 0x0280
 114:	00 00       	.word 0x0000
 116:	01 28       	.word 0x0128
 118:	06 00       	.word 0x0600
 11a:	03 44       	mov.b	r4,@(r0,r3)
	...
