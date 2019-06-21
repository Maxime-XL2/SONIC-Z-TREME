
sglC17.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispSpriteHV>:
   0:	d0 10       	mov.l	44 <IMM_SpriteEntry>,r0	! 0 <_slDispSpriteHV>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	52 42       	mov.l	@(8,r4),r2
   8:	4f 26       	lds.l	@r15+,pr
   a:	c6 0c       	mov.l	@(48,gbr),r0
   c:	61 55       	mov.w	@r5+,r1
   e:	67 03       	mov	r0,r7
  10:	85 52       	mov.w	@(4,r5),r0
  12:	41 08       	shll2	r1
  14:	22 0d       	xtrct	r0,r2
  16:	17 27       	mov.l	r2,@(28,r7)
  18:	c6 0f       	mov.l	@(60,gbr),r0
  1a:	41 00       	shll	r1
  1c:	31 0c       	add	r0,r1
  1e:	62 15       	mov.w	@r1+,r2
  20:	50 43       	mov.l	@(12,r4),r0
  22:	63 15       	mov.w	@r1+,r3
  24:	02 07       	mul.l	r0,r2
  26:	50 44       	mov.l	@(16,r4),r0
  28:	61 12       	mov.l	@r1,r1
  2a:	02 1a       	sts	macl,r2
  2c:	03 07       	mul.l	r0,r3
  2e:	60 55       	mov.w	@r5+,r0
  30:	17 12       	mov.l	r1,@(8,r7)
  32:	03 1a       	sts	macl,r3
  34:	61 55       	mov.w	@r5+,r1
  36:	75 02       	add	#2,r5
  38:	41 28       	shll16	r1
  3a:	21 0d       	xtrct	r0,r1
  3c:	d0 02       	mov.l	48 <IMM_RotSprite>,r0	! 0 <_slDispSpriteHV>
  3e:	65 51       	mov.w	@r5,r5
  40:	40 2b       	jmp	@r0
  42:	17 11       	mov.l	r1,@(4,r7)

00000044 <IMM_SpriteEntry>:
  44:	00 00       	.word 0x0000
	...

00000048 <IMM_RotSprite>:
  48:	00 00       	.word 0x0000
	...
