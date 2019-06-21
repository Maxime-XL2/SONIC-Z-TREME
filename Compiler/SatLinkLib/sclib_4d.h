/**
 *  SatCom Library For Dummies
 *  by cafe-alpha
 *  WWW: http://ppcenter.free.fr/satcom/
 *  WWW: http://ppcenter.free.fr/pskai/
 *
 *  See LICENSE file for details.
**/

#ifndef _SCLIB_4D_H_
#define _SCLIB_4D_H_

#include <stdio.h>
#include <string.h>
#include <stdarg.h>

/**
 * SatCom Library For Dummies.
 * (codename : sclib_4d)
 *
 * Purpose :
 *  Provide the following SatCom functionnalities by only
 *  using this header and a .bin file :
 *   - Remote printf to PC via USB dev cart
 *   - File read/write on PC via USB dev cart
 *
 * Memory map :
 *  sclib_4d runs near end of LRAM, as described below :
 *  002E0000 - 002FDFFF [  120KB] : sclib_4d stub (64 bytes header, then code, then few global vars).
 *  002FE000 - 002FFBFF [    7KB] : SatCom library workram.
 *  002FFC00 - 002FFFF7 [ 1016 B] : sclib_4d API (pointer to each functions in stub).
 *  002FFFF8 - 002FFFFF [    8 B] : Debugger global data (pointer, then magic number).
 *
 * How it works :
 *  First function in stub fills API structure. Then end-user
 *  functions are called from API structure.
 *
 * Remark :
 *  Everything works by using macros. Hence, please don't use dangerous stuff
 *  like macro(i++), or macro(function_using_global_vars()), or anything else.
**/



/*
 * API functions prototypes.
 */
typedef void (*Fct_sclib_4d_init)(void);

typedef void (*Fct_enable_commslink)(int type);

typedef void  (*Fct_sclib_internal_logout)(const char* file, int line, const char* func, int usbonly, char *string, ...);
typedef void  (*Fct_sclib_internal_msgout)(const char* file, int line, const char* func, int usbonly, unsigned char id, char *string, ...);
typedef char* (*Fct_sclib_prompt         )(char* prompt_str);

typedef void  (*Fct_sclib_check          )(void);
typedef void  (*Fct_sclib_logflush       )(void);

typedef unsigned long (*Fct_sclib_4d_pc_size  )(char* filename);
typedef unsigned long (*Fct_sclib_4d_pc_read  )(char* filename, unsigned long offset, unsigned long size, void* ptr);
typedef unsigned long (*Fct_sclib_4d_pc_write )(void* ptr, unsigned long size, char* filename);
typedef unsigned long (*Fct_sclib_4d_pc_append)(void* ptr, unsigned long size, char* filename);




// GCC have alternative #pragma pack(N) syntax and old gcc version not
// support pack(push,N), also any gcc version not support it at some platform
#if defined( __GNUC__ )
#   if(__GNUC__ == 4 && __GNUC_MINOR__ == 0)
        // Warning suppression workaround for compiler used by jo-engine
#   else
        // Data alignment directive for the rest of the world
#       pragma pack(1)
#   endif
#else
#   pragma pack(push,1)
#endif

typedef struct _sclib_4d_api_t
{
    Fct_sclib_4d_init init;

    Fct_enable_commslink enable_commslink;

    Fct_sclib_internal_logout logout;
    Fct_sclib_internal_msgout msgout;
    Fct_sclib_prompt          prompt;

    Fct_sclib_check    check;
    Fct_sclib_logflush logflush;

    Fct_sclib_4d_pc_size   pc_size;
    Fct_sclib_4d_pc_read   pc_read;
    Fct_sclib_4d_pc_write  pc_write;
    Fct_sclib_4d_pc_append pc_append;

    /* Unused. Pack structure size to 1016 bytes. */
    unsigned char unused[1016
                    - sizeof(void*)*11];
} sclib_4d_api_t;

