
sglA38.o:     file format coff-sh


Disassembly of section SLPROG:

00000000 <_slConvert3Dto2D>:
mov.l	r8,@-r15
mov.l	r10,@-r15
mov.l	r9,@-r15
mov.l	@(28,gbr),r0
mov	#32,r6
clrmac	
add	r0,r6
mac.l	@r4+,@r6+
mov.l	@(104,gbr),r0
mov	#-1,r10
mac.l	@r4+,@r6+
mov.l	@(4,r6),r1
mov	r0,r8
mac.l	@r4+,@r6+
mov.b	@(172,gbr),r0
shll8	r10
mov	r8,r9
sts	mach,r2
sts	macl,r7

00000026 <cnv32_01>:
dt	r0
bf.s	26 <cnv32_01>
shlr	r8
xtrct	r2,r7
add	r1,r7
cmp/ge	r8,r7
bf.s	84 <cnv32_99>
swap.w	r9,r0
mov.l	r7,@(0,r10)
exts.w	r0,r0
mov.l	r0,@(16,r10)
shll16	r9
mov.l	r9,@(20,r10)
add	#-28,r6
clrmac	
add	#-12,r4
mac.l	@r4+,@r6+
mac.l	@r4+,@r6+
mov.l	@(4,r6),r1
mac.l	@r4+,@r6+
add	#-28,r6
add	#-12,r4
sts	mach,r2
sts	macl,r3
clrmac	
mac.l	@r4+,@r6+
xtrct	r2,r3
add	r1,r3
mac.l	@r4+,@r6+
mov.l	@(4,r6),r1
mac.l	@r4+,@r6+
sts	mach,r2
sts	macl,r4
xtrct	r2,r4
mov.l	@(28,r10),r8
add	r1,r4
dmuls.l	r8,r3
mov.l	@r15+,r9
mov.l	@r15+,r10
sts	mach,r0
dmuls.l	r8,r4
mov.l	r0,@(4,r5)
mov.l	@r15+,r8
sts	mach,r0
mov.l	r0,@(0,r5)
rts	
mov	r7,r0

00000084 <cnv32_99>:
mov.l	@r15+,r9
mov	#0,r0
mov.l	@r15+,r10
rts	
mov.l	@r15+,r8
