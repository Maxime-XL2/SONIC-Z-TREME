** README.SJS*******

Contents

- gcc
- cartdev-server, cartdev-gdb
- usobug
- Designers' tools
- Tcl/Tk
- perl
- Executing the SGL sample programs in an SGI environment

- gcc

Version SOA960328 of the "gcc" compiler for SH2 is supplied on this CD.  During 
installation, the following files are installed:

/usr/local/sh-SOA960328-hms
/usr/local/lib/gcclib/sh-SOA960328-hms
/usr/local/bin

"gcc" has internal paths for specification files and an internal call program.

These files reside collectively in:
	/usr/local/lib/gcclib/sh-SOA960328-hms
Therefore, do not change the paths or names of any files that reside in this path.  In 
addition, one of the sample programs supplied on this CD, "MakeFile," reads in the 
system library from the default directory for this "gcc" version.

The path name for this default library is:

/usr/local/sh-SOA960328-hms

Therefore, do not move the files in this path.
 
Of the files within

/usr/local/bin

the following files are updated when "gcc" is installed:

sh-SOA960328-hms-*
sh-ar, sh-as, sh-c++, sh-c++filt, sh-coffdump, sh-gcc, sh-gdb,sh-g++, sh-gasp
sh-ld, sh-nm, sh-objdump, sh-objcopy, sh-ranlib, sh-run, sh-size, sh-srconv
sh-strings, sh-strip, sh-sysdump

The function of each file is indicated below:

ar: Appends to library/removes from library.
as: SH2 assembler.
c++: C++ compiler (symbolic link with g++).
coffdump: Views the contents of "coff" files.
gcc: Main body of the "gcc" program.
gdb: Debugger for the E7000 ICE.
g++: Main body of the C++ compiler.
gasp: Preprocessor for gas.
ld: GNU linker.
nm: Symbol extraction program.
objcopy: Object copy converter.
ranlib: Updates library symbol information.
size: Displays file Bss, data, and text data sizes, and total size.
srconv: coff -> sysroff conversion tool. (Does not operate perfectly.)
strings: Searches for printable text strings.
strip: Deletes symbol information and relocation bits from object files.
sysdump: Extracts symbol information from the "sysroff" format.

Because files other than sh-SOA960328-hms-* are all symbolically linked, make update 
backups of existing files as needed.  In addition, "sh-gdb", which is included in this 
package, is Hitachi's ICE debugger, but we have not confirmed its operation.  Please 
note that we will not be able to answer any questions you may have about this tool.


- cartdev-server and cartdev-gdb

CartDev is controlled through SCSI, and consists of a server process (cartdev-server) 
that permits connection from multiple GDBs, which permits debugging of multiple 
CPUs, and a GDB source (gdb-cartdev) that supports cartdev-server.  cartdev-server 
and the "gdb" execution module are in CartDev/bin.

<cartdev-server>

The startup method is shown below:

cartdev-server [port] [-m <cartdev monitor pass>] [-r <retry>]

[port]: Specifies the connecting port via the INET domain.  Default: 0x2000

[-m...]: Specifies the CartDev monitor program path.  Default: 
/usr/local/CartDev/m117.bin

[-r...]: Specifies the retry count for control of CartDev via SCSI.  Default: 5

<gdb>
The startup method is shown below:

gdb [-d <source directory path>] [<coff file>]

[-d...]: Source file directory path.  Default: ./

[...]: "gdb" symbol "coff" file

After startup, the following line links with cartdev-server:

(gdb) target cartdev-server [<cpu>] [-h <host> [<port>]]

The CPU specified by <cpu> can now be debugged.

Either of the following can be specified for <cpu>:

sh2m: SH2 master CPU
sh2s: SH2 Slave CPU

If <cpu> is omitted, "sh2m" is set.

For <host>, specify the host name of the machine on which cartdev-server is operating 
when linking with cartdev-server via the INET domain.  If omitted, the link is made 
with cartdev-server on the same machine started up by the user through the UNIX 
domain.

For <port> specify the port number when linking via the INET domain.  The default is 
0x2000.  This specification is not needed for the UNIX domain.

(gdb) cartdev cpu-sync [ sync | async ]

If both the master CPU and the slave CPU are operating and then one or the other is 
stopped while the other continues to operate, this line sets whether or not the other CPU 
should also be stopped.


