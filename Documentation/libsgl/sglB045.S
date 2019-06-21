
sglB045.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrMatConv>:
   0:	d0 07       	mov.l	20 <IMM_slInversMatrix>,r0	! 0 <_slScrMatConv>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	c6 07       	mov.l	@(28,gbr),r0
   a:	51 02       	mov.l	@(8,r0),r1
   c:	52 06       	mov.l	@(24,r0),r2
   e:	53 0a       	mov.l	@(40,r0),r3
  10:	61 1b       	neg	r1,r1
  12:	62 2b       	neg	r2,r2
  14:	63 3b       	neg	r3,r3
  16:	10 12       	mov.l	r1,@(8,r0)
  18:	10 26       	mov.l	r2,@(24,r0)
  1a:	4f 26       	lds.l	@r15+,pr
  1c:	00 0b       	rts	
  1e:	10 3a       	mov.l	r3,@(40,r0)

00000020 <IMM_slInversMatrix>:
  20:	00 00       	.word 0x0000
	...

00000024 <IMM_slScale>:
  24:	00 00       	.word 0x0000
	...
