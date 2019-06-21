
sglF28.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMSprPut>:
   0:	d0 0b       	mov.l	30 <IMM_GetBox>,r0	! 0 <_slBMSprPut>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	39 2c       	add	r2,r9
   a:	79 01       	add	#1,r9
   c:	78 ff       	add	#-1,r8

0000000e <slpts_00>:
   e:	63 63       	mov	r6,r3

00000010 <slpts_01>:
  10:	60 94       	mov.b	@r9+,r0
  12:	78 01       	add	#1,r8
  14:	20 08       	tst	r0,r0
  16:	8d 01       	bt.s	1c <slpts_02>
  18:	43 10       	dt	r3
  1a:	28 00       	mov.b	r0,@r8

0000001c <slpts_02>:
  1c:	8b f8       	bf	10 <slpts_01>
  1e:	39 1c       	add	r1,r9
  20:	47 10       	dt	r7
  22:	8f f4       	bf.s	e <slpts_00>
  24:	38 4c       	add	r4,r8
  26:	68 f6       	mov.l	@r15+,r8
  28:	69 f6       	mov.l	@r15+,r9
  2a:	4f 26       	lds.l	@r15+,pr
  2c:	00 0b       	rts	
  2e:	e0 01       	mov	#1,r0

00000030 <IMM_GetBox>:
  30:	00 00       	.word 0x0000
	...