When "sync" is specified, the second CPU stops; when "async" is specified, the two CPUs 
no longer have a relationship.  If omitted, the current setting is displayed.  The 
default setting is "async".

Note that the stopping of operation is performed by the software; it does not mean that 
complete synchronization is possible.

(gdb) cartdev memory [ share | unshare ]

This line sets whether the master CPU and slave CPU program code is shared.  If 
"share" is specified, then when one CPU is executing a step, the other one is stopped.  
(This is done in order to prevent the CPUs from getting hung up on an internal break for 
a step.)

If the argument is omitted, the current setting is displayed.  The default setting is 
"unshare".

(gdb) cartdev other-break [ stop | continue ]

This line specifies whether to report a stoppage due to a breakpoint set for another CPU, 
or to continue automatically.

If the argument is omitted, the current setting is displayed.  The default setting is 
"stop".

(gdb) cartdev control-game <arg1> <arg2>

This line executes the CartDev Control Game command.  <arg1> specifies the 
command category value, and <arg2> specifies the command designator value.  <arg1> 
and <arg2> may not be omitted.  The values for both must be within the range 0x00 to 
0xff.  Depending on the contents of the Control Game command, the operation of gdb 
may not be guaranteed.

Connection with Indy

The following is a brief explanation of connecting Indy and CartDev.

Turn off the power for Indy, CartDev, and the Saturn system, and then connect the 
units with half-pitch SCSI cables. Next, turn on the power in the following sequence: 
CartDev, Saturn, Indy.

When Indy and CartDev are connected for the first time and the power is turned on, a 
directory "/dev/scsi" is created in the Indy file system.  Because the access authority to 
this directory and the files in this directory is limited to "root," log in with the root 
authority and set the access authority for the other users.

        % cd /dev/scsi

        % chmod 777 . *

Now CartDev and Saturn can be used with Indy.

* Because the method described above carries some risks to system security, the method 
described below is recommended:

First, turn off the power for Indy, and connect Indy and CartDev with a half-pitch SCSI 
cable.  Next, turn on the power for CartDev, confirm that the STATUS lamp on the 
front of CartDev changes from "1" to "0", and then turn on the power for DevSATURN.  
Next, turn on the power for Indy, and log in with the root authority.  Now perform the 
following operation to confirm that CartDev has been properly recognized by Indy.

Select "System -> System Manager" from the ToolChest menu box on the desktop.

Once the System Manager window opens, selecting "Hardware -> Summary" from the 
menu at the top of the window causes a list of hardware that is currently recognized by 
Indy to be displayed.  "Video Creater" in this list corresponds to CartDev.  Confirm 
which address of what controller the Video Creater is connected to.

Next, determine the group name and group ID for the users who will use CartDev, and 
describe that group name and group ID in:

/etc/group 

If a group has already been set, it is not necessary to make a change here.

Next, open the UNIX shell and input:

cd /dev/scsi 

Assuming that the Video Creator was found above to be connected to address 5 of 
controller No. 0, input:

chmod 770 sc0d5l0

Controller No,  Address

Finally, to end the procedure, input the following from the shell:

chgrp group-name sc0d510

A simple example of "gdb" operation is shown below:

gdb-cartdev server startup

% cartdev-server > /dev/null &

# cartdev-server startup
# When performed on the same terminal, cartdev-server messages are redirected.

gdb startup
% gdb sl.coff 
# Startup of GDB for SH.  Target program: "s1.coff"
(sh-gdb) target cartdev-server sh2m
    (sh-gdb) load sl.coff
    (sh-gdb) b main
    (sh-gdb) r

# Connect to CartDev
# Download s1.coff
# Set breakpoint at start of main()
# Execute

Inputting commands while the target is running

Once the run command is issued, GDB waits for the target to reach a break.

Therefore, GDB commands cannot be executed while the target is running.

If the target does not break because the breakpoint was not set properly, CartDev can 
stop the target by means of the keyboard interrupt SIGINT.


When cartdev-server and "gdb" do not operate properly

If cartdev-server and "gdb" do not operate properly, turn the power for CartDev and 
Saturn off and then restart.

When "gdb" reloads a "coff" file, the next program to be executed may not run properly.  
In this event, the program can be executed by issuing the run command a second time.

------------------------

GDB is now faster and will not crash.  October 2, 1995

