
sglG06.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSequenceOff>:
   0:	a0 03       	bra	a <sndctrl>
   2:	e5 02       	mov	#2,r5

00000004 <_slSequencePause>:
   4:	a0 01       	bra	a <sndctrl>
   6:	e5 03       	mov	#3,r5

00000008 <_slSequenceCont>:
   8:	e5 04       	mov	#4,r5

0000000a <sndctrl>:
   a:	c6 dc       	mov.l	@(880,gbr),r0
   c:	45 28       	shll16	r5
   e:	62 03       	mov	r0,r2
  10:	25 4b       	or	r4,r5
  12:	c6 dd       	mov.l	@(884,gbr),r0
  14:	45 18       	shll8	r5
  16:	40 2b       	jmp	@r0
  18:	22 52       	mov.l	r5,@r2
	...
