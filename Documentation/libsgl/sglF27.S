
sglF27.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMPut>:
   0:	d0 0a       	mov.l	2c <IMM_GetBox>,r0	! 0 <_slBMPut>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	39 2c       	add	r2,r9
   a:	79 01       	add	#1,r9
   c:	78 ff       	add	#-1,r8

0000000e <slpt_00>:
   e:	63 63       	mov	r6,r3

00000010 <slpt_01>:
  10:	60 94       	mov.b	@r9+,r0
  12:	78 01       	add	#1,r8
  14:	43 10       	dt	r3
  16:	8f fb       	bf.s	10 <slpt_01>
  18:	28 00       	mov.b	r0,@r8
  1a:	39 1c       	add	r1,r9
  1c:	47 10       	dt	r7
  1e:	8f f6       	bf.s	e <slpt_00>
  20:	38 4c       	add	r4,r8
  22:	68 f6       	mov.l	@r15+,r8
  24:	69 f6       	mov.l	@r15+,r9
  26:	4f 26       	lds.l	@r15+,pr
  28:	00 0b       	rts	
  2a:	e0 01       	mov	#1,r0

0000002c <IMM_GetBox>:
  2c:	00 00       	.word 0x0000
	...
