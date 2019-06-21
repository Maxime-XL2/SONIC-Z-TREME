
sglG10.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSequenceReset>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	c6 dc       	mov.l	@(880,gbr),r0
   4:	44 18       	shll8	r4
   6:	62 03       	mov	r0,r2
   8:	60 43       	mov	r4,r0
   a:	cb 7f       	or	#127,r0
   c:	81 21       	mov.w	r0,@(2,r2)
   e:	e0 00       	mov	#0,r0
  10:	80 24       	mov.b	r0,@(4,r2)
  12:	c6 dd       	mov.l	@(884,gbr),r0
  14:	e1 05       	mov	#5,r1
  16:	67 03       	mov	r0,r7
  18:	47 0b       	jsr	@r7
  1a:	22 10       	mov.b	r1,@r2
  1c:	60 48       	swap.b	r4,r0
  1e:	80 22       	mov.b	r0,@(2,r2)
  20:	e0 00       	mov	#0,r0
  22:	81 22       	mov.w	r0,@(4,r2)
  24:	e0 07       	mov	#7,r0
  26:	47 0b       	jsr	@r7
  28:	80 20       	mov.b	r0,@(0,r2)
  2a:	e0 80       	mov	#-128,r0
  2c:	60 0c       	extu.b	r0,r0
  2e:	20 4b       	or	r4,r0
  30:	81 21       	mov.w	r0,@(2,r2)
  32:	e0 0e       	mov	#14,r0
  34:	4f 26       	lds.l	@r15+,pr
  36:	47 2b       	jmp	@r7
  38:	80 20       	mov.b	r0,@(0,r2)
	...
