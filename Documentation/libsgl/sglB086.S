
sglB086.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrWindowMode>:
   0:	d0 01       	mov.l	8 <IMM_VDP2_WCTLA>,r0	! 60ffd90
   2:	00 0b       	rts	
   4:	04 54       	mov.b	r5,@(r0,r4)
	...

00000008 <IMM_VDP2_WCTLA>:
   8:	06 0f       	mac.l	@r0+,@r6+
   a:	fd 90       	fadd	fr9,fr13
