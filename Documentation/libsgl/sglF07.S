
sglF07.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slHex2Dec>:
   0:	c7 08       	mova	24 <dec_tbl2>,r0
   2:	e6 00       	mov	#0,r6
   4:	e1 07       	mov	#7,r1

00000006 <hx2dc_0>:
   6:	62 06       	mov.l	@r0+,r2
   8:	46 08       	shll2	r6
   a:	76 ff       	add	#-1,r6
   c:	00 08       	clrt	

0000000e <hx2dc_1>:
   e:	34 2a       	subc	r2,r4
  10:	8f fd       	bf.s	e <hx2dc_1>
  12:	76 01       	add	#1,r6
  14:	34 2c       	add	r2,r4
  16:	41 10       	dt	r1
  18:	8f f5       	bf.s	6 <hx2dc_0>
  1a:	46 08       	shll2	r6
  1c:	46 08       	shll2	r6
  1e:	36 4c       	add	r4,r6
  20:	00 0b       	rts	
  22:	60 63       	mov	r6,r0

00000024 <dec_tbl2>:
  24:	00 98       	.word 0x0098
  26:	96 80       	mov.w	12a <dec_tbl2+0x106>,r6
  28:	00 0f       	mac.l	@r0+,@r0+
  2a:	42 40       	.word 0x4240
  2c:	00 01       	.word 0x0001
  2e:	86 a0       	.word 0x86a0
  30:	00 00       	.word 0x0000
  32:	27 10       	mov.b	r1,@r7
  34:	00 00       	.word 0x0000
  36:	03 e8       	.word 0x03e8
  38:	00 00       	.word 0x0000
  3a:	00 64       	mov.b	r6,@(r0,r0)
  3c:	00 00       	.word 0x0000
  3e:	00 0a       	sts	mach,r0
