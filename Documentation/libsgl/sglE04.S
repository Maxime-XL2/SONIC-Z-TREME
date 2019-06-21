
sglE04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSetEventNext>:
   0:	c5 06       	mov.w	@(12,gbr),r0
   2:	20 08       	tst	r0,r0
   4:	89 12       	bt	2c <stevnx_9>
   6:	70 ff       	add	#-1,r0
   8:	c1 06       	mov.w	r0,@(12,gbr)
   a:	62 03       	mov	r0,r2
   c:	d0 08       	mov.l	30 <IMM_RemainEvent>,r0	! 0 <_slSetEventNext>
   e:	42 08       	shll2	r2
  10:	00 2e       	mov.l	@(r0,r2),r0
  12:	52 41       	mov.l	@(4,r4),r2
  14:	10 42       	mov.l	r4,@(8,r0)
  16:	22 28       	tst	r2,r2
  18:	8f 02       	bf.s	20 <stevnx_1>
  1a:	e1 00       	mov	#0,r1
  1c:	a0 01       	bra	22 <stevnx_2>
  1e:	c2 01       	mov.l	r0,@(4,gbr)

00000020 <stevnx_1>:
  20:	12 02       	mov.l	r0,@(8,r2)

00000022 <stevnx_2>:
  22:	14 01       	mov.l	r0,@(4,r4)
  24:	10 21       	mov.l	r2,@(4,r0)
  26:	10 10       	mov.l	r1,@(0,r0)
  28:	00 0b       	rts	
  2a:	10 53       	mov.l	r5,@(12,r0)

0000002c <stevnx_9>:
  2c:	00 0b       	rts	
  2e:	00 09       	nop	

00000030 <IMM_RemainEvent>:
  30:	00 00       	.word 0x0000
	...
