
sglH01.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slGetLanguage>:
   0:	d2 28       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
   2:	d1 09       	mov.l	28 <IMM_SMPC_MSK_LANG>,r1	! f
   4:	50 24       	mov.l	@(16,r2),r0
   6:	00 0b       	rts	
   8:	20 19       	and	r1,r0

0000000a <_slSetLanguage>:
   a:	64 4c       	extu.b	r4,r4
   c:	e1 05       	mov	#5,r1
   e:	34 16       	cmp/hi	r1,r4
  10:	8b 00       	bf	14 <_slSetLanguage_10>
  12:	64 13       	mov	r1,r4

00000014 <_slSetLanguage_10>:
  14:	d2 23       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  16:	d1 04       	mov.l	28 <IMM_SMPC_MSK_LANG>,r1	! f
  18:	50 24       	mov.l	@(16,r2),r0
  1a:	24 19       	and	r1,r4
  1c:	61 17       	not	r1,r1
  1e:	20 19       	and	r1,r0
  20:	20 4b       	or	r4,r0
  22:	00 0b       	rts	
  24:	12 04       	mov.l	r0,@(16,r2)
	...

00000028 <IMM_SMPC_MSK_LANG>:
  28:	00 00       	.word 0x0000
  2a:	00 0f       	mac.l	@r0+,@r0+

0000002c <_slGetSoundEffect>:
  2c:	d2 1d       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  2e:	d1 08       	mov.l	50 <IMM_SMPC_MSK_SNDEFC>,r1	! 100
  30:	50 24       	mov.l	@(16,r2),r0
  32:	20 18       	tst	r1,r0
  34:	00 0b       	rts	
  36:	00 29       	movt	r0

00000038 <_slSetSoundEffect>:
  38:	d2 1a       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  3a:	d1 05       	mov.l	50 <IMM_SMPC_MSK_SNDEFC>,r1	! 100
  3c:	50 24       	mov.l	@(16,r2),r0
  3e:	e3 00       	mov	#0,r3
  40:	64 4c       	extu.b	r4,r4
  42:	34 30       	cmp/eq	r3,r4
  44:	8d 01       	bt.s	4a <_slSetSoundEffect_10>
  46:	20 1b       	or	r1,r0
  48:	20 1a       	xor	r1,r0

0000004a <_slSetSoundEffect_10>:
  4a:	00 0b       	rts	
  4c:	12 04       	mov.l	r0,@(16,r2)
	...

00000050 <IMM_SMPC_MSK_SNDEFC>:
  50:	00 00       	.word 0x0000
  52:	01 00       	.word 0x0100

00000054 <_slGetSoundOutput>:
  54:	d2 13       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  56:	d1 08       	mov.l	78 <IMM_SMPC_MSK_SNDOUT>,r1	! 200
  58:	50 24       	mov.l	@(16,r2),r0
  5a:	20 18       	tst	r1,r0
  5c:	00 0b       	rts	
  5e:	00 29       	movt	r0

00000060 <_slSetSoundOutput>:
  60:	d2 10       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  62:	d1 05       	mov.l	78 <IMM_SMPC_MSK_SNDOUT>,r1	! 200
  64:	50 24       	mov.l	@(16,r2),r0
  66:	e3 00       	mov	#0,r3
  68:	64 4c       	extu.b	r4,r4
  6a:	34 30       	cmp/eq	r3,r4
  6c:	8d 01       	bt.s	72 <_slSetSoundOutput_10>
  6e:	20 1b       	or	r1,r0
  70:	20 1a       	xor	r1,r0

00000072 <_slSetSoundOutput_10>:
  72:	00 0b       	rts	
  74:	12 04       	mov.l	r0,@(16,r2)
	...

00000078 <IMM_SMPC_MSK_SNDOUT>:
  78:	00 00       	.word 0x0000
  7a:	02 00       	.word 0x0200

0000007c <_slGetHelpWindow>:
  7c:	d2 09       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  7e:	d1 08       	mov.l	a0 <IMM_SMPC_MSK_HELP>,r1	! 400
  80:	50 24       	mov.l	@(16,r2),r0
  82:	20 18       	tst	r1,r0
  84:	00 0b       	rts	
  86:	00 29       	movt	r0

00000088 <_slSetHelpWindow>:
  88:	d2 06       	mov.l	a4 <IMM_SmpcStatusBuf>,r2	! 0 <_slGetLanguage>
  8a:	50 24       	mov.l	@(16,r2),r0
  8c:	d1 04       	mov.l	a0 <IMM_SMPC_MSK_HELP>,r1	! 400
  8e:	e3 00       	mov	#0,r3
  90:	64 4c       	extu.b	r4,r4
  92:	34 30       	cmp/eq	r3,r4
  94:	8d 01       	bt.s	9a <_slSetHelpWindow_10>
  96:	20 1b       	or	r1,r0
  98:	20 1a       	xor	r1,r0

0000009a <_slSetHelpWindow_10>:
  9a:	00 0b       	rts	
  9c:	12 04       	mov.l	r0,@(16,r2)
	...

000000a0 <IMM_SMPC_MSK_HELP>:
  a0:	00 00       	.word 0x0000
  a2:	04 00       	.word 0x0400

000000a4 <IMM_SmpcStatusBuf>:
  a4:	00 00       	.word 0x0000
	...
