
sglM01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slSetDepthLimit>:
   0:	c7 16       	mova	5c <DepthWorkArea>,r0
   2:	61 53       	mov	r5,r1
   4:	62 63       	mov	r6,r2
   6:	63 03       	mov	r0,r3
   8:	13 40       	mov.l	r4,@(0,r3)
   a:	e0 01       	mov	#1,r0

0000000c <sdl_00>:
   c:	41 10       	dt	r1
   e:	8f fd       	bf.s	c <sdl_00>
  10:	40 00       	shll	r0
  12:	70 ff       	add	#-1,r0
  14:	13 01       	mov.l	r0,@(4,r3)
  16:	e0 01       	mov	#1,r0

00000018 <sdl_01>:
  18:	42 10       	dt	r2
  1a:	8f fd       	bf.s	18 <sdl_01>
  1c:	40 00       	shll	r0
  1e:	70 ff       	add	#-1,r0
  20:	81 35       	mov.w	r0,@(10,r3)
  22:	35 68       	sub	r6,r5
  24:	60 53       	mov	r5,r0
  26:	81 34       	mov.w	r0,@(8,r3)
  28:	00 0b       	rts	
  2a:	00 09       	nop	

0000002c <_slSetDepthTbl>:
  2c:	c7 0b       	mova	5c <DepthWorkArea>,r0
  2e:	61 03       	mov	r0,r1
  30:	60 53       	mov	r5,r0
  32:	81 16       	mov.w	r0,@(12,r1)
  34:	d0 08       	mov.l	58 <VramAddr>,r0	! 25c00000
  36:	65 5d       	extu.w	r5,r5
  38:	45 08       	shll2	r5
  3a:	45 00       	shll	r5
  3c:	35 0c       	add	r0,r5

0000003e <sdt_00>:
  3e:	60 45       	mov.w	@r4+,r0
  40:	25 01       	mov.w	r0,@r5
  42:	75 02       	add	#2,r5
  44:	25 01       	mov.w	r0,@r5
  46:	75 02       	add	#2,r5
  48:	25 01       	mov.w	r0,@r5
  4a:	75 02       	add	#2,r5
  4c:	25 01       	mov.w	r0,@r5
  4e:	75 02       	add	#2,r5
  50:	46 10       	dt	r6
  52:	8b f4       	bf	3e <sdt_00>
  54:	00 0b       	rts	
  56:	00 09       	nop	

00000058 <VramAddr>:
  58:	25 c0       	mov.b	r12,@r5
	...

0000005c <DepthWorkArea>:
  5c:	00 00       	.word 0x0000
  5e:	00 00       	.word 0x0000
  60:	00 00       	.word 0x0000
  62:	03 ff       	mac.l	@r15+,@r3+
  64:	00 05       	mov.w	r0,@(r0,r0)
  66:	00 1f       	mac.l	@r1+,@r0+
	...
