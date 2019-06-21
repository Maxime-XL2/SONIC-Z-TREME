
sglJ00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_InitSlaveSH>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	d2 15       	mov.l	58 <IMM_slRequestCommand>,r2	! 0 <_InitSlaveSH>
   4:	c7 19       	mova	6c <_SlaveState>,r0
   6:	e1 00       	mov	#0,r1
   8:	20 12       	mov.l	r1,@r0
   a:	e5 01       	mov	#1,r5
   c:	42 0b       	jsr	@r2
   e:	e4 02       	mov	#2,r4
  10:	d1 12       	mov.l	5c <IMM_SlaveSHEntry>,r1	! 6000250
  12:	c7 03       	mova	20 <_SlaveSHMain>,r0
  14:	21 02       	mov.l	r0,@r1
  16:	4f 26       	lds.l	@r15+,pr
  18:	d2 0f       	mov.l	58 <IMM_slRequestCommand>,r2	! 0 <_InitSlaveSH>
  1a:	e5 00       	mov	#0,r5
  1c:	42 2b       	jmp	@r2
  1e:	e4 01       	mov	#1,r4

00000020 <_SlaveSHMain>:
  20:	e0 f0       	mov	#-16,r0
  22:	40 0e       	ldc	r0,sr
  24:	d2 0f       	mov.l	64 <IMM_SlaveStack>,r2	! 0 <_InitSlaveSH>
  26:	91 14       	mov.w	52 <IMM_IPRA>,r1	! fee2
  28:	98 14       	mov.w	54 <IMM_IPRB>,r8	! fe60
  2a:	e0 00       	mov	#0,r0
  2c:	21 01       	mov.w	r0,@r1
  2e:	28 01       	mov.w	r0,@r8
  30:	78 b0       	add	#-80,r8
  32:	e0 01       	mov	#1,r0
  34:	28 00       	mov.b	r0,@r8
  36:	6f 22       	mov.l	@r2,r15

00000038 <ssmn_01>:
  38:	84 81       	mov.b	@(1,r8),r0
  3a:	c8 80       	tst	#-128,r0
  3c:	89 07       	bt	4e <ssmn_09>
  3e:	d2 08       	mov.l	60 <IMM_SlaveCommand>,r2	! 20000068
  40:	e0 00       	mov	#0,r0
  42:	61 22       	mov.l	@r2,r1
  44:	80 81       	mov.b	r0,@(1,r8)
  46:	21 18       	tst	r1,r1
  48:	89 01       	bt	4e <ssmn_09>
  4a:	41 0b       	jsr	@r1
  4c:	22 02       	mov.l	r0,@r2

0000004e <ssmn_09>:
  4e:	af f3       	bra	38 <ssmn_01>
  50:	00 09       	nop	

00000052 <IMM_IPRA>:
  52:	fe e2       	fmul	fr14,fr14

00000054 <IMM_IPRB>:
  54:	fe 60       	fadd	fr6,fr14
	...

00000058 <IMM_slRequestCommand>:
  58:	00 00       	.word 0x0000
	...

0000005c <IMM_SlaveSHEntry>:
  5c:	06 00       	.word 0x0600
  5e:	02 50       	.word 0x0250

00000060 <IMM_SlaveCommand>:
  60:	20 00       	mov.b	r0,@r0
  62:	00 68       	.word 0x0068

00000064 <IMM_SlaveStack>:
  64:	00 00       	.word 0x0000
	...

00000068 <_SlaveCommand>:
  68:	00 00       	.word 0x0000
	...

0000006c <_SlaveState>:
  6c:	00 00       	.word 0x0000
	...

00000070 <_SlaveParam>:
  70:	00 00       	.word 0x0000
	...
