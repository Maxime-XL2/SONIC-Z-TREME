
sglB111.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialPrioBitRbg0>:
   0:	d1 06       	mov.l	1c <IMM_VDP2_PNCN0>,r1	! 60ffcf0
   2:	d2 07       	mov.l	20 <IMM_VDP2_BMPNA>,r2	! 60ffcec
   4:	84 18       	mov.b	@(8,r1),r0
   6:	44 00       	shll	r4
   8:	c9 fd       	and	#-3,r0
   a:	20 4b       	or	r4,r0
   c:	80 18       	mov.b	r0,@(8,r1)
   e:	44 08       	shll2	r4
  10:	84 23       	mov.b	@(3,r2),r0
  12:	44 08       	shll2	r4
  14:	c9 df       	and	#-33,r0
  16:	20 4b       	or	r4,r0
  18:	00 0b       	rts	
  1a:	80 23       	mov.b	r0,@(3,r2)

0000001c <IMM_VDP2_PNCN0>:
  1c:	06 0f       	mac.l	@r0+,@r6+
  1e:	fc f0       	fadd	fr15,fr12

00000020 <IMM_VDP2_BMPNA>:
  20:	06 0f       	mac.l	@r0+,@r6+
  22:	fc ec       	fmov	fr14,fr12
