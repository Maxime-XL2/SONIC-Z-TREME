*** INSTALL.SJS ***********

O Manual installation procedure

If you are well-versed in UNIX-based operating systems, use the following as a 
reference.  It is not essential that the procedure described below be followed exactly.

Preparation

*	Archive tool installation

"gzip" and "gstar" installation

The standard compression tool for UNIX is "compress+tar" but for general purposes 
"gzip+tar" is used.  The files on this CD are compressed by "gzip+tar".  The following 
procedure installs the tools necessary for decompressing the archive files.

* Procedure (Log-in as an administrator.)

From the console, type in:

# cd /usr/local/bin

If the following message appears:

/usr/local/bin: No such file or directory

then type in the following:

# mkdir /usr/local/bin

Next, type in:

# cd /CDROM/sgi
# cd gzip gtar /usr/local/bin

and copy the necessary files.

*	Environment variable setup

If no path leads to "/usr/local/bin", add "/usr/local/bin" to the environment variable 
"PATH" entry.

Next, update the environment variables.

*1 In general, the environment variable "PATH" is described in the ".cshrc" file in each 
individual's home directory.

For a simple update, type the following:

% cd
      % echo 'set path = ( /usr/local/bin $path )' >> ~/.cshrc

* 2 In order to update the environment variables, simply use the shell program "source" 
to get the file in which the environment variables are set.  For example, in the case of 
".cshrc", simply type:

% source .cshrc

(This will differ according to the shell program, however.)

"gcc" installation

The "gcc" installed here is designed for the Saturn system.  It is intended for design 
work; it does not necessarily need to be installed in order to use SGI.

When installing this "gcc", be sure to place it in the specified path.  If the path is 
changed, the "gcc" may not operate correctly.

*	Procedure

# cd /
    # gtar zxvf /CDROM/sgi/gcc60328.tgz

SGL installation

The SGL that is installed in this version is Ver. 2.1.  Note that the path differs slightly 
from previous SGLs.


The SGL can be located in any desired path. In a system intended for designers, the SGL 
does not necessarily have to be installed.

*	Procedure (when installing the SGL under "/usr/local".)

# cd /usr/local
# gtar zxvf /CDROM/sgl/sgl210.tgz

Tools for programmers

These tools, centered primarily around a debugger, are intended for programmers.  In 
a system intended for designers, these tools do not necessarily have to be installed.

These tools can be located in any path.

*	Procedure (when installing the tools under "/usr/local".)

# cd /usr/local
    # gtar zxvf /CDROM/sgl/devtools.tgz
    # cd CartDev/bin
    # cp cartdev-server cartdev-gdb /usr/local/bin
    # cp gdbtk.tck /usr/local/lib 

Tools for designers

These tools, used since SOFTIMAGE 2.66c and centered around 3D -> SGL conversion, 
3D model checking, and texture application, are intended for designers.

Because these tools include converters, they are used not only in systems intended for 
designers but also in systems intended for programmers.

Basically, the SOFTIMAGE 3D Design Toolkit 1.04 covers the majority of the tools 
contained in this package.

These tools can be located in any path.

*	Procedure (when installing the tools under "/usr/local".)

# cd /usr/local
    # gtar zxvf /CDROM/sgl/tools300.tgz

"Tcl/Tk" installation

"Tcl/Tk" is the combined name for the interpreter-based processing language "Tcl" and 
the GUI application development language "Tk" that operates with "Tcl".

GDB, which is included on this CD, provides an environment that can be operated via 
the GUI base.  When using these GUI functions, the "Tcl/Tk" package is required.

Place this tool in the specified path.  The path can be changed after installation.

*	Procedure

# cd /
    # gtar zxvf /CDROM/sgi/tcltk.tgz

If the tools for programmers have already been installed, copy "bin/gdbtk.tcl", which is 
located in the tools for programmers path, to "/usr/local/lib".

Example: (Assuming the tools for programmers have already been installed under 
"/usr/local".

# cp /usr/local/CartDev/bin/gdbtk.tcl

"perl", "lha" and "nkf" installation

"perl" is a sophisticated interpreter-type language.  It is possible that the user's 
maintenance utility written for "perl" will be opened in the future.

"lha" is an IRIX-version of "lha" that supports "lh5".

"nfk" is a kanji code converter that supports the Shift-JIS, EUC, and JIS code systems.

To use "nkf":

nkf -s file-name (when converting Shift-JIS)

nkf -e file-name (when converting EUC)

nkf -j file-name (when converting JIS)


*	Installation procedure (when installing in "/usr/local/bin".)

# cd /CDROM/sgi
# cp perl lha nkf /usr/local/bin

Resource file setup

The resource file sets the environment variables that are needed for Saturn 
development work.

*	Procedure

1)	Copy "/CDROM/sgi/segarc" to the home directory under the name ".segarc".

% cp /CDROM/sgi/segarc /.segarc

2)	Change the contents of ".segarc" in accordance with the path in which it is 
installed.

--------------------------- Sample --------------------------

#!/bin/csh
# Unix environ viriable script For SEGA SATURN Development tools. ver 1.00

# SGL Defines
# Define your environment
setenv SGLDIR    /usr/local/saturn/sgl <-- Path where SGL is installed

setenv SGLIDR    $SGLDIR/inc
setenv SGLLDR    $SGLDIR/lib

setenv CMNDIR    $SGLDIR/sample/common

# Tools Defines
# Define your environment
setenv TOOLS_DIR /usr/local/tools3.00/bin
                         Path where tools for designers are installed

