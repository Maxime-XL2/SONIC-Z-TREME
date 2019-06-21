
sglF02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPrintHex>:
   0:	c4 21       	mov.b	@(33,gbr),r0
   2:	e1 08       	mov	#8,r1
   4:	40 18       	shll8	r0
   6:	70 60       	add	#96,r0
   8:	67 03       	mov	r0,r7
   a:	75 10       	add	#16,r5
   c:	e2 0a       	mov	#10,r2

0000000e <prhx_0>:
   e:	60 43       	mov	r4,r0
  10:	c9 0f       	and	#15,r0
  12:	30 23       	cmp/ge	r2,r0
  14:	8b 00       	bf	18 <prhx_1>
  16:	70 07       	add	#7,r0

00000018 <prhx_1>:
  18:	30 0c       	add	r0,r0
  1a:	30 7c       	add	r7,r0
  1c:	25 05       	mov.w	r0,@-r5
  1e:	44 09       	shlr2	r4
  20:	44 09       	shlr2	r4
  22:	24 48       	tst	r4,r4
  24:	8d 03       	bt.s	2e <prhx_3>
  26:	41 10       	dt	r1
  28:	8b f1       	bf	e <prhx_0>
  2a:	00 0b       	rts	
  2c:	00 09       	nop	

0000002e <prhx_3>:
  2e:	21 18       	tst	r1,r1
  30:	89 02       	bt	38 <prhx_5>

00000032 <prhx_4>:
  32:	41 10       	dt	r1
  34:	8f fd       	bf.s	32 <prhx_4>
  36:	25 45       	mov.w	r4,@-r5

00000038 <prhx_5>:
  38:	00 0b       	rts	
  3a:	00 09       	nop	
