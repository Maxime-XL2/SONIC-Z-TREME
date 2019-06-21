
sglD00.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCpuDMACopy>:
   0:	26 68       	tst	r6,r6
   2:	8d 37       	bt.s	74 <dmcp_end>
   4:	e1 80       	mov	#-128,r1

00000006 <wait_DMAC_01011>:
   6:	50 13       	mov.l	@(12,r1),r0
   8:	c9 03       	and	#3,r0
   a:	88 01       	cmp/eq	#1,r0
   c:	89 fb       	bt	6 <wait_DMAC_01011>
   e:	60 43       	mov	r4,r0
  10:	20 5b       	or	r5,r0
  12:	20 6b       	or	r6,r0
  14:	c8 0f       	tst	#15,r0
  16:	8d 06       	bt.s	26 <dmcp_burst>
  18:	c8 03       	tst	#3,r0
  1a:	8d 0a       	bt.s	32 <dmcp_long>
  1c:	c8 01       	tst	#1,r0
  1e:	89 05       	bt	2c <dmcp_word>

00000020 <dmcp_byte>:
  20:	92 2a       	mov.w	78 <IMM_DRQ_byte>,r2	! 5201
  22:	a0 08       	bra	36 <dmcp_trans>
  24:	00 09       	nop	

00000026 <dmcp_burst>:
  26:	92 2a       	mov.w	7e <IMM_DRQ_burst>,r2	! 5e01
  28:	a0 05       	bra	36 <dmcp_trans>
  2a:	46 09       	shlr2	r6

0000002c <dmcp_word>:
  2c:	92 25       	mov.w	7a <IMM_DRQ_word>,r2	! 5601
  2e:	a0 02       	bra	36 <dmcp_trans>
  30:	46 01       	shlr	r6

00000032 <dmcp_long>:
  32:	92 23       	mov.w	7c <IMM_DRQ_long>,r2	! 5a01
  34:	46 09       	shlr2	r6

00000036 <dmcp_trans>:
  36:	e3 80       	mov	#-128,r3
  38:	e1 9c       	mov	#-100,r1
  3a:	41 08       	shll2	r1
  3c:	50 3c       	mov.l	@(48,r3),r0
  3e:	e0 00       	mov	#0,r0
  40:	13 03       	mov.l	r0,@(12,r3)
  42:	80 11       	mov.b	r0,@(1,r1)
  44:	13 40       	mov.l	r4,@(0,r3)
  46:	13 51       	mov.l	r5,@(4,r3)
  48:	13 62       	mov.l	r6,@(8,r3)
  4a:	e0 10       	mov	#16,r0
  4c:	c0 b9       	mov.b	r0,@(185,gbr)
  4e:	13 23       	mov.l	r2,@(12,r3)
  50:	e0 09       	mov	#9,r0
  52:	13 0c       	mov.l	r0,@(48,r3)
  54:	d1 0a       	mov.l	80 <IMM_CasheThrogh>,r1	! 20000000
  56:	35 12       	cmp/hs	r1,r5
  58:	8d 0c       	bt.s	74 <dmcp_end>

0000005a <_CSH_AllClr>:
  5a:	e1 a4       	mov	#-92,r1
  5c:	41 08       	shll2	r1
  5e:	e0 11       	mov	#17,r0
  60:	80 12       	mov.b	r0,@(2,r1)
  62:	00 09       	nop	
  64:	00 09       	nop	
  66:	00 09       	nop	
  68:	00 09       	nop	
  6a:	00 09       	nop	
  6c:	00 09       	nop	
  6e:	00 09       	nop	
  70:	00 09       	nop	
  72:	00 09       	nop	

00000074 <dmcp_end>:
  74:	00 0b       	rts	
  76:	00 09       	nop	

00000078 <IMM_DRQ_byte>:
  78:	52 01       	mov.l	@(4,r0),r2

0000007a <IMM_DRQ_word>:
  7a:	56 01       	mov.l	@(4,r0),r6

0000007c <IMM_DRQ_long>:
  7c:	5a 01       	mov.l	@(4,r0),r10

0000007e <IMM_DRQ_burst>:
  7e:	5e 01       	mov.l	@(4,r0),r14

00000080 <IMM_CasheThrogh>:
  80:	20 00       	mov.b	r0,@r0
	...
