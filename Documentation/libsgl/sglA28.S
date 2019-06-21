
sglA28.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScale>:
   0:	c6 07       	mov.l	@(28,gbr),r0
   2:	52 00       	mov.l	@(0,r0),r2
   4:	32 4d       	dmuls.l	r4,r2
   6:	57 01       	mov.l	@(4,r0),r7
   8:	02 0a       	sts	mach,r2
   a:	03 1a       	sts	macl,r3
   c:	37 5d       	dmuls.l	r5,r7
   e:	23 2d       	xtrct	r2,r3
  10:	10 30       	mov.l	r3,@(0,r0)
  12:	57 02       	mov.l	@(8,r0),r7
  14:	02 0a       	sts	mach,r2
  16:	03 1a       	sts	macl,r3
  18:	37 6d       	dmuls.l	r6,r7
  1a:	23 2d       	xtrct	r2,r3
  1c:	10 31       	mov.l	r3,@(4,r0)
  1e:	57 04       	mov.l	@(16,r0),r7
  20:	02 0a       	sts	mach,r2
  22:	03 1a       	sts	macl,r3
  24:	37 4d       	dmuls.l	r4,r7
  26:	23 2d       	xtrct	r2,r3
  28:	10 32       	mov.l	r3,@(8,r0)
  2a:	57 05       	mov.l	@(20,r0),r7
  2c:	02 0a       	sts	mach,r2
  2e:	03 1a       	sts	macl,r3
  30:	37 5d       	dmuls.l	r5,r7
  32:	23 2d       	xtrct	r2,r3
  34:	10 34       	mov.l	r3,@(16,r0)
  36:	57 06       	mov.l	@(24,r0),r7
  38:	02 0a       	sts	mach,r2
  3a:	03 1a       	sts	macl,r3
  3c:	37 6d       	dmuls.l	r6,r7
  3e:	23 2d       	xtrct	r2,r3
  40:	10 35       	mov.l	r3,@(20,r0)
  42:	57 08       	mov.l	@(32,r0),r7
  44:	02 0a       	sts	mach,r2
  46:	03 1a       	sts	macl,r3
  48:	37 4d       	dmuls.l	r4,r7
  4a:	23 2d       	xtrct	r2,r3
  4c:	10 36       	mov.l	r3,@(24,r0)
  4e:	57 09       	mov.l	@(36,r0),r7
  50:	02 0a       	sts	mach,r2
  52:	03 1a       	sts	macl,r3
  54:	37 5d       	dmuls.l	r5,r7
  56:	23 2d       	xtrct	r2,r3
  58:	10 38       	mov.l	r3,@(32,r0)
  5a:	57 0a       	mov.l	@(40,r0),r7
  5c:	02 0a       	sts	mach,r2
  5e:	03 1a       	sts	macl,r3
  60:	37 6d       	dmuls.l	r6,r7
  62:	23 2d       	xtrct	r2,r3
  64:	10 39       	mov.l	r3,@(36,r0)
  66:	02 0a       	sts	mach,r2
  68:	03 1a       	sts	macl,r3
  6a:	23 2d       	xtrct	r2,r3
  6c:	00 0b       	rts	
  6e:	10 3a       	mov.l	r3,@(40,r0)
