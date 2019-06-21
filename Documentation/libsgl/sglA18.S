
sglA18.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRotY>:
   0:	d0 1c       	mov.l	74 <IMM_GetSinCos>,r0	! 0 <_slRotY>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	4f 26       	lds.l	@r15+,pr

0000000a <_slRotYSC>:
   a:	2f 56       	mov.l	r5,@-r15
   c:	2f 46       	mov.l	r4,@-r15
   e:	c6 07       	mov.l	@(28,gbr),r0
  10:	61 f3       	mov	r15,r1
  12:	57 02       	mov.l	@(8,r0),r7
  14:	37 5d       	dmuls.l	r5,r7
  16:	64 4b       	neg	r4,r4
  18:	66 03       	mov	r0,r6
  1a:	00 1f       	mac.l	@r1+,@r0+
  1c:	70 fc       	add	#-4,r0
  1e:	02 0a       	sts	mach,r2
  20:	03 1a       	sts	macl,r3
  22:	37 4d       	dmuls.l	r4,r7
  24:	23 2d       	xtrct	r2,r3
  26:	57 66       	mov.l	@(24,r6),r7
  28:	00 1f       	mac.l	@r1+,@r0+
  2a:	16 32       	mov.l	r3,@(8,r6)
  2c:	70 0c       	add	#12,r0
  2e:	61 f3       	mov	r15,r1
  30:	02 0a       	sts	mach,r2
  32:	03 1a       	sts	macl,r3
  34:	37 5d       	dmuls.l	r5,r7
  36:	23 2d       	xtrct	r2,r3
  38:	16 30       	mov.l	r3,@(0,r6)
  3a:	00 1f       	mac.l	@r1+,@r0+
  3c:	70 fc       	add	#-4,r0
  3e:	02 0a       	sts	mach,r2
  40:	03 1a       	sts	macl,r3
  42:	37 4d       	dmuls.l	r4,r7
  44:	23 2d       	xtrct	r2,r3
  46:	16 36       	mov.l	r3,@(24,r6)
  48:	00 1f       	mac.l	@r1+,@r0+
  4a:	70 0c       	add	#12,r0
  4c:	57 6a       	mov.l	@(40,r6),r7
  4e:	02 0a       	sts	mach,r2
  50:	03 1a       	sts	macl,r3
  52:	37 5d       	dmuls.l	r5,r7
  54:	23 2d       	xtrct	r2,r3
  56:	16 34       	mov.l	r3,@(16,r6)
  58:	00 ff       	mac.l	@r15+,@r0+
  5a:	70 fc       	add	#-4,r0
  5c:	02 0a       	sts	mach,r2
  5e:	03 1a       	sts	macl,r3
  60:	37 4d       	dmuls.l	r4,r7
  62:	23 2d       	xtrct	r2,r3
  64:	16 3a       	mov.l	r3,@(40,r6)
  66:	00 ff       	mac.l	@r15+,@r0+
  68:	02 0a       	sts	mach,r2
  6a:	03 1a       	sts	macl,r3
  6c:	23 2d       	xtrct	r2,r3
  6e:	00 0b       	rts	
  70:	16 38       	mov.l	r3,@(32,r6)
	...

00000074 <IMM_GetSinCos>:
  74:	00 00       	.word 0x0000
	...
