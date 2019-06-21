INCLUDES = .

COMPILER_DIR = ../../Compiler

SRCS = ZTE/workarea.c main.c ZTE/ZT_LOADING.c SRC/game.c ZTE/ZT_RENDERING.c ZTE/ZT_ANIMATION.c ZTE/ZT_CD.c ZTE/ZT_COLLISION.c ZTE/ZT_FRUSTUM.c ZTE/ZT_GAME.c ZTE/ZT_SPRITES.c ZTE/ZT_TOOLS.c ZTE/ZT_SYSTEM.c ZTE/ZT_AUDIO.c ZTE/ZT_VDP2.c ZTE/ZT_MENU.c ZTE/ZT_LOAD_MODEL.c ZTE/ZT_VECTOR.c SRC/physics.c SRC/controls.c

SYSOBJS =

OBJS = $(SRCS:.c=.o)

LIBS +=  $(SGLLDR)/SEGA_SYS.A $(SGLLDR)/LIBCD.A $(SGLLDR)/LIBSGL.A $(SGLLDR)/LIBSND.A $(SGLLDR)/LIBMEM.A

CC = sh-coff-gcc
CONV = sh-coff-objcopy
RM = rm -f

SGLDIR = $(COMPILER_DIR)/SGL_302j
SGLIDR = $(SGLDIR)/inc
SGLLDR = $(SGLDIR)/lib_coff


CMNDIR = $(COMPILER_DIR)/COMMON

CCFLAGS += -fkeep-inline-functions -W -Wall -Wshadow -Wbad-function-cast -Winline -Wcomment \
-Winline -Wlong-long -Wsign-compare -Wextra \
--param max-inline-insns-single=50 -fms-extensions -std=gnu99 \
-fmerge-all-constants -fno-ident -ffunction-sections -fdata-sections -fno-unwind-tables -fno-asynchronous-unwind-tables \
-fomit-frame-pointer -fstrength-reduce -frerun-loop-opt -Os -nodefaultlibs -nostdlib -fno-builtin \
-m2 -c -I$(INCLUDES)

CCFLAGS += -I$(SGLIDR)


LDFLAGS = -m2
LDFLAGS += -L$(SGLLDR)

LDFLAGS +=-Xlinker --format=coff-sh -Xlinker -T$(LDFILE) -Xlinker -Map \
          -Xlinker $(MPFILE) -Xlinker -e -Xlinker ___Start -nostartfiles
DFLAGS =

TARGET   = sl_coff.coff
TARGET1  = $(TARGET:.coff=.bin)
TARGET2  = $(TARGET:.coff=.iso)
MPFILE   = $(TARGET:.coff=.map)
IPFILE   = $(CMNDIR)/IP.BIN
LDFILE   = $(CMNDIR)/nosgl.linker

MAKEFILE = makefile

all: $(TARGET) $(TARGET1) $(TARGET2)

$(TARGET) : $(SYSOBJS) $(OBJS) $(MAKEFILE) $(LDFILE) #$(OBJECTS)
	$(CC) $(LDFLAGS) $(SYSOBJS) $(OBJS) $(LIBS) -o $@

$(TARGET1) : $(SYSOBJS) $(OBJS) $(MAKEFILE) $(LDFILE)
	$(CONV) -O binary $(TARGET) $(TARGET1)

$(TARGET2): $(TARGET1)
	$(CONV) -O binary $(TARGET) cd/0.bin
	mkisofs -quiet -sysid "SEGA SATURN" -volid "SONIC Z-TREME" -volset "SONIC Z-TREME" -publisher "Z-TREME ENGINE BY XL2" -preparer "Z-TREME ENGINE BY XL2" -appid "SONIC Z-TREME" -abstract "ABS.TXT" -copyright "CPY.TXT" -biblio "BIB.TXT" -generic-boot $(IPFILE) -full-iso9660-filenames -o $(TARGET2) cd

.c.o:
	$(CC) $< $(DFLAGS) $(CCFLAGS) $(_CCFLAGS) -o $@

clean:
	$(RM) $(OBJS) $(TARGET) $(TARGET1) $(TARGET2) $(MPFILE) cd/0.bin

re: clean all
