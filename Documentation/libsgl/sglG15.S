
sglG15.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSoundRequest>:
   0:	2f 76       	mov.l	r7,@-r15
   2:	2f 66       	mov.l	r6,@-r15
   4:	2f 56       	mov.l	r5,@-r15
   6:	2f 46       	mov.l	r4,@-r15
   8:	d0 16       	mov.l	64 <IMM_slSndFlush>,r0	! 0 <_slSoundRequest>
   a:	4f 22       	sts.l	pr,@-r15
   c:	40 0b       	jsr	@r0
   e:	00 09       	nop	
  10:	d0 15       	mov.l	68 <IMM_WaitHandShake>,r0	! 0 <_slSoundRequest>
  12:	40 0b       	jsr	@r0
  14:	00 09       	nop	
  16:	d2 15       	mov.l	6c <IMM_SoundComm>,r2	! 25a00700
  18:	64 f3       	mov	r15,r4
  1a:	74 04       	add	#4,r4
  1c:	66 46       	mov.l	@r4+,r6
  1e:	67 23       	mov	r2,r7
  20:	77 02       	add	#2,r7
  22:	65 46       	mov.l	@r4+,r5

00000024 <sndrq_00>:
  24:	60 64       	mov.b	@r6+,r0
  26:	61 46       	mov.l	@r4+,r1
  28:	20 08       	tst	r0,r0
  2a:	8d 13       	bt.s	54 <sndrq_08>
  2c:	88 77       	cmp/eq	#119,r0
  2e:	8d 09       	bt.s	44 <sndrq_word>
  30:	88 62       	cmp/eq	#98,r0
  32:	8d 04       	bt.s	3e <sndrq_byte>
  34:	88 57       	cmp/eq	#87,r0
  36:	8d 05       	bt.s	44 <sndrq_word>
  38:	88 42       	cmp/eq	#66,r0
  3a:	8f 0f       	bf.s	5c <sndrq_09>
  3c:	e0 fe       	mov	#-2,r0

0000003e <sndrq_byte>:
  3e:	27 10       	mov.b	r1,@r7
  40:	af f0       	bra	24 <sndrq_00>
  42:	77 01       	add	#1,r7

00000044 <sndrq_word>:
  44:	60 73       	mov	r7,r0
  46:	c9 01       	and	#1,r0
  48:	20 08       	tst	r0,r0
  4a:	8f 07       	bf.s	5c <sndrq_09>
  4c:	e0 ff       	mov	#-1,r0
  4e:	27 11       	mov.w	r1,@r7
  50:	af e8       	bra	24 <sndrq_00>
  52:	77 02       	add	#2,r7

00000054 <sndrq_08>:
  54:	22 50       	mov.b	r5,@r2
  56:	e0 80       	mov	#-128,r0
  58:	80 30       	mov.b	r0,@(0,r3)
  5a:	60 23       	mov	r2,r0

0000005c <sndrq_09>:
  5c:	4f 26       	lds.l	@r15+,pr
  5e:	00 0b       	rts	
  60:	7f 10       	add	#16,r15
	...

00000064 <IMM_slSndFlush>:
  64:	00 00       	.word 0x0000
	...

00000068 <IMM_WaitHandShake>:
  68:	00 00       	.word 0x0000
	...

0000006c <IMM_SoundComm>:
  6c:	25 a0       	mov.b	r10,@r5
  6e:	07 00       	.word 0x0700
