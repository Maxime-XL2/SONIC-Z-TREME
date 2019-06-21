============================================
Nova - A Sega Saturn/Titan Video emulator
Copyright (C) 2017-2018 Steve Kwok
Twitter: https://twitter.com/realSteveKwok
Discord: https://discord.gg/yAQBa5C
Patreon: https://www.patreon.com/nova_emu
============================================


1.Requirements
=================
CPU: 2.0GHz
Memory: 1GB
Display card: Support DirectX9
OS: Win7/8/8.1/10
In addition, you may need to install the following components:
(1).VS2017 runtime redistributable
(2).DirectX runtime redistributable (June 2010)


2.Current status
=================
Nova gets better compatibility now compared with the initial release.
Hector Tomazella made a compatibility list for Nova
https://literalmente-game.github.io/compatibility_lists/nova.html


3.Features:
=================
(1).Automatically select regions(Only for mode <SATURN>).
(2).Automatically select cartridge types by editing cart.json.
(3).Automatically save backup memory.
(4).Doesn't require a BIOS file.


2.Support:
=================
2-1.Nova doesn't support save/load states yet.

2-2.Nova supports to boot from CD drive in the following ways:
(1).Hold <Ctrl>+<Shift> and "Open" to select CD drive
(2).Shortcut key <Ctrl>+<Shift>+<O> to select CD drive
(3).Specify the CAPITAL letter of your CD drive for the property "sat_cd" in nova.ini, then "Boot".
(4).Specify the CAPITAL letter of your CD drive for the property "sat_cd" in nova.ini, then shortcut key <Ctrl>+<B>.
(5).Drag your CD drive directly into Nova's main window.
(6).Drag your CD drive directly onto Nova's executable.
(7).From command line, specify the CAPITAL letter of CD drive as the command parameter.

2-3.Nova also supports to open CD image files(CUE/MDS/CCD/BIN/ISO):
(1)."Open" to select CD image.
(2).Shortcut key <Ctrl>+<O> to select CD image.
(3).Specify CD image path for the property "sat_cd" in nova.ini, then "Boot".
(4).Specify CD image path for the property "sat_cd" in nova.ini, then shortcut key <Ctrl>+<B>.
(5).Drag CD image directly into Nova's main window.
(6).Drag CD image directly onto Nova's executable.
(7).From command line, specify CD image path as the command parameter.

2-4.Nova supports to run ST-V(Sega Titan Video) games.
(1).Hold <Shift> and "Open".
(2).Shortcut key <Shift>+<O>.
(3).Specify rom file path for the property "stv_game1" in nova.ini, then hold <Shift> and "Boot".
(4).Specify rom file path for the property "stv_game1" in nova.ini, then shortcut key <Shift>+<B>.
(5).Drag rom file directly into Nova's main window.
(6).Drag rom file directly onto Nova's executable.
(7).From command line, specify rom file path as the command parameter.

2-5.Note:
(1).ST-V BIOS is required to run ST-V games, specify the BIOS file for the property "stv_bios" in nova.ini.
(2).Auto region doesn't take effect in <TITAN> mode.


3.How to use
=================

3-1.Key mapping:

<SATURN>
UP: W
DOWN: S
LEFT: A
RIGHT: D
START: H
A: J
B: K
C: L
X: U
Y: I
Z: O
L: Y
R: P
START of Shuttle Mouse: Scroll down the wheel

<TITAN>
UP: W
DOWN: S
LEFT: A
RIGHT: D
SW1: J
SW2: K
SW3: L
COIN: Y
START: H
TEST: I
SERVICE: O

1: NBG0 ON/OFF
2: NBG1 ON/OFF
3: NBG2 ON/OFF
4: NBG3 ON/OFF
5: RBG0 ON/OFF
8: Sprite ON/OFF
9: VDP2_C++/VDP2_JIT/NO_GFX toggle

3-2.Note:
(1).Nova only supports one player currently.
(2).Nova can start from command line. The syntax is very simple:
> nova "path"


4.Special thanks
=================
Anders Montonen, for everything related to development for Saturn.
Charles MacDonald, James Forshaw, I got lots of helps from their research on undocumented stuff.
Theo Berkau, emulation of undocumented CDBLOCK commands(E0, E1, E2) is based on his research.
Karl Stenerud, I referenced the source code of Musashi when I wrote my M68K emulator.
flamewing, BCD instructions emulation of M68K based on his research.
MITSUNARI Shigeo, for his great x86/x64 JIT assembler Xbyak.
Niels Lohmann, for his great JSON parser.
Jean-loup Gailly and Mark Adler, for their great zlib.
Dieter Baron and Thomas Klausner, for their great libzip.
Martin J. Fiedler, for his neat mp2 decoder.
SegaRetro and Satakore, for Saturn games/peripherals information.
Benjamin Siskoo, for his kindness and various helps.
Zet-sensei, for his kindness and the completed data.json file.
Hector Tomazella, a nice buddy who makes videos and compatibility list for Nova.
Dwayne, the first patron of Nova.


5.Testing
=================
Benjamin Siskoo
Zet-sensei
bosshunter
Strelok
InsertMoreCoins
Nocturne
caesarkof


6.Translation
=================
See About Dialog


7.Patreon Supporter
=================
Johannes Fetz
