
sglarea.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_MasterStack>:
       0:	06 0f       	mac.l	@r0+,@r6+
       2:	fc 00       	fadd	fr0,fr12

00000004 <_SlaveStack>:
       4:	06 00       	.word 0x0600
       6:	1e 00       	mov.l	r0,@(0,r14)

00000008 <_MaxVertices>:
       8:	09 c4       	mov.b	r12,@(r0,r9)

0000000a <_MaxPolygons>:
       a:	06 e1       	.word 0x06e1

0000000c <_SortList>:
       c:	06 0c       	mov.b	@(r0,r0),r6
	...

00000010 <_SortListSize>:
      10:	00 00       	.word 0x0000
      12:	52 d4       	mov.l	@(16,r13),r2

00000014 <_TransList>:
      14:	06 0f       	mac.l	@r0+,@r6+
      16:	b8 00       	bsr	fffff01a <_WorkBuf+0xffffcada>

00000018 <_Zbuffer>:
      18:	06 0c       	mov.b	@(r0,r0),r6
      1a:	5e d4       	mov.l	@(16,r13),r14

0000001c <_SpriteBuf>:
      1c:	06 0c       	mov.b	@(r0,r0),r6
      1e:	66 d4       	mov.b	@r13+,r6

00000020 <_SpriteBufSize>:
      20:	00 01       	.word 0x0001
      22:	f0 b0       	fadd	fr11,fr0

00000024 <_Pbuffer>:
      24:	06 0e       	mov.l	@(r0,r0),r6
      26:	57 84       	mov.l	@(16,r8),r7

00000028 <_CommandBuf>:
      28:	06 0e       	mov.l	@(r0,r0),r6
      2a:	f3 c4       	fcmp/eq	fr12,fr3

0000002c <_CLOfstBuf>:
      2c:	06 0c       	mov.b	@(r0,r0),r6
      2e:	52 d4       	mov.l	@(16,r13),r2

00000030 <_PCM_Work>:
      30:	25 a7       	div0s	r10,r5
      32:	80 00       	mov.b	r0,@(0,r0)

00000034 <_PCM_WkSize>:
      34:	00 00       	.word 0x0000
      36:	80 00       	mov.b	r0,@(0,r0)

00000038 <_MaxEvents>:
      38:	00 40       	.word 0x0040

0000003a <_EventSize>:
      3a:	00 80       	.word 0x0080

0000003c <_MaxWorks>:
      3c:	01 00       	.word 0x0100

0000003e <_WorkSize>:
      3e:	00 40       	.word 0x0040

00000040 <_RemainEvent>:
	...

00000140 <_RemainWork>:
	...

00000540 <_EventBuf>:
	...

00002540 <_WorkBuf>:
	...