uso.bin and cartdev-server have been improved so that memory transfers to Saturn 
(GDB's LOAD command, etc.) are faster.

In addition, as a result of improvements in CartDev initialization, cartdev-server can 
now be restarted if it crashes without requiring the CartDev power to be shut off.

* This is only in comparison with the previous version; depending on how the program 
crashed, a restart may be necessary.

Saturn memory access was reviewed.  While gdb previously accessed all memory in 
byte units, this has been changed so that accesses are made with a specified memory 
width.  For example:

print (short)l
         set   *(unsgined long*)0x25fe0080 = 0x02201220

These lines perform 2-byte and 4-byte accesses, respectively.

The memory fill function is now supported.  Use the gdb HELP command to confirm 
the details.  Basically, this function is equivalent to the X command.

- usobug

"usobug" is a debugger with binary load and save functions. Because these functions do 
not exist in "gdb", they are necessary when using a simple SIMM system, etc.

1.	Overview

"usobug" is SH2 debugger software with only the minimum essential functions.  The 
functions are listed below.  The binary data load function mentioned previously can be 
executed with the "loadbin" command.
usage : r ---------------------------- get register
usage : name value ------------------- set register
usage : db,dw,dl [addr] [count] ------ dump memory
usage : fb,fw,fl addr data [count] --- fill memory
usage : go --------------------------- go program
usage : stop ------------------------- stop program
usage : bp [addr] -------------------- break point

usage : da [addr] [count] ------------ disassemble
usage : loadmon file ----------------- down load monitor
usage : loadbin file addr ------------ down load binary file
usage : loadcoff file [x]------------- down load coff file
usage : < file ----------------------- script
usage : / ---------------------------- change SH2M,SH2S,M68K
usage : q ---------------------------- quit USOBUG
usage : ? ---------------------------- Help
Gets registers.
Sets registers.
Dumps memory.
Fills memory.


Starts CPU.
Stops CPU
Specifies breakpoint. (0: cancel)
Disassembles.
Loads monitor.
Loads bin file.
Loads coff file.
Executes script.
Changes the CPU.
Quits the debugger.
Help

2.	Debugger startup

a.	After confirming that cartdev-server has not been started up, start up 
"usobug".

./usobug

    +++ USO-BUG by M.Fujita +++ 
    ID='0005' 
    SEGA OA Saturn CartDev  =5 
   (SH2-M)** LISTING

b.	Load the monitor.

(SH-M)loadmon /usr/local/sh/bin/uso.bin 

The debugger is now ready.

- Designers' tools

o Execution method

When the Sega Saturn Viewer is used with "smap", the environmental settings are 
required.  If the installation destination for "./SGI/tools/bin" is "/usr/tools/bin", input 
the following:

% source	/usr/tools/bin/.tools 

The path is set up and the environmental variables are set.  Afterwards, input the 
individual commands.

If the installation destination is not "/usr/tools/bin", overwrite part of the initialization 
file ".tools":

setenv TOOLS_DIR  installation path name

Because there is a separate initialization file ".ssview" in the directory "ssview", set this 
one as the "source" if they are to be used separately.

The "smap" + "Sega Saturn Viewer" startup command is as follows:


% smap -ssv 

o Explanation of the tools (supplement only)

[star] smap

This tool texture maps an HRC file.  The model data is the HRC file (including 2.66c, 
3D Sega 1.03), the texture data is the DGT file.  Normally, this tool is used to apply 
texture to polygon data, which is then converted by "slcon".  For details on how to use 
this tool, refer to the distribution manual.

As part of this version upgrade, functions have been added to this tool and modified.  
These changes are described below.

[File]

Changed the file selection dialog box.  (Ver. 2.3)

Made the input/output HRC file compatible with SOFTIMAGE 3D SEGA1.03 version.  
(Ver. 2.3)

[File]->[Save Model]

The saved HRC file is the SOFTIMAGE 3D SEGA 1.03 version.  Always use "slcon" Ver. 
1.8 to convert the file.  Ver. 1.7 or earlier will not convert the file correctly.  (Ver. 2.3)

[File]->[RE HRC]

This function binds a texture-mapped HRC with an non-texture-mapped HRC.  If an 
HRC that was texture mapped by "smap" is retrieved and then a new HRC (with no 
texture) is retrieved, the new HRC is automatically texture mapped.  This is valid for 
changes in the HRC point data.  However, if the number of polygons has changed, this 
function cannot be used.  (Ver. 2.0 and up)

The material color can now be changed.  (Ver. 2.3)

[Edit]->[Undo] , [Redo]

Undoes and redoes only texture-related operations   (Ver. 2.3)

[Window]->[Entry Window]

Windows can now be resized in the vertical direction.  (Ver. 2.3)

[Window]->[Information Window]->[Edit]

Character strings can be input aside from attributes.  Because these character strings 
are in a user area, they are not supported by the converter.

When using this feature, either change the converter or else create a new one.  In 
addition, if the SOFTIMAGE material name is:

user-character-string  or   [Plane][Sort][Mesh] user-character-string

then that user string is reflected in "smap".  The maximum number of characters is 18.  
(Ver. 2.0)



[Window]->[SEGA Saturn Viewer]

This function displays on the actual Saturn unit.  Use of this function requires 
CartDev and Dev-Saturn.  When using this function, set the environmental variables 
according to the method described above when starting up "smap", and then input the 
following:

% smap -ssv 

If no error messages are displayed, "smap" is ready.

The following options were added for selection (Ver. 2.3):
		[Perspective]->	[ON]	
				[OFF]	
		[Flat Shading]->[ON]	
				[OFF]	
		[Transparency]->[ON]	
				[OFF]	

Perspective projection.
Flat projection.
Flat shading of polygons on.
Flat shading of polygons off.
Use transparent colors for texture.
Do not use transparent colors for texture.

The default settings are [ON], [ON], and [OFF], respectively.

[Window]->[Message Window]

Error messages are displayed.  (Ver. 2.3)

[Setup]->[Background]

This function changes the background color.  The ssview background color also 
changes.  (Ver. 2.3)

[Entry]->[Sort]

Sorts the entry list in alphabetical order.  (Ver. 2.3)

[Entry]->[Reserve Entry]

Reserves an entry when reading a new model file.  (Ver. 2.3)

[Entry]->[Show Entry]

Displays the polygon on which the selected entry is applied in the background.  
However, if multiple entries are selected, only the one at the top of the list is displayed.  
(Ver. 2.3)

[Polygon]->[Selection Color]

Turns on/off the color frame indicating that a polygon is selected.  (Ver. 2.0)

[Mode]->[Check Texture]

Reverses the entry list textures when a polygon is selected.    (Ver. 2.3)

[Added shortcuts]

		"e"	[Entry]->[Show Entry]	(Ver 2.3)
		"x"	[Setup]->[CenterTrans]	(Ver 2.3)

[star] slcon

"slcon" is a converter that converts HRC files output by SOFTIMAGE (including 2.66c, 
3D SEGA 1.03) or "smap" into SGL data.

If the following command line is input:
	% slcon -h


then the method of use is displayed; confirm the information.  For details on the 
method of use, refer to the distribution manual.

[star]dgt2txr

This is a DGT file texture converter.  This is used within the HRC converter "slcon".  
This converter is designed for palette conversion as well.  To convert palette data, 
input the following:

% dgt2txr input-file-name -pl output file name

The palette size is fixed to RGB 15 bits.

[star]dgtdisp

This is a simple DGT file display tool.  The command line format is as follows:

% dgtdisp file-name

To enlarge the display, clicking the right-hand mouse button inside the display window 
causes a menu to appear; specify the magnification ratio.  To display the palette, input 
the following:

% dgtdisp file-name -pl

(Ver. 1.2)

[star]sicon

This converter converts a texture-mapped HRC file that was output by SOFTIMAGE 
(3D SEGA 1.03) into the same format as an HRC file output by "smap".  The HRC file 
after conversion is automatically in the "smap" texture-mapped state.

If the following SOFTIMAGE commands are executed:

	[Games] > [Export] > [Saturn]

an "mdl" file and a texture-sliced "pic" file are output.  Using these files and the HRC 
file (SOFTIMAGE) for that model as input files, the DGT file and HRC file ("smap") are 
output.

Note: The "mdl" file and the name of the input file for the HRC file.

If the following command line is input:

	% sicon -h

then the method of use is displayed; confirm the information.

(Examples)

When the input files are [sample.hrc] and [sample.mdl], and the export destination is 
the path "/home/sgl/export", or a PIC file, inputting the following command line:

	% sicon sample.hrc -o sample_smap.hrc -d /home/sgl/export

causes DGT files to be output to [sample_smap_hrc] and to "/home/sgl/export."


[star]pic2ppm

This filter converts a "pic" file into a general-purpose "ppm" file for UNIX.

This filter is used with "slcon".

[star]dgt2ppm

This filter converts a "dgt" file into a general-purpose "ppm" file for UNIX.

[star]ppm2pic

This filter converts a general-purpose "ppm" file for UNIX into a "pic" file.

[star]ppm2dgt

This filter converts a general-purpose "ppm" file for UNIX into a "dgt" file.

This filter is used with "slcon".

[star] Format of HRC Files Output by SMAP (Ver. 2.0 or later)

Number of characters

Material name

  [  1  ][ 1  ][ 1  ][ 1 ][   1   ]_[       4      ]_[     18     ]

  [Plane][Sort][Mesh][Dir][Overlap]_[Polygon Number]_[User Strings]

The attributes, polygon number and user strings are connected by underscore 
characters.

o Meanings of material names

	[Plane]
		S	:	Single_Plane
		D	:	Dual_Plane

	[Sort]
		N	:	SORT_MIN
		C	:	SORT_CEN
		F	:	SORT_MAX
		B	:	SORT_BFR

	[Mesh]
		O	:	MESHon
		N	:	MESHoff

	[Dir]
		N	:	sprNoflip
		H	:	sprHflip
		V	:	sprVflip

Note: Because "sprHVflip" is the same as rotating the unit 180¡, change the vertices.


	[Overlap]

Assuming the list of polygon vertices is as follows:

4-corner polygons: [0, 1, 2, 3]
3-corner polygons: [0, 1, 2]

then:

		0	:	[0,1,2,3]  
		1	:	[0,0,1,2]  
		2	:	[0,1,1,2]  
		3	:	[0,1,2,2]  
		4	:	[0,1,2,0]  

4-corner polygon
First vertex overlapping
Second vertex overlapping
Third vertex overlapping
First and fourth vertices overlapping

	[Polygon Number]

Polygon numbers are always represented by four-digit numbers. This detail is managed 
by "smap"; the user does not need to be aware of it.

	[Polygon Number]

User strings.  Up to 18 characters can be input.  Used when properties outside of the 
attributes are needed.

o Example 1 (4-corner polygon)

	SNNN0_0001_SEGA

	[Plane]	:	Single_Plane
	[Sort]	:	SORT_MIN
	[Mesh]	:	MESHoff
	[Dir]	:	sprNoflip
	[Overlap] :	VERTICES(0,1,2,3)

	[Polygon Number]: 0001

	[User Strings]	: "SEGA"

o Example 2 (3-corner polygon)

	DFOH1_0002_ENTERPRISES

	[Plane] :	Dual_Plane
	[Sort]	:	SORT_MAX
	[Mesh]	:	MESHon
	[Dir]	:	sprHflip
	[Overlap] :	VERTICES(0,0,1,2)

	[Polygon Number]: 0002

	[User Strings]	: "ENTERPRISES"


<SGL Tool Release Notes>

[star] "smap" history

o Ver1.0

GUI was ported from SIGI to OSF/Motif.

o Up to Ver. 1.5

Operation not guaranteed.

"ssview" and "slcon" not yet supported.

[Bug information]

In this version, 3-corner polygons were converted to 4-corner polygons, and the output 
HRC was not always readable by SOFTIMAGE Ver. 2.66c.

o Ver. 1.6 (official release; SGL Ver. 1.0)

[Additional functions]

Overlap information added to the material name for 3-corner polygons.  "ssview" 
supported.  "slcon" Ver. 1.3 supported.

[Bug information]

[Window] -> [Information Window] -> [Edit]
Attribute changes were not reflected in the output file.

o Ver2.0

Corrected bugs in Ver. 1.6

[Additional functions]

Texture binding function.
User string input.
Background color changes.
Selection color changes.
Functions added to "ssview".
"slcon" Ver. 1.4 supported.

[Bug information]

[File] -> [Load Model] -> [HRC]

When reading in a 3-corner polygon, sets the default value (overlap the last vertex) in 
the material name overlap information.

o Ver2.1

Correction of bugs in Ver. 2.0

[Additional functions]

Added size restriction processing for texture loads.
(Minimum: 8x1; maximum: 504x255)

Added error checking processing when using the "ssview" function.


o ver2.2

[Additional functions]

The "ssview" function, which previously only supported Indy, now supports Indigo2.

[Bug function]

When an attempt is made to use the "ssview" function to display a model that contains 
null data, the system crashes.

o VER2.3

Input/output HRC files now support SOFTIMAGE 3D SEGA 1.03.

A bug was fixed so that it is now possible to use the "ssview" function to display models 
that include null data.

Options were added to the "ssview" function.

The default for the Z sort representative point was changed to the center point 
(SORT_CEN).

[Additional functions]

		[Edit]->[Undo] , [Redo]
		[Window]->[Entry Window]
		[Window]->[SEGA Saturn Viewer]->[Perspective]
						[FlatShading]
						[Transparency]
		[Window]->[Message Window]
		[Setup]->[Background]
		[Entry]->[Sort]
		[Entry]->[Reserve Entry]
		[Entry]->[Show Entry]
		[Mode]->[Check Texture]
		[Additional shortcut]

[star] "slcon" history

o Ver1.0

Created as a converter that converts HRC files into SGL data.

o Up to Ver. 1.2

Operation not guaranteed.

o Ver1.3

SOFTIMAGE Ver. 2.66c and SMAP Ver. 1.6 output made compatible with HRC files.

[Bug information]

Even if the overlapping points were changed by using "Change Overlap" from SMAP 
Ver. 1.6, the changes were not reflected and the default setting (overlap the last vertex) 
would be set.  

o Ver1.4

Corrected the bug in Ver. 1.3.

Supports HRC files output by SMAP Ver. 2.0.


o Ver1.5

While model scaling was previously performed for all three (X, Y, and Z) axes, scaling 
can now be applied to each axis independently.

o Ver1.6

[Bug correction]

A bug that converted 4-corner polygons into 3-corner polygons when the fifth character 
in the material name of the HRC file output by SOFTIMAGE was a number from 0 to 4 
(for example, "SNN12" or "ABCD1") was corrected.

This bug did not appear in HRC files output by SMAP.

Note: Do not add an underscore ("_") for the sixth character in the material name when 
converting an HRC file that was output by SOFTIMAGE, because the sixth character of 
the material name being  an underscore ("_") is being used as a condition in order to 
determine whether converted HRC files were output by SOFTIMAGE or by SMAP.  
(For details, refer to the format for HRC files output by SMAP described above.)

o Ver1.7

[Bug correction]

Because there was data that could not be converted when generating an OBJECT with a 
parent-child structure, a correction was made so that parent-child structures similar to 
those of SOFTIMAGE can be generated.

o Ver1.8

Supports HRC files output by SOFTIMAGE 3D SEGA 1.03 and SMAP Ver. 2.3.

Supports HRC files that contain null data.

Changed the default for the Z sort representative point to the center point 
(SORT_CEN).

Changed and added defaults for the texture color mode.

% slcon- -cm 32k  RGB mode that uses transparent color
% slcon- -cm rgb  RGB mode that does not use transparent color (default)

While the default up to Ver. 1.7 was "RGB mode that uses transparent color," the default 
was changed to "RGB mode that does not use transparent color."

[star] dgt2txr history

o Ver1.0

Created as texture converter for DGT files.

o Ver1.1

Added error processing for file reads.

o Ver1.2


Added "RGB mode that does not use transparent color." (-cm rgb)

Made correction so that when texture data is output, it always conforms with a 32 (20H) 
byte boundary.

[star] "dgtdisp" history

o Ver1.0

Created as a simple display tool for DGT files.

o Ver1.2

Added palette display function.

[star] "sicon" history

o Ver1.0

Created as a converter that texture-mapped HRC files that were output by 
SOFTIMAGE to the same format as HRC files output by SMAP.

[star] "pic2ppm", "dgt2ppm", "ppm2pic", and "ppm2dgt" history

Created as image format filters.

- "Tcl/Tk"

"Tcl/Tk" is an interpreter-based GUI programming language.  "Tcl" is the base 
interpreter language, and "Tk" is the GUI program that lays on top.

While it is not mandatory that "Tcl/Tk" be installed, if this application is present it 
becomes possible to run "gdb" on a GUI base.

* Reference

Introduction to Tcl/Tk (Gijutsu Hyoronsha)

- "Perl"

"Perl" is an interpreter-based programming language that conforms with the GNU 
Public License.  "Perl" is a multi-function language that can read UNIX commands in 
the middle of a script, perform task and network control, and process text files.

While "perl" is also not required, a variety of scripts for this language are available.

* References

Introduction to Perl (Softbank)
Perl Programming (Softbank)
Introductory Perl (ASCII)

- Executing the SGL sample programs in the SGI environment

1)	Compiling

