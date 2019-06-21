
sglB021.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColorCalcOn>:
   0:	d1 01       	mov.l	8 <IMM_VDP2_CCCTL>,r1	! 60ffdac
   2:	60 43       	mov	r4,r0
   4:	00 0b       	rts	
   6:	80 11       	mov.b	r0,@(1,r1)

00000008 <IMM_VDP2_CCCTL>:
   8:	06 0f       	mac.l	@r0+,@r6+
   a:	fd ac       	fmov	fr10,fr13
