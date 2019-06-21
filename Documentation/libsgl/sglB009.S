
sglB009.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slScrCycleSet>:
   0:	d1 05       	mov.l	18 <IMM_VDP2_CYCA0L>,r1	! 60ffcd0
   2:	d2 06       	mov.l	1c <IMM_Prt_CYCA0L>,r2	! 25f80010
   4:	21 42       	mov.l	r4,@r1
   6:	11 51       	mov.l	r5,@(4,r1)
   8:	11 62       	mov.l	r6,@(8,r1)
   a:	11 73       	mov.l	r7,@(12,r1)
   c:	22 42       	mov.l	r4,@r2
   e:	12 51       	mov.l	r5,@(4,r2)
  10:	12 62       	mov.l	r6,@(8,r2)
  12:	00 0b       	rts	
  14:	12 73       	mov.l	r7,@(12,r2)
	...

00000018 <IMM_VDP2_CYCA0L>:
  18:	06 0f       	mac.l	@r0+,@r6+
  1a:	fc d0       	fadd	fr13,fr12

0000001c <IMM_Prt_CYCA0L>:
  1c:	25 f8       	tst	r15,r5
  1e:	00 10       	.word 0x0010
