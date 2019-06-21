
sglF08.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDec2Hex>:
   0:	2f 46       	mov.l	r4,@-r15
   2:	64 f3       	mov	r15,r4
   4:	e1 04       	mov	#4,r1
   6:	e2 00       	mov	#0,r2

00000008 <dc2hx_0>:
   8:	60 44       	mov.b	@r4+,r0
   a:	42 00       	shll	r2
   c:	63 23       	mov	r2,r3
   e:	42 08       	shll2	r2
  10:	32 3c       	add	r3,r2
  12:	60 0c       	extu.b	r0,r0
  14:	63 03       	mov	r0,r3
  16:	43 09       	shlr2	r3
  18:	43 09       	shlr2	r3
  1a:	32 3c       	add	r3,r2
  1c:	c9 0f       	and	#15,r0
  1e:	42 00       	shll	r2
  20:	63 23       	mov	r2,r3
  22:	42 08       	shll2	r2
  24:	32 3c       	add	r3,r2
  26:	41 10       	dt	r1
  28:	8f ee       	bf.s	8 <dc2hx_0>
  2a:	32 0c       	add	r0,r2
  2c:	6f 43       	mov	r4,r15
  2e:	00 0b       	rts	
  30:	60 23       	mov	r2,r0
	...
