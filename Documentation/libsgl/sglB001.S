
sglB001.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slTVOn>:
   0:	c5 60       	mov.w	@(192,gbr),r0
   2:	91 09       	mov.w	18 <IMM_VDP2_DISP>,r1	! 8000
   4:	20 1b       	or	r1,r0
   6:	00 0b       	rts	
   8:	c1 60       	mov.w	r0,@(192,gbr)

0000000a <_slTVOff>:
   a:	c5 60       	mov.w	@(192,gbr),r0
   c:	91 05       	mov.w	1a <IMM_VDP2_NoDISP>,r1	! 7fff
   e:	20 19       	and	r1,r0
  10:	d1 02       	mov.l	1c <IMM_VDP2_TVMD>,r1	! 25f80000
  12:	c1 60       	mov.w	r0,@(192,gbr)
  14:	00 0b       	rts	
  16:	21 01       	mov.w	r0,@r1

00000018 <IMM_VDP2_DISP>:
  18:	80 00       	mov.b	r0,@(0,r0)

0000001a <IMM_VDP2_NoDISP>:
  1a:	7f ff       	add	#-1,r15

0000001c <IMM_VDP2_TVMD>:
  1c:	25 f8       	tst	r15,r5
	...
