
sglB091.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slShadowOn>:
   0:	d0 01       	mov.l	8 <IMM_VDP2_SDCTL1>,r0	! 60ffda3
   2:	00 0b       	rts	
   4:	20 40       	mov.b	r4,@r0
	...

00000008 <IMM_VDP2_SDCTL1>:
   8:	06 0f       	mac.l	@r0+,@r6+
   a:	fd a3       	fdiv	fr10,fr13
