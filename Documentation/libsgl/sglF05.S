
sglF05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPrint>:
   0:	c4 21       	mov.b	@(33,gbr),r0
   2:	40 18       	shll8	r0
   4:	61 03       	mov	r0,r1

00000006 <prnt_0>:
   6:	60 44       	mov.b	@r4+,r0
   8:	60 0c       	extu.b	r0,r0
   a:	20 08       	tst	r0,r0
   c:	8d 04       	bt.s	18 <prnt_9>
   e:	30 0c       	add	r0,r0
  10:	20 1b       	or	r1,r0
  12:	25 01       	mov.w	r0,@r5
  14:	af f7       	bra	6 <prnt_0>
  16:	75 02       	add	#2,r5

00000018 <prnt_9>:
  18:	00 0b       	rts	
  1a:	00 09       	nop	
