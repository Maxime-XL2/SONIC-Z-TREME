
sglI02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slTransferEntry>:
   0:	26 68       	tst	r6,r6
   2:	8d 25       	bt.s	50 <bool_error>
   4:	4f 03       	stc.l	sr,@-r15
   6:	e0 f0       	mov	#-16,r0
   8:	40 0e       	ldc	r0,sr
   a:	c5 0c       	mov.w	@(24,gbr),r0
   c:	e1 14       	mov	#20,r1
   e:	70 01       	add	#1,r0
  10:	30 16       	cmp/hi	r1,r0
  12:	8d 1d       	bt.s	50 <bool_error>
  14:	67 03       	mov	r0,r7
  16:	d3 10       	mov.l	58 <IMM_TransList>,r3	! 0 <_slTransferEntry>
  18:	88 01       	cmp/eq	#1,r0
  1a:	8d 0d       	bt.s	38 <first_entry>
  1c:	63 32       	mov.l	@r3,r3
  1e:	70 fe       	add	#-2,r0
  20:	40 08       	shll2	r0
  22:	61 03       	mov	r0,r1
  24:	40 00       	shll	r0
  26:	31 0c       	add	r0,r1
  28:	e0 00       	mov	#0,r0
  2a:	c0 1a       	mov.b	r0,@(26,gbr)
  2c:	33 1c       	add	r1,r3
  2e:	50 32       	mov.l	@(8,r3),r0
  30:	40 00       	shll	r0
  32:	40 01       	shlr	r0
  34:	13 02       	mov.l	r0,@(8,r3)
  36:	73 0c       	add	#12,r3

00000038 <first_entry>:
  38:	44 00       	shll	r4
  3a:	74 01       	add	#1,r4
  3c:	44 05       	rotr	r4
  3e:	13 60       	mov.l	r6,@(0,r3)
  40:	13 51       	mov.l	r5,@(4,r3)
  42:	13 42       	mov.l	r4,@(8,r3)
  44:	60 73       	mov	r7,r0
  46:	c1 0c       	mov.w	r0,@(24,gbr)
  48:	e0 01       	mov	#1,r0
  4a:	c0 1a       	mov.b	r0,@(26,gbr)
  4c:	00 0b       	rts	
  4e:	4f 07       	ldc.l	@r15+,sr

00000050 <bool_error>:
  50:	4f 07       	ldc.l	@r15+,sr
  52:	00 0b       	rts	
  54:	e0 00       	mov	#0,r0
	...

00000058 <IMM_TransList>:
  58:	00 00       	.word 0x0000
	...
