
sglB022.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColorCalcMode>:
   0:	d1 03       	mov.l	10 <IMM_VDP2_CCCTL>,r1	! 60ffdac
   2:	44 19       	shlr8	r4
   4:	60 10       	mov.b	@r1,r0
   6:	c9 f0       	and	#-16,r0
   8:	20 4b       	or	r4,r0
   a:	00 0b       	rts	
   c:	21 00       	mov.b	r0,@r1
	...

00000010 <IMM_VDP2_CCCTL>:
  10:	06 0f       	mac.l	@r0+,@r6+
  12:	fd ac       	fmov	fr10,fr13
