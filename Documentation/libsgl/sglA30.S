
sglA30.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRegistMatrix>:
   0:	c7 0f       	mova	40 <_RegMatrix>,r0
   2:	24 48       	tst	r4,r4
   4:	8f 0f       	bf.s	26 <rsmx_10>
   6:	65 03       	mov	r0,r5
   8:	c6 07       	mov.l	@(28,gbr),r0
   a:	e7 03       	mov	#3,r7

0000000c <rsmx_01>:
   c:	61 06       	mov.l	@r0+,r1
   e:	62 06       	mov.l	@r0+,r2
  10:	63 06       	mov.l	@r0+,r3
  12:	64 06       	mov.l	@r0+,r4
  14:	15 10       	mov.l	r1,@(0,r5)
  16:	15 21       	mov.l	r2,@(4,r5)
  18:	15 32       	mov.l	r3,@(8,r5)
  1a:	15 43       	mov.l	r4,@(12,r5)
  1c:	47 10       	dt	r7
  1e:	8f f5       	bf.s	c <rsmx_01>
  20:	75 10       	add	#16,r5
  22:	00 0b       	rts	
  24:	00 09       	nop	

00000026 <rsmx_10>:
  26:	e7 04       	mov	#4,r7

00000028 <rsmx_11>:
  28:	61 46       	mov.l	@r4+,r1
  2a:	62 46       	mov.l	@r4+,r2
  2c:	63 46       	mov.l	@r4+,r3
  2e:	15 10       	mov.l	r1,@(0,r5)
  30:	15 24       	mov.l	r2,@(16,r5)
  32:	15 38       	mov.l	r3,@(32,r5)
  34:	47 10       	dt	r7
  36:	8f f7       	bf.s	28 <rsmx_11>
  38:	75 04       	add	#4,r5
  3a:	00 0b       	rts	
  3c:	00 09       	nop	
	...

00000040 <_RegMatrix>:
	...
