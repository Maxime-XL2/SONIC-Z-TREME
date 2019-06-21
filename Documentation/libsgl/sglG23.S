
sglG23.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slPCMParmChange>:
   0:	c6 dc       	mov.l	@(880,gbr),r0
   2:	61 44       	mov.b	@r4+,r1
   4:	62 03       	mov	r0,r2
   6:	60 44       	mov.b	@r4+,r0
   8:	63 44       	mov.b	@r4+,r3
   a:	20 1b       	or	r1,r0
   c:	e1 70       	mov	#112,r1
   e:	23 19       	and	r1,r3
  10:	61 44       	mov.b	@r4+,r1
  12:	41 11       	cmp/pz	r1
  14:	8d 03       	bt.s	1e <pcmchg_01>
  16:	43 00       	shll	r3
  18:	61 17       	not	r1,r1
  1a:	71 80       	add	#-128,r1
  1c:	61 1c       	extu.b	r1,r1

0000001e <pcmchg_01>:
  1e:	41 09       	shlr2	r1
  20:	41 01       	shlr	r1
  22:	21 3b       	or	r3,r1
  24:	40 18       	shll8	r0
  26:	20 1b       	or	r1,r0
  28:	81 21       	mov.w	r0,@(2,r2)
  2a:	60 45       	mov.w	@r4+,r0
  2c:	93 12       	mov.w	54 <IMM_7fff>,r3	! 7fff
  2e:	61 44       	mov.b	@r4+,r1
  30:	20 39       	and	r3,r0
  32:	81 22       	mov.w	r0,@(4,r2)
  34:	63 44       	mov.b	@r4+,r3
  36:	43 08       	shll2	r3
  38:	43 00       	shll	r3
  3a:	23 1b       	or	r1,r3
  3c:	61 44       	mov.b	@r4+,r1
  3e:	60 44       	mov.b	@r4+,r0
  40:	41 08       	shll2	r1
  42:	41 00       	shll	r1
  44:	20 1b       	or	r1,r0
  46:	43 18       	shll8	r3
  48:	20 3b       	or	r3,r0
  4a:	81 23       	mov.w	r0,@(6,r2)
  4c:	c6 dd       	mov.l	@(884,gbr),r0
  4e:	e1 8a       	mov	#-118,r1
  50:	40 2b       	jmp	@r0
  52:	22 10       	mov.b	r1,@r2

00000054 <IMM_7fff>:
  54:	7f ff       	add	#-1,r15
	...
