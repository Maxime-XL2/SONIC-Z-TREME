
sglF04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPrintMatrix>:
   0:	2f 86       	mov.l	r8,@-r15
   2:	2f a6       	mov.l	r10,@-r15
   4:	4f 22       	sts.l	pr,@-r15
   6:	2f 96       	mov.l	r9,@-r15
   8:	da 14       	mov.l	5c <IMM_slPrintFX>,r10	! 0 <_slPrintMatrix>
   a:	24 48       	tst	r4,r4
   c:	8d 12       	bt.s	34 <dsmtx_01>
   e:	e9 04       	mov	#4,r9
  10:	68 43       	mov	r4,r8

00000012 <dsmtx_lp_0>:
  12:	4a 0b       	jsr	@r10
  14:	64 86       	mov.l	@r8+,r4
  16:	75 02       	add	#2,r5
  18:	4a 0b       	jsr	@r10
  1a:	64 86       	mov.l	@r8+,r4
  1c:	75 02       	add	#2,r5
  1e:	4a 0b       	jsr	@r10
  20:	64 86       	mov.l	@r8+,r4
  22:	e0 34       	mov	#52,r0
  24:	49 10       	dt	r9
  26:	8f f4       	bf.s	12 <dsmtx_lp_0>
  28:	35 0c       	add	r0,r5
  2a:	69 f6       	mov.l	@r15+,r9
  2c:	4f 26       	lds.l	@r15+,pr
  2e:	6a f6       	mov.l	@r15+,r10
  30:	00 0b       	rts	
  32:	68 f6       	mov.l	@r15+,r8

00000034 <dsmtx_01>:
  34:	c6 07       	mov.l	@(28,gbr),r0
  36:	68 03       	mov	r0,r8

00000038 <dsmtx_lp_1>:
  38:	4a 0b       	jsr	@r10
  3a:	54 80       	mov.l	@(0,r8),r4
  3c:	75 02       	add	#2,r5
  3e:	4a 0b       	jsr	@r10
  40:	54 84       	mov.l	@(16,r8),r4
  42:	75 02       	add	#2,r5
  44:	4a 0b       	jsr	@r10
  46:	54 88       	mov.l	@(32,r8),r4
  48:	78 04       	add	#4,r8
  4a:	e0 34       	mov	#52,r0
  4c:	49 10       	dt	r9
  4e:	8f f3       	bf.s	38 <dsmtx_lp_1>
  50:	35 0c       	add	r0,r5
  52:	69 f6       	mov.l	@r15+,r9
  54:	4f 26       	lds.l	@r15+,pr
  56:	6a f6       	mov.l	@r15+,r10
  58:	00 0b       	rts	
  5a:	68 f6       	mov.l	@r15+,r8

0000005c <IMM_slPrintFX>:
  5c:	00 00       	.word 0x0000
	...
