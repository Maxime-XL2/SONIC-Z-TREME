# SONIC-Z-TREME
Sonic Z-Treme project for the Sega Saturn game console

SONIC Z-TREME v.0.0813 BY XL2

# GPL license : 
If you share a binary version of this, share back the code.
By making it Open source it might help the homebrew community.
Just don't be a jerk, just give me some credits somewhere if you use it.
Unless you fully remove Sonic, all audio/music/texture assets, SBL and SGL, you CAN'T sell it.
In other words, you can't sell this game.

# THIS PROJECT IS NOT APPROVED NOR SUPPORTED BY SEGA!

# Used libraries : 
Sega Basic Library and Sega Graphic Library.
Z-Treme Engine (older version)

# Credits : 
The compiler setup is very similar to the Jo Engine setup and it uses Johannes Fetz's cue maker. 
Props to Dany from Jo Engine forums for helping me setup the compiler environment.
The Sonic X-Treme maps are from Andrew75, the maker of Project AXSX.
Thanks to JollyRoger for his overall help and tips.
Thanks to Café Alpha for the Satlink support.
Thanks also to the Segaxtreme community (vbt, mrkotfw and many others) who helped me a lot improving the Z-Treme engine 
(not seen here, the version in Sonic Z-Treme is an old one).

# To play the game :
If you are just looking at downloading the current "best" build of the game to try it, the Sage demo is better than this version (at least at the time I am writing this) : 
https://sonicfangameshq.com/forums/showcase/sonic-z-treme-saturn-sage-2018-demo.161/

# To compile : 
Just run compile.bat to compile the code. I use Code::Blocks, but even notepad would work.

# Note on this code : 
it's not pretty, I know!
I started this project with very little knowledge of coding, even less for game making.
So I am not a programmer and I never code in my job, but I learned a great deal thanks to this project.
Many things are wrong or could be much better.
I know it, but with little free time, I just wanted to make a nice little game, so I just tried to do it as fast as possible even knowing things are "broken" or not efficient.
Bad coding practices, yes, but at least a game quickly came out of it!

# Why Sonic X-Treme?
I chose to remake Sonic X-Treme for a number of reason, the number one being the simplicity of it.
The blocky nature of the game made the collision detection easier when I started and it also made generating LOD models easy.
I am not a die-hard Sonic fan (I still haven't completed Sonic Mania...), so it wasn't a project I planned to work on, it just kind of happened more or less by accident.
I planned to do it as a real quick project and just make cheap maps looking kind of like Sonic X-Treme (the name "Sonic Z-Treme" was meant to be a joke, like a cheap ripoff).
My mindset for the game was "Just give me a D- already!", but with Andrew75 sharing is 3d models of the Sonic X-Treme maps, the project became more serious, so I invested more time in it and started to work on a model/map converter, I then added collision detection generation using the converter, and then kept on adding more features... so the project quickly overtook the released demos we had of Sonic X-Treme and went beyond what I thought I would/could do.

I lost motivation on this project for a number of reason, the number one being the insane amount of people complaining non-stop without even playing the demo.

"I refuse to play this unless you put sprites!" 
"Port Sonic Mania instead! Do I have to do it myself?"
"Where is the fisheye lens?"
"Can you make game XYZ instead?"
"There is a reason Sega cancelled Sonic X-Treme!"
"Mario 64/Crash is much better!"
"It's so blocky! LOL!"

It got to a point where people were just complaining non-stop, and the more features I added the more people complained/requested stuff, so it just frustrated me a lot and fully killed my motivation to work on this.
Considering that it's not the project I wanted to do and realizing that I was just putting way too much of my free time in something not pleasing anybody (or almost), I just killed this project. 
I am now writing a FPS game for the Saturn (which will take forever to complete), so I just release Sonic Z-Treme as-is in case someone wants to play with it/improve it or pick it up.

# Note on this build : 
it was rushed for SAGE 2018. I had no working build in 2018 and wanted to try a new engine using octrees.
I also wrote a custom vertex animation system, which I was proud of (done from scratch in like 2 weeks part time, I was very pleased with the results even if it's not user friendly).

THIS VERSION IS POST-SAGE : I did many experiments, so it's not as good as the Sage version. 
Performances are worse, both because I didn't update the map compiler to support my newer frustum culling function and because I use gouraud shading instead of flat lighting.
I also decreased the z scaling, so more polygons are shown on screen. 
I built a BSP compiler that I used for lighting, which worked well, but killed support for some maps, which is why it has less maps than the Sage demo.

# About the map compiler : 
It truly sucks. 
I won't share it for now, I would need to clean it quite a bit, but it really sucks. It started as simple model converter to a collision generator to a "full" map compiler. And I did so many experiments, so many different iterations of the engine that it's a real shitshow of unused code, abandonned experiments, working experiments with terrible code, duplicate functions, etc.
In other words, it's terrible even to myself, so I won't share it for now. I would need to update it as well to fix things I broke since SAGE and make sure it works with the current Z-Treme build, but it takes more time than I am willing to spend for now. 
If there is enough interest, I will try to find time to fix it.