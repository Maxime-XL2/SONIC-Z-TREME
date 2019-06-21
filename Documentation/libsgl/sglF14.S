
sglF14.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLocatePage>:
   0:	d0 07       	mov.l	20 <IMM_ScrollVRAM>,r0	! 25e00000
   2:	e1 3f       	mov	#63,r1
   4:	26 19       	and	r1,r6
   6:	46 28       	shll16	r6
   8:	46 09       	shlr2	r6
   a:	46 01       	shlr	r6
   c:	24 19       	and	r1,r4
   e:	44 00       	shll	r4
  10:	25 19       	and	r1,r5
  12:	45 18       	shll8	r5
  14:	45 01       	shlr	r5
  16:	30 4c       	add	r4,r0
  18:	30 5c       	add	r5,r0
  1a:	00 0b       	rts	
  1c:	30 6c       	add	r6,r0
	...

00000020 <IMM_ScrollVRAM>:
  20:	25 e0       	mov.b	r14,@r5
	...
