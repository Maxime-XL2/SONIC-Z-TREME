
sglG02.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slDSPOff>:
   0:	a0 01       	bra	6 <sndcom_out>
   2:	e6 0c       	mov	#12,r6

00000004 <_slSndMapChange>:
   4:	e6 08       	mov	#8,r6

00000006 <sndcom_out>:
   6:	4f 22       	sts.l	pr,@-r15
   8:	c6 dc       	mov.l	@(880,gbr),r0
   a:	46 28       	shll16	r6
   c:	62 03       	mov	r0,r2
   e:	64 4c       	extu.b	r4,r4
  10:	c4 b5       	mov.b	@(181,gbr),r0
  12:	24 6b       	or	r6,r4
  14:	44 18       	shll8	r4
  16:	22 42       	mov.l	r4,@r2
  18:	d1 05       	mov.l	30 <IMM_SoundComm>,r1	! 25a00700
  1a:	40 08       	shll2	r0
  1c:	40 08       	shll2	r0
  1e:	d3 05       	mov.l	34 <IMM_slSndFlush>,r3	! 0 <_slDSPOff>
  20:	31 0c       	add	r0,r1
  22:	43 0b       	jsr	@r3
  24:	2f 16       	mov.l	r1,@-r15
  26:	60 f6       	mov.l	@r15+,r0
  28:	4f 26       	lds.l	@r15+,pr
  2a:	00 0b       	rts	
  2c:	00 09       	nop	
	...

00000030 <IMM_SoundComm>:
  30:	25 a0       	mov.b	r10,@r5
  32:	07 00       	.word 0x0700

00000034 <IMM_slSndFlush>:
  34:	00 00       	.word 0x0000
	...
