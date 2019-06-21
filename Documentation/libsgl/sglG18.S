
sglG18.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSndMixParmChange>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	66 6e       	exts.b	r6,r6
   4:	46 11       	cmp/pz	r6
   6:	8d 03       	bt.s	10 <mxchg_01>
   8:	62 03       	mov	r0,r2
   a:	66 67       	not	r6,r6
   c:	76 80       	add	#-128,r6
   e:	66 6c       	extu.b	r6,r6

00000010 <mxchg_01>:
  10:	e0 70       	mov	#112,r0
  12:	20 59       	and	r5,r0
  14:	40 00       	shll	r0
  16:	46 09       	shlr2	r6
  18:	46 01       	shlr	r6
  1a:	20 6b       	or	r6,r0
  1c:	44 18       	shll8	r4
  1e:	20 4b       	or	r4,r0
  20:	81 21       	mov.w	r0,@(2,r2)
  22:	c6 dd       	mov.l	@(884,gbr),r0
  24:	e1 88       	mov	#-120,r1
  26:	40 2b       	jmp	@r0
  28:	22 10       	mov.b	r1,@r2
	...
