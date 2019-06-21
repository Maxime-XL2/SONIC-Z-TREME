
sglG19.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCDDAOn>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	4f 22       	sts.l	pr,@-r15
   4:	62 03       	mov	r0,r2
   6:	e0 70       	mov	#112,r0
   8:	24 09       	and	r0,r4
   a:	20 59       	and	r5,r0
   c:	44 18       	shll8	r4
   e:	20 4b       	or	r4,r0
  10:	40 00       	shll	r0
  12:	81 21       	mov.w	r0,@(2,r2)
  14:	c6 dd       	mov.l	@(884,gbr),r0
  16:	e1 80       	mov	#-128,r1
  18:	65 03       	mov	r0,r5
  1a:	45 0b       	jsr	@r5
  1c:	22 10       	mov.b	r1,@r2
  1e:	66 6e       	exts.b	r6,r6
  20:	46 11       	cmp/pz	r6
  22:	8d 02       	bt.s	2a <cddac_01>
  24:	67 7e       	exts.b	r7,r7
  26:	66 67       	not	r6,r6
  28:	76 80       	add	#-128,r6

0000002a <cddac_01>:
  2a:	47 11       	cmp/pz	r7
  2c:	8d 02       	bt.s	34 <cddac_02>
  2e:	46 09       	shlr2	r6
  30:	67 77       	not	r7,r7
  32:	77 80       	add	#-128,r7

00000034 <cddac_02>:
  34:	46 01       	shlr	r6
  36:	60 7c       	extu.b	r7,r0
  38:	40 09       	shlr2	r0
  3a:	40 01       	shlr	r0
  3c:	46 18       	shll8	r6
  3e:	20 6b       	or	r6,r0
  40:	81 21       	mov.w	r0,@(2,r2)
  42:	4f 26       	lds.l	@r15+,pr
  44:	e0 81       	mov	#-127,r0
  46:	45 2b       	jmp	@r5
  48:	80 20       	mov.b	r0,@(0,r2)
	...
