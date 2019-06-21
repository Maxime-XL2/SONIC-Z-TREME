
sglG03.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSoundAllOff>:
   0:	c6 db       	mov.l	@(876,gbr),r0
   2:	e1 08       	mov	#8,r1
   4:	62 03       	mov	r0,r2
   6:	e0 00       	mov	#0,r0

00000008 <snof_01>:
   8:	81 20       	mov.w	r0,@(0,r2)
   a:	41 10       	dt	r1
   c:	8f fc       	bf.s	8 <snof_01>
   e:	72 14       	add	#20,r2
  10:	c4 b1       	mov.b	@(177,gbr),r0
  12:	e1 ff       	mov	#-1,r1
  14:	20 08       	tst	r0,r0
  16:	8d 02       	bt.s	1e <snof_03>

00000018 <snof_02>:
  18:	40 10       	dt	r0
  1a:	8f fd       	bf.s	18 <snof_02>
  1c:	41 00       	shll	r1

0000001e <snof_03>:
  1e:	60 13       	mov	r1,r0
  20:	c1 59       	mov.w	r0,@(178,gbr)
  22:	4f 22       	sts.l	pr,@-r15
  24:	b0 0b       	bsr	3e <WaitHandShake>
  26:	00 09       	nop	
  28:	4f 26       	lds.l	@r15+,pr
  2a:	e0 00       	mov	#0,r0
  2c:	c0 b5       	mov.b	r0,@(181,gbr)
  2e:	d0 09       	mov.l	54 <IMM_Sound_Buf>,r0	! 0 <_slSoundAllOff>
  30:	d1 09       	mov.l	58 <IMM_SoundComm>,r1	! 25a00700
  32:	c2 dc       	mov.l	r0,@(880,gbr)
  34:	e0 0d       	mov	#13,r0
  36:	80 10       	mov.b	r0,@(0,r1)
  38:	e0 80       	mov	#-128,r0
  3a:	00 0b       	rts	
  3c:	80 30       	mov.b	r0,@(0,r3)

0000003e <WaitHandShake>:
  3e:	d3 07       	mov.l	5c <IMM_SoundReqFlag>,r3	! 25a004e0

00000040 <wthndsk_00>:
  40:	84 30       	mov.b	@(0,r3),r0
  42:	40 11       	cmp/pz	r0
  44:	89 04       	bt	50 <wthndsk_02>
  46:	e0 30       	mov	#48,r0

00000048 <wthndsk_01>:
  48:	40 10       	dt	r0
  4a:	8b fd       	bf	48 <wthndsk_01>
  4c:	af f8       	bra	40 <wthndsk_00>
  4e:	00 09       	nop	

00000050 <wthndsk_02>:
  50:	00 0b       	rts	
  52:	00 09       	nop	

00000054 <IMM_Sound_Buf>:
  54:	00 00       	.word 0x0000
	...

00000058 <IMM_SoundComm>:
  58:	25 a0       	mov.b	r10,@r5
  5a:	07 00       	.word 0x0700

0000005c <IMM_SoundReqFlag>:
  5c:	25 a0       	mov.b	r10,@r5
  5e:	04 e0       	.word 0x04e0