To compile a program, execute the "make" command in the shell.


2)	Execution on Saturn

a)	cartdev-server execution

To execute cartdev-server, assuming the monitor program "uso.bin" is in 
"/usr/Cartdev/bin", input the following:

cartdev-server -m /usr/Cartdev/bin/uso.bin

Once the following message appears, execution is complete:

Accept network conection.

One shell is absorbed by the above procedure; if that is undesirable, the following 
command line executes cartdev-server in the background:

cartdev-server -m /usr/Cartdev/bin/uso.bin > & /dev/null

However, in this case, the message indicating the connection status of cartdev-server is 
not displayed.

b) Debugger startup

Move to the directory where the program to be executed resides and then input the 
following:

cartdev-gdb sl.coff

Once "gdb" is started up, input either :

target cartdev-server

or:

ta c

to test the connection with the server process.  If successful, the following message is 
displayed:

Connect to remote cartDev-server.
Open remote cartDev-Server.
connected

c) Program execution

Input:

load sl.coff

The program is then loaded into the Saturn main unit.

Input:

r

to run the program.

* Note on CD program execution

When accessing a CD, it is necessary to first turn off the Saturn security feature.  After 
first making sure that cartdev-server is not working in a background process, turn off 
the power for CartDev and DevSaturn and insert the system disc in the Saturn.

