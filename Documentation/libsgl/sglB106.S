
sglB106.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialPrioBitN01>:
   0:	d1 08       	mov.l	24 <IMM_VDP2_PNCN0>,r1	! 60ffcf0
   2:	31 48       	sub	r4,r1
   4:	31 48       	sub	r4,r1
   6:	84 12       	mov.b	@(2,r1),r0
   8:	45 00       	shll	r5
   a:	c9 fd       	and	#-3,r0
   c:	20 5b       	or	r5,r0
   e:	80 12       	mov.b	r0,@(2,r1)
  10:	d1 05       	mov.l	28 <IMM_VDP2_BMPNA>,r1	! 60ffcec
  12:	45 08       	shll2	r5
  14:	31 4c       	add	r4,r1
  16:	60 10       	mov.b	@r1,r0
  18:	45 08       	shll2	r5
  1a:	c9 df       	and	#-33,r0
  1c:	20 5b       	or	r5,r0
  1e:	00 0b       	rts	
  20:	21 00       	mov.b	r0,@r1
	...

00000024 <IMM_VDP2_PNCN0>:
  24:	06 0f       	mac.l	@r0+,@r6+
  26:	fc f0       	fadd	fr15,fr12

00000028 <IMM_VDP2_BMPNA>:
  28:	06 0f       	mac.l	@r0+,@r6+
  2a:	fc ec       	fmov	fr14,fr12
