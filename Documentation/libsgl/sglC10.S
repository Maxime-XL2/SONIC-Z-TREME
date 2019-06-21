
sglC10.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <MsSBase_MIN>:
   0:	85 16       	mov.w	@(12,r1),r0
   2:	42 08       	shll2	r2
   4:	63 75       	mov.w	@r7+,r3
   6:	6e 0f       	exts.w	r0,r14
   8:	64 75       	mov.w	@r7+,r4
   a:	32 ac       	add	r10,r2
   c:	85 26       	mov.w	@(12,r2),r0
   e:	43 08       	shll2	r3
  10:	3e 07       	cmp/gt	r0,r14
  12:	8f 01       	bf.s	18 <msbmn_0>
  14:	43 08       	shll2	r3
  16:	6e 03       	mov	r0,r14

00000018 <msbmn_0>:
  18:	33 ac       	add	r10,r3
  1a:	44 08       	shll2	r4
  1c:	85 36       	mov.w	@(12,r3),r0
  1e:	44 08       	shll2	r4
  20:	3e 07       	cmp/gt	r0,r14
  22:	8f 01       	bf.s	28 <msbmn_1>
  24:	34 ac       	add	r10,r4
  26:	6e 03       	mov	r0,r14

00000028 <msbmn_1>:
  28:	85 46       	mov.w	@(12,r4),r0
  2a:	55 f3       	mov.l	@(12,r15),r5
  2c:	3e 07       	cmp/gt	r0,r14
  2e:	8b 00       	bf	32 <msbmn_2>
  30:	6e 03       	mov	r0,r14

00000032 <msbmn_2>:
  32:	c5 38       	mov.w	@(112,gbr),r0
  34:	3e 58       	sub	r5,r14
  36:	3e 06       	cmp/hi	r0,r14
  38:	89 00       	bt	3c <msbmn_3>
  3a:	79 04       	add	#4,r9

0000003c <msbmn_3>:
  3c:	60 96       	mov.l	@r9+,r0
  3e:	40 2b       	jmp	@r0
  40:	00 09       	nop	
	...

00000044 <MsSBase_CEN>:
  44:	63 75       	mov.w	@r7+,r3
  46:	42 08       	shll2	r2
  48:	85 16       	mov.w	@(12,r1),r0
  4a:	32 ac       	add	r10,r2
  4c:	64 75       	mov.w	@r7+,r4
  4e:	6e 0f       	exts.w	r0,r14
  50:	85 26       	mov.w	@(12,r2),r0
  52:	43 08       	shll2	r3
  54:	3e 0c       	add	r0,r14
  56:	43 08       	shll2	r3
  58:	33 ac       	add	r10,r3
  5a:	44 08       	shll2	r4
  5c:	85 36       	mov.w	@(12,r3),r0
  5e:	44 08       	shll2	r4
  60:	3e 0c       	add	r0,r14
  62:	34 ac       	add	r10,r4
  64:	85 46       	mov.w	@(12,r4),r0
  66:	3e 0c       	add	r0,r14
  68:	4e 21       	shar	r14
  6a:	4e 21       	shar	r14
  6c:	55 f3       	mov.l	@(12,r15),r5
  6e:	c5 38       	mov.w	@(112,gbr),r0
  70:	3e 58       	sub	r5,r14
  72:	3e 06       	cmp/hi	r0,r14
  74:	89 00       	bt	78 <srbs_c0>
  76:	79 04       	add	#4,r9

00000078 <srbs_c0>:
  78:	60 96       	mov.l	@r9+,r0
  7a:	40 2b       	jmp	@r0
  7c:	00 09       	nop	
	...

00000080 <MsSBase_MAX>:
  80:	63 75       	mov.w	@r7+,r3
  82:	42 08       	shll2	r2
  84:	85 16       	mov.w	@(12,r1),r0
  86:	32 ac       	add	r10,r2
  88:	64 75       	mov.w	@r7+,r4
  8a:	6e 0f       	exts.w	r0,r14
  8c:	85 26       	mov.w	@(12,r2),r0
  8e:	43 08       	shll2	r3
  90:	43 08       	shll2	r3
  92:	33 ac       	add	r10,r3
  94:	3e 03       	cmp/ge	r0,r14
  96:	8d 01       	bt.s	9c <msbmx_0>
  98:	44 08       	shll2	r4
  9a:	6e 03       	mov	r0,r14

0000009c <msbmx_0>:
  9c:	85 36       	mov.w	@(12,r3),r0
  9e:	44 08       	shll2	r4
  a0:	3e 03       	cmp/ge	r0,r14
  a2:	8d 01       	bt.s	a8 <msbmx_1>
  a4:	34 ac       	add	r10,r4
  a6:	6e 03       	mov	r0,r14

000000a8 <msbmx_1>:
  a8:	85 46       	mov.w	@(12,r4),r0
  aa:	55 f3       	mov.l	@(12,r15),r5
  ac:	3e 03       	cmp/ge	r0,r14
  ae:	89 00       	bt	b2 <msbmx_2>
  b0:	6e 03       	mov	r0,r14

000000b2 <msbmx_2>:
  b2:	c5 38       	mov.w	@(112,gbr),r0
  b4:	3e 58       	sub	r5,r14
  b6:	3e 06       	cmp/hi	r0,r14
  b8:	89 00       	bt	bc <msbmx_3>
  ba:	79 04       	add	#4,r9

000000bc <msbmx_3>:
  bc:	60 96       	mov.l	@r9+,r0
  be:	40 2b       	jmp	@r0
  c0:	00 09       	nop	
	...

000000c4 <MsSBase_BFR>:
  c4:	c5 38       	mov.w	@(112,gbr),r0
  c6:	42 08       	shll2	r2
  c8:	3e 06       	cmp/hi	r0,r14
  ca:	8d 0b       	bt.s	e4 <msrbs_b0>
  cc:	32 ac       	add	r10,r2
  ce:	79 04       	add	#4,r9
  d0:	63 75       	mov.w	@r7+,r3
  d2:	43 08       	shll2	r3
  d4:	64 75       	mov.w	@r7+,r4
  d6:	43 08       	shll2	r3
  d8:	33 ac       	add	r10,r3
  da:	44 08       	shll2	r4
  dc:	60 96       	mov.l	@r9+,r0
  de:	44 08       	shll2	r4
  e0:	40 2b       	jmp	@r0
  e2:	34 ac       	add	r10,r4

000000e4 <msrbs_b0>:
  e4:	60 92       	mov.l	@r9,r0
  e6:	40 2b       	jmp	@r0
  e8:	77 04       	add	#4,r7
	...
