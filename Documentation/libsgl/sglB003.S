
sglB003.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slVRAMMode>:
   0:	c4 ce       	mov.b	@(206,gbr),r0
   2:	c9 fc       	and	#-4,r0
   4:	20 4b       	or	r4,r0
   6:	00 0b       	rts	
   8:	c0 ce       	mov.b	r0,@(206,gbr)
	...
