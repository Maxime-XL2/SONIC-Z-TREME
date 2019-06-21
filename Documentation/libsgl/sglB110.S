
sglB110.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSpecialPrioBitScr>:
   0:	d1 05       	mov.l	18 <IMM_VDP2_PNCN0>,r1	! 60ffcf0
   2:	e0 01       	mov	#1,r0
   4:	20 4a       	xor	r4,r0
   6:	30 0c       	add	r0,r0
   8:	31 0c       	add	r0,r1
   a:	60 10       	mov.b	@r1,r0
   c:	c9 fd       	and	#-3,r0
   e:	45 00       	shll	r5
  10:	20 5b       	or	r5,r0
  12:	00 0b       	rts	
  14:	21 00       	mov.b	r0,@r1
	...

00000018 <IMM_VDP2_PNCN0>:
  18:	06 0f       	mac.l	@r0+,@r6+
  1a:	fc f0       	fadd	fr15,fr12
