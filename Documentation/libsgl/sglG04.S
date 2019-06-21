
sglG04.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSoundAllPause>:
   0:	d0 1e       	mov.l	7c <IMM_slSndFlush>,r0	! 0 <_slSoundAllPause>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	00 09       	nop	
   8:	d6 1d       	mov.l	80 <IMM_SoundStat>,r6	! 25a00780
   a:	d2 1e       	mov.l	84 <IMM_Sound_Buf>,r2	! 0 <_slSoundAllPause>
   c:	e3 01       	mov	#1,r3
   e:	e4 03       	mov	#3,r4
  10:	e5 ff       	mov	#-1,r5
  12:	43 18       	shll8	r3
  14:	44 28       	shll16	r4
  16:	44 18       	shll8	r4
  18:	c6 dd       	mov.l	@(884,gbr),r0
  1a:	e1 08       	mov	#8,r1
  1c:	67 03       	mov	r0,r7

0000001e <sndps_01>:
  1e:	60 60       	mov.b	@r6,r0
  20:	88 01       	cmp/eq	#1,r0
  22:	8d 02       	bt.s	2a <sndps_02>
  24:	76 02       	add	#2,r6
  26:	88 02       	cmp/eq	#2,r0
  28:	8b 02       	bf	30 <sndps_03>

0000002a <sndps_02>:
  2a:	12 40       	mov.l	r4,@(0,r2)
  2c:	75 01       	add	#1,r5
  2e:	72 10       	add	#16,r2

00000030 <sndps_03>:
  30:	41 10       	dt	r1
  32:	8f f4       	bf.s	1e <sndps_01>
  34:	34 3c       	add	r3,r4
  36:	60 53       	mov	r5,r0
  38:	c0 b5       	mov.b	r0,@(181,gbr)
  3a:	47 2b       	jmp	@r7
  3c:	4f 26       	lds.l	@r15+,pr

0000003e <_slSoundAllCont>:
  3e:	d0 0f       	mov.l	7c <IMM_slSndFlush>,r0	! 0 <_slSoundAllPause>
  40:	4f 22       	sts.l	pr,@-r15
  42:	40 0b       	jsr	@r0
  44:	00 09       	nop	
  46:	d6 0e       	mov.l	80 <IMM_SoundStat>,r6	! 25a00780
  48:	d2 0e       	mov.l	84 <IMM_Sound_Buf>,r2	! 0 <_slSoundAllPause>
  4a:	e3 01       	mov	#1,r3
  4c:	e4 04       	mov	#4,r4
  4e:	e5 ff       	mov	#-1,r5
  50:	43 18       	shll8	r3
  52:	44 28       	shll16	r4
  54:	44 18       	shll8	r4
  56:	c6 dd       	mov.l	@(884,gbr),r0
  58:	e1 08       	mov	#8,r1
  5a:	67 03       	mov	r0,r7

0000005c <sndcn_01>:
  5c:	60 60       	mov.b	@r6,r0
  5e:	88 03       	cmp/eq	#3,r0
  60:	8d 02       	bt.s	68 <sndcn_02>
  62:	76 02       	add	#2,r6
  64:	88 04       	cmp/eq	#4,r0
  66:	8b 02       	bf	6e <sndcn_03>

00000068 <sndcn_02>:
  68:	12 40       	mov.l	r4,@(0,r2)
  6a:	75 01       	add	#1,r5
  6c:	72 10       	add	#16,r2

0000006e <sndcn_03>:
  6e:	41 10       	dt	r1
  70:	8f f4       	bf.s	5c <sndcn_01>
  72:	34 3c       	add	r3,r4
  74:	60 53       	mov	r5,r0
  76:	c0 b5       	mov.b	r0,@(181,gbr)
  78:	47 2b       	jmp	@r7
  7a:	4f 26       	lds.l	@r15+,pr

0000007c <IMM_slSndFlush>:
  7c:	00 00       	.word 0x0000
	...

00000080 <IMM_SoundStat>:
  80:	25 a0       	mov.b	r10,@r5
  82:	07 80       	.word 0x0780

00000084 <IMM_Sound_Buf>:
  84:	00 00       	.word 0x0000
	...
