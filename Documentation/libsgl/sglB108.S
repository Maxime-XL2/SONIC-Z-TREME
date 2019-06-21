
sglB108.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialCCalcBitScr>:
   0:	d1 04       	mov.l	14 <IMM_VDP2_PNCN0>,r1	! 60ffcf0
   2:	e0 01       	mov	#1,r0
   4:	20 4a       	xor	r4,r0
   6:	30 0c       	add	r0,r0
   8:	31 0c       	add	r0,r1
   a:	60 10       	mov.b	@r1,r0
   c:	c9 fe       	and	#-2,r0
   e:	20 5b       	or	r5,r0
  10:	00 0b       	rts	
  12:	21 00       	mov.b	r0,@r1

00000014 <IMM_VDP2_PNCN0>:
  14:	06 0f       	mac.l	@r0+,@r6+
  16:	fc f0       	fadd	fr15,fr12
