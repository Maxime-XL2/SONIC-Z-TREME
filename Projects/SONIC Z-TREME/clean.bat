@ECHO Off
SET COMPILER_DIR=..\..\Compiler
SET PATH=%COMPILER_DIR%\SH_COFF\Other Utilities;%PATH%

rm -f ./cd/0.bin
rm -f *.o
rm -f ./sl_coff.bin
rm -f ./sl_coff.coff
rm -f ./sl_coff.map
rm -f ./sl_coff.iso
rm -f ./sl_coff.cue

ECHO Done.
