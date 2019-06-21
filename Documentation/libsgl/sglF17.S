
sglF17.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLocateBitMap>:
   0:	d3 0b       	mov.l	30 <IMM_BitMapTop>,r3	! 0 <_slLocateBitMap>
   2:	62 36       	mov.l	@r3+,r2
   4:	85 32       	mov.w	@(4,r3),r0
   6:	61 35       	mov.w	@r3+,r1
   8:	34 0c       	add	r0,r4
   a:	34 12       	cmp/hs	r1,r4
   c:	8d 0e       	bt.s	2c <bmadr_err>
   e:	85 32       	mov.w	@(4,r3),r0
  10:	61 35       	mov.w	@r3+,r1
  12:	35 0c       	add	r0,r5
  14:	35 12       	cmp/hs	r1,r5
  16:	8d 09       	bt.s	2c <bmadr_err>
  18:	84 34       	mov.b	@(4,r3),r0
  1a:	45 18       	shll8	r5
  1c:	20 08       	tst	r0,r0
  1e:	8d 01       	bt.s	24 <bmadr_01>
  20:	45 00       	shll	r5
  22:	45 00       	shll	r5

00000024 <bmadr_01>:
  24:	60 23       	mov	r2,r0
  26:	30 4c       	add	r4,r0
  28:	00 0b       	rts	
  2a:	30 5c       	add	r5,r0

0000002c <bmadr_err>:
  2c:	00 0b       	rts	
  2e:	e0 00       	mov	#0,r0

00000030 <IMM_BitMapTop>:
  30:	00 00       	.word 0x0000
	...
