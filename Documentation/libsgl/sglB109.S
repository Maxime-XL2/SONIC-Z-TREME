
sglB109.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialCCalcBitRbg0>:
   0:	d1 06       	mov.l	1c <IMM_VDP2_PNCN0>,r1	! 60ffcf0
   2:	d2 07       	mov.l	20 <IMM_VDP2_BMPNA>,r2	! 60ffcec
   4:	84 18       	mov.b	@(8,r1),r0
   6:	c9 fe       	and	#-2,r0
   8:	20 4b       	or	r4,r0
   a:	80 18       	mov.b	r0,@(8,r1)
   c:	44 08       	shll2	r4
   e:	84 23       	mov.b	@(3,r2),r0
  10:	44 08       	shll2	r4
  12:	c9 ef       	and	#-17,r0
  14:	20 4b       	or	r4,r0
  16:	00 0b       	rts	
  18:	80 23       	mov.b	r0,@(3,r2)
	...

0000001c <IMM_VDP2_PNCN0>:
  1c:	06 0f       	mac.l	@r0+,@r6+
  1e:	fc f0       	fadd	fr15,fr12

00000020 <IMM_VDP2_BMPNA>:
  20:	06 0f       	mac.l	@r0+,@r6+
  22:	fc ec       	fmov	fr14,fr12
