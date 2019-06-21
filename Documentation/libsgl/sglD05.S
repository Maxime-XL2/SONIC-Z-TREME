
sglD05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_DMA_CpuStart>:
   0:	4f 03       	stc.l	sr,@-r15
   2:	e0 f0       	mov	#-16,r0
   4:	40 0e       	ldc	r0,sr
   6:	24 48       	tst	r4,r4
   8:	8d 1c       	bt.s	44 <cpust_CH0>
   a:	e3 80       	mov	#-128,r3

0000000c <cpust_CH1>:
   c:	e3 90       	mov	#-112,r3

0000000e <cpust_CH1_0>:
   e:	50 33       	mov.l	@(12,r3),r0
  10:	c9 03       	and	#3,r0
  12:	88 01       	cmp/eq	#1,r0
  14:	89 fb       	bt	e <cpust_CH1_0>
  16:	50 38       	mov.l	@(32,r3),r0
  18:	e0 00       	mov	#0,r0
  1a:	13 03       	mov.l	r0,@(12,r3)
  1c:	e2 9c       	mov	#-100,r2
  1e:	42 08       	shll2	r2
  20:	80 22       	mov.b	r0,@(2,r2)
  22:	d4 16       	mov.l	7c <IMM_CTRL_DMA_TRANS>,r4	! 60fff44
  24:	50 46       	mov.l	@(24,r4),r0
  26:	51 47       	mov.l	@(28,r4),r1
  28:	52 48       	mov.l	@(32,r4),r2
  2a:	13 00       	mov.l	r0,@(0,r3)
  2c:	13 11       	mov.l	r1,@(4,r3)
  2e:	13 22       	mov.l	r2,@(8,r3)
  30:	51 49       	mov.l	@(36,r4),r1
  32:	e2 01       	mov	#1,r2
  34:	21 2b       	or	r2,r1
  36:	13 13       	mov.l	r1,@(12,r3)
  38:	e0 09       	mov	#9,r0
  3a:	13 08       	mov.l	r0,@(32,r3)
  3c:	e0 10       	mov	#16,r0
  3e:	c0 ba       	mov.b	r0,@(186,gbr)
  40:	00 0b       	rts	
  42:	4f 07       	ldc.l	@r15+,sr

00000044 <cpust_CH0>:
  44:	50 33       	mov.l	@(12,r3),r0
  46:	c9 03       	and	#3,r0
  48:	88 01       	cmp/eq	#1,r0
  4a:	89 fb       	bt	44 <cpust_CH0>
  4c:	50 3c       	mov.l	@(48,r3),r0
  4e:	e0 00       	mov	#0,r0
  50:	13 03       	mov.l	r0,@(12,r3)
  52:	e2 9c       	mov	#-100,r2
  54:	42 08       	shll2	r2
  56:	80 21       	mov.b	r0,@(1,r2)
  58:	d4 08       	mov.l	7c <IMM_CTRL_DMA_TRANS>,r4	! 60fff44
  5a:	50 41       	mov.l	@(4,r4),r0
  5c:	51 42       	mov.l	@(8,r4),r1
  5e:	52 43       	mov.l	@(12,r4),r2
  60:	13 00       	mov.l	r0,@(0,r3)
  62:	13 11       	mov.l	r1,@(4,r3)
  64:	13 22       	mov.l	r2,@(8,r3)
  66:	51 44       	mov.l	@(16,r4),r1
  68:	e2 01       	mov	#1,r2
  6a:	21 2b       	or	r2,r1
  6c:	13 13       	mov.l	r1,@(12,r3)
  6e:	e0 09       	mov	#9,r0
  70:	13 0c       	mov.l	r0,@(48,r3)
  72:	e0 10       	mov	#16,r0
  74:	c0 b9       	mov.b	r0,@(185,gbr)
  76:	00 0b       	rts	
  78:	4f 07       	ldc.l	@r15+,sr
	...

0000007c <IMM_CTRL_DMA_TRANS>:
  7c:	06 0f       	mac.l	@r0+,@r6+
  7e:	ff 44       	fcmp/eq	fr4,fr15
