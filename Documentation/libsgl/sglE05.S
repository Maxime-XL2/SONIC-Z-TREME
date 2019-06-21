
sglE05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slExecuteEvent>:
   0:	c6 00       	mov.l	@(0,gbr),r0
   2:	20 08       	tst	r0,r0
   4:	89 09       	bt	1a <exevt_9>
   6:	4f 22       	sts.l	pr,@-r15

00000008 <exevt_1>:
   8:	c2 02       	mov.l	r0,@(8,gbr)
   a:	51 03       	mov.l	@(12,r0),r1
   c:	41 0b       	jsr	@r1
   e:	64 03       	mov	r0,r4
  10:	c6 02       	mov.l	@(8,gbr),r0
  12:	50 01       	mov.l	@(4,r0),r0
  14:	20 08       	tst	r0,r0
  16:	8b f7       	bf	8 <exevt_1>
  18:	4f 26       	lds.l	@r15+,pr

0000001a <exevt_9>:
  1a:	00 0b       	rts	
  1c:	00 09       	nop	
	...
