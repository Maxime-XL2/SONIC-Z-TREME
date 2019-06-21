#ifndef ZT_CD_H
#define ZT_CD_H


extern void     ztCDinit(void);
extern void     ztCDsetDir(const char *const subDir);
extern void     ztCDsetRoot();
extern Sint32   ztCDopen(const Sint8 * file);
extern Sint32   ztCDload(Sint32 fid, Sint32 sector_offset, void * address, Uint32 loadingSize);

#endif // ZT_CD_H
