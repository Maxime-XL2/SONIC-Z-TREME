
sglA12.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBallCollision>:
   0:	37 5c       	add	r5,r7
   2:	37 7d       	dmuls.l	r7,r7
   4:	60 46       	mov.l	@r4+,r0
   6:	61 66       	mov.l	@r6+,r1
   8:	63 46       	mov.l	@r4+,r3
   a:	62 66       	mov.l	@r6+,r2
   c:	31 08       	sub	r0,r1
   e:	2f 16       	mov.l	r1,@-r15
  10:	60 46       	mov.l	@r4+,r0
  12:	61 66       	mov.l	@r6+,r1
  14:	31 08       	sub	r0,r1
  16:	04 0a       	sts	mach,r4
  18:	05 1a       	sts	macl,r5
  1a:	31 1d       	dmuls.l	r1,r1
  1c:	32 38       	sub	r3,r2
  1e:	60 f3       	mov	r15,r0
  20:	0f 0f       	mac.l	@r0+,@r15+
  22:	2f 26       	mov.l	r2,@-r15
  24:	60 f3       	mov	r15,r0
  26:	0f 0f       	mac.l	@r0+,@r15+
  28:	00 08       	clrt	
  2a:	03 1a       	sts	macl,r3
  2c:	02 0a       	sts	mach,r2
  2e:	35 3a       	subc	r3,r5
  30:	34 2a       	subc	r2,r4
  32:	8b 01       	bf	38 <blcls_01>
  34:	00 0b       	rts	
  36:	e0 ff       	mov	#-1,r0

00000038 <blcls_01>:
  38:	d0 01       	mov.l	40 <IMM_slSquartDbl>,r0	! 0 <_slBallCollision>
  3a:	40 2b       	jmp	@r0
  3c:	00 09       	nop	
	...

00000040 <IMM_slSquartDbl>:
  40:	00 00       	.word 0x0000
	...
