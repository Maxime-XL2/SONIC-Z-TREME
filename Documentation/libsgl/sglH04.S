
sglH04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slComPrmIntBack>:
   0:	d2 14       	mov.l	54 <IMM_SmpcIntBackData>,r2	! 60fffa8
   2:	d3 13       	mov.l	50 <IMM_SMPC_REG_IREG>,r3	! 20100001
   4:	60 22       	mov.l	@r2,r0
   6:	40 19       	shlr8	r0
   8:	80 34       	mov.b	r0,@(4,r3)
   a:	40 19       	shlr8	r0
   c:	80 32       	mov.b	r0,@(2,r3)
   e:	40 19       	shlr8	r0
  10:	00 0b       	rts	
  12:	80 30       	mov.b	r0,@(0,r3)

00000014 <_slComPrmSetMemory>:
  14:	d2 10       	mov.l	58 <IMM_SmpcMemSetData>,r2	! 60fffac
  16:	d3 0e       	mov.l	50 <IMM_SMPC_REG_IREG>,r3	! 20100001
  18:	60 22       	mov.l	@r2,r0
  1a:	80 36       	mov.b	r0,@(6,r3)
  1c:	40 19       	shlr8	r0
  1e:	80 34       	mov.b	r0,@(4,r3)
  20:	40 19       	shlr8	r0
  22:	80 32       	mov.b	r0,@(2,r3)
  24:	40 19       	shlr8	r0
  26:	00 0b       	rts	
  28:	80 30       	mov.b	r0,@(0,r3)

0000002a <_slComPrmSetTime>:
  2a:	d2 0c       	mov.l	5c <IMM_SmpcTimeSetData>,r2	! 60fffb0
  2c:	d3 08       	mov.l	50 <IMM_SMPC_REG_IREG>,r3	! 20100001
  2e:	60 26       	mov.l	@r2+,r0
  30:	80 36       	mov.b	r0,@(6,r3)
  32:	40 19       	shlr8	r0
  34:	80 34       	mov.b	r0,@(4,r3)
  36:	40 19       	shlr8	r0
  38:	80 32       	mov.b	r0,@(2,r3)
  3a:	40 19       	shlr8	r0
  3c:	80 30       	mov.b	r0,@(0,r3)
  3e:	60 26       	mov.l	@r2+,r0
  40:	40 19       	shlr8	r0
  42:	80 3c       	mov.b	r0,@(12,r3)
  44:	40 19       	shlr8	r0
  46:	80 3a       	mov.b	r0,@(10,r3)
  48:	40 19       	shlr8	r0
  4a:	00 0b       	rts	
  4c:	80 38       	mov.b	r0,@(8,r3)
	...

00000050 <IMM_SMPC_REG_IREG>:
  50:	20 10       	mov.b	r1,@r0
  52:	00 01       	.word 0x0001

00000054 <IMM_SmpcIntBackData>:
  54:	06 0f       	mac.l	@r0+,@r6+
  56:	ff a8       	fmov	@r10,fr15

00000058 <IMM_SmpcMemSetData>:
  58:	06 0f       	mac.l	@r0+,@r6+
  5a:	ff ac       	fmov	fr10,fr15

0000005c <IMM_SmpcTimeSetData>:
  5c:	06 0f       	mac.l	@r0+,@r6+
  5e:	ff b0       	fadd	fr11,fr15
