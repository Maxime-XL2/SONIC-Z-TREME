
sglA25.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slTransposeMatrix>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	e1 00       	mov	#0,r1
   4:	10 13       	mov.l	r1,@(12,r0)
   6:	10 17       	mov.l	r1,@(28,r0)
   8:	10 1b       	mov.l	r1,@(44,r0)
   a:	51 04       	mov.l	@(16,r0),r1
   c:	52 01       	mov.l	@(4,r0),r2
   e:	10 11       	mov.l	r1,@(4,r0)
  10:	10 24       	mov.l	r2,@(16,r0)
  12:	51 08       	mov.l	@(32,r0),r1
  14:	52 02       	mov.l	@(8,r0),r2
  16:	10 12       	mov.l	r1,@(8,r0)
  18:	10 28       	mov.l	r2,@(32,r0)
  1a:	51 09       	mov.l	@(36,r0),r1
  1c:	52 06       	mov.l	@(24,r0),r2
  1e:	10 16       	mov.l	r1,@(24,r0)
  20:	00 0b       	rts	
  22:	10 29       	mov.l	r2,@(36,r0)
