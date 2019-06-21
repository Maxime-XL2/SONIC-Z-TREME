
sglE01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetEvent>:
   0:	c5 06       	mov.w	@(12,gbr),r0
   2:	20 08       	tst	r0,r0
   4:	89 05       	bt	12 <gtevt_0>
   6:	70 ff       	add	#-1,r0
   8:	c1 06       	mov.w	r0,@(12,gbr)
   a:	62 03       	mov	r0,r2
   c:	d0 0d       	mov.l	44 <IMM_RemainEvent>,r0	! 0 <_slGetEvent>
   e:	42 08       	shll2	r2
  10:	00 2e       	mov.l	@(r0,r2),r0

00000012 <gtevt_0>:
  12:	00 0b       	rts	
  14:	00 09       	nop	

00000016 <_slSetEvent>:
  16:	4f 22       	sts.l	pr,@-r15
  18:	bf f2       	bsr	0 <_slGetEvent>
  1a:	00 09       	nop	
  1c:	4f 26       	lds.l	@r15+,pr
  1e:	20 08       	tst	r0,r0
  20:	89 0e       	bt	40 <stevt_2>
  22:	03 12       	stc	gbr,r3
  24:	51 30       	mov.l	@(0,r3),r1
  26:	21 18       	tst	r1,r1
  28:	8b 00       	bf	2c <stevt_1>
  2a:	13 00       	mov.l	r0,@(0,r3)

0000002c <stevt_1>:
  2c:	51 31       	mov.l	@(4,r3),r1
  2e:	13 01       	mov.l	r0,@(4,r3)
  30:	e2 00       	mov	#0,r2
  32:	10 21       	mov.l	r2,@(4,r0)
  34:	10 20       	mov.l	r2,@(0,r0)
  36:	10 12       	mov.l	r1,@(8,r0)
  38:	21 18       	tst	r1,r1
  3a:	8d 01       	bt.s	40 <stevt_2>
  3c:	10 43       	mov.l	r4,@(12,r0)
  3e:	11 01       	mov.l	r0,@(4,r1)

00000040 <stevt_2>:
  40:	00 0b       	rts	
  42:	00 09       	nop	

00000044 <IMM_RemainEvent>:
  44:	00 00       	.word 0x0000
	...
