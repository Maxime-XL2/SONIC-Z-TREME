
sglG05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSequenceOn>:
   0:	4f 22       	sts.l	pr,@-r15
   2:	b0 2a       	bsr	5a <_slSndSeqNum>
   4:	00 09       	nop	
   6:	20 08       	tst	r0,r0
   8:	8d 24       	bt.s	54 <spn_09>
   a:	61 09       	swap.w	r0,r1
   c:	24 1b       	or	r1,r4
   e:	44 18       	shll8	r4
  10:	24 5b       	or	r5,r4
  12:	65 08       	swap.b	r0,r5
  14:	c6 dc       	mov.l	@(880,gbr),r0
  16:	62 03       	mov	r0,r2
  18:	60 6c       	extu.b	r6,r0
  1a:	20 5b       	or	r5,r0
  1c:	81 21       	mov.w	r0,@(2,r2)
  1e:	e0 00       	mov	#0,r0
  20:	81 22       	mov.w	r0,@(4,r2)
  22:	c6 dd       	mov.l	@(884,gbr),r0
  24:	e1 05       	mov	#5,r1
  26:	22 10       	mov.b	r1,@r2
  28:	40 0b       	jsr	@r0
  2a:	66 03       	mov	r0,r6
  2c:	60 7e       	exts.b	r7,r0
  2e:	88 80       	cmp/eq	#-128,r0
  30:	89 02       	bt	38 <sqon_01>
  32:	70 80       	add	#-128,r0
  34:	40 01       	shlr	r0
  36:	c9 7f       	and	#127,r0

00000038 <sqon_01>:
  38:	60 0c       	extu.b	r0,r0
  3a:	20 5b       	or	r5,r0
  3c:	81 21       	mov.w	r0,@(2,r2)
  3e:	e0 0e       	mov	#14,r0
  40:	46 0b       	jsr	@r6
  42:	80 20       	mov.b	r0,@(0,r2)
  44:	60 43       	mov	r4,r0
  46:	81 22       	mov.w	r0,@(4,r2)
  48:	60 09       	swap.w	r0,r0
  4a:	81 21       	mov.w	r0,@(2,r2)
  4c:	e0 01       	mov	#1,r0
  4e:	46 0b       	jsr	@r6
  50:	80 20       	mov.b	r0,@(0,r2)
  52:	60 58       	swap.b	r5,r0

00000054 <spn_09>:
  54:	4f 26       	lds.l	@r15+,pr
  56:	00 0b       	rts	
  58:	00 09       	nop	

0000005a <_slSndSeqNum>:
  5a:	d2 06       	mov.l	74 <IMM_SoundStat2>,r2	! 25a0078e
  5c:	e3 01       	mov	#1,r3
  5e:	43 18       	shll8	r3
  60:	e1 07       	mov	#7,r1

00000062 <srchnl_00>:
  62:	60 21       	mov.w	@r2,r0
  64:	30 33       	cmp/ge	r3,r0
  66:	8b 02       	bf	6e <srchnl_01>
  68:	41 10       	dt	r1
  6a:	8f fa       	bf.s	62 <srchnl_00>
  6c:	72 fe       	add	#-2,r2

0000006e <srchnl_01>:
  6e:	00 0b       	rts	
  70:	60 13       	mov	r1,r0
	...

00000074 <IMM_SoundStat2>:
  74:	25 a0       	mov.b	r10,@r5
  76:	07 8e       	mov.l	@(r0,r8),r7
