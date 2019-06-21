
sglB002.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slColRAMMode>:
   0:	c5 67       	mov.w	@(206,gbr),r0
   2:	93 0b       	mov.w	1c <IMM_VDP2_CRMD>,r3	! cfff
   4:	20 39       	and	r3,r0
   6:	44 18       	shll8	r4
   8:	44 08       	shll2	r4
   a:	44 08       	shll2	r4
   c:	20 4b       	or	r4,r0
   e:	d1 02       	mov.l	18 <IMM_VDP2_RAMCTL>,r1	! 25f8000e
  10:	c1 67       	mov.w	r0,@(206,gbr)
  12:	00 0b       	rts	
  14:	21 01       	mov.w	r0,@r1
	...

00000018 <IMM_VDP2_RAMCTL>:
  18:	25 f8       	tst	r15,r5
  1a:	00 0e       	mov.l	@(r0,r0),r0

0000001c <IMM_VDP2_CRMD>:
  1c:	cf ff       	or.b	#-1,@(r0,gbr)
