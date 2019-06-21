
sglI06.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slCheckSlave>:
   0:	d2 06       	mov.l	1c <IMM_ComRdPtr>,r2	! 260ffc44
   2:	c6 12       	mov.l	@(72,gbr),r0
   4:	62 22       	mov.l	@r2,r2
   6:	61 02       	mov.l	@r0,r1
   8:	d0 02       	mov.l	14 <IMM_LABEL0>,r0	! 0 <_slCheckSlave>
   a:	21 28       	tst	r2,r1
   c:	89 00       	bt	10 <slck_1>
   e:	d0 02       	mov.l	18 <IMM_LABEL1>,r0	! 1

00000010 <slck_1>:
  10:	00 0b       	rts	
  12:	00 09       	nop	

00000014 <IMM_LABEL0>:
  14:	00 00       	.word 0x0000
	...

00000018 <IMM_LABEL1>:
  18:	00 00       	.word 0x0000
  1a:	00 01       	.word 0x0001

0000001c <IMM_ComRdPtr>:
  1c:	26 0f       	muls.w	r0,r6
  1e:	fc 44       	fcmp/eq	fr4,fr12
