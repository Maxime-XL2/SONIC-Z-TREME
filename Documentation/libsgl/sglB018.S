
sglB018.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLine1ColSet>:
   0:	d1 03       	mov.l	10 <IMM_VDP2_TOP_ADDR>,r1	! 25e00000
   2:	31 4c       	add	r4,r1
   4:	21 51       	mov.w	r5,@r1
   6:	44 01       	shlr	r4
   8:	60 43       	mov	r4,r0
   a:	00 0b       	rts	
   c:	c2 5a       	mov.l	r0,@(360,gbr)
	...

00000010 <IMM_VDP2_TOP_ADDR>:
  10:	25 e0       	mov.b	r14,@r5
	...
