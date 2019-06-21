
sglG12.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBGMPause>:
   0:	a0 03       	bra	a <bgmctrl>
   2:	e4 03       	mov	#3,r4

00000004 <_slBGMCont>:
   4:	a0 01       	bra	a <bgmctrl>
   6:	e4 04       	mov	#4,r4

00000008 <_slBGMOff>:
   8:	e4 02       	mov	#2,r4

0000000a <bgmctrl>:
   a:	c6 dc       	mov.l	@(880,gbr),r0
   c:	44 28       	shll16	r4
   e:	62 03       	mov	r0,r2
  10:	c6 dd       	mov.l	@(884,gbr),r0
  12:	44 18       	shll8	r4
  14:	40 2b       	jmp	@r0
  16:	12 40       	mov.l	r4,@(0,r2)
