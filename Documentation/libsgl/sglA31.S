
sglA31.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRegistTranslate>:
   0:	2f 66       	mov.l	r6,@-r15
   2:	d6 19       	mov.l	68 <IMM_RegMatrix>,r6	! 0 <_slRegistTranslate>
   4:	2f 56       	mov.l	r5,@-r15
   6:	c6 07       	mov.l	@(28,gbr),r0
   8:	67 66       	mov.l	@r6+,r7
   a:	51 60       	mov.l	@(0,r6),r1
   c:	52 61       	mov.l	@(4,r6),r2
   e:	37 4d       	dmuls.l	r4,r7
  10:	65 f3       	mov	r15,r5
  12:	10 70       	mov.l	r7,@(0,r0)
  14:	06 5f       	mac.l	@r5+,@r6+
  16:	10 11       	mov.l	r1,@(4,r0)
  18:	10 22       	mov.l	r2,@(8,r0)
  1a:	06 5f       	mac.l	@r5+,@r6+
  1c:	61 66       	mov.l	@r6+,r1
  1e:	67 66       	mov.l	@r6+,r7
  20:	65 f3       	mov	r15,r5
  22:	02 0a       	sts	mach,r2
  24:	03 1a       	sts	macl,r3
  26:	37 4d       	dmuls.l	r4,r7
  28:	23 2d       	xtrct	r2,r3
  2a:	33 1c       	add	r1,r3
  2c:	61 62       	mov.l	@r6,r1
  2e:	06 5f       	mac.l	@r5+,@r6+
  30:	62 62       	mov.l	@r6,r2
  32:	10 33       	mov.l	r3,@(12,r0)
  34:	06 5f       	mac.l	@r5+,@r6+
  36:	10 74       	mov.l	r7,@(16,r0)
  38:	10 15       	mov.l	r1,@(20,r0)
  3a:	10 26       	mov.l	r2,@(24,r0)
  3c:	02 0a       	sts	mach,r2
  3e:	03 1a       	sts	macl,r3
  40:	61 66       	mov.l	@r6+,r1
  42:	67 66       	mov.l	@r6+,r7
  44:	23 2d       	xtrct	r2,r3
  46:	37 4d       	dmuls.l	r4,r7
  48:	33 1c       	add	r1,r3
  4a:	10 37       	mov.l	r3,@(28,r0)
  4c:	61 62       	mov.l	@r6,r1
  4e:	06 ff       	mac.l	@r15+,@r6+
  50:	62 62       	mov.l	@r6,r2
  52:	06 ff       	mac.l	@r15+,@r6+
  54:	66 62       	mov.l	@r6,r6
  56:	10 78       	mov.l	r7,@(32,r0)
  58:	10 2a       	mov.l	r2,@(40,r0)
  5a:	02 0a       	sts	mach,r2
  5c:	03 1a       	sts	macl,r3
  5e:	10 19       	mov.l	r1,@(36,r0)
  60:	23 2d       	xtrct	r2,r3
  62:	33 6c       	add	r6,r3
  64:	00 0b       	rts	
  66:	10 3b       	mov.l	r3,@(44,r0)

00000068 <IMM_RegMatrix>:
  68:	00 00       	.word 0x0000
	...
