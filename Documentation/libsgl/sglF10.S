
sglF10.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slAng2Dec>:
   0:	90 17       	mov.w	32 <IMM_360>,r0	! 168
   2:	64 4d       	extu.w	r4,r4
   4:	24 0e       	mulu.w	r0,r4
   6:	03 1a       	sts	macl,r3
   8:	e2 64       	mov	#100,r2
   a:	43 29       	shlr16	r3
   c:	e0 ff       	mov	#-1,r0
   e:	00 08       	clrt	

00000010 <an2dc_00>:
  10:	33 2a       	subc	r2,r3
  12:	8f fd       	bf.s	10 <an2dc_00>
  14:	70 01       	add	#1,r0
  16:	33 2c       	add	r2,r3
  18:	40 08       	shll2	r0
  1a:	40 08       	shll2	r0
  1c:	00 08       	clrt	
  1e:	e2 0a       	mov	#10,r2

00000020 <an2dc_01>:
  20:	33 2a       	subc	r2,r3
  22:	8f fd       	bf.s	20 <an2dc_01>
  24:	70 01       	add	#1,r0
  26:	70 ff       	add	#-1,r0
  28:	33 2c       	add	r2,r3
  2a:	40 08       	shll2	r0
  2c:	40 08       	shll2	r0
  2e:	00 0b       	rts	
  30:	20 3b       	or	r3,r0

00000032 <IMM_360>:
  32:	01 68       	.word 0x0168
