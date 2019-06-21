
sglB042.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCurRpara>:
   0:	d0 02       	mov.l	c <IMM_RotScrParA_2>,r0	! 60ffe1c
   2:	24 48       	tst	r4,r4
   4:	89 00       	bt	8 <scr_set>
   6:	70 68       	add	#104,r0

00000008 <scr_set>:
   8:	00 0b       	rts	
   a:	c2 78       	mov.l	r0,@(480,gbr)

0000000c <IMM_RotScrParA_2>:
   c:	06 0f       	mac.l	@r0+,@r6+
   e:	fe 1c       	fmov	fr1,fr14
