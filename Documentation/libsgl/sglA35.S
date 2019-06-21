
sglA35.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCopyMatrix>:
   0:	c4 20       	mov.b	@(32,gbr),r0
   2:	20 08       	tst	r0,r0
   4:	89 10       	bt	28 <cperr>
   6:	c6 07       	mov.l	@(28,gbr),r0
   8:	e6 d0       	mov	#-48,r6
   a:	36 0c       	add	r0,r6
   c:	e7 03       	mov	#3,r7

0000000e <cpmx_01>:
   e:	61 66       	mov.l	@r6+,r1
  10:	62 66       	mov.l	@r6+,r2
  12:	63 66       	mov.l	@r6+,r3
  14:	64 66       	mov.l	@r6+,r4
  16:	10 10       	mov.l	r1,@(0,r0)
  18:	10 21       	mov.l	r2,@(4,r0)
  1a:	10 32       	mov.l	r3,@(8,r0)
  1c:	10 43       	mov.l	r4,@(12,r0)
  1e:	47 10       	dt	r7
  20:	8f f5       	bf.s	e <cpmx_01>
  22:	70 10       	add	#16,r0
  24:	00 0b       	rts	
  26:	e0 01       	mov	#1,r0

00000028 <cperr>:
  28:	00 0b       	rts	
  2a:	e0 00       	mov	#0,r0