setenv SSV_DIR   $TOOLS_DIR/ssview
setenv SSV_MON   $SSV_DIR/uso.bin
setenv SSV_PRG   $SSV_DIR/sl.coff
setenv TMPDIR    /tmp

# SBL Defines
# Define your environment
setenv SATURN    /usr/local/saturn<-- Path where SBL is installed (not used at 
present)

setenv SEGASMP   $SATURN/segasmp
setenv SEGALIB   $SATURN/segalib
setenv AWKDIR    $SEGALIB/awk

# gcc Defines
# Define your environment
setenv GCC       /usr/local/sh-SOA960328-hms<-- Do not change.

# Cinepak Defines
# Define your environment
setenv CPKDIR    $SATURN<-- Change according to the environment when using 
Cinepak.

setenv CPKIDR    $CPKDIR/inc
setenv CPKLIB    $CPKDIR/lib

setenv SNDLDR    $CPKDIR/lib

set path = ( $TOOLS_DIR $path )

Change according to the environment when using Cinepak.


--------------------------- Sample --------------------------

3)	Incorporating ".segarc" into the system

Example:

# echo 'source ~/.segarc' >> ~/.cshrc

* Meaning of ".segarc"

The environment variables written in ".segarc" generally have the same names as the 
variable macros defined in "Makefile".  If there is no description of a variable macro 
when "make" is executed, the "make" operation can still be performed since the variable 
with the same name is taken from the system's environment variables.  Another 
benefit is that there is no need to change "Makefile" when copying samples, etc., into 
other directories for use in a compile operation.  By removing the variable macros from 
the master sample "Makefile" and preparing environment variables for each individual 
instead, the need for making changes after copying samples, etc., can be eliminated.

[star] Appendix

Package path information

*gcc
    /usr/local/bin/sh-SOA960328-hms-ar
    /usr/local/bin/sh-SOA960328-hms-as
    /usr/local/bin/sh-SOA960328-hms-c++
    /usr/local/bin/sh-SOA960328-hms-c++filt
    /usr/local/bin/sh-SOA960328-hms-coffdump
    /usr/local/bin/sh-SOA960328-hms-g++ ->  /usr/local/bin/sh-SOA960328-hms-c++
    /usr/local/bin/sh-SOA960328-hms-gasp
    /usr/local/bin/sh-SOA960328-hms-gcc
    /usr/local/bin/sh-SOA960328-hms-gdb
    /usr/local/bin/sh-SOA960328-hms-gprof
    /usr/local/bin/sh-SOA960328-hms-ld
    /usr/local/bin/sh-SOA960328-hms-nm
    /usr/local/bin/sh-SOA960328-hms-objcopy
    /usr/local/bin/sh-SOA960328-hms-objdump
    /usr/local/bin/sh-SOA960328-hms-ranlib
    /usr/local/bin/sh-SOA960328-hms-run
    /usr/local/bin/sh-SOA960328-hms-size
    /usr/local/bin/sh-SOA960328-hms-srconv
    /usr/local/bin/sh-SOA960328-hms-strings
    /usr/local/bin/sh-SOA960328-hms-strip
    /usr/local/bin/sh-SOA960328-hms-sysdump
    /usr/local/bin/sh-ar ->  /usr/local/bin/sh-SOA960328-hms-ar
    /usr/local/bin/sh-as ->  /usr/local/bin/sh-SOA960328-hms-as
    /usr/local/bin/sh-c++ ->  /usr/local/bin/sh-SOA960328-hms-c++
    /usr/local/bin/sh-c++filt ->  /usr/local/bin/sh-SOA960328-hms-c++filt
    /usr/local/bin/sh-coffdump ->  /usr/local/bin/sh-SOA960328-hms-coffdump
    /usr/local/bin/sh-g++ ->  /usr/local/bin/sh-SOA960328-hms-g++
    /usr/local/bin/sh-gasp ->  /usr/local/bin/sh-SOA960328-hms-gasp
    /usr/local/bin/sh-gcc ->  /usr/local/bin/sh-SOA960328-hms-gcc
    /usr/local/bin/sh-gdb ->  /usr/local/bin/sh-SOA960328-hms-gdb
    /usr/local/bin/sh-gprof ->  /usr/local/bin/sh-SOA960328-hms-gprof
    /usr/local/bin/sh-ld ->  /usr/local/bin/sh-SOA960328-hms-ld
    /usr/local/bin/sh-nm ->  /usr/local/bin/sh-SOA960328-hms-nm
    /usr/local/bin/sh-objcopy ->  /usr/local/bin/sh-SOA960328-hms-objcopy
    /usr/local/bin/sh-objdump ->  /usr/local/bin/sh-SOA960328-hms-objdump
    /usr/local/bin/sh-ranlib ->  /usr/local/bin/sh-SOA960328-hms-ranlib
    /usr/local/bin/sh-run ->  /usr/local/bin/sh-SOA960328-hms-run


