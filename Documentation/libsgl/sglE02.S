
sglE02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCloseEvent>:
   0:	03 12       	stc	gbr,r3
   2:	85 36       	mov.w	@(12,r3),r0
   4:	61 0c       	extu.b	r0,r1
   6:	70 01       	add	#1,r0
   8:	81 36       	mov.w	r0,@(12,r3)
   a:	41 08       	shll2	r1
   c:	d0 11       	mov.l	54 <IMM_RemainEvent>,r0	! 0 <_slCloseEvent>
   e:	01 46       	mov.l	r4,@(r0,r1)
  10:	51 42       	mov.l	@(8,r4),r1
  12:	52 41       	mov.l	@(4,r4),r2
  14:	50 30       	mov.l	@(0,r3),r0
  16:	30 40       	cmp/eq	r4,r0
  18:	8b 01       	bf	1e <clevt_1>
  1a:	a0 01       	bra	20 <clevt_2>
  1c:	13 20       	mov.l	r2,@(0,r3)

0000001e <clevt_1>:
  1e:	11 21       	mov.l	r2,@(4,r1)

00000020 <clevt_2>:
  20:	50 31       	mov.l	@(4,r3),r0
  22:	30 40       	cmp/eq	r4,r0
  24:	8b 01       	bf	2a <clevt_3>
  26:	a0 01       	bra	2c <clevt_4>
  28:	13 11       	mov.l	r1,@(4,r3)

0000002a <clevt_3>:
  2a:	12 12       	mov.l	r1,@(8,r2)

0000002c <clevt_4>:
  2c:	52 40       	mov.l	@(0,r4),r2
  2e:	22 28       	tst	r2,r2
  30:	89 0d       	bt	4e <clevt_9>
  32:	c5 07       	mov.w	@(14,gbr),r0
  34:	63 0d       	extu.w	r0,r3
  36:	61 0d       	extu.w	r0,r1
  38:	d0 07       	mov.l	58 <IMM_RemainWork>,r0	! 0 <_slCloseEvent>
  3a:	43 08       	shll2	r3
  3c:	33 0c       	add	r0,r3

0000003e <clevt_5>:
  3e:	23 22       	mov.l	r2,@r3
  40:	71 01       	add	#1,r1
  42:	52 20       	mov.l	@(0,r2),r2
  44:	22 28       	tst	r2,r2
  46:	8f fa       	bf.s	3e <clevt_5>
  48:	73 04       	add	#4,r3
  4a:	60 13       	mov	r1,r0
  4c:	c1 07       	mov.w	r0,@(14,gbr)

0000004e <clevt_9>:
  4e:	00 0b       	rts	
  50:	00 09       	nop	
	...

00000054 <IMM_RemainEvent>:
  54:	00 00       	.word 0x0000
	...

00000058 <IMM_RemainWork>:
  58:	00 00       	.word 0x0000
	...
