
sglF13.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slLocateNbg>:
   0:	e1 01       	mov	#1,r1
   2:	26 1a       	xor	r1,r6
   4:	76 40       	add	#64,r6
   6:	46 08       	shll2	r6
   8:	e1 40       	mov	#64,r1
   a:	21 59       	and	r5,r1
   c:	41 00       	shll	r1
   e:	60 47       	not	r4,r0
  10:	c9 40       	and	#64,r0
  12:	20 1b       	or	r1,r0
  14:	40 08       	shll2	r0
  16:	40 19       	shlr8	r0
  18:	30 6c       	add	r6,r0
  1a:	01 12       	stc	gbr,r1
  1c:	01 1c       	mov.b	@(r0,r1),r1
  1e:	41 28       	shll16	r1
  20:	41 09       	shlr2	r1
  22:	41 01       	shlr	r1
  24:	d0 05       	mov.l	3c <IMM_ScrollVRAM>,r0	! 25e00000
  26:	e2 3f       	mov	#63,r2
  28:	24 29       	and	r2,r4
  2a:	44 00       	shll	r4
  2c:	25 29       	and	r2,r5
  2e:	45 18       	shll8	r5
  30:	45 01       	shlr	r5
  32:	30 1c       	add	r1,r0
  34:	30 4c       	add	r4,r0
  36:	00 0b       	rts	
  38:	30 5c       	add	r5,r0
	...

0000003c <IMM_ScrollVRAM>:
  3c:	25 e0       	mov.b	r14,@r5
	...
