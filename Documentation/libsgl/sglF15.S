
sglF15.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitBitMap>:
   0:	e1 03       	mov	#3,r1
   2:	e0 03       	mov	#3,r0
   4:	34 00       	cmp/eq	r0,r4
   6:	8f 03       	bf.s	10 <inbm_00>
   8:	24 19       	and	r1,r4
   a:	e0 08       	mov	#8,r0
   c:	25 08       	tst	r0,r5
   e:	8f 14       	bf.s	3a <inbm_err>

00000010 <inbm_00>:
  10:	61 43       	mov	r4,r1
  12:	41 08       	shll2	r1
  14:	c7 0a       	mova	40 <initfunc_tbl>,r0
  16:	01 1e       	mov.l	@(r0,r1),r1
  18:	e2 0c       	mov	#12,r2
  1a:	22 59       	and	r5,r2
  1c:	c7 0c       	mova	50 <bmSizeTbl>,r0
  1e:	03 2e       	mov.l	@(r0,r2),r3
  20:	c7 0f       	mova	60 <_BitMapTop>,r0
  22:	20 62       	mov.l	r6,@r0
  24:	10 31       	mov.l	r3,@(4,r0)
  26:	63 03       	mov	r0,r3
  28:	c6 20       	mov.l	@(128,gbr),r0
  2a:	40 01       	shlr	r0
  2c:	13 02       	mov.l	r0,@(8,r3)
  2e:	60 23       	mov	r2,r0
  30:	80 3d       	mov.b	r0,@(13,r3)
  32:	c9 08       	and	#8,r0
  34:	80 3c       	mov.b	r0,@(12,r3)
  36:	41 2b       	jmp	@r1
  38:	e4 10       	mov	#16,r4

0000003a <inbm_err>:
  3a:	00 0b       	rts	
  3c:	e0 00       	mov	#0,r0
	...

00000040 <initfunc_tbl>:
	...

00000050 <bmSizeTbl>:
  50:	02 00       	.word 0x0200
  52:	01 00       	.word 0x0100
  54:	02 00       	.word 0x0200
  56:	02 00       	.word 0x0200
  58:	04 00       	.word 0x0400
  5a:	01 00       	.word 0x0100
  5c:	04 00       	.word 0x0400
  5e:	02 00       	.word 0x0200

00000060 <_BitMapTop>:
  60:	00 00       	.word 0x0000
	...

00000064 <_BitMapXSize>:
	...

00000066 <_BitMapYSize>:
	...

00000068 <_BitMapXAdder>:
	...

0000006a <_BitMapYAdder>:
	...

0000006c <_BitMapHSize>:
	...

0000006d <_BitMapMode>:
	...
