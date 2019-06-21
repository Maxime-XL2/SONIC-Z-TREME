
sglF25.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <GetBox>:
   0:	d0 26       	mov.l	9c <IMM_BitMapTop>,r0	! 0 <GetBox>
   2:	36 47       	cmp/gt	r4,r6
   4:	8d 03       	bt.s	e <gtbx_00>
   6:	53 02       	mov.l	@(8,r0),r3
   8:	26 4a       	xor	r4,r6
   a:	24 6a       	xor	r6,r4
   c:	26 4a       	xor	r4,r6

0000000e <gtbx_00>:
   e:	37 57       	cmp/gt	r5,r7
  10:	8d 03       	bt.s	1a <gtbx_01>
  12:	62 39       	swap.w	r3,r2
  14:	27 5a       	xor	r5,r7
  16:	25 7a       	xor	r7,r5
  18:	27 5a       	xor	r5,r7

0000001a <gtbx_01>:
  1a:	62 2f       	exts.w	r2,r2
  1c:	36 2c       	add	r2,r6
  1e:	46 11       	cmp/pz	r6
  20:	8f 38       	bf.s	94 <gtbx_99>
  22:	63 3f       	exts.w	r3,r3
  24:	37 3c       	add	r3,r7
  26:	47 11       	cmp/pz	r7
  28:	8f 34       	bf.s	94 <gtbx_99>
  2a:	35 3c       	add	r3,r5
  2c:	53 01       	mov.l	@(4,r0),r3
  2e:	34 2c       	add	r2,r4
  30:	62 39       	swap.w	r3,r2
  32:	62 2f       	exts.w	r2,r2
  34:	34 23       	cmp/ge	r2,r4
  36:	8d 2d       	bt.s	94 <gtbx_99>
  38:	63 3f       	exts.w	r3,r3
  3a:	35 33       	cmp/ge	r3,r5
  3c:	8d 2a       	bt.s	94 <gtbx_99>
  3e:	76 01       	add	#1,r6
  40:	2f 96       	mov.l	r9,@-r15
  42:	2f 86       	mov.l	r8,@-r15
  44:	32 63       	cmp/ge	r6,r2
  46:	8d 03       	bt.s	50 <gtbx_02>
  48:	e1 00       	mov	#0,r1
  4a:	61 63       	mov	r6,r1
  4c:	31 28       	sub	r2,r1
  4e:	71 01       	add	#1,r1

00000050 <gtbx_02>:
  50:	59 f3       	mov.l	@(12,r15),r9
  52:	45 11       	cmp/pz	r5
  54:	8d 04       	bt.s	60 <gtbx_03>
  56:	36 48       	sub	r4,r6
  58:	26 5f       	muls.w	r5,r6
  5a:	e5 00       	mov	#0,r5
  5c:	02 1a       	sts	macl,r2
  5e:	39 28       	sub	r2,r9

00000060 <gtbx_03>:
  60:	77 01       	add	#1,r7
  62:	33 73       	cmp/ge	r7,r3
  64:	8d 01       	bt.s	6a <gtbx_04>
  66:	e2 ff       	mov	#-1,r2
  68:	67 33       	mov	r3,r7

0000006a <gtbx_04>:
  6a:	58 00       	mov.l	@(0,r0),r8
  6c:	44 11       	cmp/pz	r4
  6e:	8d 04       	bt.s	7a <gtbx_05>
  70:	37 58       	sub	r5,r7
  72:	36 4c       	add	r4,r6
  74:	31 48       	sub	r4,r1
  76:	62 47       	not	r4,r2
  78:	e4 00       	mov	#0,r4

0000007a <gtbx_05>:
  7a:	84 0c       	mov.b	@(12,r0),r0
  7c:	38 4c       	add	r4,r8
  7e:	20 08       	tst	r0,r0
  80:	8d 02       	bt.s	88 <gtbx_06>
  82:	e4 02       	mov	#2,r4
  84:	44 00       	shll	r4
  86:	45 00       	shll	r5

00000088 <gtbx_06>:
  88:	44 18       	shll8	r4
  8a:	45 00       	shll	r5
  8c:	45 18       	shll8	r5
  8e:	38 5c       	add	r5,r8
  90:	00 0b       	rts	
  92:	34 68       	sub	r6,r4

00000094 <gtbx_99>:
  94:	4f 26       	lds.l	@r15+,pr
  96:	00 0b       	rts	
  98:	e0 00       	mov	#0,r0
	...

0000009c <IMM_BitMapTop>:
  9c:	00 00       	.word 0x0000
	...
