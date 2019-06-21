
sglD15.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_CSH_Purge>:
   0:	d0 05       	mov.l	18 <IMM_1ffffff0>,r0	! 1ffffff0
   2:	d1 06       	mov.l	1c <IMM_40000000>,r1	! 40000000
   4:	24 09       	and	r0,r4
   6:	24 1b       	or	r1,r4
   8:	35 4c       	add	r4,r5
   a:	e0 00       	mov	#0,r0

0000000c <cshpg_01>:
   c:	24 02       	mov.l	r0,@r4
   e:	74 10       	add	#16,r4
  10:	35 47       	cmp/gt	r4,r5
  12:	89 fb       	bt	c <cshpg_01>

00000014 <cshpg_02>:
  14:	00 0b       	rts	
  16:	00 09       	nop	

00000018 <IMM_1ffffff0>:
  18:	1f ff       	mov.l	r15,@(60,r15)
  1a:	ff f0       	fadd	fr15,fr15

0000001c <IMM_40000000>:
  1c:	40 00       	shll	r0
	...