// GCC have alternative #pragma pack() syntax and old gcc version not
// support pack(pop), also any gcc version not support it at some platform
#if defined( __GNUC__ )
#   if(__GNUC__ == 4 && __GNUC_MINOR__ == 0)
        // Warning suppression workaround for compiler used by jo-engine
#   else
        // Data alignment directive for the rest of the world
#       pragma pack()
#   endif
#else
#   pragma pack(pop)
#endif



/**
 * sc_rom_code_header_t structure definition.
 *
 * It is defined in SatCom library sources, but
 * since sclib_4d goal is to fit in a single header
 * file, it is re-defined here.
**/

#ifdef SATCOM_LIB_USE
#include <sc_saturn.h>
#else

// GCC have alternative #pragma pack(N) syntax and old gcc version not
// support pack(push,N), also any gcc version not support it at some platform
#if defined( __GNUC__ )
#   if(__GNUC__ == 4 && __GNUC_MINOR__ == 0)
        // Warning suppression workaround for compiler used by jo-engine
#   else
        // Data alignment directive for the rest of the world
#       pragma pack(1)
#   endif
#else
#   pragma pack(push,1)
#endif

typedef struct _sc_rom_code_header_t
{
    /* Must be set to 0x42. */
    unsigned char magic_42;
    /* Must be set to 0x53. */
    unsigned char magic_53;

    /* Contents type. */
    unsigned char type;

    /* Reserved for future use. */
    unsigned char reserved01[1];


    /* ROM code start address. */
    unsigned long address;

    /* Reserved for future use. */
    unsigned char reserved02[8];


    /* Version strings. */
    char version_string1[16];
    char version_string2[16];


    /* ROM code maximum length.
     * This does includes both header and data lengths.
     */
    unsigned long maxlen;

    /* ROM code used length.
     * Note : this is the length of data itself, header is not included.
     */
    unsigned long usedlen;

    /* ROM code decompressed length.
     * Note : this is the length of data itself, header is not included.
     */
    unsigned long decomplen;

    /* ROM code CRC32 value.
     * Note : rom code header is excluded from CRC computation, 
     * and CRC is computed until `usedlen' bytes.
     *  -> crc32_calc((const void*)((unsigned char*)(hdr)+sizeof(sc_rom_code_header_t)), hdr->usedlen);
     */
    unsigned long crc32;
} sc_rom_code_header_t;

// GCC have alternative #pragma pack() syntax and old gcc version not
// support pack(pop), also any gcc version not support it at some platform
#if defined( __GNUC__ )
#   if(__GNUC__ == 4 && __GNUC_MINOR__ == 0)
        // Warning suppression workaround for compiler used by jo-engine
#   else
        // Data alignment directive for the rest of the world
#       pragma pack()
#   endif
#else
#   pragma pack(pop)
#endif

#endif // !SATCOM_LIB_USE


/*
 * Address where to load sclib_4d stub from.
 */
#define SCLIB_4D_LOAD_ADDRESS (0x002E0000)

/*
 * Stub/API definitions.
 */
#define SCLIB_4D_STUB_HEADER  ((sc_rom_code_header_t*)SCLIB_4D_LOAD_ADDRESS)
#define SCLIB_4D_STUB_EXEC    (SCLIB_4D_LOAD_ADDRESS+sizeof(sc_rom_code_header_t))

#define SCLIB_4D_API_ADDRESS ((sclib_4d_api_t*)0x002FFC00)


#ifdef SATCOM_LIB_USE
#else

/*
 * Verify that stub is correctly loaded in RAM.
 */
#define sclib_4d_stub_check() ((SCLIB_4D_STUB_HEADER->magic_42 == 0x42) && (SCLIB_4D_STUB_HEADER->magic_53 == 0x53) ? 1 : 0)


/**
 * sclib_4d_init
 * 
 * Fill API structure, then call SatCom library's init function.
 *
 * Please call this macro on your program startup.
**/
#define sclib_4d_init()                                                     \
    if(sclib_4d_stub_check())                                               \
    {                                                                       \
        (((void (*)(void)) (((unsigned long (*)(void))SCLIB_4D_STUB_EXEC)()) )()); \
        SCLIB_4D_API_ADDRESS->init();                                       \
    }


