
sglB112.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrScaleNbg0>:
   0:	d6 0c       	mov.l	34 <IMM_VDP2_ZMXN0>,r6	! 60ffd38
   2:	a0 07       	bra	14 <SetScrScale>
   4:	e1 01       	mov	#1,r1

00000006 <_slScrScaleNbg1>:
   6:	d6 0c       	mov.l	38 <IMM_VDP2_ZMXN1>,r6	! 60ffd48
   8:	a0 04       	bra	14 <SetScrScale>
   a:	e1 01       	mov	#1,r1

0000000c <_slScrScaleR>:
   c:	c6 78       	mov.l	@(480,gbr),r0
   e:	e6 4c       	mov	#76,r6
  10:	36 0c       	add	r0,r6
  12:	e1 01       	mov	#1,r1

00000014 <SetScrScale>:
  14:	d2 06       	mov.l	30 <IMM_LABEL0>,r2	! 0 <_slScrScaleNbg0>
  16:	e3 ff       	mov	#-1,r3
  18:	43 18       	shll8	r3
  1a:	13 40       	mov.l	r4,@(0,r3)
  1c:	13 14       	mov.l	r1,@(16,r3)
  1e:	13 25       	mov.l	r2,@(20,r3)
  20:	50 37       	mov.l	@(28,r3),r0
  22:	13 50       	mov.l	r5,@(0,r3)
  24:	13 14       	mov.l	r1,@(16,r3)
  26:	13 25       	mov.l	r2,@(20,r3)
  28:	26 02       	mov.l	r0,@r6
  2a:	50 37       	mov.l	@(28,r3),r0
  2c:	00 0b       	rts	
  2e:	16 01       	mov.l	r0,@(4,r6)

00000030 <IMM_LABEL0>:
  30:	00 00       	.word 0x0000
	...

00000034 <IMM_VDP2_ZMXN0>:
  34:	06 0f       	mac.l	@r0+,@r6+
  36:	fd 38       	fmov	@r3,fr13

00000038 <IMM_VDP2_ZMXN1>:
  38:	06 0f       	mac.l	@r0+,@r6+
  3a:	fd 48       	fmov	@r4,fr13