/usr/local/bin/sh-size ->  /usr/local/bin/sh-SOA960328-hms-size
    /usr/local/bin/sh-srconv ->  /usr/local/bin/sh-SOA960328-hms-srconv
    /usr/local/bin/sh-strings ->  /usr/local/bin/sh-SOA960328-hms-strings
    /usr/local/bin/sh-strip ->  /usr/local/bin/sh-SOA960328-hms-strip
    /usr/local/bin/sh-sysdump ->  /usr/local/bin/sh-SOA960328-hms-sysdump
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/SYSCALLS.c.X
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/cc1
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/cc1plus
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/cpp
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/README
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/float.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/iso646.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/limits.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/proto.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/stdarg.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/stddef.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/syslimits.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-alpha.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-clipper.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-h8300.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-i860.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-i960.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-m88k.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-mips.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-pa.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-ppc.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-pyr.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-sparc.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/va-spur.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/include/varargs.h
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/ld
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/libgcc.a
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/m2/
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/m2/libgcc.a
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/ml/
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/ml/libgcc.a
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/ml/m2/
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/ml/m2/libgcc.a
    /usr/local/lib/gcc-lib/sh-SOA960328-hms/cygnus-2.7-96q1/specs

 *SGL
    saturn/
    saturn/sgl/
    saturn/sgl/sample/
    saturn/sgl/sample/demo_A/
    saturn/sgl/sample/demo_A/Makefile
    saturn/sgl/sample/demo_A/main.c
    saturn/sgl/sample/demo_A/polygon.c
    saturn/sgl/sample/demo_A/objects
    saturn/sgl/sample/demo_B/
    saturn/sgl/sample/demo_B/Makefile
    saturn/sgl/sample/demo_B/main.c


saturn/sgl/sample/demo_B/polygon.c
    saturn/sgl/sample/demo_B/objects
    saturn/sgl/sample/demo_C/
    saturn/sgl/sample/demo_C/Makefile
    saturn/sgl/sample/demo_C/aki_ashi.c
    saturn/sgl/sample/demo_C/aki_dou.c
    saturn/sgl/sample/demo_C/aki_kao.c
    saturn/sgl/sample/demo_C/aki_kata.c
    saturn/sgl/sample/demo_C/aki_ude.c
    saturn/sgl/sample/demo_C/aki_walk.c
    saturn/sgl/sample/demo_C/main.c
    saturn/sgl/sample/demo_C/objects
    saturn/sgl/sample/demo_D/
    saturn/sgl/sample/demo_D/Makefile
    saturn/sgl/sample/demo_D/main.c
    saturn/sgl/sample/demo_D/pad.c
    saturn/sgl/sample/demo_D/polygon.c
    saturn/sgl/sample/demo_D/scl_data.c
    saturn/sgl/sample/demo_D/scl_func.c
    saturn/sgl/sample/demo_D/objects
    saturn/sgl/sample/design1/
    saturn/sgl/sample/design1/Makefile
    saturn/sgl/sample/design1/README.euc
    saturn/sgl/sample/design1/README.sj
    saturn/sgl/sample/design1/main.c
    saturn/sgl/sample/design1/polygon.c
    saturn/sgl/sample/design1/objects
    saturn/sgl/sample/design2/
    saturn/sgl/sample/design2/Makefile
    saturn/sgl/sample/design2/README.euc
    saturn/sgl/sample/design2/README.sj
    saturn/sgl/sample/design2/main.c
    saturn/sgl/sample/design2/polygon.c
    saturn/sgl/sample/design2/texture.c
    saturn/sgl/sample/design2/objects
    saturn/sgl/sample/design3/
    saturn/sgl/sample/design3/Makefile
    saturn/sgl/sample/design3/README.euc
    saturn/sgl/sample/design3/README.sj
    saturn/sgl/sample/design3/main.c
    saturn/sgl/sample/design3/polygon.c
    saturn/sgl/sample/design3/texture.c
    saturn/sgl/sample/design3/objects
    saturn/sgl/sample/sampBkLib/
    saturn/sgl/sample/sampBkLib/Makefile
    saturn/sgl/sample/sampBkLib/sample2.c
    saturn/sgl/sample/sampBkLib/smp_font.h
    saturn/sgl/sample/sampBkLib/string.c
    saturn/sgl/sample/sampBkLib/v_blank.h
    saturn/sgl/sample/sampBkLib/objects
    saturn/sgl/sample/sample_10/
    saturn/sgl/sample/sample_10/Makefile
    saturn/sgl/sample/sample_10/main.c
    saturn/sgl/sample/sample_10/polygon.c
    saturn/sgl/sample/sample_10/sample.c


