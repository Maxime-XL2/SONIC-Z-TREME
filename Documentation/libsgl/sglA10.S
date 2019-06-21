
sglA10.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <slSquartDbl>:
   0:	e3 02       	mov	#2,r3
   2:	e0 00       	mov	#0,r0
   4:	e2 00       	mov	#0,r2
   6:	e1 10       	mov	#16,r1

00000008 <sqrdb_lp_0>:
   8:	44 00       	shll	r4
   a:	42 24       	rotcl	r2
   c:	44 00       	shll	r4
   e:	42 24       	rotcl	r2
  10:	30 0c       	add	r0,r0
  12:	70 01       	add	#1,r0
  14:	30 26       	cmp/hi	r2,r0
  16:	8d 05       	bt.s	24 <sqrdb_lp_1>
  18:	41 10       	dt	r1
  1a:	32 08       	sub	r0,r2
  1c:	8f f4       	bf.s	8 <sqrdb_lp_0>
  1e:	70 01       	add	#1,r0
  20:	a0 03       	bra	2a <sqrdb_lp_2>
  22:	64 53       	mov	r5,r4

00000024 <sqrdb_lp_1>:
  24:	8f f0       	bf.s	8 <sqrdb_lp_0>
  26:	70 ff       	add	#-1,r0
  28:	64 53       	mov	r5,r4

0000002a <sqrdb_lp_2>:
  2a:	43 10       	dt	r3
  2c:	8f ec       	bf.s	8 <sqrdb_lp_0>
  2e:	e1 0f       	mov	#15,r1
  30:	00 0b       	rts	
  32:	00 09       	nop	
