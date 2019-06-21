
sglF12.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_reset_vbar>:
   0:	a0 04       	bra	c <vbar_on>
   2:	e2 00       	mov	#0,r2

00000004 <_set_vbar>:
   4:	c4 21       	mov.b	@(33,gbr),r0
   6:	e2 02       	mov	#2,r2
   8:	40 18       	shll8	r0
   a:	22 0b       	or	r0,r2

0000000c <vbar_on>:
   c:	d1 0d       	mov.l	44 <IMM_CurrentScreen>,r1	! 0 <_reset_vbar>
   e:	e5 80       	mov	#-128,r5
  10:	60 11       	mov.w	@r1,r0
  12:	01 12       	stc	gbr,r1
  14:	00 1d       	mov.w	@(r0,r1),r0
  16:	65 5c       	extu.b	r5,r5
  18:	61 0c       	extu.b	r0,r1
  1a:	d3 09       	mov.l	40 <IMM_ScrollVRAM>,r3	! 25e00000
  1c:	41 28       	shll16	r1
  1e:	41 09       	shlr2	r1
  20:	41 01       	shlr	r1
  22:	33 1c       	add	r1,r3
  24:	c4 b0       	mov.b	@(176,gbr),r0
  26:	34 4c       	add	r4,r4
  28:	64 4c       	extu.b	r4,r4
  2a:	33 4c       	add	r4,r3
  2c:	c9 10       	and	#16,r0
  2e:	70 10       	add	#16,r0
  30:	40 00       	shll	r0

00000032 <vbar_lp>:
  32:	23 21       	mov.w	r2,@r3
  34:	40 10       	dt	r0
  36:	8f fc       	bf.s	32 <vbar_lp>
  38:	33 5c       	add	r5,r3
  3a:	00 0b       	rts	
  3c:	00 09       	nop	
	...

00000040 <IMM_ScrollVRAM>:
  40:	25 e0       	mov.b	r14,@r5
	...

00000044 <IMM_CurrentScreen>:
  44:	00 00       	.word 0x0000
	...
