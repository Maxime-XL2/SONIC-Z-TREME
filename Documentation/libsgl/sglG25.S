
sglG25.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPCMStat>:
   0:	84 41       	mov.b	@(1,r4),r0
   2:	c9 07       	and	#7,r0
   4:	40 08       	shll2	r0
   6:	61 03       	mov	r0,r1
   8:	40 08       	shll2	r0
   a:	31 0c       	add	r0,r1
   c:	c6 db       	mov.l	@(876,gbr),r0
   e:	00 1c       	mov.b	@(r0,r1),r0
  10:	20 08       	tst	r0,r0
  12:	00 29       	movt	r0
  14:	00 0b       	rts	
  16:	ca 01       	xor	#1,r0
