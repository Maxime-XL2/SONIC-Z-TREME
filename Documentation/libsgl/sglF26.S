
sglF26.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMGet>:
   0:	d0 09       	mov.l	28 <IMM_GetBox>,r0	! 0 <_slBMGet>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	39 2c       	add	r2,r9

0000000a <slgt_00>:
   a:	63 63       	mov	r6,r3

0000000c <slgt_01>:
   c:	60 84       	mov.b	@r8+,r0
   e:	79 01       	add	#1,r9
  10:	43 10       	dt	r3
  12:	8f fb       	bf.s	c <slgt_01>
  14:	29 00       	mov.b	r0,@r9
  16:	39 1c       	add	r1,r9
  18:	47 10       	dt	r7
  1a:	8f f6       	bf.s	a <slgt_00>
  1c:	38 4c       	add	r4,r8
  1e:	68 f6       	mov.l	@r15+,r8
  20:	69 f6       	mov.l	@r15+,r9
  22:	4f 26       	lds.l	@r15+,pr
  24:	00 0b       	rts	
  26:	e0 01       	mov	#1,r0

00000028 <IMM_GetBox>:
  28:	00 00       	.word 0x0000
	...
