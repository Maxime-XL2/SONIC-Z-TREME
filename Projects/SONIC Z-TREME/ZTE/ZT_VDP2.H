#ifndef ZT_VDP2_H
#define ZT_VDP2_H

extern void     ztClearText(void);
extern void     ztFont2NBG3(void);
extern void     ztSetColorCalc(void);
extern Uint16   ztLoadVDP2bmp(const char *const subdir, char * filename, Uint16 *vram, unsigned short paletteId, bool NBGtype);

#endif // ZT_VDP2_H
