
sglA39.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slConvert3Dto2DFX>:
   0:	2f 86       	mov.l	r8,@-r15
   2:	2f a6       	mov.l	r10,@-r15
   4:	2f 96       	mov.l	r9,@-r15
   6:	c6 07       	mov.l	@(28,gbr),r0
   8:	e6 20       	mov	#32,r6
   a:	00 28       	clrmac	
   c:	36 0c       	add	r0,r6
   e:	06 4f       	mac.l	@r4+,@r6+
  10:	c6 1a       	mov.l	@(104,gbr),r0
  12:	ea ff       	mov	#-1,r10
  14:	06 4f       	mac.l	@r4+,@r6+
  16:	51 61       	mov.l	@(4,r6),r1
  18:	68 03       	mov	r0,r8
  1a:	06 4f       	mac.l	@r4+,@r6+
  1c:	c4 ac       	mov.b	@(172,gbr),r0
  1e:	4a 18       	shll8	r10
  20:	69 83       	mov	r8,r9
  22:	02 0a       	sts	mach,r2
  24:	07 1a       	sts	macl,r7

00000026 <cnv32fx_01>:
  26:	40 10       	dt	r0
  28:	8f fd       	bf.s	26 <cnv32fx_01>
  2a:	48 01       	shlr	r8
  2c:	27 2d       	xtrct	r2,r7
  2e:	37 1c       	add	r1,r7
  30:	37 83       	cmp/ge	r8,r7
  32:	8f 2b       	bf.s	8c <cnv32fx_99>
  34:	60 99       	swap.w	r9,r0
  36:	1a 70       	mov.l	r7,@(0,r10)
  38:	60 0f       	exts.w	r0,r0
  3a:	1a 04       	mov.l	r0,@(16,r10)
  3c:	49 28       	shll16	r9
  3e:	1a 95       	mov.l	r9,@(20,r10)
  40:	76 e4       	add	#-28,r6
  42:	00 28       	clrmac	
  44:	74 f4       	add	#-12,r4
  46:	06 4f       	mac.l	@r4+,@r6+
  48:	06 4f       	mac.l	@r4+,@r6+
  4a:	51 61       	mov.l	@(4,r6),r1
  4c:	06 4f       	mac.l	@r4+,@r6+
  4e:	76 e4       	add	#-28,r6
  50:	74 f4       	add	#-12,r4
  52:	02 0a       	sts	mach,r2
  54:	03 1a       	sts	macl,r3
  56:	00 28       	clrmac	
  58:	06 4f       	mac.l	@r4+,@r6+
  5a:	23 2d       	xtrct	r2,r3
  5c:	33 1c       	add	r1,r3
  5e:	06 4f       	mac.l	@r4+,@r6+
  60:	51 61       	mov.l	@(4,r6),r1
  62:	06 4f       	mac.l	@r4+,@r6+
  64:	02 0a       	sts	mach,r2
  66:	04 1a       	sts	macl,r4
  68:	24 2d       	xtrct	r2,r4
  6a:	58 a7       	mov.l	@(28,r10),r8
  6c:	34 1c       	add	r1,r4
  6e:	33 8d       	dmuls.l	r8,r3
  70:	69 f6       	mov.l	@r15+,r9
  72:	6a f6       	mov.l	@r15+,r10
  74:	60 73       	mov	r7,r0
  76:	02 0a       	sts	mach,r2
  78:	03 1a       	sts	macl,r3
  7a:	34 8d       	dmuls.l	r8,r4
  7c:	23 2d       	xtrct	r2,r3
  7e:	15 31       	mov.l	r3,@(4,r5)
  80:	68 f6       	mov.l	@r15+,r8
  82:	02 0a       	sts	mach,r2
  84:	03 1a       	sts	macl,r3
  86:	23 2d       	xtrct	r2,r3
  88:	00 0b       	rts	
  8a:	15 30       	mov.l	r3,@(0,r5)

0000008c <cnv32fx_99>:
  8c:	69 f6       	mov.l	@r15+,r9
  8e:	e0 00       	mov	#0,r0
  90:	6a f6       	mov.l	@r15+,r10
  92:	00 0b       	rts	
  94:	68 f6       	mov.l	@r15+,r8
	...
