
sglG09.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSequencePan>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	62 03       	mov	r0,r2
   4:	60 5e       	exts.b	r5,r0
   6:	88 80       	cmp/eq	#-128,r0
   8:	8d 03       	bt.s	12 <sqpn_1>
   a:	44 18       	shll8	r4
   c:	70 80       	add	#-128,r0
   e:	40 01       	shlr	r0
  10:	c9 7f       	and	#127,r0

00000012 <sqpn_1>:
  12:	60 0c       	extu.b	r0,r0
  14:	20 4b       	or	r4,r0
  16:	81 21       	mov.w	r0,@(2,r2)
  18:	c6 dd       	mov.l	@(884,gbr),r0
  1a:	e1 0e       	mov	#14,r1
  1c:	40 2b       	jmp	@r0
  1e:	22 10       	mov.b	r1,@r2
