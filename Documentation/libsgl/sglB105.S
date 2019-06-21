
sglB105.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRparaReadCtrlRB>:
   0:	c5 b9       	mov.w	@(370,gbr),r0
   2:	44 18       	shll8	r4
   4:	c9 ff       	and	#-1,r0
   6:	20 4b       	or	r4,r0
   8:	00 0b       	rts	
   a:	c1 b9       	mov.w	r0,@(370,gbr)
