
sglB113.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_setASC_1to4>:
   0:	e0 0f       	mov	#15,r0
   2:	27 09       	and	r0,r7
   4:	60 73       	mov	r7,r0
   6:	47 08       	shll2	r7
   8:	47 08       	shll2	r7
   a:	27 0b       	or	r0,r7
   c:	60 78       	swap.b	r7,r0
   e:	27 0b       	or	r0,r7
  10:	63 f2       	mov.l	@r15,r3
  12:	2f 86       	mov.l	r8,@-r15

00000014 <stasc_14_00>:
  14:	e8 08       	mov	#8,r8

00000016 <stasc_14_01>:
  16:	60 44       	mov.b	@r4+,r0
  18:	e1 02       	mov	#2,r1
  1a:	40 18       	shll8	r0
  1c:	40 28       	shll16	r0

0000001e <stasc_14_02>:
  1e:	40 00       	shll	r0
  20:	02 29       	movt	r2
  22:	42 08       	shll2	r2
  24:	42 00       	shll	r2
  26:	40 00       	shll	r0
  28:	32 2e       	addc	r2,r2
  2a:	42 08       	shll2	r2
  2c:	42 00       	shll	r2
  2e:	40 00       	shll	r0
  30:	32 2e       	addc	r2,r2
  32:	42 08       	shll2	r2
  34:	42 08       	shll2	r2
  36:	40 00       	shll	r0
  38:	32 7e       	addc	r7,r2
  3a:	25 21       	mov.w	r2,@r5
  3c:	41 10       	dt	r1
  3e:	8f ee       	bf.s	1e <stasc_14_02>
  40:	75 02       	add	#2,r5
  42:	48 10       	dt	r8
  44:	8b e7       	bf	16 <stasc_14_01>
  46:	46 10       	dt	r6
  48:	8f e4       	bf.s	14 <stasc_14_00>
  4a:	35 3c       	add	r3,r5
  4c:	00 0b       	rts	
  4e:	68 f6       	mov.l	@r15+,r8
