
sglC02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLight>:
   0:	c6 12       	mov.l	@(72,gbr),r0
   2:	51 40       	mov.l	@(0,r4),r1
   4:	52 41       	mov.l	@(4,r4),r2
   6:	53 42       	mov.l	@(8,r4),r3
   8:	67 03       	mov	r0,r7
   a:	e4 24       	mov	#36,r4
   c:	60 1b       	neg	r1,r0
   e:	17 01       	mov.l	r0,@(4,r7)
  10:	c2 13       	mov.l	r0,@(76,gbr)
  12:	60 2b       	neg	r2,r0
  14:	17 02       	mov.l	r0,@(8,r7)
  16:	c2 14       	mov.l	r0,@(80,gbr)
  18:	60 3b       	neg	r3,r0
  1a:	17 03       	mov.l	r0,@(12,r7)
  1c:	c2 15       	mov.l	r0,@(84,gbr)
  1e:	17 40       	mov.l	r4,@(0,r7)
  20:	77 10       	add	#16,r7
  22:	60 73       	mov	r7,r0
  24:	d1 01       	mov.l	2c <IMM_FRT_INTR>,r1	! 21000000
  26:	c2 12       	mov.l	r0,@(72,gbr)
  28:	00 0b       	rts	
  2a:	21 01       	mov.w	r0,@r1

0000002c <IMM_FRT_INTR>:
  2c:	21 00       	mov.b	r0,@r1
	...
