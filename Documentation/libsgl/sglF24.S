
sglF24.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slBMBoxFill>:
   0:	d0 22       	mov.l	8c <IMM_BitMapTop>,r0	! 0 <_slBMBoxFill>
   2:	36 43       	cmp/ge	r4,r6
   4:	8d 03       	bt.s	e <bxfl_00>
   6:	51 02       	mov.l	@(8,r0),r1
   8:	26 4a       	xor	r4,r6
   a:	24 6a       	xor	r6,r4
   c:	26 4a       	xor	r4,r6

0000000e <bxfl_00>:
   e:	37 53       	cmp/ge	r5,r7
  10:	8d 03       	bt.s	1a <bxfl_01>
  12:	53 01       	mov.l	@(4,r0),r3
  14:	27 5a       	xor	r5,r7
  16:	25 7a       	xor	r7,r5
  18:	27 5a       	xor	r5,r7

0000001a <bxfl_01>:
  1a:	62 19       	swap.w	r1,r2
  1c:	62 2f       	exts.w	r2,r2
  1e:	36 2c       	add	r2,r6
  20:	46 11       	cmp/pz	r6
  22:	8f 31       	bf.s	88 <bxfl_out>
  24:	34 2c       	add	r2,r4
  26:	62 39       	swap.w	r3,r2
  28:	62 2f       	exts.w	r2,r2
  2a:	34 23       	cmp/ge	r2,r4
  2c:	8d 2c       	bt.s	88 <bxfl_out>
  2e:	61 1f       	exts.w	r1,r1
  30:	37 1c       	add	r1,r7
  32:	47 11       	cmp/pz	r7
  34:	8f 28       	bf.s	88 <bxfl_out>
  36:	35 1c       	add	r1,r5
  38:	63 3f       	exts.w	r3,r3
  3a:	35 33       	cmp/ge	r3,r5
  3c:	8d 24       	bt.s	88 <bxfl_out>
  3e:	44 11       	cmp/pz	r4
  40:	8d 01       	bt.s	46 <bxfl_10>
  42:	45 11       	cmp/pz	r5
  44:	e4 00       	mov	#0,r4

00000046 <bxfl_10>:
  46:	8d 01       	bt.s	4c <bxfl_11>
  48:	72 ff       	add	#-1,r2
  4a:	e5 00       	mov	#0,r5

0000004c <bxfl_11>:
  4c:	32 63       	cmp/ge	r6,r2
  4e:	8d 01       	bt.s	54 <bxfl_12>
  50:	77 01       	add	#1,r7
  52:	66 23       	mov	r2,r6

00000054 <bxfl_12>:
  54:	33 73       	cmp/ge	r7,r3
  56:	8d 01       	bt.s	5c <bxfl_13>
  58:	52 00       	mov.l	@(0,r0),r2
  5a:	67 33       	mov	r3,r7

0000005c <bxfl_13>:
  5c:	37 58       	sub	r5,r7
  5e:	84 0c       	mov.b	@(12,r0),r0
  60:	45 00       	shll	r5
  62:	e1 02       	mov	#2,r1
  64:	20 08       	tst	r0,r0
  66:	8d 02       	bt.s	6e <bxfl_15>
  68:	45 18       	shll8	r5
  6a:	45 00       	shll	r5
  6c:	41 00       	shll	r1

0000006e <bxfl_15>:
  6e:	32 5c       	add	r5,r2
  70:	63 f2       	mov.l	@r15,r3
  72:	41 18       	shll8	r1

00000074 <bxfl_20>:
  74:	60 43       	mov	r4,r0

00000076 <bxfl_21>:
  76:	02 34       	mov.b	r3,@(r0,r2)
  78:	30 63       	cmp/ge	r6,r0
  7a:	8f fc       	bf.s	76 <bxfl_21>
  7c:	70 01       	add	#1,r0
  7e:	47 10       	dt	r7
  80:	8f f8       	bf.s	74 <bxfl_20>
  82:	32 1c       	add	r1,r2
  84:	00 0b       	rts	
  86:	e0 01       	mov	#1,r0

00000088 <bxfl_out>:
  88:	00 0b       	rts	
  8a:	e0 00       	mov	#0,r0

0000008c <IMM_BitMapTop>:
  8c:	00 00       	.word 0x0000
	...
