
sglC20.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <SpriteEntry>:
   0:	e0 01       	mov	#1,r0
   2:	c0 73       	mov.b	r0,@(115,gbr)
   4:	c5 55       	mov.w	@(170,gbr),r0
   6:	70 01       	add	#1,r0
   8:	c1 55       	mov.w	r0,@(170,gbr)
   a:	c5 44       	mov.w	@(136,gbr),r0
   c:	67 0d       	extu.w	r0,r7
   e:	c5 3a       	mov.w	@(116,gbr),r0
  10:	60 0d       	extu.w	r0,r0
  12:	30 72       	cmp/hs	r7,r0
  14:	8d 11       	bt.s	3a <srent_09>
  16:	67 03       	mov	r0,r7
  18:	c6 1a       	mov.l	@(104,gbr),r0
  1a:	77 01       	add	#1,r7
  1c:	63 03       	mov	r0,r3
  1e:	c4 ac       	mov.b	@(172,gbr),r0

00000020 <srent_00>:
  20:	40 10       	dt	r0
  22:	8f fd       	bf.s	20 <srent_00>
  24:	43 01       	shlr	r3
  26:	33 23       	cmp/ge	r2,r3
  28:	8d 07       	bt.s	3a <srent_09>
  2a:	32 38       	sub	r3,r2
  2c:	c5 38       	mov.w	@(112,gbr),r0
  2e:	40 28       	shll16	r0
  30:	32 07       	cmp/gt	r0,r2
  32:	8d 02       	bt.s	3a <srent_09>
  34:	60 73       	mov	r7,r0
  36:	00 0b       	rts	
  38:	c1 3a       	mov.w	r0,@(116,gbr)

0000003a <srent_09>:
  3a:	4f 26       	lds.l	@r15+,pr
  3c:	00 0b       	rts	
  3e:	e0 00       	mov	#0,r0
