
sglB038.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slRparaInitSet>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	4f 13       	stc.l	gbr,@-r15
   4:	60 43       	mov	r4,r0
   6:	c2 85       	mov.l	r0,@(532,gbr)
   8:	40 01       	shlr	r0
   a:	c2 5f       	mov.l	r0,@(380,gbr)
   c:	c6 20       	mov.l	@(128,gbr),r0
   e:	62 03       	mov	r0,r2
  10:	c6 1a       	mov.l	@(104,gbr),r0
  12:	42 01       	shlr	r2
  14:	63 03       	mov	r0,r3
  16:	d0 05       	mov.l	2c <IMM_LABEL0>,r0	! 60ffe1c
  18:	b0 0c       	bsr	34 <rpara_init>
  1a:	c2 78       	mov.l	r0,@(480,gbr)
  1c:	d0 04       	mov.l	30 <IMM_LABEL1>,r0	! 60ffe84
  1e:	b0 09       	bsr	34 <rpara_init>
  20:	00 09       	nop	
  22:	4f 17       	ldc.l	@r15+,gbr
  24:	4f 26       	lds.l	@r15+,pr
  26:	00 0b       	rts	
  28:	00 09       	nop	
	...

0000002c <IMM_LABEL0>:
  2c:	06 0f       	mac.l	@r0+,@r6+
  2e:	fe 1c       	fmov	fr1,fr14

00000030 <IMM_LABEL1>:
  30:	06 0f       	mac.l	@r0+,@r6+
  32:	fe 84       	fcmp/eq	fr8,fr14

00000034 <rpara_init>:
  34:	40 1e       	ldc	r0,gbr
  36:	e0 00       	mov	#0,r0
  38:	c2 00       	mov.l	r0,@(0,gbr)
  3a:	c2 01       	mov.l	r0,@(4,gbr)
  3c:	c2 02       	mov.l	r0,@(8,gbr)
  3e:	c2 03       	mov.l	r0,@(12,gbr)
  40:	c2 06       	mov.l	r0,@(24,gbr)
  42:	c2 08       	mov.l	r0,@(32,gbr)
  44:	c2 09       	mov.l	r0,@(36,gbr)
  46:	c2 0a       	mov.l	r0,@(40,gbr)
  48:	c2 0c       	mov.l	r0,@(48,gbr)
  4a:	c2 11       	mov.l	r0,@(68,gbr)
  4c:	c2 12       	mov.l	r0,@(72,gbr)
  4e:	e0 01       	mov	#1,r0
  50:	40 28       	shll16	r0
  52:	c2 04       	mov.l	r0,@(16,gbr)
  54:	c2 05       	mov.l	r0,@(20,gbr)
  56:	c2 07       	mov.l	r0,@(28,gbr)
  58:	c2 0b       	mov.l	r0,@(44,gbr)
  5a:	c2 13       	mov.l	r0,@(76,gbr)
  5c:	c2 14       	mov.l	r0,@(80,gbr)
  5e:	60 23       	mov	r2,r0
  60:	c2 0d       	mov.l	r0,@(52,gbr)
  62:	c2 0f       	mov.l	r0,@(60,gbr)
  64:	60 39       	swap.w	r3,r0
  66:	c1 1c       	mov.w	r0,@(56,gbr)
  68:	c1 20       	mov.w	r0,@(64,gbr)
  6a:	e0 00       	mov	#0,r0
  6c:	00 0b       	rts	
  6e:	c1 32       	mov.w	r0,@(100,gbr)
