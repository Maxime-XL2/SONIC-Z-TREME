
sglB039.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slMakeKtable>:
   0:	2f c6       	mov.l	r12,@-r15
   2:	2f b6       	mov.l	r11,@-r15
   4:	2f a6       	mov.l	r10,@-r15
   6:	2f 96       	mov.l	r9,@-r15
   8:	2f 86       	mov.l	r8,@-r15
   a:	60 43       	mov	r4,r0
   c:	c2 86       	mov.l	r0,@(536,gbr)
   e:	e0 ff       	mov	#-1,r0
  10:	40 28       	shll16	r0
  12:	40 18       	shll8	r0
  14:	95 30       	mov.w	78 <IMM_H4002>,r5	! 4002

00000016 <sks_mkt_loop>:
  16:	24 02       	mov.l	r0,@r4
  18:	45 10       	dt	r5
  1a:	8f fc       	bf.s	16 <sks_mkt_loop>
  1c:	74 04       	add	#4,r4
  1e:	96 2c       	mov.w	7a <IMM_H0200>,r6	! 200
  20:	e9 01       	mov	#1,r9
  22:	49 28       	shll16	r9
  24:	67 63       	mov	r6,r7
  26:	d8 13       	mov.l	74 <IMM_H007fffff>,r8	! 7fffff
  28:	ea 7f       	mov	#127,r10
  2a:	4a 28       	shll16	r10
  2c:	4a 18       	shll8	r10
  2e:	6b a3       	mov	r10,r11
  30:	ec 20       	mov	#32,r12
  32:	4c 28       	shll16	r12
  34:	95 22       	mov.w	7c <IMM_H3ffe>,r5	! 3ffe
  36:	e3 ff       	mov	#-1,r3
  38:	43 18       	shll8	r3

0000003a <sks_mk_loop>:
  3a:	37 6c       	add	r6,r7
  3c:	60 73       	mov	r7,r0
  3e:	61 93       	mov	r9,r1
  40:	13 00       	mov.l	r0,@(0,r3)
  42:	62 19       	swap.w	r1,r2
  44:	62 2f       	exts.w	r2,r2
  46:	13 24       	mov.l	r2,@(16,r3)
  48:	41 28       	shll16	r1
  4a:	13 15       	mov.l	r1,@(20,r3)
  4c:	50 37       	mov.l	@(28,r3),r0
  4e:	20 89       	and	r8,r0
  50:	3c b7       	cmp/gt	r11,r12
  52:	89 03       	bt	5c <sks_line_ps>
  54:	3b c8       	sub	r12,r11
  56:	61 b3       	mov	r11,r1
  58:	21 a9       	and	r10,r1
  5a:	20 1b       	or	r1,r0

0000005c <sks_line_ps>:
  5c:	24 02       	mov.l	r0,@r4
  5e:	45 10       	dt	r5
  60:	8f eb       	bf.s	3a <sks_mk_loop>
  62:	74 04       	add	#4,r4
  64:	68 f6       	mov.l	@r15+,r8
  66:	69 f6       	mov.l	@r15+,r9
  68:	6a f6       	mov.l	@r15+,r10
  6a:	6b f6       	mov.l	@r15+,r11
  6c:	6c f6       	mov.l	@r15+,r12
  6e:	00 0b       	rts	
  70:	00 09       	nop	
	...

00000074 <IMM_H007fffff>:
  74:	00 7f       	mac.l	@r7+,@r0+
  76:	ff ff       	.word 0xffff

00000078 <IMM_H4002>:
  78:	40 02       	sts.l	mach,@-r0

0000007a <IMM_H0200>:
  7a:	02 00       	.word 0x0200

0000007c <IMM_H3ffe>:
  7c:	3f fe       	addc	r15,r15
