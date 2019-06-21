
sglA09.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRotAX>:
   0:	2f 86       	mov.l	r8,@-r15
   2:	2f 96       	mov.l	r9,@-r15
   4:	4f 22       	sts.l	pr,@-r15
   6:	7f d0       	add	#-48,r15
   8:	d0 2c       	mov.l	bc <IMM_GetSinCos>,r0	! 0 <_slRotAX>
   a:	68 43       	mov	r4,r8
   c:	69 53       	mov	r5,r9
   e:	40 0b       	jsr	@r0
  10:	64 73       	mov	r7,r4
  12:	e7 01       	mov	#1,r7
  14:	47 28       	shll16	r7
  16:	37 58       	sub	r5,r7
  18:	37 8d       	dmuls.l	r8,r7
  1a:	02 0a       	sts	mach,r2
  1c:	03 1a       	sts	macl,r3
  1e:	23 2d       	xtrct	r2,r3
  20:	33 8d       	dmuls.l	r8,r3
  22:	00 0a       	sts	mach,r0
  24:	01 1a       	sts	macl,r1
  26:	33 9d       	dmuls.l	r9,r3
  28:	21 0d       	xtrct	r0,r1
  2a:	31 5c       	add	r5,r1
  2c:	1f 10       	mov.l	r1,@(0,r15)
  2e:	00 0a       	sts	mach,r0
  30:	01 1a       	sts	macl,r1
  32:	34 6d       	dmuls.l	r6,r4
  34:	21 0d       	xtrct	r0,r1
  36:	02 0a       	sts	mach,r2
  38:	00 1a       	sts	macl,r0
  3a:	33 6d       	dmuls.l	r6,r3
  3c:	20 2d       	xtrct	r2,r0
  3e:	31 0c       	add	r0,r1
  40:	03 0a       	sts	mach,r3
  42:	02 1a       	sts	macl,r2
  44:	34 9d       	dmuls.l	r9,r4
  46:	22 3d       	xtrct	r3,r2
  48:	1f 11       	mov.l	r1,@(4,r15)
  4a:	31 08       	sub	r0,r1
  4c:	31 08       	sub	r0,r1
  4e:	1f 13       	mov.l	r1,@(12,r15)
  50:	01 0a       	sts	mach,r1
  52:	00 1a       	sts	macl,r0
  54:	37 9d       	dmuls.l	r9,r7
  56:	20 1d       	xtrct	r1,r0
  58:	32 0c       	add	r0,r2
  5a:	1f 26       	mov.l	r2,@(24,r15)
  5c:	01 0a       	sts	mach,r1
  5e:	03 1a       	sts	macl,r3
  60:	32 08       	sub	r0,r2
  62:	23 1d       	xtrct	r1,r3
  64:	33 9d       	dmuls.l	r9,r3
  66:	32 08       	sub	r0,r2
  68:	1f 22       	mov.l	r2,@(8,r15)
  6a:	00 0a       	sts	mach,r0
  6c:	01 1a       	sts	macl,r1
  6e:	33 6d       	dmuls.l	r6,r3
  70:	21 0d       	xtrct	r0,r1
  72:	31 5c       	add	r5,r1
  74:	1f 14       	mov.l	r1,@(16,r15)
  76:	00 0a       	sts	mach,r0
  78:	01 1a       	sts	macl,r1
  7a:	34 8d       	dmuls.l	r8,r4
  7c:	21 0d       	xtrct	r0,r1
  7e:	02 0a       	sts	mach,r2
  80:	00 1a       	sts	macl,r0
  82:	36 6d       	dmuls.l	r6,r6
  84:	20 2d       	xtrct	r2,r0
  86:	31 0c       	add	r0,r1
  88:	1f 15       	mov.l	r1,@(20,r15)
  8a:	02 0a       	sts	mach,r2
  8c:	03 1a       	sts	macl,r3
  8e:	31 08       	sub	r0,r1
  90:	23 2d       	xtrct	r2,r3
  92:	33 7d       	dmuls.l	r7,r3
  94:	31 08       	sub	r0,r1
  96:	1f 17       	mov.l	r1,@(28,r15)
  98:	02 0a       	sts	mach,r2
  9a:	03 1a       	sts	macl,r3
  9c:	e0 00       	mov	#0,r0
  9e:	23 2d       	xtrct	r2,r3
  a0:	33 5c       	add	r5,r3
  a2:	1f 38       	mov.l	r3,@(32,r15)
  a4:	d1 06       	mov.l	c0 <IMM_slMultiMatrix>,r1	! 0 <_slRotAX>
  a6:	1f 09       	mov.l	r0,@(36,r15)
  a8:	1f 0a       	mov.l	r0,@(40,r15)
  aa:	1f 0b       	mov.l	r0,@(44,r15)
  ac:	41 0b       	jsr	@r1
  ae:	64 f3       	mov	r15,r4
  b0:	7f 30       	add	#48,r15
  b2:	4f 26       	lds.l	@r15+,pr
  b4:	69 f6       	mov.l	@r15+,r9
  b6:	00 0b       	rts	
  b8:	68 f6       	mov.l	@r15+,r8
	...

000000bc <IMM_GetSinCos>:
  bc:	00 00       	.word 0x0000
	...

000000c0 <IMM_slMultiMatrix>:
  c0:	00 00       	.word 0x0000
	...
