#include "ZTE_DEF.h"

#define     OPEN_MAX    (Sint32)5
#define     DIR_MAX     (Sint32)40
#define     RD_UNIT     (10)
#define     SECT_SIZE   (2048)

GfsDirTbl gfsDirTbl;
GfsDirName gfsDirName[DIR_MAX];
Uint32 gfsLibWork[GFS_WORK_SIZE(OPEN_MAX)/sizeof(Uint32)];
Sint32 gfsDirN;


#ifdef SATLINK_DEBUG
/***
Credits for Satlink usage : Cafe Alpha
He made a demo showing how to do it, I just adapted it for the Z-Treme Engine
***/
/*  Global variable for sclib_4d integration into
 *  Z-Treme Engine : PC link usage flag.
 *  - Zero : access files from CD-ROM
 *  - Nonzero : access files from PC via USB dev cart + SatLink
 */
int _sclib_4d_pclink_use = 0;

/* Current directory, for use by sclib_4d */
char _fs_current_dir[128];
char _fs_file_path[256];
#endif // SATLINK_DEBUG

void    ztCDinit(void)
{
    #ifdef SATLINK_DEBUG

    _sclib_4d_pclink_use = (sclib_4d_stub_check() ? 1 : 0);
    if(_sclib_4d_pclink_use)
    {
        /* In order to make possible to use sclib_4d before
         * initializing SBL, sclib_4d is initialized
         * on user side. So there is no need to do anything
         * special here.
         */
        return;
    }
    #endif // SATLINK_DEBUG

    GFS_DIRTBL_TYPE(&gfsDirTbl) = GFS_DIR_NAME;
    GFS_DIRTBL_DIRNAME(&gfsDirTbl) = gfsDirName;
    GFS_DIRTBL_NDIR(&gfsDirTbl) = DIR_MAX;
    gfsDirN = GFS_Init(OPEN_MAX, gfsLibWork, &gfsDirTbl);
}


void    ztCDsetDir(const char *const subDir)
{
    #ifdef SATLINK_DEBUG
    scd_logout("ztCDsetDir(subDir:\"%s\")", subDir);

    if(_sclib_4d_pclink_use)
    {
        /*
         * In order to manage sub-directories, is it necessary to
         * manage current directory path into global variable :
         *  char _fs_current_dir[128];
         * And then concatenate current directory and file name when
         * using PC-link API.
         * This will maybe be done later if required.
         */
        _fs_current_dir[0]='\0';
        strcpy(_fs_current_dir, subDir);
        scd_logout("CurDir confirm : %s", _fs_current_dir);
        return;
    }
    #endif // SATLINK_DEBUG
    Sint32  fid;
    if (subDir != NULL)
    {
        fid = GFS_NameToId((Sint8 *)subDir);
        GFS_LoadDir(fid, &gfsDirTbl);
        GFS_SetDir(&gfsDirTbl);
    }

}

void    ztCDsetRoot()
{
    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        _fs_current_dir[0]='\0';
         scd_logout("ztCDsetRoot(curDir:\"%s\")", _fs_current_dir);
        return;
    }
    #endif // SATLINK_DEBUG
    Sint32  fid;
    fid = GFS_NameToId((Sint8 *)"..");
    GFS_LoadDir(fid, &gfsDirTbl);
    GFS_SetDir(&gfsDirTbl);
}

Sint32   ztCDopen(const Sint8 * file)
{
    #ifdef SATLINK_DEBUG
    if(_sclib_4d_pclink_use)
    {
        scd_msgout(1, "ztCDopen");
        _fs_file_path[0]='\0';
        strcat(_fs_file_path, _fs_current_dir);
        strcat(_fs_file_path, "/");
        strcat(_fs_file_path, (char*)file);
        scd_logout("FILE PATH : \"%s\" ", _fs_file_path);
        scd_logflush();
        return 1;
    }
    #endif // SATLINK_DEBUG
    return GFS_NameToId((Sint8*)file);
}

Sint32 ztCDload(Sint32 fid, Sint32 sector_offset, void * address, Uint32 loadingSize)
{

    #ifdef SATLINK_DEBUG
        if(_sclib_4d_pclink_use)
        {
            scd_msgout(1, "ztCDload");
            scd_logflush();

            scf_pc_read(_fs_file_path, sector_offset*2048, loadingSize, address);
            return 1;
        }
    #endif // SATLINK_DEBUG
    return GFS_Load(fid, sector_offset, address, loadingSize);
}


