
sglA36.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCheckOnScreen0>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	44 21       	shar	r4
   4:	66 03       	mov	r0,r6
   6:	c6 1a       	mov.l	@(104,gbr),r0
   8:	55 6b       	mov.l	@(44,r6),r5
   a:	62 03       	mov	r0,r2
   c:	c4 ac       	mov.b	@(172,gbr),r0
   e:	e7 ff       	mov	#-1,r7
  10:	47 18       	shll8	r7
  12:	17 50       	mov.l	r5,@(0,r7)
  14:	61 29       	swap.w	r2,r1
  16:	61 1f       	exts.w	r1,r1
  18:	17 14       	mov.l	r1,@(16,r7)
  1a:	61 23       	mov	r2,r1
  1c:	41 28       	shll16	r1
  1e:	17 15       	mov.l	r1,@(20,r7)

00000020 <chons_11>:
  20:	40 10       	dt	r0
  22:	8f fd       	bf.s	20 <chons_11>
  24:	42 01       	shlr	r2
  26:	35 23       	cmp/ge	r2,r5
  28:	8f 26       	bf.s	78 <before_screen>
  2a:	61 53       	mov	r5,r1
  2c:	c5 38       	mov.w	@(112,gbr),r0
  2e:	31 28       	sub	r2,r1
  30:	40 28       	shll16	r0
  32:	31 06       	cmp/hi	r0,r1
  34:	8d 1e       	bt.s	74 <out_of_screen>
  36:	c5 3c       	mov.w	@(120,gbr),r0
  38:	51 63       	mov.l	@(12,r6),r1
  3a:	62 03       	mov	r0,r2
  3c:	c5 3e       	mov.w	@(124,gbr),r0
  3e:	57 77       	mov.l	@(28,r7),r7
  40:	37 4d       	dmuls.l	r4,r7
  42:	04 0a       	sts	mach,r4
  44:	37 1d       	dmuls.l	r1,r7
  46:	01 0a       	sts	mach,r1
  48:	31 48       	sub	r4,r1
  4a:	31 07       	cmp/gt	r0,r1
  4c:	8d 12       	bt.s	74 <out_of_screen>
  4e:	31 4c       	add	r4,r1
  50:	31 4c       	add	r4,r1
  52:	32 17       	cmp/gt	r1,r2
  54:	8d 0e       	bt.s	74 <out_of_screen>
  56:	51 67       	mov.l	@(28,r6),r1
  58:	c5 3d       	mov.w	@(122,gbr),r0
  5a:	37 1d       	dmuls.l	r1,r7
  5c:	62 03       	mov	r0,r2
  5e:	c5 3f       	mov.w	@(126,gbr),r0
  60:	01 0a       	sts	mach,r1
  62:	31 48       	sub	r4,r1
  64:	31 07       	cmp/gt	r0,r1
  66:	8d 05       	bt.s	74 <out_of_screen>
  68:	31 4c       	add	r4,r1
  6a:	31 4c       	add	r4,r1
  6c:	32 17       	cmp/gt	r1,r2
  6e:	89 01       	bt	74 <out_of_screen>
  70:	00 0b       	rts	
  72:	60 53       	mov	r5,r0

00000074 <out_of_screen>:
  74:	00 0b       	rts	
  76:	e0 fe       	mov	#-2,r0

00000078 <before_screen>:
  78:	00 0b       	rts	
  7a:	e0 ff       	mov	#-1,r0
