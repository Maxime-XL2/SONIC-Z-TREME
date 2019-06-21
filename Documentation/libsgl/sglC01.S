
sglC01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPerspective>:
   0:	d0 17       	mov.l	60 <IMM_slTan>,r0	! 0 <_slPerspective>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	44 21       	shar	r4
   8:	4f 26       	lds.l	@r15+,pr
   a:	40 11       	cmp/pz	r0
   c:	8d 02       	bt.s	14 <pspc_0>
   e:	e1 00       	mov	#0,r1
  10:	60 0b       	neg	r0,r0
  12:	e1 ff       	mov	#-1,r1

00000014 <pspc_0>:
  14:	62 03       	mov	r0,r2
  16:	c5 40       	mov.w	@(128,gbr),r0
  18:	e1 ff       	mov	#-1,r1
  1a:	41 18       	shll8	r1
  1c:	40 28       	shll16	r0
  1e:	40 01       	shlr	r0
  20:	11 20       	mov.l	r2,@(0,r1)
  22:	62 09       	swap.w	r0,r2
  24:	62 2f       	exts.w	r2,r2
  26:	11 24       	mov.l	r2,@(16,r1)
  28:	40 28       	shll16	r0
  2a:	11 05       	mov.l	r0,@(20,r1)
  2c:	c6 12       	mov.l	@(72,gbr),r0
  2e:	e2 0c       	mov	#12,r2
  30:	10 20       	mov.l	r2,@(0,r0)
  32:	67 03       	mov	r0,r7
  34:	50 17       	mov.l	@(28,r1),r0
  36:	17 01       	mov.l	r0,@(4,r7)
  38:	c2 1a       	mov.l	r0,@(104,gbr)
  3a:	61 03       	mov	r0,r1
  3c:	e0 08       	mov	#8,r0
  3e:	30 7c       	add	r7,r0
  40:	d2 09       	mov.l	68 <IMM_FRT_INTR>,r2	! 21000000
  42:	c2 12       	mov.l	r0,@(72,gbr)
  44:	22 01       	mov.w	r0,@r2
  46:	c4 b0       	mov.b	@(176,gbr),r0
  48:	c8 08       	tst	#8,r0
  4a:	89 00       	bt	4e <pspc_1>
  4c:	41 01       	shlr	r1

0000004e <pspc_1>:
  4e:	d2 05       	mov.l	64 <IMM_RotScrParA>,r2	! 60ffe54
  50:	60 19       	swap.w	r1,r0
  52:	22 01       	mov.w	r0,@r2
  54:	81 24       	mov.w	r0,@(8,r2)
  56:	72 68       	add	#104,r2
  58:	22 01       	mov.w	r0,@r2
  5a:	00 0b       	rts	
  5c:	81 24       	mov.w	r0,@(8,r2)
	...

00000060 <IMM_slTan>:
  60:	00 00       	.word 0x0000
	...

00000064 <IMM_RotScrParA>:
  64:	06 0f       	mac.l	@r0+,@r6+
  66:	fe 54       	fcmp/eq	fr5,fr14

00000068 <IMM_FRT_INTR>:
  68:	21 00       	mov.b	r0,@r1
	...
