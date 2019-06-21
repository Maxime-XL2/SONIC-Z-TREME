
sglJ05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_sbSortEntry>:
   0:	66 03       	mov	r0,r6
   2:	c6 0e       	mov.l	@(56,gbr),r0
   4:	69 46       	mov.l	@r4+,r9
   6:	62 03       	mov	r0,r2
   8:	61 46       	mov.l	@r4+,r1
   a:	49 15       	cmp/pl	r9
   c:	8f 0d       	bf.s	2a <srtent_01>
   e:	41 08       	shll2	r1
  10:	c6 0a       	mov.l	@(40,gbr),r0
  12:	41 08       	shll2	r1
  14:	30 1c       	add	r1,r0
  16:	c2 0a       	mov.l	r0,@(40,gbr)

00000018 <srtent_lp>:
  18:	85 6f       	mov.w	@(30,r6),r0
  1a:	49 10       	dt	r9
  1c:	40 19       	shlr8	r0
  1e:	40 08       	shll2	r0
  20:	03 2e       	mov.l	@(r0,r2),r3
  22:	02 66       	mov.l	r6,@(r0,r2)
  24:	16 38       	mov.l	r3,@(32,r6)
  26:	8f f7       	bf.s	18 <srtent_lp>
  28:	76 dc       	add	#-36,r6

0000002a <srtent_01>:
  2a:	c4 a9       	mov.b	@(169,gbr),r0
  2c:	c8 01       	tst	#1,r0
  2e:	8f 01       	bf.s	34 <srtent_02>
  30:	e1 20       	mov	#32,r1
  32:	e1 10       	mov	#16,r1

00000034 <srtent_02>:
  34:	20 1b       	or	r1,r0
  36:	00 0b       	rts	
  38:	c0 a9       	mov.b	r0,@(169,gbr)
	...
