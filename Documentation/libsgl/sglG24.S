
sglG24.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSequenceStat>:
   0:	d2 04       	mov.l	14 <IMM_SoundStat>,r2	! 25a00780
   2:	60 43       	mov	r4,r0
   4:	c9 07       	and	#7,r0
   6:	30 0c       	add	r0,r0
   8:	00 2c       	mov.b	@(r0,r2),r0
   a:	20 08       	tst	r0,r0
   c:	00 29       	movt	r0
   e:	00 0b       	rts	
  10:	ca 01       	xor	#1,r0
	...

00000014 <IMM_SoundStat>:
  14:	25 a0       	mov.b	r10,@r5
  16:	07 80       	.word 0x0780