saturn/sgl/sample/sample_10/objects
    saturn/sgl/sample/sample_2_2/
    saturn/sgl/sample/sample_2_2/Makefile
    saturn/sgl/sample/sample_2_2/main.c
    saturn/sgl/sample/sample_2_2/polygon.c
    saturn/sgl/sample/sample_2_2/objects
    saturn/sgl/sample/sample_3_2/
    saturn/sgl/sample/sample_3_2/Makefile
    saturn/sgl/sample/sample_3_2/main.c
    saturn/sgl/sample/sample_3_2/polygon.c
    saturn/sgl/sample/sample_3_2/objects
    saturn/sgl/sample/sample_4_2/
    saturn/sgl/sample/sample_4_2/Makefile
    saturn/sgl/sample/sample_4_2/main.c
    saturn/sgl/sample/sample_4_2/polygon.c
    saturn/sgl/sample/sample_4_2/objects
    saturn/sgl/sample/sample_4_3_1/
    saturn/sgl/sample/sample_4_3_1/Makefile
    saturn/sgl/sample/sample_4_3_1/main.c
    saturn/sgl/sample/sample_4_3_1/polygon.c
    saturn/sgl/sample/sample_4_3_1/objects
    saturn/sgl/sample/sample_4_3_2/
    saturn/sgl/sample/sample_4_3_2/Makefile
    saturn/sgl/sample/sample_4_3_2/main.c
    saturn/sgl/sample/sample_4_3_2/polygon.c
    saturn/sgl/sample/sample_4_3_2/objects
    saturn/sgl/sample/sample_4_3_3/
    saturn/sgl/sample/sample_4_3_3/Makefile
    saturn/sgl/sample/sample_4_3_3/main.c
    saturn/sgl/sample/sample_4_3_3/polygon.c
    saturn/sgl/sample/sample_4_3_3/objects
    saturn/sgl/sample/sample_4_3_4/
    saturn/sgl/sample/sample_4_3_4/Makefile
    saturn/sgl/sample/sample_4_3_4/main.c
    saturn/sgl/sample/sample_4_3_4/polygon.c
    saturn/sgl/sample/sample_4_3_4/objects
    saturn/sgl/sample/sample_4_5/
    saturn/sgl/sample/sample_4_5/Makefile
    saturn/sgl/sample/sample_4_5/main.c
    saturn/sgl/sample/sample_4_5/polygon.c
    saturn/sgl/sample/sample_4_5/objects
    saturn/sgl/sample/sample_5_2/
    saturn/sgl/sample/sample_5_2/Makefile
    saturn/sgl/sample/sample_5_2/main.c
    saturn/sgl/sample/sample_5_2/polygon.c
    saturn/sgl/sample/sample_5_2/objects
    saturn/sgl/sample/sample_6_3/
    saturn/sgl/sample/sample_6_3/Makefile
    saturn/sgl/sample/sample_6_3/main.c
    saturn/sgl/sample/sample_6_3/polygon.c
    saturn/sgl/sample/sample_6_3/objects
    saturn/sgl/sample/sample_7_2/
    saturn/sgl/sample/sample_7_2/Makefile
    saturn/sgl/sample/sample_7_2/main.c
    saturn/sgl/sample/sample_7_2/polygon.c


saturn/sgl/sample/sample_7_2/objects
    saturn/sgl/sample/sample_7_4/
    saturn/sgl/sample/sample_7_4/Makefile
    saturn/sgl/sample/sample_7_4/main.c
    saturn/sgl/sample/sample_7_4/polygon.c
    saturn/sgl/sample/sample_7_4/texture.c
    saturn/sgl/sample/sample_7_4/objects
    saturn/sgl/sample/sample_7_6/
    saturn/sgl/sample/sample_7_6/Makefile
    saturn/sgl/sample/sample_7_6/main.c
    saturn/sgl/sample/sample_7_6/polygon.c
    saturn/sgl/sample/sample_7_6/objects
    saturn/sgl/sample/sample_8_10_1/
    saturn/sgl/sample/sample_8_10_1/Makefile
    saturn/sgl/sample/sample_8_10_1/main.c
    saturn/sgl/sample/sample_8_10_1/scl_data.c
    saturn/sgl/sample/sample_8_10_1/scl_func.c
    saturn/sgl/sample/sample_8_10_1/objects
    saturn/sgl/sample/sample_8_10_2/
    saturn/sgl/sample/sample_8_10_2/Makefile
    saturn/sgl/sample/sample_8_10_2/main.c
    saturn/sgl/sample/sample_8_10_2/scl_data.c
    saturn/sgl/sample/sample_8_10_2/scl_func.c
    saturn/sgl/sample/sample_8_10_2/objects
    saturn/sgl/sample/sample_8_11/
    saturn/sgl/sample/sample_8_11/Makefile
    saturn/sgl/sample/sample_8_11/main.c
    saturn/sgl/sample/sample_8_11/scl_data.c
    saturn/sgl/sample/sample_8_11/scl_func.c
    saturn/sgl/sample/sample_8_11/objects
    saturn/sgl/sample/sample_8_12/
    saturn/sgl/sample/sample_8_12/Makefile
    saturn/sgl/sample/sample_8_12/main.c
    saturn/sgl/sample/sample_8_12/polygon.c
    saturn/sgl/sample/sample_8_12/objects
    saturn/sgl/sample/sample_8_8_1/
    saturn/sgl/sample/sample_8_8_1/Makefile
    saturn/sgl/sample/sample_8_8_1/main.c
    saturn/sgl/sample/sample_8_8_1/scl_data.c
    saturn/sgl/sample/sample_8_8_1/scl_func.c
    saturn/sgl/sample/sample_8_8_1/objects
    saturn/sgl/sample/sample_8_8_2/
    saturn/sgl/sample/sample_8_8_2/Makefile
    saturn/sgl/sample/sample_8_8_2/main.c
    saturn/sgl/sample/sample_8_8_2/scl_data.c
    saturn/sgl/sample/sample_8_8_2/scl_func.c
    saturn/sgl/sample/sample_8_8_2/objects
    saturn/sgl/sample/sample_8_8_3/
    saturn/sgl/sample/sample_8_8_3/Makefile
    saturn/sgl/sample/sample_8_8_3/main.c
    saturn/sgl/sample/sample_8_8_3/scl_data.c
    saturn/sgl/sample/sample_8_8_3/scl_func.c
    saturn/sgl/sample/sample_8_8_3/objects
    saturn/sgl/sample/scroll/
    saturn/sgl/sample/scroll/am2.cel

