
sglC04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slZdspLevel>:
   0:	44 15       	cmp/pl	r4
   2:	8f 0e       	bf.s	22 <bool_error>
   4:	e1 08       	mov	#8,r1
   6:	34 12       	cmp/hs	r1,r4
   8:	8d 0b       	bt.s	22 <bool_error>
   a:	60 43       	mov	r4,r0
   c:	c0 ac       	mov.b	r0,@(172,gbr)
   e:	c6 12       	mov.l	@(72,gbr),r0
  10:	e1 34       	mov	#52,r1
  12:	10 10       	mov.l	r1,@(0,r0)
  14:	10 41       	mov.l	r4,@(4,r0)
  16:	70 08       	add	#8,r0
  18:	d1 03       	mov.l	28 <IMM_FRT_INTR>,r1	! 21000000
  1a:	c2 12       	mov.l	r0,@(72,gbr)
  1c:	21 01       	mov.w	r0,@r1
  1e:	00 0b       	rts	
  20:	e0 01       	mov	#1,r0

00000022 <bool_error>:
  22:	00 0b       	rts	
  24:	e0 00       	mov	#0,r0
	...

00000028 <IMM_FRT_INTR>:
  28:	21 00       	mov.b	r0,@r1
	...
