@ECHO Off
SET EMULATOR_DIR=..\..\Emulators

if exist sl_coff.iso (
"%EMULATOR_DIR%\yabasanshiro\yabasanshiro.exe" -a -i sl_coff.iso) else (
echo Please compile first !
)
