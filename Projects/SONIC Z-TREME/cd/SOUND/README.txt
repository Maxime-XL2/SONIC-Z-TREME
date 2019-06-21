*********************************************
Z-TREME ENGINE AUDIO IMPLEMENTATION - README
2018-04-05
*********************************************

Using audio is a bit tricky and it might take you a while to get it right.
Most homebrew apps simply use PCM audio from the work ram and DMA it in the sound RAM buffer area. 
The issue with this is that it wastes precious RAM, adds CPU overhead and hogs the B-BUS with DMA transfers (the same bus that connects the SH2 CPUs with the VDP1 and VDP2).

The best solution is to use the audio processors and the audio RAM with MIDI sequences - but instead of using sequences, we will use direct MIDI commands to the sound driver.
Sadly, I won't have time in the near future to write an app to replace the Sega Sound Tools, so right now the solution is tricky and not user-friendly.
All the Sega Sound Tools apps are for old 68K Macs and they require extra hardware (like a sound box).
By using an emulator, we can do almost everything we need for sound effects.

The solution is the following : 

1) Download an old Mac emulator (68K). I use BASILISK II : https://basilisk.cebix.net/ 

2) Set your MAC OS 7 ROM

3) Download the Sound Tools : https://antime.kapsi.fi/sega/docs.html 

4) Make sure you have .AIFF (Big endian) audio that you want to use. It will all be put in sound RAM (512 KB), so make sure you have no more than about 400 KB.

5) Use the Tone Editor to create your tone data : https://antime.kapsi.fi/sega/files/ST-068-R1-042594.pdf 
   You can also look at the SGL tutorial documentation (Page 2-8) to see how to use it : https://antime.kapsi.fi/sega/files/ST-237-R1-051795.pdf 
   Note that you should use only 1 bank (or switch banks ingame) and keep all the sounds in different layers. 
   YOU NEED to offset the base pitch! Your first value should be C4 (60) for both beginning and end in the layer section. 
   Each subsequent sound should increase that value by 1. 
   Make sure you change the base pitch with the same increase. If all your audio is 22,050 khz, your base pitch should be 72 or 84 for 11,025 khz.
   Follow the SGL guide closely as it's pretty complicated the first time!

6) Create your MAP file : you can use the Sound simulator to generate one. 
   Look again at the SGL tutorial documentation (Page 2-29)

7) Put your files (MAP, Sound driver and Tone data) in your CD folder, under the SOUND subfolder.

8) Tweak your Z-TREME Engine ZT_AUDIO.c file if you want to use different names, or just use the default names for your files and replace them.
   Make sure that you modify the length of the files as needed. Also, the sound driver isn't aligned for 32 bits, so add 2 bytes to the length.

9) Ingame, just call the sound function when you need to play a sound. 
   If you have more than 16 sounds, you will need to do a bank change depending on where your sound is.
   The sound function will stop the previous sound (say sound 60) if the same sound (again sound 60) is called twiced. By using MONO sound, you can play the same sound twice at the same moment, else it will be once only.
   If you wish to have the same sound played on several channels, just remove the MIDI stop command from the ZT_AUDIO.c file, but make sure you clear the channels manualy as needed.
   I suspect that by using the wave editor you might be able to put an end comand at the end of the sound, so that the channel clears itself, but I haven't tried it yet.
   The sound will stop on it's own, but the channel won't be cleared as it is now, which isn't a very huge deal.

Enjoy!

