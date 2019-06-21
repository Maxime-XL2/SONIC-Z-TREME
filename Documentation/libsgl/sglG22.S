
sglG22.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPCMOff>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	4f 22       	sts.l	pr,@-r15
   4:	62 03       	mov	r0,r2
   6:	84 41       	mov.b	@(1,r4),r0
   8:	80 22       	mov.b	r0,@(2,r2)
   a:	40 08       	shll2	r0
   c:	66 03       	mov	r0,r6
   e:	40 08       	shll2	r0
  10:	36 0c       	add	r0,r6
  12:	c6 db       	mov.l	@(876,gbr),r0
  14:	36 0c       	add	r0,r6
  16:	84 60       	mov.b	@(0,r6),r0
  18:	20 08       	tst	r0,r0
  1a:	8d 0d       	bt.s	38 <pcmof_01>
  1c:	e0 00       	mov	#0,r0
  1e:	64 61       	mov.w	@r6,r4
  20:	81 60       	mov.w	r0,@(0,r6)
  22:	c6 dd       	mov.l	@(884,gbr),r0
  24:	e1 86       	mov	#-122,r1
  26:	40 0b       	jsr	@r0
  28:	22 10       	mov.b	r1,@r2
  2a:	d0 05       	mov.l	40 <IMM_slSndFlush>,r0	! 0 <_slPCMOff>
  2c:	40 0b       	jsr	@r0
  2e:	00 09       	nop	
  30:	4f 26       	lds.l	@r15+,pr
  32:	d1 04       	mov.l	44 <IMM_RetPCMBuf>,r1	! 0 <_slPCMOff>
  34:	41 2b       	jmp	@r1
  36:	55 62       	mov.l	@(8,r6),r5

00000038 <pcmof_01>:
  38:	4f 26       	lds.l	@r15+,pr
  3a:	00 0b       	rts	
  3c:	e0 01       	mov	#1,r0
	...

00000040 <IMM_slSndFlush>:
  40:	00 00       	.word 0x0000
	...

00000044 <IMM_RetPCMBuf>:
  44:	00 00       	.word 0x0000
	...