saturn/sgl/sample/scroll/am2.map
    saturn/sgl/sample/scroll/am2.pal
    saturn/sgl/sample/scroll/asc.map
    saturn/sgl/sample/scroll/pad.cel
    saturn/sgl/sample/scroll/pad.map
    saturn/sgl/sample/scroll/pad.pal
    saturn/sgl/sample/scroll/sora4.cel
    saturn/sgl/sample/scroll/sora4.map
    saturn/sgl/sample/scroll/sora4.pal
    saturn/sgl/sample/scroll/tuti2.cel
    saturn/sgl/sample/scroll/tuti2.map
    saturn/sgl/sample/scroll/tuti2.pal
    saturn/sgl/sample/scroll/yama.cel
    saturn/sgl/sample/scroll/yama.map
    saturn/sgl/sample/scroll/yama.pal
    saturn/sgl/sample/sample_8_9_1/
    saturn/sgl/sample/sample_8_9_1/Makefile
    saturn/sgl/sample/sample_8_9_1/main.c
    saturn/sgl/sample/sample_8_9_1/scl_data.c
    saturn/sgl/sample/sample_8_9_1/scl_func.c
    saturn/sgl/sample/sample_8_9_1/objects
    saturn/sgl/sample/sample_8_9_2/
    saturn/sgl/sample/sample_8_9_2/Makefile
    saturn/sgl/sample/sample_8_9_2/main.c
    saturn/sgl/sample/sample_8_9_2/scl_data.c
    saturn/sgl/sample/sample_8_9_2/scl_func.c
    saturn/sgl/sample/sample_8_9_2/objects
    saturn/sgl/sample/sample_9_1/
    saturn/sgl/sample/sample_9_1/Makefile
    saturn/sgl/sample/sample_9_1/main.c
    saturn/sgl/sample/sample_9_1/scl_data.c
    saturn/sgl/sample/sample_9_1/scl_func.c
    saturn/sgl/sample/sample_9_1/spr_data.c
    saturn/sgl/sample/sample_9_1/objects
    saturn/sgl/sample/sample_cd1/
    saturn/sgl/sample/sample_cd1/Makefile
    saturn/sgl/sample/sample_cd1/main.c
    saturn/sgl/sample/sample_cd1/objects
    saturn/sgl/sample/sample_cd2/
    saturn/sgl/sample/sample_cd2/Makefile
    saturn/sgl/sample/sample_cd2/main.c
    saturn/sgl/sample/sample_cd2/objects
    saturn/sgl/sample/sample_cd3/
    saturn/sgl/sample/sample_cd3/Makefile
    saturn/sgl/sample/sample_cd3/main.c
    saturn/sgl/sample/sample_cd3/objects
    saturn/sgl/sample/sample_cd4/
    saturn/sgl/sample/sample_cd4/Makefile
    saturn/sgl/sample/sample_cd4/main.c
    saturn/sgl/sample/sample_cd4/objects
    saturn/sgl/sample/sampsnd1/
    saturn/sgl/sample/sampsnd1/Makefile
    saturn/sgl/sample/sampsnd1/colornum.h
    saturn/sgl/sample/sampsnd1/main.c
    saturn/sgl/sample/sampsnd1/polydata.c


saturn/sgl/sample/sampsnd1/sampdat.c
    saturn/sgl/sample/sampsnd1/sampmap.c
    saturn/sgl/sample/sampsnd1/textnum.h
    saturn/sgl/sample/sampsnd1/objects
    saturn/sgl/sample/sampsnd2/
    saturn/sgl/sample/sampsnd2/Makefile
    saturn/sgl/sample/sampsnd2/colornum.h
    saturn/sgl/sample/sampsnd2/m_16.c
    saturn/sgl/sample/sampsnd2/main.c
    saturn/sgl/sample/sampsnd2/polydata.c
    saturn/sgl/sample/sampsnd2/s_16.c
    saturn/sgl/sample/sampsnd2/s_8.c
    saturn/sgl/sample/sampsnd2/textnum.h
    saturn/sgl/sample/sampsnd2/objects
    saturn/sgl/sample/demogun/
    saturn/sgl/sample/demogun/main.c
    saturn/sgl/sample/demogun/objects
    saturn/sgl/sample/demogun/Makefile
    saturn/sgl/sample/README.sjs
    saturn/sgl/sample/README
    saturn/sgl/sample/common/
    saturn/sgl/sample/common/cinit.c
    saturn/sgl/sample/common/sl.lnk
    saturn/sgl/sample/common/makefile
    saturn/sgl/sample/README.jis
    saturn/sgl/sample/sys/
    saturn/sgl/sample/sys/makefile
    saturn/sgl/sample/sys/ip.cof
    saturn/sgl/sample/sys/ip.bin
    saturn/sgl/sample/sys/sys_id.o
    saturn/sgl/sample/sys/smpsys.c
    saturn/sgl/sample/sys/sys_id.src
    saturn/sgl/sample/sys/objects
    saturn/sgl/sample/sys/smpsys.o
    saturn/sgl/sample/sys/ip.map
    saturn/sgl/sample/sys/ip.coff
    saturn/sgl/sample/workarea/
    saturn/sgl/sample/workarea/workarea.c
    saturn/sgl/sample/workarea/makefile
    saturn/sgl/sample/workarea/smpwork.c
    saturn/sgl/sample/mkall
    saturn/sgl/lib/
    saturn/sgl/lib/libcd_d.a
    saturn/sgl/lib/libcd.a
    saturn/sgl/lib/libsgl.a
    saturn/sgl/lib/sys_aree.o
    saturn/sgl/lib/sys_arej.o
    saturn/sgl/lib/sys_aret.o
    saturn/sgl/lib/sys_areu.o
    saturn/sgl/lib/sys_init.o
    saturn/sgl/lib/sys_sec.o
    saturn/sgl/lib/sglarea.o
    saturn/sgl/inc/
    saturn/sgl/inc/euc/
    saturn/sgl/inc/euc/machine.h


