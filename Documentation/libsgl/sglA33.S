
sglA33.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slUnitTranslate>:
   0:	24 48       	tst	r4,r4
   2:	8d 04       	bt.s	e <untrn_01>
   4:	e1 00       	mov	#0,r1
   6:	14 19       	mov.l	r1,@(36,r4)
   8:	14 1a       	mov.l	r1,@(40,r4)
   a:	00 0b       	rts	
   c:	14 1b       	mov.l	r1,@(44,r4)

0000000e <untrn_01>:
   e:	c6 07       	mov.l	@(28,gbr),r0
  10:	10 13       	mov.l	r1,@(12,r0)
  12:	10 17       	mov.l	r1,@(28,r0)
  14:	00 0b       	rts	
  16:	10 1b       	mov.l	r1,@(44,r0)
