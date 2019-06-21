
sglG01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSndVolume>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	44 09       	shlr2	r4
   4:	62 03       	mov	r0,r2
   6:	44 01       	shlr	r4
   8:	60 43       	mov	r4,r0
   a:	c9 0f       	and	#15,r0
   c:	80 22       	mov.b	r0,@(2,r2)
   e:	c6 dd       	mov.l	@(884,gbr),r0
  10:	e1 82       	mov	#-126,r1
  12:	40 2b       	jmp	@r0
  14:	22 10       	mov.b	r1,@r2
	...
