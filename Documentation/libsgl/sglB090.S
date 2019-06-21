
sglB090.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLineScrollMode>:
   0:	d0 01       	mov.l	8 <IMM_VDP2_SCRCTL>,r0	! 60ffd5a
   2:	00 0b       	rts	
   4:	04 54       	mov.b	r5,@(r0,r4)
	...

00000008 <IMM_VDP2_SCRCTL>:
   8:	06 0f       	mac.l	@r0+,@r6+
   a:	fd 5a       	fmov	fr5,@r13