/**
 * sclib_4d_enable_commslink
 * 
 * Enable Comms Link transfer.
 * "Type" parameter selects interface mapping type :
 *   0 : EMS-like 
 *   1 : Datel-like 
 *
 * Please call this macro only if you're using Action Replay cartridge.
**/
#define sclib_4d_enable_commslink()                                         \
    if(sclib_4d_stub_check())                                               \
    {                                                                       \
        SCLIB_4D_API_ADDRESS->enable_commslink(_TYPE_);                     \
    }


/**
 * scd_logout
 *  Send message to scrollable text area in SatLink's log window.
 *
 * scd_msgout
 *  Send message to non-scrollable text area in SatLink's log window.
 *
 *
 * scd_msgout function displays message to non-scrollable text area, 
 * while scd_logout displays message in scrollable text area.
 *
 * scd_msgout is recommended when wanting to periodically display
 * information (example : FPS, polygon count, memory used, etc).
 *
 * scd_logout is recommended when wanting to display even based
 * information (example : button pushed, error hapened, etc).
 * Please use it in the same way as you would use printf when
 * testing something on your PC.
 *
 * Example :
 *  scd_logout("Test 1 (%d %d %d)", 1, 2, 3);
 *  scd_msgout(1, "Test 2");
 *  scd_msgout(2, "Test 3");
 *  scd_msgout(1, "Test 4");
 *  scd_logout("Test 5");
 *
 *  int counter = 0;
 *  while(1)
 *  {
 *      scd_msgout(3, "Test 6 (%d)", counter);
 *      sc_check();
 *      counter++;
 *  }
 *
 * Will display something like this in SatLink's log window :
 * +------------------------------------------------------------------------+
 * |> Test 1 (1 2 3)              |[ID]| [Message]                          |
 * |> Test 5                      |  1 | Test 4                             |
 * |                              |  2 | Test 3                             |
 * |                              |  3 | Test 6 (123)                       |
**/
#define scd_logout(...)                                                     \
    if(sclib_4d_stub_check())                                               \
    {                                                                       \
        SCLIB_4D_API_ADDRESS->logout(__BASE_FILE__, __LINE__, __FUNCTION__, 0, __VA_ARGS__); \
    }

#define scd_msgout(id, ...)                                                 \
    if(sclib_4d_stub_check())                                               \
    {                                                                       \
        SCLIB_4D_API_ADDRESS->msgout(__BASE_FILE__, __LINE__, __FUNCTION__, 0, id, __VA_ARGS__); \
    }


/**
 * scd_prompt
 *
 * Send prompt_str message to PC, then wait until receiving answer from PC.
 * Note1: returned string is a global variable, so you may need to copy
 *        it somewhere in the case you want to heap up calls to scd_prompt.
 *
 * Example :
 *  char* str = scd_prompt("What is your favorite game console ?");
 *  scd_logout("Your favorite game console is \"%s\".");
 *
 *  Will display "What is your favorite game console ?", 
 *  ask you for something to answer, then display something
 *  like : "Your favorite game console is "Saturn"."
**/
#define scd_prompt(_PROMPT_STR_)                                            \
    (sclib_4d_stub_check()                                                  \
        ? SCLIB_4D_API_ADDRESS->prompt(_PROMPT_STR_);                       \
        : "")


/**
 * sc_check
 *
 * Perform pending I/O with PC.
 *
 * Please call this function regularly, for example
 * before during each V-Blank, or when timer/whatever
 * interrupt is triggered, or any timing else you want.
 *
 * This function won't block your program execution flow :
 * if there's nothing coming from your PC, sc_check will
 * check a couple of I/O related registers and return
 * to your program.
**/
#define sc_check(...)                                                       \
    if(sclib_4d_stub_check())                                               \
    {                                                                       \
        SCLIB_4D_API_ADDRESS->check();                                      \
    }


