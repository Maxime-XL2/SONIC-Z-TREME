
sglC05.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSetSprite>:
   0:	d0 1b       	mov.l	70 <IMM_SpriteEntry>,r0	! 0 <_slSetSprite>
   2:	4f 22       	sts.l	pr,@-r15
   4:	40 0b       	jsr	@r0
   6:	62 53       	mov	r5,r2
   8:	4f 26       	lds.l	@r15+,pr
   a:	c6 0c       	mov.l	@(48,gbr),r0
   c:	e1 28       	mov	#40,r1
   e:	67 03       	mov	r0,r7
  10:	c6 12       	mov.l	@(72,gbr),r0
  12:	e3 01       	mov	#1,r3
  14:	10 10       	mov.l	r1,@(0,r0)
  16:	10 71       	mov.l	r7,@(4,r0)
  18:	10 32       	mov.l	r3,@(8,r0)
  1a:	e1 00       	mov	#0,r1
  1c:	10 13       	mov.l	r1,@(12,r0)
  1e:	70 10       	add	#16,r0
  20:	66 03       	mov	r0,r6
  22:	60 29       	swap.w	r2,r0
  24:	81 7f       	mov.w	r0,@(30,r7)
  26:	e5 0f       	mov	#15,r5
  28:	e3 80       	mov	#-128,r3

0000002a <wait_DMAC_01208>:
  2a:	50 33       	mov.l	@(12,r3),r0
  2c:	c9 03       	and	#3,r0
  2e:	88 01       	cmp/eq	#1,r0
  30:	89 fb       	bt	2a <wait_DMAC_01208>
  32:	50 3c       	mov.l	@(48,r3),r0
  34:	e0 00       	mov	#0,r0
  36:	13 03       	mov.l	r0,@(12,r3)
  38:	e3 9c       	mov	#-100,r3
  3a:	43 08       	shll2	r3
  3c:	80 31       	mov.b	r0,@(1,r3)
  3e:	e3 80       	mov	#-128,r3
  40:	13 40       	mov.l	r4,@(0,r3)
  42:	13 71       	mov.l	r7,@(4,r3)
  44:	13 52       	mov.l	r5,@(8,r3)
  46:	90 12       	mov.w	6e <IMM_DMA_REQ_WORD>,r0	! 5601
  48:	13 03       	mov.l	r0,@(12,r3)
  4a:	e0 09       	mov	#9,r0
  4c:	13 0c       	mov.l	r0,@(48,r3)
  4e:	e1 80       	mov	#-128,r1

00000050 <wait_DMAC_01210>:
  50:	50 13       	mov.l	@(12,r1),r0
  52:	c9 03       	and	#3,r0
  54:	88 01       	cmp/eq	#1,r0
  56:	89 fb       	bt	50 <wait_DMAC_01210>
  58:	60 63       	mov	r6,r0
  5a:	d6 06       	mov.l	74 <IMM_FRT_INTR>,r6	! 21000000
  5c:	c2 12       	mov.l	r0,@(72,gbr)
  5e:	26 01       	mov.w	r0,@r6
  60:	e0 dc       	mov	#-36,r0
  62:	30 7c       	add	r7,r0
  64:	c2 0c       	mov.l	r0,@(48,gbr)
  66:	00 0b       	rts	
  68:	e0 01       	mov	#1,r0

0000006a <stspr_09>:
  6a:	00 0b       	rts	
  6c:	e0 00       	mov	#0,r0

0000006e <IMM_DMA_REQ_WORD>:
  6e:	56 01       	mov.l	@(4,r0),r6

00000070 <IMM_SpriteEntry>:
  70:	00 00       	.word 0x0000
	...

00000074 <IMM_FRT_INTR>:
  74:	21 00       	mov.b	r0,@r1
	...
