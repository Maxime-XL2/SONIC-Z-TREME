
sglA05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSquart>:
   0:	e1 10       	mov	#16,r1
   2:	e0 00       	mov	#0,r0
   4:	e2 00       	mov	#0,r2

00000006 <sqr_lp_0>:
   6:	44 00       	shll	r4
   8:	42 24       	rotcl	r2
   a:	44 00       	shll	r4
   c:	42 24       	rotcl	r2
   e:	30 0c       	add	r0,r0
  10:	70 01       	add	#1,r0
  12:	30 26       	cmp/hi	r2,r0
  14:	89 05       	bt	22 <sqr_lp_1>
  16:	32 08       	sub	r0,r2
  18:	41 10       	dt	r1
  1a:	8f f4       	bf.s	6 <sqr_lp_0>
  1c:	70 01       	add	#1,r0
  1e:	00 0b       	rts	
  20:	40 01       	shlr	r0

00000022 <sqr_lp_1>:
  22:	41 10       	dt	r1
  24:	8f ef       	bf.s	6 <sqr_lp_0>
  26:	70 ff       	add	#-1,r0
  28:	00 0b       	rts	
  2a:	40 01       	shlr	r0

0000002c <_slSquartFX>:
  2c:	4f 22       	sts.l	pr,@-r15
  2e:	bf e7       	bsr	0 <_slSquart>
  30:	00 09       	nop	
  32:	4f 26       	lds.l	@r15+,pr
  34:	00 0b       	rts	
  36:	40 18       	shll8	r0
