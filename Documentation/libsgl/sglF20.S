
sglF20.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMPoint>:
   0:	d0 05       	mov.l	18 <IMM_slLocateBitMap>,r0	! 0 <_slBMPoint>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	20 08       	tst	r0,r0
   a:	8d 02       	bt.s	12 <pterr>
   c:	4f 26       	lds.l	@r15+,pr
   e:	00 0b       	rts	
  10:	60 00       	mov.b	@r0,r0

00000012 <pterr>:
  12:	00 0b       	rts	
  14:	e0 00       	mov	#0,r0
	...

00000018 <IMM_slLocateBitMap>:
  18:	00 00       	.word 0x0000
	...
