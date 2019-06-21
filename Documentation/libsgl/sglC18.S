
sglC18.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDispSpriteSZ>:
   0:	d0 18       	mov.l	64 <IMM_SpriteEntry>,r0	! 0 <_slDispSpriteSZ>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	52 42       	mov.l	@(8,r4),r2
   8:	4f 26       	lds.l	@r15+,pr
   a:	2f 96       	mov.l	r9,@-r15
   c:	2f 86       	mov.l	r8,@-r15
   e:	c5 4c       	mov.w	@(152,gbr),r0
  10:	68 42       	mov.l	@r4,r8
  12:	61 89       	swap.w	r8,r1
  14:	61 1f       	exts.w	r1,r1
  16:	31 0c       	add	r0,r1
  18:	c5 46       	mov.w	@(140,gbr),r0
  1a:	59 41       	mov.l	@(4,r4),r9
  1c:	31 06       	cmp/hi	r0,r1
  1e:	8d 1d       	bt.s	5c <dssz_09>
  20:	61 99       	swap.w	r9,r1
  22:	c5 4d       	mov.w	@(154,gbr),r0
  24:	61 1f       	exts.w	r1,r1
  26:	31 0c       	add	r0,r1
  28:	c5 47       	mov.w	@(142,gbr),r0
  2a:	31 06       	cmp/hi	r0,r1
  2c:	8d 16       	bt.s	5c <dssz_09>
  2e:	61 55       	mov.w	@r5+,r1
  30:	c6 0c       	mov.l	@(48,gbr),r0
  32:	41 08       	shll2	r1
  34:	67 03       	mov	r0,r7
  36:	c6 0f       	mov.l	@(60,gbr),r0
  38:	41 00       	shll	r1
  3a:	31 0c       	add	r0,r1
  3c:	53 11       	mov.l	@(4,r1),r3
  3e:	85 52       	mov.w	@(4,r5),r0
  40:	17 32       	mov.l	r3,@(8,r7)
  42:	22 0d       	xtrct	r0,r2
  44:	61 55       	mov.w	@r5+,r1
  46:	63 55       	mov.w	@r5+,r3
  48:	17 27       	mov.l	r2,@(28,r7)
  4a:	43 28       	shll16	r3
  4c:	23 1d       	xtrct	r1,r3
  4e:	17 31       	mov.l	r3,@(4,r7)
  50:	75 02       	add	#2,r5
  52:	d0 05       	mov.l	68 <IMM_RotSprite>,r0	! 0 <_slDispSpriteSZ>
  54:	52 43       	mov.l	@(12,r4),r2
  56:	53 44       	mov.l	@(16,r4),r3
  58:	40 2b       	jmp	@r0
  5a:	65 51       	mov.w	@r5,r5

0000005c <dssz_09>:
  5c:	68 f6       	mov.l	@r15+,r8
  5e:	69 f6       	mov.l	@r15+,r9
  60:	00 0b       	rts	
  62:	e0 00       	mov	#0,r0

00000064 <IMM_SpriteEntry>:
  64:	00 00       	.word 0x0000
	...

00000068 <IMM_RotSprite>:
  68:	00 00       	.word 0x0000
	...
