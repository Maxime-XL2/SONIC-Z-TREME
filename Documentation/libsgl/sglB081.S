
sglB081.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrMosSize>:
   0:	c4 b0       	mov.b	@(176,gbr),r0
   2:	c8 10       	tst	#16,r0
   4:	89 00       	bt	8 <mzsz_01>
   6:	45 01       	shlr	r5

00000008 <mzsz_01>:
   8:	c5 71       	mov.w	@(226,gbr),r0
   a:	74 ff       	add	#-1,r4
   c:	75 ff       	add	#-1,r5
   e:	e1 0f       	mov	#15,r1
  10:	24 19       	and	r1,r4
  12:	45 08       	shll2	r5
  14:	45 08       	shll2	r5
  16:	65 5c       	extu.b	r5,r5
  18:	24 5b       	or	r5,r4
  1a:	60 0c       	extu.b	r0,r0
  1c:	64 48       	swap.b	r4,r4
  1e:	20 4b       	or	r4,r0
  20:	00 0b       	rts	
  22:	c1 71       	mov.w	r0,@(226,gbr)
