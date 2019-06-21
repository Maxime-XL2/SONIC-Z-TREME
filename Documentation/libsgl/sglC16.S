
sglC16.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDynamicFrame>:
   0:	c4 b0       	mov.b	@(176,gbr),r0
   2:	24 48       	tst	r4,r4
   4:	8d 1d       	bt.s	42 <dnfm_08>
   6:	c9 7f       	and	#127,r0
   8:	c8 10       	tst	#16,r0
   a:	8f 1d       	bf.s	48 <dnfm_09>
   c:	67 03       	mov	r0,r7
   e:	d2 10       	mov.l	50 <IMM_SpritePort>,r2	! 25d00000
  10:	85 28       	mov.w	@(16,r2),r0
  12:	c8 02       	tst	#2,r0
  14:	8f 13       	bf.s	3e <dnfm_05>
  16:	c5 09       	mov.w	@(18,gbr),r0
  18:	e1 03       	mov	#3,r1
  1a:	2f 06       	mov.l	r0,@-r15
  1c:	60 18       	swap.b	r1,r0
  1e:	70 03       	add	#3,r0
  20:	c1 09       	mov.w	r0,@(18,gbr)
  22:	e0 03       	mov	#3,r0
  24:	81 21       	mov.w	r0,@(2,r2)
  26:	85 28       	mov.w	@(16,r2),r0

00000028 <dnfm_01>:
  28:	c8 02       	tst	#2,r0
  2a:	8f 06       	bf.s	3a <dnfm_03>
  2c:	e0 7f       	mov	#127,r0

0000002e <dnfm_02>:
  2e:	40 10       	dt	r0
  30:	8b fd       	bf	2e <dnfm_02>
  32:	e0 03       	mov	#3,r0
  34:	c0 13       	mov.b	r0,@(19,gbr)
  36:	af f7       	bra	28 <dnfm_01>
  38:	85 28       	mov.w	@(16,r2),r0

0000003a <dnfm_03>:
  3a:	60 f6       	mov.l	@r15+,r0
  3c:	c1 09       	mov.w	r0,@(18,gbr)

0000003e <dnfm_05>:
  3e:	60 73       	mov	r7,r0
  40:	cb 80       	or	#-128,r0

00000042 <dnfm_08>:
  42:	c0 b0       	mov.b	r0,@(176,gbr)
  44:	00 0b       	rts	
  46:	e0 01       	mov	#1,r0

00000048 <dnfm_09>:
  48:	c9 7f       	and	#127,r0
  4a:	c0 b0       	mov.b	r0,@(176,gbr)
  4c:	00 0b       	rts	
  4e:	e0 00       	mov	#0,r0

00000050 <IMM_SpritePort>:
  50:	25 d0       	mov.b	r13,@r5
	...
