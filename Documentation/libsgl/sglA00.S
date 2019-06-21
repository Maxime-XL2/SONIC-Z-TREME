
sglA00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <__builtin_set_imask>:
   0:	91 0d       	mov.w	1e <IMM_ff0f>,r1	! ff0f
   2:	00 02       	stc	sr,r0
   4:	20 19       	and	r1,r0
   6:	e1 0f       	mov	#15,r1
   8:	21 49       	and	r4,r1
   a:	41 08       	shll2	r1
   c:	41 08       	shll2	r1
   e:	20 1b       	or	r1,r0
  10:	00 0b       	rts	
  12:	40 0e       	ldc	r0,sr

00000014 <__builtin_get_imask>:
  14:	00 02       	stc	sr,r0
  16:	40 09       	shlr2	r0
  18:	40 09       	shlr2	r0
  1a:	00 0b       	rts	
  1c:	c9 0f       	and	#15,r0

0000001e <IMM_ff0f>:
  1e:	ff 0f       	.word 0xff0f
