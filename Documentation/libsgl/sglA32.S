
sglA32.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slUnitAngle>:
   0:	24 48       	tst	r4,r4
   2:	8d 0c       	bt.s	1e <unang_01>
   4:	e1 01       	mov	#1,r1
   6:	41 28       	shll16	r1
   8:	14 10       	mov.l	r1,@(0,r4)
   a:	14 14       	mov.l	r1,@(16,r4)
   c:	14 18       	mov.l	r1,@(32,r4)
   e:	e1 00       	mov	#0,r1
  10:	14 11       	mov.l	r1,@(4,r4)
  12:	14 12       	mov.l	r1,@(8,r4)
  14:	14 13       	mov.l	r1,@(12,r4)
  16:	14 15       	mov.l	r1,@(20,r4)
  18:	14 16       	mov.l	r1,@(24,r4)
  1a:	00 0b       	rts	
  1c:	14 17       	mov.l	r1,@(28,r4)

0000001e <unang_01>:
  1e:	c6 07       	mov.l	@(28,gbr),r0
  20:	41 28       	shll16	r1
  22:	10 10       	mov.l	r1,@(0,r0)
  24:	10 15       	mov.l	r1,@(20,r0)
  26:	10 1a       	mov.l	r1,@(40,r0)
  28:	e1 00       	mov	#0,r1
  2a:	10 14       	mov.l	r1,@(16,r0)
  2c:	10 18       	mov.l	r1,@(32,r0)
  2e:	10 11       	mov.l	r1,@(4,r0)
  30:	10 19       	mov.l	r1,@(36,r0)
  32:	10 12       	mov.l	r1,@(8,r0)
  34:	00 0b       	rts	
  36:	10 16       	mov.l	r1,@(24,r0)
