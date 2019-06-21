
sglB092.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slTpShadowMode>:
   0:	d0 01       	mov.l	8 <IMM_VDP2_SDCTL>,r0	! 60ffda2
   2:	00 0b       	rts	
   4:	20 40       	mov.b	r4,@r0
	...

00000008 <IMM_VDP2_SDCTL>:
   8:	06 0f       	mac.l	@r0+,@r6+
   a:	fd a2       	fmul	fr10,fr13
