
sglB058.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPlaneNbg3>:
   0:	c4 fb       	mov.b	@(251,gbr),r0
   2:	44 18       	shll8	r4
   4:	c9 3f       	and	#63,r0
   6:	44 09       	shlr2	r4
   8:	20 4b       	or	r4,r0
   a:	00 0b       	rts	
   c:	c0 fb       	mov.b	r0,@(251,gbr)
	...
