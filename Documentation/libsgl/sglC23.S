
sglC23.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSetScreenDist>:
   0:	44 11       	cmp/pz	r4
   2:	8d 01       	bt.s	8 <scds_0>
   4:	c6 12       	mov.l	@(72,gbr),r0
   6:	64 4b       	neg	r4,r4

00000008 <scds_0>:
   8:	e2 0c       	mov	#12,r2
   a:	10 20       	mov.l	r2,@(0,r0)
   c:	10 41       	mov.l	r4,@(4,r0)
   e:	70 08       	add	#8,r0
  10:	d1 09       	mov.l	38 <IMM_FRT_INTR>,r1	! 21000000
  12:	c2 12       	mov.l	r0,@(72,gbr)
  14:	21 01       	mov.w	r0,@r1
  16:	60 43       	mov	r4,r0
  18:	c2 1a       	mov.l	r0,@(104,gbr)
  1a:	c4 b0       	mov.b	@(176,gbr),r0
  1c:	c8 08       	tst	#8,r0
  1e:	89 00       	bt	22 <pspc_1>
  20:	44 01       	shlr	r4

00000022 <pspc_1>:
  22:	d2 04       	mov.l	34 <IMM_RotScrParA>,r2	! 60ffe54
  24:	60 49       	swap.w	r4,r0
  26:	22 01       	mov.w	r0,@r2
  28:	81 24       	mov.w	r0,@(8,r2)
  2a:	72 68       	add	#104,r2
  2c:	22 01       	mov.w	r0,@r2
  2e:	00 0b       	rts	
  30:	81 24       	mov.w	r0,@(8,r2)
	...

00000034 <IMM_RotScrParA>:
  34:	06 0f       	mac.l	@r0+,@r6+
  36:	fe 54       	fcmp/eq	fr5,fr14

00000038 <IMM_FRT_INTR>:
  38:	21 00       	mov.b	r0,@r1
	...
