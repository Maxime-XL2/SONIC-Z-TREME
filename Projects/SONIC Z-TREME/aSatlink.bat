@echo off

set workdir="%cd%"

@REM Setup sclib_4d stub informations
set sclib_4d_stub=%workdir%\..\..\SatLink\sclib_4d_stub.bin
set sclib_4d_addr=0x002E0000

@REM Setup project informations

set testdir=%workdir%\cd\
set testbin=%workdir%\cd\0.bin

REM Credits go to Café Alpha for this amazing library and USB cart
REM Launch SatLink in order to :
REM  1. Use project's cd folder as root folder for Saturn <-> PC file exchange.
REM  2. Upload sclib_4d stub to low work RAM.
REM  3. Execute test file to Saturn via USB Data Link.
REM     Note : initialization flags are set to 0x000F0001 in order to
REM            prevent low work RAM (where sclib_4d stub is located)
REM            to be cleared before executing test file.
REM  4. Show log window where remote printf is displayed.
REM Note : Look for SatLink in parent folder (= project tree in my dev folder), 
REM        or SatLink folder (sclib_4d release archive).

set satlink_path=%workdir%\..\..\SatLink\
if exist SatLink.exe set satlink_path=%workdir%\..\..\SatLink
cd %satlink_path%
start /B SatLink.exe usb_dev_cart.ini -gui_set dbg_folder %testdir% -gui_set dbg_binary %testbin% -l %sclib_4d_stub% %sclib_4d_addr% -xx %testbin% 0x06004000 0x000F0001 -showlog
PAUSE
