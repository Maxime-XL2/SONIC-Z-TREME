
sglG11.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBGMOn>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	c6 dc       	mov.l	@(880,gbr),r0
   4:	44 18       	shll8	r4
   6:	62 03       	mov	r0,r2
   8:	24 5b       	or	r5,r4
   a:	c6 dd       	mov.l	@(884,gbr),r0
   c:	27 78       	tst	r7,r7
   e:	8d 06       	bt.s	1e <bgmon_01>
  10:	65 03       	mov	r0,r5
  12:	e0 00       	mov	#0,r0
  14:	81 21       	mov.w	r0,@(2,r2)
  16:	80 24       	mov.b	r0,@(4,r2)
  18:	e0 05       	mov	#5,r0
  1a:	45 0b       	jsr	@r5
  1c:	80 20       	mov.b	r0,@(0,r2)

0000001e <bgmon_01>:
  1e:	60 6c       	extu.b	r6,r0
  20:	81 21       	mov.w	r0,@(2,r2)
  22:	60 73       	mov	r7,r0
  24:	e1 05       	mov	#5,r1
  26:	80 24       	mov.b	r0,@(4,r2)
  28:	45 0b       	jsr	@r5
  2a:	22 10       	mov.b	r1,@r2
  2c:	60 43       	mov	r4,r0
  2e:	81 22       	mov.w	r0,@(4,r2)
  30:	60 09       	swap.w	r0,r0
  32:	81 21       	mov.w	r0,@(2,r2)
  34:	e0 01       	mov	#1,r0
  36:	80 20       	mov.b	r0,@(0,r2)
  38:	45 2b       	jmp	@r5
  3a:	4f 26       	lds.l	@r15+,pr
