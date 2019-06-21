
sglF01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispHex>:
   0:	c4 21       	mov.b	@(33,gbr),r0
   2:	e1 08       	mov	#8,r1
   4:	40 18       	shll8	r0
   6:	70 60       	add	#96,r0
   8:	67 03       	mov	r0,r7
   a:	75 10       	add	#16,r5
   c:	e2 0a       	mov	#10,r2

0000000e <dshx_lp_0>:
   e:	60 43       	mov	r4,r0
  10:	c9 0f       	and	#15,r0
  12:	30 23       	cmp/ge	r2,r0
  14:	8b 00       	bf	18 <dshx_lp_2>
  16:	70 07       	add	#7,r0

00000018 <dshx_lp_2>:
  18:	30 0c       	add	r0,r0
  1a:	30 7c       	add	r7,r0
  1c:	25 05       	mov.w	r0,@-r5
  1e:	44 09       	shlr2	r4
  20:	41 10       	dt	r1
  22:	8f f4       	bf.s	e <dshx_lp_0>
  24:	44 09       	shlr2	r4
  26:	00 0b       	rts	
  28:	00 09       	nop	
	...
