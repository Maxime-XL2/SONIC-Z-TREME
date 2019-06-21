
sglB061.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMPalette>:
   0:	d1 03       	mov.l	10 <IMM_VDP2_BMPNA>,r1	! 60ffcec
   2:	31 4c       	add	r4,r1
   4:	60 10       	mov.b	@r1,r0
   6:	c9 30       	and	#48,r0
   8:	20 5b       	or	r5,r0
   a:	00 0b       	rts	
   c:	21 00       	mov.b	r0,@r1
	...

00000010 <IMM_VDP2_BMPNA>:
  10:	06 0f       	mac.l	@r0+,@r6+
  12:	fc ec       	fmov	fr14,fr12
