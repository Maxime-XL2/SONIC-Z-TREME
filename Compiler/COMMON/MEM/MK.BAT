@echo off
IF EXIST sega_mem.lib del sega_mem.lib
..\..\sh\bin\shc -sub=mem.shc mem_call.c
..\..\sh\bin\shc -sub=mem.shc mem_free.c
..\..\sh\bin\shc -sub=mem.shc mem_init.c
..\..\sh\bin\shc -sub=mem.shc mem_mall.c
..\..\sh\bin\shc -sub=mem.shc mem_real.c
..\..\sh\bin\lbr /sub=mem.lbr
