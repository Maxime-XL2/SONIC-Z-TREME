
sglB037.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_sl16MapRB>:
   0:	66 43       	mov	r4,r6
   2:	64 40       	mov.b	@r4,r4
   4:	4f 22       	sts.l	pr,@-r15
   6:	d1 18       	mov.l	68 <IMM_sl1MapRB>,r1	! 0 <_sl16MapRB>
   8:	44 18       	shll8	r4
   a:	44 08       	shll2	r4
   c:	41 0b       	jsr	@r1
   e:	44 00       	shll	r4
  10:	4f 26       	lds.l	@r15+,pr
  12:	d3 16       	mov.l	6c <IMM_VDP2_MPABRA>,r3	! 60ffd10
  14:	a0 0b       	bra	2e <set16Map>
  16:	73 10       	add	#16,r3

00000018 <_sl16MapRA>:
  18:	66 43       	mov	r4,r6
  1a:	64 40       	mov.b	@r4,r4
  1c:	4f 22       	sts.l	pr,@-r15
  1e:	d1 11       	mov.l	64 <IMM_sl1MapRA>,r1	! 0 <_sl16MapRB>
  20:	64 4c       	extu.b	r4,r4
  22:	44 18       	shll8	r4
  24:	44 08       	shll2	r4
  26:	41 0b       	jsr	@r1
  28:	44 00       	shll	r4
  2a:	4f 26       	lds.l	@r15+,pr
  2c:	d3 0f       	mov.l	6c <IMM_VDP2_MPABRA>,r3	! 60ffd10

0000002e <set16Map>:
  2e:	c5 7c       	mov.w	@(248,gbr),r0
  30:	61 09       	swap.w	r0,r1
  32:	c4 ea       	mov.b	@(234,gbr),r0
  34:	41 00       	shll	r1
  36:	40 24       	rotcl	r0
  38:	e1 08       	mov	#8,r1

0000003a <set16Map_01>:
  3a:	62 64       	mov.b	@r6+,r2
  3c:	64 64       	mov.b	@r6+,r4
  3e:	62 2c       	extu.b	r2,r2
  40:	c8 02       	tst	#2,r0
  42:	8f 02       	bf.s	4a <set16Map_02>
  44:	64 4c       	extu.b	r4,r4
  46:	42 09       	shlr2	r2
  48:	44 09       	shlr2	r4

0000004a <set16Map_02>:
  4a:	c8 01       	tst	#1,r0
  4c:	8b 01       	bf	52 <set16Map_03>
  4e:	42 01       	shlr	r2
  50:	44 01       	shlr	r4

00000052 <set16Map_03>:
  52:	44 18       	shll8	r4
  54:	22 4b       	or	r4,r2
  56:	23 21       	mov.w	r2,@r3
  58:	41 10       	dt	r1
  5a:	8f ee       	bf.s	3a <set16Map_01>
  5c:	73 02       	add	#2,r3
  5e:	00 0b       	rts	
  60:	00 09       	nop	
	...

00000064 <IMM_sl1MapRA>:
  64:	00 00       	.word 0x0000
	...

00000068 <IMM_sl1MapRB>:
  68:	00 00       	.word 0x0000
	...

0000006c <IMM_VDP2_MPABRA>:
  6c:	06 0f       	mac.l	@r0+,@r6+
  6e:	fd 10       	fadd	fr1,fr13