/**
 * scd_logflush
 *
 * Wait PC to receive all the debug messages.
 * Unlike sc_check, this function will block your program until PC receives
 * all debug messages from Saturn.
 *
 * Typical usage : call this function when your program may crash soon.
 * Reason : sc_check function is fast, but doesn't guarantees that all
 * debug messages will be actualy sent to PC.
 * In normal usage, this doesn't matters, since debug messages will be processed
 * a while after that, but in the case you're not sure if code after your
 * log message will run or crash, you may need something to safely send all
 * your log messages to PC
 *
 * Example :
 *  scd_logout("Test 1");
 *  scd_logflush();
 *  some_function_that_may_crash_your_saturn();
 *  scd_logout("Test 2");
 *  scd_logflush();
**/
#define scd_logflush(...)                                                   \
    if(sclib_4d_stub_check())                                               \
    {                                                                       \
        SCLIB_4D_API_ADDRESS->logflush();                                   \
    }





/**
 * scf_size
 *
 * Return specified file's size.
 * In the case the file doesn't exists, return 0
**/
#define scf_pc_size(_NAME_)                                                 \
    (sclib_4d_stub_check()                                                  \
        ? SCLIB_4D_API_ADDRESS->pc_size(_NAME_)                             \
        : 0)


/**
 * scf_read
 *
 * Read `size' bytes from specified file's `offset'th byte to `ptr'.
 *
 * Return the number of bytes actually read.
 * In the case the file doesn't exists, or read operation failed, return 0
 *
 * Note1: To increase performances when reading from CD-ROM, it is recommended
 *        to use offset values that are multiple of 2048 bytes.
 *        If it is not the case, 2 open->read->close requests are performed (instead of 1).
 *        Moreover, up to 2047 "useless" bytes may be read from CD when offset is not a multiple of 2048 bytes.
 *
 * Note2: To increase performances when reading from CD-ROM, it is recommended
 *        to use files in root folder only.
 *
 * Note3: If `size' is higher than file's size (=fsz), fsz bytes are actually read, and fsz is returned.
 *        So you can use the following code :
 *        char buffer[1234];
 *        unsigned long file_len = sc_fread(SC_FILE_SDCARD, filename, 0, sizeof(buffer), (void*)buffer);
**/
#define scf_pc_read(_NAME_, _OFFSET_, _SIZE_, _PTR_)                        \
    (sclib_4d_stub_check()                                                  \
        ? SCLIB_4D_API_ADDRESS->pc_read(_NAME_, _OFFSET_, _SIZE_, _PTR_)    \
        : 0)


/**
 * scf_write
 *
 * Write `size' bytes from `ptr' to specified file.
 * In the case specified file already exists, its contents is erased.
 *
 * Return the number of bytes actually written.
 * In the case write operation failed, return 0
 *
 * Note: When trying to write to a file in the CD-ROM, 0 is returned.
**/
#define scf_pc_write(_PTR_, _SIZE_, _NAME_)                                 \
    (sclib_4d_stub_check()                                                  \
        ? SCLIB_4D_API_ADDRESS->pc_write(_NAME_, _OFFSET_, _SIZE_, _PTR_)   \
        : 0)


/**
 * scf_append
 *
 * Append `size' bytes from `ptr' to specified file.
 * In the case specified file doesn't exists, file is created, and data written to it.
 *
 * Return the number of bytes actually appended.
 * In the case append operation failed, return 0
 *
 * Note: When trying to append to a file in the CD-ROM, 0 is returned.
**/
#define scf_pc_append(_PTR_, _SIZE_, _NAME_)                                \
    (sclib_4d_stub_check()                                                  \
        ? SCLIB_4D_API_ADDRESS->pc_append(_NAME_, _OFFSET_, _SIZE_, _PTR_)  \
        : 0)


#endif // !SATCOM_LIB_USE


#endif // _SCLIB_4D_H_
