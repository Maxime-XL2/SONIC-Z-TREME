
sglB046.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slZrotR>:
   0:	e0 00       	mov	#0,r0
   2:	c0 cc       	mov.b	r0,@(204,gbr)
   4:	c6 78       	mov.l	@(480,gbr),r0
   6:	d1 06       	mov.l	20 <IMM_GetSinCos>,r1	! 0 <_slZrotR>
   8:	4f 22       	sts.l	pr,@-r15
   a:	41 0b       	jsr	@r1
   c:	67 03       	mov	r0,r7
   e:	17 4a       	mov.l	r4,@(40,r7)
  10:	64 4b       	neg	r4,r4
  12:	17 48       	mov.l	r4,@(32,r7)
  14:	4f 26       	lds.l	@r15+,pr
  16:	17 57       	mov.l	r5,@(28,r7)
  18:	e0 01       	mov	#1,r0
  1a:	c0 cc       	mov.b	r0,@(204,gbr)
  1c:	00 0b       	rts	
  1e:	17 5b       	mov.l	r5,@(44,r7)

00000020 <IMM_GetSinCos>:
  20:	00 00       	.word 0x0000
	...