Turn on the power for CartDev and DevSaturn, in that order, wait until the message 
"COMPLETE" appears in the upper left corner of the screen and then insert the CD to 
be used.

The cartdev-server then starts up.

Note on program evaluation and source code debugging

[star] Displaying a program listing

Display line 1 to line 10:

l 1, 10

Display line 1 to line 10 from the file "foo.c":

l foo.c: 1, 10

[star] Memory dump

The memory dump command is the "x" command.

Format:

x/nfu addr

n: Repetitions
f: Output format

 x: Hexadecimal
 d: Signed decimal


 u: Decimal
 o: Octal
 t: Binary
 c: ASCII character

u: Data length

b:byte    (1 byte)
  h:short   (2 byte)
  w:long    (4 byte)
  g:long x 2(8 byte)

Example: Dumping 256 bytes of data with a data length of two bytes, starting from 
0x06004000, and displaying the dump in hexadecimal notation:

x/128xh 0x06004000

[star] Resetting variables

When setting variable A to 125:

set var a = 125

This setting is valid even for registers.  If the following setting is made:

set r4 = 125

The value "125" is set in register r4.

[star] Displaying variables

print a

To display at each break:

display a

* "print" and "display" can use the same format specifications as the "x" command.

[star] Step execution

step:1    Each instruction (including those within functions)
next:1    Each execution module  (a function is one execution module)

