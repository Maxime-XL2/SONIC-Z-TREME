
sglF00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCurScrn>:
   0:	e1 07       	mov	#7,r1
   2:	21 49       	and	r4,r1
   4:	c7 0c       	mova	38 <scrn_tbl>,r0
   6:	41 00       	shll	r1
   8:	01 1d       	mov.w	@(r0,r1),r1
   a:	c7 10       	mova	4c <CurrentScreen>,r0
   c:	00 0b       	rts	
   e:	20 11       	mov.w	r1,@r0

00000010 <_slCurColor>:
  10:	60 43       	mov	r4,r0
  12:	40 08       	shll2	r0
  14:	40 08       	shll2	r0
  16:	00 0b       	rts	
  18:	c0 21       	mov.b	r0,@(33,gbr)

0000001a <_slLocate>:
  1a:	91 17       	mov.w	4c <CurrentScreen>,r1	! 100
  1c:	00 12       	stc	gbr,r0
  1e:	00 1d       	mov.w	@(r0,r1),r0
  20:	44 00       	shll	r4
  22:	45 18       	shll8	r5
  24:	45 01       	shlr	r5
  26:	61 0c       	extu.b	r0,r1
  28:	d0 07       	mov.l	48 <IMM_ScrollVRAM>,r0	! 25e00000
  2a:	41 28       	shll16	r1
  2c:	41 09       	shlr2	r1
  2e:	41 01       	shlr	r1
  30:	30 1c       	add	r1,r0
  32:	30 4c       	add	r4,r0
  34:	00 0b       	rts	
  36:	30 5c       	add	r5,r0

00000038 <scrn_tbl>:
  38:	01 04       	mov.b	r0,@(r0,r1)
  3a:	01 00       	.word 0x0100
  3c:	01 0c       	mov.b	@(r0,r0),r1
  3e:	01 08       	.word 0x0108
  40:	01 20       	.word 0x0120
  42:	01 10       	.word 0x0110
  44:	01 00       	.word 0x0100
  46:	01 00       	.word 0x0100

00000048 <IMM_ScrollVRAM>:
  48:	25 e0       	mov.b	r14,@r5
	...

0000004c <CurrentScreen>:
  4c:	01 00       	.word 0x0100
