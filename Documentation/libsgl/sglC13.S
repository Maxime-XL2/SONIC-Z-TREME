
sglC13.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPutPolygonS>:
   0:	e0 01       	mov	#1,r0
   2:	c0 73       	mov.b	r0,@(115,gbr)
   4:	c5 55       	mov.w	@(170,gbr),r0
   6:	70 01       	add	#1,r0
   8:	c1 55       	mov.w	r0,@(170,gbr)
   a:	c6 22       	mov.l	@(136,gbr),r0
   c:	51 41       	mov.l	@(4,r4),r1
   e:	63 03       	mov	r0,r3
  10:	c6 1d       	mov.l	@(116,gbr),r0
  12:	62 3d       	extu.w	r3,r2
  14:	65 0d       	extu.w	r0,r5
  16:	35 1c       	add	r1,r5
  18:	35 26       	cmp/hi	r2,r5
  1a:	8d 42       	bt.s	a2 <ptpl_09>
  1c:	45 28       	shll16	r5
  1e:	52 43       	mov.l	@(12,r4),r2
  20:	40 29       	shlr16	r0
  22:	30 2c       	add	r2,r0
  24:	43 29       	shlr16	r3
  26:	30 36       	cmp/hi	r3,r0
  28:	8d 3b       	bt.s	a2 <ptpl_09>
  2a:	25 0d       	xtrct	r0,r5
  2c:	c6 12       	mov.l	@(72,gbr),r0
  2e:	67 03       	mov	r0,r7
  30:	c6 07       	mov.l	@(28,gbr),r0
  32:	17 11       	mov.l	r1,@(4,r7)
  34:	17 23       	mov.l	r2,@(12,r7)
  36:	66 03       	mov	r0,r6
  38:	c6 09       	mov.l	@(36,gbr),r0
  3a:	41 08       	shll2	r1
  3c:	41 08       	shll2	r1
  3e:	30 1c       	add	r1,r0
  40:	c2 09       	mov.l	r0,@(36,gbr)
  42:	e0 fc       	mov	#-4,r0
  44:	24 09       	and	r0,r4
  46:	51 40       	mov.l	@(0,r4),r1
  48:	52 42       	mov.l	@(8,r4),r2
  4a:	53 44       	mov.l	@(16,r4),r3
  4c:	21 09       	and	r0,r1
  4e:	22 09       	and	r0,r2
  50:	e0 fe       	mov	#-2,r0
  52:	23 09       	and	r0,r3
  54:	17 12       	mov.l	r1,@(8,r7)
  56:	17 24       	mov.l	r2,@(16,r7)
  58:	17 35       	mov.l	r3,@(20,r7)
  5a:	e1 14       	mov	#20,r1
  5c:	17 10       	mov.l	r1,@(0,r7)
  5e:	60 53       	mov	r5,r0
  60:	c2 1d       	mov.l	r0,@(116,gbr)
  62:	77 18       	add	#24,r7
  64:	50 60       	mov.l	@(0,r6),r0
  66:	51 61       	mov.l	@(4,r6),r1
  68:	52 62       	mov.l	@(8,r6),r2
  6a:	53 63       	mov.l	@(12,r6),r3
  6c:	17 00       	mov.l	r0,@(0,r7)
  6e:	17 11       	mov.l	r1,@(4,r7)
  70:	17 22       	mov.l	r2,@(8,r7)
  72:	17 33       	mov.l	r3,@(12,r7)
  74:	50 64       	mov.l	@(16,r6),r0
  76:	51 65       	mov.l	@(20,r6),r1
  78:	52 66       	mov.l	@(24,r6),r2
  7a:	53 67       	mov.l	@(28,r6),r3
  7c:	17 04       	mov.l	r0,@(16,r7)
  7e:	17 15       	mov.l	r1,@(20,r7)
  80:	17 26       	mov.l	r2,@(24,r7)
  82:	17 37       	mov.l	r3,@(28,r7)
  84:	50 68       	mov.l	@(32,r6),r0
  86:	51 69       	mov.l	@(36,r6),r1
  88:	52 6a       	mov.l	@(40,r6),r2
  8a:	53 6b       	mov.l	@(44,r6),r3
  8c:	17 08       	mov.l	r0,@(32,r7)
  8e:	17 19       	mov.l	r1,@(36,r7)
  90:	17 2a       	mov.l	r2,@(40,r7)
  92:	17 3b       	mov.l	r3,@(44,r7)
  94:	e0 30       	mov	#48,r0
  96:	30 7c       	add	r7,r0
  98:	d1 03       	mov.l	a8 <IMM_FRT_INTR>,r1	! 21000000
  9a:	c2 12       	mov.l	r0,@(72,gbr)
  9c:	21 01       	mov.w	r0,@r1
  9e:	00 0b       	rts	
  a0:	e0 01       	mov	#1,r0

000000a2 <ptpl_09>:
  a2:	00 0b       	rts	
  a4:	e0 00       	mov	#0,r0
	...

000000a8 <IMM_FRT_INTR>:
  a8:	21 00       	mov.b	r0,@r1
	...