saturn/sgl/inc/euc/sddrvs.dat
    saturn/sgl/inc/euc/sega_int.h
    saturn/sgl/inc/euc/sega_sys.h
    saturn/sgl/inc/euc/sgl.h
    saturn/sgl/inc/euc/sgl_cd.h
    saturn/sgl/inc/euc/sl_def.h
    saturn/sgl/inc/euc/sl_macro.h
    saturn/sgl/inc/euc/ss_akira.h
    saturn/sgl/inc/euc/ss_scrol.h
    saturn/sgl/inc/euc/stdlib.h
    saturn/sgl/inc/euc/string.h
    saturn/sgl/inc/euc/syscall.h
    saturn/sgl/inc/euc/sega_bup.h
    saturn/sgl/inc/euc/sega_cdc.h
    saturn/sgl/inc/euc/sega_gfs.h
    saturn/sgl/inc/euc/sega_stm.h
    saturn/sgl/inc/euc/sega_xpt.h
    saturn/sgl/inc/euc/sddrvs.tsk
    saturn/sgl/inc/machine.h
    saturn/sgl/inc/sega_int.h
    saturn/sgl/inc/sega_sys.h
    saturn/sgl/inc/sgl.h
    saturn/sgl/inc/sgl_cd.h
    saturn/sgl/inc/sl_def.h
    saturn/sgl/inc/sl_macro.h
    saturn/sgl/inc/ss_akira.h
    saturn/sgl/inc/ss_scrol.h
    saturn/sgl/inc/stdlib.h
    saturn/sgl/inc/string.h
    saturn/sgl/inc/sega_bup.h
    saturn/sgl/inc/sddrvs.tsk
    saturn/sgl/inc/sddrvs.dat
    saturn/sgl/inc/sega_cdc.h
    saturn/sgl/inc/sega_gfs.h
    saturn/sgl/inc/sega_stm.h
    saturn/sgl/inc/sega_xpt.h
    saturn/sgl/doc/
    saturn/sgl/doc/sjis/
    saturn/sgl/doc/sjis/mancdc.txt
    saturn/sgl/doc/sjis/mangfs.txt
    saturn/sgl/doc/sjis/manstm.txt
    saturn/sgl/doc/sjis/sddrv204.txt
    saturn/sgl/doc/sjis/sgl020a.txt
    saturn/sgl/doc/sjis/sgl_faq.txt
    saturn/sgl/doc/sjis/sgl_smp.txt
    saturn/sgl/doc/sjis/bitmap.txt
    saturn/sgl/doc/sjis/dma.txt
    saturn/sgl/doc/sjis/event.txt
    saturn/sgl/doc/sjis/gasm.txt
    saturn/sgl/doc/sjis/init.txt
    saturn/sgl/doc/sjis/int.txt
    saturn/sgl/doc/sjis/math.txt
    saturn/sgl/doc/sjis/memory.txt
    saturn/sgl/doc/sjis/packs.txt
    saturn/sgl/doc/sjis/per.txt



saturn/sgl/doc/sjis/scroll.txt
    saturn/sgl/doc/sjis/sgl0210.txt
    saturn/sgl/doc/sjis/sound.txt
    saturn/sgl/doc/sjis/sprite.txt
    saturn/sgl/doc/euc/
    saturn/sgl/doc/euc/mancdc.txt
    saturn/sgl/doc/euc/mangfs.txt
    saturn/sgl/doc/euc/manstm.txt
    saturn/sgl/doc/euc/sddrv204.txt
    saturn/sgl/doc/euc/sgl020a.txt
    saturn/sgl/doc/euc/sgl_faq.txt
    saturn/sgl/doc/euc/sgl_smp.txt
    saturn/sgl/doc/euc/bitmap.txt
    saturn/sgl/doc/euc/dma.txt
    saturn/sgl/doc/euc/event.txt
    saturn/sgl/doc/euc/gasm.txt
    saturn/sgl/doc/euc/init.txt
    saturn/sgl/doc/euc/int.txt
    saturn/sgl/doc/euc/math.txt
    saturn/sgl/doc/euc/memory.txt
    saturn/sgl/doc/euc/packs.txt
    saturn/sgl/doc/euc/per.txt
    saturn/sgl/doc/euc/scroll.txt
    saturn/sgl/doc/euc/sgl0210.txt
    saturn/sgl/doc/euc/sound.txt
    saturn/sgl/doc/euc/sprite.txt
    saturn/sgl/tool/
    saturn/sgl/tool/s2d2sgl
    saturn/sgl/tool/s3d2sgl
    saturn/sgl/tool/s3dtex
    saturn/sgl/tool/dg2tex.doc
    saturn/sgl/tool/s2d2sgl.doc
    saturn/sgl/tool/s3d2sgl.doc
    saturn/sgl/tool/s3dtex.doc
    saturn/sgl/sample2/
    saturn/sgl/sample2/sega3d_1/
    saturn/sgl/sample2/sega3d_1/polygon.c
    saturn/sgl/sample2/sega3d_1/texture.c
    saturn/sgl/sample2/sega3d_1/pad.c
    saturn/sgl/sample2/sega3d_1/3d/
    saturn/sgl/sample2/sega3d_1/3d/dolphin.3d
    saturn/sgl/sample2/sega3d_1/sega3d.h
    saturn/sgl/sample2/sega3d_1/objects
    saturn/sgl/sample2/sega3d_1/main.c
    saturn/sgl/sample2/sega3d_1/Makefile
    saturn/sgl/sample2/sega3d_2/
    saturn/sgl/sample2/sega3d_2/polygon.c
    saturn/sgl/sample2/sega3d_2/texture.c
    saturn/sgl/sample2/sega3d_2/3d/
    saturn/sgl/sample2/sega3d_2/3d/cube.3d
    saturn/sgl/sample2/sega3d_2/texture/
    saturn/sgl/sample2/sega3d_2/texture/saturn.dg2
    saturn/sgl/sample2/sega3d_2/texture/tails.dg2
    saturn/sgl/sample2/sega3d_2/texture/mika.dg2
    saturn/sgl/sample2/sega3d_2/pad.c


