
sglB048.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slOverRB>:
   0:	c4 fa       	mov.b	@(250,gbr),r0
   2:	44 18       	shll8	r4
   4:	c9 3f       	and	#63,r0
   6:	44 09       	shlr2	r4
   8:	20 4b       	or	r4,r0
   a:	00 0b       	rts	
   c:	c0 fa       	mov.b	r0,@(250,gbr)
	...
