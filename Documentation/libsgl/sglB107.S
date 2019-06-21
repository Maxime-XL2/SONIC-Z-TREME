
sglB107.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialCCalcBitN01>:
   0:	d1 07       	mov.l	20 <IMM_VDP2_PNCN0>,r1	! 60ffcf0
   2:	31 48       	sub	r4,r1
   4:	31 48       	sub	r4,r1
   6:	84 12       	mov.b	@(2,r1),r0
   8:	c9 fe       	and	#-2,r0
   a:	20 5b       	or	r5,r0
   c:	80 12       	mov.b	r0,@(2,r1)
   e:	d1 05       	mov.l	24 <IMM_VDP2_BMPNA>,r1	! 60ffcec
  10:	45 08       	shll2	r5
  12:	31 4c       	add	r4,r1
  14:	60 10       	mov.b	@r1,r0
  16:	45 08       	shll2	r5
  18:	c9 ef       	and	#-17,r0
  1a:	20 5b       	or	r5,r0
  1c:	00 0b       	rts	
  1e:	21 00       	mov.b	r0,@r1

00000020 <IMM_VDP2_PNCN0>:
  20:	06 0f       	mac.l	@r0+,@r6+
  22:	fc f0       	fadd	fr15,fr12

00000024 <IMM_VDP2_BMPNA>:
  24:	06 0f       	mac.l	@r0+,@r6+
  26:	fc ec       	fmov	fr14,fr12