saturn/sgl/sample2/sega3d_2/sega3d.h
    saturn/sgl/sample2/sega3d_2/objects
    saturn/sgl/sample2/sega3d_2/main.c
    saturn/sgl/sample2/sega3d_2/Makefile
    saturn/sgl/sample2/sega3d_3/
    saturn/sgl/sample2/sega3d_3/scsp.h
    saturn/sgl/sample2/sega3d_3/sega2d.h
    saturn/sgl/sample2/sega3d_3/polygon.c
    saturn/sgl/sample2/sega3d_3/scroll.c
    saturn/sgl/sample2/sega3d_3/texture.c
    saturn/sgl/sample2/sega3d_3/pad.c
    saturn/sgl/sample2/sega3d_3/3d/
    saturn/sgl/sample2/sega3d_3/3d/opa.3d
    saturn/sgl/sample2/sega3d_3/scroll/
    saturn/sgl/sample2/sega3d_3/scroll/vf.2d
    saturn/sgl/sample2/sega3d_3/sega3d.h
    saturn/sgl/sample2/sega3d_3/action.c
    saturn/sgl/sample2/sega3d_3/objects
    saturn/sgl/sample2/sega3d_3/main.c
    saturn/sgl/sample2/sega3d_3/Makefile
    saturn/sgl/sample2/sega2d_1/
    saturn/sgl/sample2/sega2d_1/sega2d.h
    saturn/sgl/sample2/sega2d_1/scroll.c
    saturn/sgl/sample2/sega2d_1/scroll/
    saturn/sgl/sample2/sega2d_1/scroll/vf.2d
    saturn/sgl/sample2/sega2d_1/objects
    saturn/sgl/sample2/sega2d_1/main.c
    saturn/sgl/sample2/sega2d_1/Makefile
    saturn/sgl/sample2/dg2tex/
    saturn/sgl/sample2/dg2tex/pp.dg2
    saturn/sgl/sample2/dg2tex/dc.dg2
    saturn/sgl/sample2/dg2tex/xpp.dg2
    saturn/sgl/sample2/dg2tex/fp.dg2
    saturn/sgl/sample2/dg2tex/fc.dg2
    saturn/sgl/sample2/dg2tex/xfp.dg2
    saturn/sgl/sample2/sample2.doc
    saturn/sgl/sample2/common/
    saturn/sgl/sample2/common/cinit.c
    saturn/sgl/sample2/common/sl.lnk
    saturn/sgl/sample2/common/Makefile
    saturn/sgl/sample2/common/cinit.o
    saturn/sgl/awk/
    saturn/sgl/awk/comment.awk
    saturn/sgl/awk/gasp.awk
    saturn/sgl/awk/keyword.awk
    saturn/sgl/awk/pool.awk
    saturn/sgl/awk/section.awk
    saturn/sgl/awk/gasm.scr
    saturn/sgl/awk/README
    saturn/sgl/sddrv/
    saturn/sgl/sddrv/chg.asm
    saturn/sgl/sddrv/dec2.asm
    saturn/sgl/sddrv/dsp3d.obj
    saturn/sgl/sddrv/dspeglfo.asm
    saturn/sgl/sddrv/host.asm


saturn/sgl/sddrv/init.asm
    saturn/sgl/sddrv/int_midi.asm
    saturn/sgl/sddrv/led.asm
    saturn/sgl/sddrv/midi.asm
    saturn/sgl/sddrv/noff.asm
    saturn/sgl/sddrv/non.asm
    saturn/sgl/sddrv/scsp.lib
    saturn/sgl/sddrv/sdcom.asm
    saturn/sgl/sddrv/sddrv.asm
    saturn/sgl/sddrv/sddrv.lnk
    saturn/sgl/sddrv/sddrvs.lnk
    saturn/sgl/sddrv/sdmain.asm
    saturn/sgl/sddrv/sega.asm
    saturn/sgl/sddrv/trgt.asm

Tools for programmers

CartDev/
    CartDev/README.sjs
    CartDev/bin/
    CartDev/bin/cartdev-gdb
    CartDev/bin/cartdev-gdb-old
    CartDev/bin/cartdev-server
    CartDev/bin/gdbtk.tcl
    CartDev/bin/uso.bin
    CartDev/bin/usobug
    CartDev/bin/bin2coff
    CartDev/README_USOBUG
    CartDev/README
    CartDev/README.first.sjs
    CartDev/README_USOBUG.sjs
    CartDev/README.first
    CartDev/bin2coff_src/
    CartDev/bin2coff_src/Makefile
    CartDev/bin2coff_src/P.bin
    CartDev/bin2coff_src/SLPRO.bin
    CartDev/bin2coff_src/SLSTA.bin
    CartDev/bin2coff_src/bin2coff.c
    CartDev/bin2coff_src/bin2coffMain.c
    CartDev/bin2coff_src/cof2binMain.c
    CartDev/bin2coff_src/coff.h
    CartDev/bin2coff_src/coff2bin.c
    CartDev/bin2coff_src/coff2binMain.c
    CartDev/bin2coff_src/main.c
    CartDev/bin2coff_src/sl.clog
    CartDev/bin2coff_src/sl.coff
    CartDev/bin2coff_src/sl.sec
    CartDev/bin2coff_src/text.bin

