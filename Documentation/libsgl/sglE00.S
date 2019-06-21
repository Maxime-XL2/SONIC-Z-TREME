
sglE00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slInitEvent>:
   0:	d2 0f       	mov.l	40 <IMM_MaxEvents>,r2	! 0 <_slInitEvent>
   2:	e0 00       	mov	#0,r0
   4:	c2 00       	mov.l	r0,@(0,gbr)
   6:	c2 01       	mov.l	r0,@(4,gbr)
   8:	60 21       	mov.w	@r2,r0
   a:	c1 06       	mov.w	r0,@(12,gbr)
   c:	61 03       	mov	r0,r1
   e:	d2 0d       	mov.l	44 <IMM_EventBuf>,r2	! 0 <_slInitEvent>
  10:	d3 0d       	mov.l	48 <IMM_EventSize>,r3	! 0 <_slInitEvent>
  12:	d0 0e       	mov.l	4c <IMM_RemainEvent>,r0	! 0 <_slInitEvent>
  14:	63 31       	mov.w	@r3,r3

00000016 <inevt_lp_0>:
  16:	20 22       	mov.l	r2,@r0
  18:	32 3c       	add	r3,r2
  1a:	41 10       	dt	r1
  1c:	8f fb       	bf.s	16 <inevt_lp_0>
  1e:	70 04       	add	#4,r0
  20:	d0 0b       	mov.l	50 <IMM_MaxWorks>,r0	! 0 <_slInitEvent>
  22:	60 01       	mov.w	@r0,r0
  24:	c1 07       	mov.w	r0,@(14,gbr)
  26:	61 03       	mov	r0,r1
  28:	d2 0a       	mov.l	54 <IMM_WorkBuf>,r2	! 0 <_slInitEvent>
  2a:	d3 0c       	mov.l	5c <IMM_WorkSize>,r3	! 0 <_slInitEvent>
  2c:	d0 0a       	mov.l	58 <IMM_RemainWork>,r0	! 0 <_slInitEvent>
  2e:	63 31       	mov.w	@r3,r3

00000030 <inevt_lp_1>:
  30:	20 22       	mov.l	r2,@r0
  32:	32 3c       	add	r3,r2
  34:	41 10       	dt	r1
  36:	8f fb       	bf.s	30 <inevt_lp_1>
  38:	70 04       	add	#4,r0
  3a:	00 0b       	rts	
  3c:	00 09       	nop	
	...

00000040 <IMM_MaxEvents>:
  40:	00 00       	.word 0x0000
	...

00000044 <IMM_EventBuf>:
  44:	00 00       	.word 0x0000
	...

00000048 <IMM_EventSize>:
  48:	00 00       	.word 0x0000
	...

0000004c <IMM_RemainEvent>:
  4c:	00 00       	.word 0x0000
	...

00000050 <IMM_MaxWorks>:
  50:	00 00       	.word 0x0000
	...

00000054 <IMM_WorkBuf>:
  54:	00 00       	.word 0x0000
	...

00000058 <IMM_RemainWork>:
  58:	00 00       	.word 0x0000
	...

0000005c <IMM_WorkSize>:
  5c:	00 00       	.word 0x0000
	...
