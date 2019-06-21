
sglA19.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRotX>:
   0:	d0 1c       	mov.l	74 <IMM_GetSinCos>,r0	! 0 <_slRotX>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	4f 26       	lds.l	@r15+,pr

0000000a <_slRotXSC>:
   a:	2f 56       	mov.l	r5,@-r15
   c:	2f 46       	mov.l	r4,@-r15
   e:	c6 07       	mov.l	@(28,gbr),r0
  10:	61 f3       	mov	r15,r1
  12:	57 01       	mov.l	@(4,r0),r7
  14:	66 03       	mov	r0,r6
  16:	37 5d       	dmuls.l	r5,r7
  18:	64 4b       	neg	r4,r4
  1a:	70 08       	add	#8,r0
  1c:	00 1f       	mac.l	@r1+,@r0+
  1e:	70 fc       	add	#-4,r0
  20:	02 0a       	sts	mach,r2
  22:	03 1a       	sts	macl,r3
  24:	37 4d       	dmuls.l	r4,r7
  26:	23 2d       	xtrct	r2,r3
  28:	16 31       	mov.l	r3,@(4,r6)
  2a:	00 1f       	mac.l	@r1+,@r0+
  2c:	57 65       	mov.l	@(20,r6),r7
  2e:	70 0c       	add	#12,r0
  30:	61 f3       	mov	r15,r1
  32:	02 0a       	sts	mach,r2
  34:	03 1a       	sts	macl,r3
  36:	37 5d       	dmuls.l	r5,r7
  38:	23 2d       	xtrct	r2,r3
  3a:	16 32       	mov.l	r3,@(8,r6)
  3c:	00 1f       	mac.l	@r1+,@r0+
  3e:	70 fc       	add	#-4,r0
  40:	02 0a       	sts	mach,r2
  42:	03 1a       	sts	macl,r3
  44:	37 4d       	dmuls.l	r4,r7
  46:	23 2d       	xtrct	r2,r3
  48:	16 35       	mov.l	r3,@(20,r6)
  4a:	00 1f       	mac.l	@r1+,@r0+
  4c:	57 69       	mov.l	@(36,r6),r7
  4e:	70 0c       	add	#12,r0
  50:	02 0a       	sts	mach,r2
  52:	03 1a       	sts	macl,r3
  54:	37 5d       	dmuls.l	r5,r7
  56:	23 2d       	xtrct	r2,r3
  58:	16 36       	mov.l	r3,@(24,r6)
  5a:	00 ff       	mac.l	@r15+,@r0+
  5c:	70 fc       	add	#-4,r0
  5e:	02 0a       	sts	mach,r2
  60:	03 1a       	sts	macl,r3
  62:	37 4d       	dmuls.l	r4,r7
  64:	23 2d       	xtrct	r2,r3
  66:	16 39       	mov.l	r3,@(36,r6)
  68:	00 ff       	mac.l	@r15+,@r0+
  6a:	02 0a       	sts	mach,r2
  6c:	03 1a       	sts	macl,r3
  6e:	23 2d       	xtrct	r2,r3
  70:	00 0b       	rts	
  72:	16 3a       	mov.l	r3,@(40,r6)

00000074 <IMM_GetSinCos>:
  74:	00 00       	.word 0x0000
	...