Tools for designers

tools3.00/
    tools3.00/bin/
    tools3.00/bin/.tools
    tools3.00/bin/README.euc
    tools3.00/bin/README.sj
    tools3.00/bin/dgt2ppm


tools3.00/bin/dgt2txr
    tools3.00/bin/dgtdisp
    tools3.00/bin/getpl
    tools3.00/bin/getpl.doc
    tools3.00/bin/hrcconv
    tools3.00/bin/pic2ppm
    tools3.00/bin/ppm2dgt
    tools3.00/bin/ppm2pic
    tools3.00/bin/sicon
    tools3.00/bin/slchk.awk
    tools3.00/bin/slcon
    tools3.00/bin/slmdl.awk
    tools3.00/bin/sltxr.awk
    tools3.00/bin/smap
    tools3.00/bin/ssview/
    tools3.00/bin/ssview/.ssview
    tools3.00/bin/ssview/sl.coff
    tools3.00/bin/ssview/uso.bin

 *Tcl/Tk
    /usr/local/lib/tcl/
    /usr/local/lib/tcl/init.tcl
    /usr/local/lib/tcl/parray.tcl
    /usr/local/lib/tcl/tclIndex
    /usr/local/lib/tk/
    /usr/local/lib/tk/button.tcl
    /usr/local/lib/tk/demos/
    /usr/local/lib/tk/demos/README
    /usr/local/lib/tk/demos/bitmaps/
    /usr/local/lib/tk/demos/bitmaps/face
    /usr/local/lib/tk/demos/bitmaps/flagdown
    /usr/local/lib/tk/demos/bitmaps/flagup
    /usr/local/lib/tk/demos/bitmaps/grey.25
    /usr/local/lib/tk/demos/bitmaps/grey.5
    /usr/local/lib/tk/demos/bitmaps/letters
    /usr/local/lib/tk/demos/bitmaps/noletters
    /usr/local/lib/tk/demos/bitmaps/pattern
    /usr/local/lib/tk/demos/browse
    /usr/local/lib/tk/demos/color
    /usr/local/lib/tk/demos/dialog
    /usr/local/lib/tk/demos/hello
    /usr/local/lib/tk/demos/ixset
    /usr/local/lib/tk/demos/mkArrow.tcl
    /usr/local/lib/tk/demos/mkBasic.tcl
    /usr/local/lib/tk/demos/mkBitmaps.tcl
    /usr/local/lib/tk/demos/mkButton.tcl
    /usr/local/lib/tk/demos/mkCanvText.tcl
    /usr/local/lib/tk/demos/mkCheck.tcl
    /usr/local/lib/tk/demos/mkDialog.tcl
    /usr/local/lib/tk/demos/mkEntry.tcl
    /usr/local/lib/tk/demos/mkEntry2.tcl
    /usr/local/lib/tk/demos/mkFloor.tcl
    /usr/local/lib/tk/demos/mkForm.tcl
    /usr/local/lib/tk/demos/mkHScale.tcl
    /usr/local/lib/tk/demos/mkIcon.tcl


/usr/local/lib/tk/demos/mkItems.tcl
    /usr/local/lib/tk/demos/mkLabel.tcl
    /usr/local/lib/tk/demos/mkListbox.tcl
    /usr/local/lib/tk/demos/mkListbox2.tcl
    /usr/local/lib/tk/demos/mkListbox3.tcl
    /usr/local/lib/tk/demos/mkPlot.tcl
    /usr/local/lib/tk/demos/mkPuzzle.tcl
    /usr/local/lib/tk/demos/mkRadio.tcl
    /usr/local/lib/tk/demos/mkRuler.tcl
    /usr/local/lib/tk/demos/mkScroll.tcl
    /usr/local/lib/tk/demos/mkSearch.tcl
    /usr/local/lib/tk/demos/mkStyles.tcl
    /usr/local/lib/tk/demos/mkTear.tcl
    /usr/local/lib/tk/demos/mkTextBind.tcl
    /usr/local/lib/tk/demos/mkVScale.tcl
    /usr/local/lib/tk/demos/rmt
    /usr/local/lib/tk/demos/rolodex
    /usr/local/lib/tk/demos/showVars.tcl
    /usr/local/lib/tk/demos/size
    /usr/local/lib/tk/demos/square
    /usr/local/lib/tk/demos/tclIndex
    /usr/local/lib/tk/demos/tcolor
    /usr/local/lib/tk/demos/timer
    /usr/local/lib/tk/demos/tkSquare.c
    /usr/local/lib/tk/demos/widget
    /usr/local/lib/tk/dialog.tcl
    /usr/local/lib/tk/entry.tcl
    /usr/local/lib/tk/listbox.tcl
    /usr/local/lib/tk/menu.tcl
    /usr/local/lib/tk/prolog.ps
    /usr/local/lib/tk/tclIndex
    /usr/local/lib/tk/text.tcl
    /usr/local/lib/tk/tk.tcl
    /usr/local/lib/tk/tkerror.tcl
    /usr/local/lib/libtcl.a
    /usr/local/lib/libtk.a
    /usr/local/lib/gdbtk.tcl
    /usr/local/bin/tclsh
    /usr/local/bin/tclsh7.4
    /usr/local/bin/wish