[star] Breakpoint setting

To break at the function "subroutine" in "foo.c":

b foo.c:subroutine

To stop at the 10th line of foo.c:

b foo.c:10

Conditional stopping:

To break at the function "subroutine" in "foo.c" (but only when variable x = 10):

b foo.c:subroutine if x == 10

[star] Setting watch points

A watch point checks whether a specific memory value has changed.

Using a watch point:

When you want to know that the contents of address 0x06004000 have changed:

watch 0x06004000

When you want to know that the contents of variable x have changed:

watch &x

[star] Displaying a disassembled listing

To display a disassembled listing of a program, use either:

disas symbol-name

or:

disas address

To execute one instruction in assembly language, use either "si" or "ni".  The difference 
between "ni" and "si" is that "ni" waits for a RETURN when a branch instruction was 
executed, while "si" stops at the branch destination.

"Makefile" and conditional compiling applications

Conditional compiling can be controlled externally by using the DFLAGS macro in 
"Makefile".

Example:

#ifdef DEBUG
	:
	A
	:
#else
	:
	B
	:
#endif


** LISTING

When making the above program, specify the "make" command as follows:

make DFLAGS = -DDEBUG

Once part A is made, part B can be compiled.

The reason why the macro can be changed when executing "make" is that when "gcc" is 
called within "Makefile", the options indicated by the DFLAGS macro apply to the 
compilation process.


