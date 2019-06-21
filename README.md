# SONIC-Z-TREME
Sonic Z-Treme project for the Sega Saturn game console

SONIC Z-TREME v.0.0813 BY XL2
GPL license : If you share a binary version of this, you share back the code.
And please don't be a jerk, just give me some credits somewhere.

THIS PROJECT IS NOT APPROVED NOR SUPPORTED BY SEGA!

Credits : The compiler setup is very similar to the Jo Engine setup and it uses Johannes Fetz's cue maker. 
Props to Dany from Jo Engine forums for helping me setup the compiler environment.
The Sonic X-Treme maps are from Andrew75, the maker of Project AXSX.
Thanks to JollyRoger for his overall help and tips.
Thanks also to the Segaxtreme community (vbt, mrkotfw and many others) who helped me a lot improving the Z-Treme engine 
(the version in Sonic Z-Treme is an old one)

If you are just looking at downloading the "best" build of the game, the Sage demo is better than this version (at least at the time I am writing this) : 
https://sonicfangameshq.com/forums/showcase/sonic-z-treme-saturn-sage-2018-demo.161/

Note on this code : it's not pretty, I know!
I started this project with almost no knowledge of coding, even less for game making.
So I am not a programmer and I never code in my job, but I learned a great deal thanks to this project.
Many things are wrong or could be much better.
I know it, but with little free time, I wanted to just make a fun little game.
I've seen too many people coding on Saturn and wasting months to have the most efficient functions possible. But then nothing ever truly comes out
of these projects because it takes way too long to do anything.
I had a different philosophy, I just want to make a nice little game, so I just try to do it as fast as possible even knowing things are "broken" or not efficient.
Bad coding practices, yes, but at least a game can come out of it!

I chose to remake Sonic X-Treme for a number of reason, the number one being the simplicity of it.
The blocky nature of the game made the collision detection easier when I started and it also made generating LOD models easy.

I lost motivation on this project for a number of reason, the number one being the insane amount of people complaining non-stop without even playing the demo.

"I refuse to play this unless you put sprites!"
"Port Sonic Mania instead! Do I have to do it myself?"
"Where is the fisheye lens?"
"Can you make game XYZ instead?"
"There is a reason Sega cancelled Sonic X-Treme!"
"It's so blocky! LOL!"

People don't realize how difficult it is to code a whole 3d game engine from scratch (and no, using Unity/UE is not what I consider creating a game engine!) and realize even
less how hard it is on the Saturn.
So anyway, it got to a point where entitled people were just and complaining non-stop, so it just frustrated me a lot and fully killed my motivation to work on this.
Realizing that I was just putting way too much of my free time in something not pleasing anybody (or almost),
I just killed this project. I am now writing a FPS engine/game for the Saturn, so I just release Sonic Z-Treme in case someone wants to play with it/improve it or pick it up.

Note on this build : it was rushed for SAGE 2018. I had no working build in 2018 and wanted to try a new engine using octrees.
I also wrote a custom animation system, which I was proud of (done in like 2 weeks part time, I was very pleased with the results even if it's not user friendly).

THIS VERSION IS POST-SAGE : I did many experiments, so it's not as good as the Sage version. 
Performances are worse, both because I didn't update the map compiler to support my newer frustum culling function and because I use gouraud shading instead of flat lighting.
I also decreased the z scaling, so more polygons are shown on screen. 
I built a BSP compiler that I used for lighting, which worked well, but killed support for some maps, which is why it has less maps than the Sage demo.

About the map compiler : It truly sucks. I won't share it for now, I would need to clean it quite a bit, but it really sucks. It started as simple model converter to a collision generator to
a full map compiler. And I did so many experiments, so many different iterations of the engine that it's a real shitshow of unused code, abandonned experiments,
working experiments with terrible code, duplicate functions, etc.
In other words, it's terrible even to myself, so I won't share it for now. I would need to update it as well to fix things I broke since SAGE and make sure it works with the current Z-Treme build, but it takes more time than I am willing to spent for now. 
If there is enough interest, I will try to find time to fix it.
