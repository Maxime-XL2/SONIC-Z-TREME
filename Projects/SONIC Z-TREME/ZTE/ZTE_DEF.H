#ifndef _ZTE_DEF
#define _ZTE_DEF

/**
Again a shitshow : That's what happens when you change the engine like 4 times and keep adding stuff/experimenting.
Many things aren't even used anymore.
***/

//#include <SGL.h>
#include "../Common.h"
#include <SEGA_GFS.H>
#include <SEGA_CDC.H>
#include <SEGA_SND.H>
#include <SEGA_DSP.H>
//#include "../../../Compiler/COMMON/MEM/SEGA_MEM.H"

#define VDP1_VRAM   0x5C00000
#define VDP1_FB     0x5C80000
#define TVMR        (*(Uint16 *)0x25D00000)
#define FBCR        (*(Uint16 *)0x25D00002)
#define PTMR        (*(Uint16 *)0x25D00004)
#define EWDR        (*(Uint16 *)0x25D00006)
#define EWLR        (*(Uint16 *)0x25D00008)
#define EWRR        (*(Uint16 *)0x25D0000A)
#define ENDR        (*(Uint16 *)0x25D0000C)
//

#define EDSR        (*(Uint16 *)0x25D00010)
#define LOPR        (*(Uint16 *)0x25D00012)
#define COPR        (*(Uint16 *)0x25D00014)
#define MODR        (*(Uint16 *)0x25D00016)

/* CONTROLS */
#define KEY_PRESS(pad, button) ((pad & button) == 0)

/* GENERAL */
#define bool        Uint8
#define true        TRUE
#define false       FALSE
//#define IS_DEBUG

/* RAM */
#define     LWRAM 0x00200000
#define     HWRAM 0x00600000

#define     ZT_SWAP(A, B)    { (A) = (A) ^ (B); (B) = (A) ^ (B); (A) = (A) ^ (B); }//Credits : both Jo-Engine and Flying SGL demo

#ifndef     MEM_DEF
#define     MEM_DEF

#endif

/* AUDIO */
#define     MidiNoteOff (0x00)
#define     MidiNoteOn (0x01)
#define     MidiCtrlChg (0x03)
#define     MidiPrgChg (0x04)
#define     Channel1 (0x01)

/* SPRITES */
#define     MAX_SPRITES             (1280)
#define     DEFAULT_FRAMERATE       (2)
#define     TEXTURE_BASE_ADDRESS    ((MAX_POLYGONS+6)*32 + MAX_POLYGONS*8)

/* DISPLAY */
#define     ZT_RES                  (TV_352x224)
#define     ZT_TV_WIDTH             (352)
#define     ZT_TV_HEIGHT            (224)
#define     FIXEDdrawDist           (1536<<16)
#define     def_drawDist            (1536)
#define     def_drawDist2           (1088)
#define     FISH_EYE                (toFIXED(132.0))

/* GOURAUD SHADING */
#define	    GRTBL(r,g,b)	        (((b&0x1f)<<10) | ((g&0x1f)<<5) | (r&0x1f) )

/* MAP */
//#define     USE_GRID //Comment to disable it and use the octree
#ifndef USE_GRID
    #define     MAX_OBJECT (2048)
#else
    #define     MAX_OBJECT (4096)
#endif


/* MACROS FOR PALETTE LOOKUP*/
//VDP1 Color Lookup Table
#define     LUTaddr             (0x25C7A960)
#define     returnLUTaddr(n)    (LUTaddr + (0x20 * n))
#define     LUTidx(n)           (Uint16)(62764 + (4 * n))
//VDP2 color RAM
#define     CRAM_Base           (0x25f00200)
#define     returnCRAMaddr(n)   (CRAM_Base + (0x20 * n))
#define     LUTcramIdx(n)       ((256 + (16 * n)))

/* MODELS */
#define MAX_MESHES (16)
#define MAX_MODELS (10)


//#define NO_DEBUG
#define IS_SINGLE_PLANE_NODE (1<<13)
#define IS_LIGHTED (1<<14)

//PAL version or NTSC : Choose one or the other. But I didn't update the physics parameters
//#define PAL_VERSION

//#define USE_TRANSP_BUFFER  //If you use a transparent sprite layer, you can uncomment this
#define BUFFER_WIDTH    (176)
#define BUFFER_HEIGHT   (112)
#define BUFFER_VSKIP    (10)  //Shift left value. Example : 224 lines, only keep 56, you take 1 line out of 4, but you also need to take into account the buffer max width.
#define BUFFER_OFFSET   (704)


#define	    VRAM_A0	0x05e00000
#define	    VRAM_A1	0x05e20000
#define	    VRAM_B0	0x05e40000
#define	    VRAM_B1	0x05e60000
#define     BUFFER_VRAM    (VRAM_A0)

//#define USE_PVS //Uncomment to use the PVS. But it's glitchy...

/**ENUM**/
typedef enum
{
    GS_MAIN_SCREEN,
    GS_DEMO,
    GS_LOGO,
    GS_1PLAYER,
    GS_2PLAYERS,
    GS_BOSS,
    GS_END_CREDITS,
    GS_EXIT,
} GAME_STATE;


/**STRUCT**/
typedef struct
{
	VECTOR normal;
	FIXED  d;
} f_plane_t;


typedef struct{
    FIXED x;
    FIXED y;
    FIXED z;
} vector3;

typedef struct{
    short x;
    short y;
    short z;
} vector3s;



typedef struct{
    FIXED x;
    FIXED y;
    FIXED z;
    FIXED length;
} vector4;

typedef struct{
    unsigned short  TOTAL_MESH;
    unsigned short  TOTAL_NODES;  //total * sizeof(node)
    unsigned short  TOT_COLL;
    short           TOT_TEXT;
    unsigned int    TEXT_SIZE;  //to quickly load from disk
    unsigned int    PDATA_SIZE; // //to quickly load from disk
    unsigned int    LOD_SIZE; // //to quickly load from disk
    unsigned short  MUSIC_ID;
    unsigned short  MAP_DRAW_DISTANCE;
    unsigned short  TOTAL_ENTITIES;
    unsigned short  TOTAL_GOURAUD;

    unsigned short  TOT_ANIMATIONS;
    unsigned short  TOT_VERTICES;

    unsigned int    PVS_SIZE;
    int             Length;  //Length of the grid's cubes.
    vector3         Origin; //Origin point used to "center" the collision data and your position with the current grid
} mapData_t; //44

typedef struct
{
    Sint16  id;
    Sint16  currentNode;
    POINT   pos;
    Sint16  ang;
    Sint16  status;
    Uint32  tick;
} staticEntity;  //24 bytes each


typedef struct{
    short           parentID;
    short           PDATAid; //-1 if none, if >=0 it's a leaf, no need to go further down
    short           child[8]; //-1 if empty
    unsigned int    PVSIndex;
    unsigned int    tick;
    vector4         bv;     //Center point of the bounding volume + length
    Sint16          DUMMY;
    Sint16          nbEntities;
    staticEntity *  entbl;
}  octree_node_t;

typedef struct {
    POINT       pos;
    VECTOR      len;
    VECTOR      norm;
    //vector3s    norm ;  //Put it vector3s on Saturn to save space
    Uint8       planeType; //0 : x aligned, 1 : y aligned, etc.
    Uint8       groundType; //Padding / or for future usage
    Sint16	    att;  //2 bytes word on Saturn to save space, could be 8
} COLLISION; //40 bytes per col data on PC, 20 on Saturn, which means on Saturn you need to shift the data.

/*
typedef struct {
    //vector3s    pos;
    vector3s    len;
    //vector3s    norm ;  //Put it vector3s on Saturn to save space
    Sint16	    att;  //2 bytes word on Saturn to save space
} COLLISION; //40 bytes per col data on PC, 20 on Saturn, which means on Saturn you need to shift the data.
*/

typedef struct {
	Uint32		 nbCo;
	COLLISION	*cotbl;
}CDATA; //I will try to flush that as it wastes 8 bytes for each PDATA...


typedef struct
{
    Uint16      width;
    Uint16      height;
    Uint16	    cmode ;	//Color type : 16 or 256
    Uint16      nbcol;
    Uint16  *   data;  //The palette index for the pixels
} img_t;

typedef enum
{
    H_COLLISION = 1 << 0,
    V_COLLISION = 1 << 1,
    CAN_JUMP    = 1 << 2,
    DOUBLE_JUMP = 1 << 3,
    IS_IN_AIR   = 1 << 4,
    IS_MOVING   = 1 << 5,
    IS_SHOOTING = 1 << 6,
    IS_DYING    = 1 << 7,
    IS_SPINNING = 1 << 8,
    SPIN_DASH   = 1 << 9,
    SPIN_SPRITE = 1 <<10,

} _STATUS;

typedef struct
{
    char KEY_TIMER;
    char RESET_VIEW;
    Uint16 ANIM;
} _ANIM_TIMERS;

typedef struct
{
    Uint16 animID;
    Uint16 currentFrm;
    Uint16 currentKeyFrm;
    Uint16 fps;
    Uint16 startFrm;
    Uint16 endFrm;
} animationControl;

typedef struct
{
    FIXED               POSITION[XYZ];
    ANGLE               ROTATION[XYZ];
    Uint8               PLAYER_ID;
    Uint8               OWNED; //Rings or weapons
    Sint8               LIVES;
    Uint8               ENTITY_ID;
    Uint16              COLOR;  //Red == 1<<15, yellow == 1<<14, timer
    FIXED               SPEED[XYZ];
    FIXED               SHADOW_DIST;
    #ifdef IS_FPS
    FIXED               MOVEMENT_SPEED;
    FIXED               LATERAL_SPEED;
    #endif
    Uint16              STATUS;
    ANGLE               SPIN_ANGLE;
    Uint32              SPIN_CHARGE;
    Sint16              INVINCIBLE;
    Uint16              LAST_INPUTS;
    animationControl    ANIM_CTRL;
    #ifdef IS_FPS
    _ANIM_TIMERS TIMERS;
    #endif // IS_FPS
} player_t;

typedef struct
{
    POINT pos;
    FIXED yOffset;
    FIXED camDist;
    ANGLE camAngle[XYZ];
    ANGLE targetAngle;
} camera_t;


typedef struct
{
    unsigned short  textureId;
    unsigned char   colorDepth;
    unsigned char   timer;
    Uint16          pointer;
    Uint16          lodLevel;
} animArray_t;


/**GLOBAL VARIABLES**/
extern Sint8            SynchConst;
extern Uint16           TotalPolygons;
extern Uint16           TotalVertices;
extern Uint16           DispPolygons;
extern Uint16           PutCount;

extern Sint8            ZT_FRAMERATE;
extern Sint8            DELAYED_CHANGEMAP;
extern Uint32           totalPlayers;
extern TEXTURE	        tex_def[MAX_SPRITES];
extern Sint32           firstMapTexture;
extern Uint32           totalTextures;
extern mapData_t        MDATA;
extern player_t         PLAYER_1, PLAYER_2;
extern octree_node_t *  nodes[MAX_OBJECT];
extern XPDATA *         LevelMesh[MAX_OBJECT];
extern XPDATA *         LevelMeshLOD[MAX_OBJECT];
extern CDATA *          LevelColl[MAX_OBJECT];
extern Uint32           draw_distance;
extern Uint8 *          HWRAM_DYNAMIC_MEM_PTR;
//extern Uint8 *          HWRAM_MEM_MAPSTART;
extern Uint8            DYNAMIC_RAM[];
extern Uint8            HWRAM_DYNAMIC_MEM[];
extern Uint32           TIMER;
extern Uint32           USE_MAP_GOURAUD;
extern animArray_t      animArray[64];



#ifdef SATLINK_DEBUG
extern int _sclib_4d_pclink_use;
#endif // SATLINK_DEBUG

/***TESTING**/
extern unsigned char * PVS;

/**External functions**/
void SYS_Exit(bool);

/**Z-TREME ENGINE HEADERS**/
#include "ZT_ANIMATION.H"
#include "ZT_AUDIO.H"
#include "ZT_CD.H"
#include "ZT_COLLISION.H"
#include "ZT_FRUSTUM.H"
#include "ZT_GAME.H"
#include "ZT_LOADING.H"
#include "ZT_LOAD_MODEL.H"
#include "ZT_MENU.H"
#include "ZT_PLAYER.H"
#include "ZT_RENDERING.H"
#include "ZT_SPRITES.H"
#include "ZT_SYSTEM.H"
#include "ZT_TOOLS.H"
#include "ZT_VDP2.H"
#include "ZT_VECTOR.H"

/**GAME SPECIFIC HEADERS**/
#include "../SRC/controls.h"
#include "../SRC/game.h"
#include "../SRC/physics.h"
#include "../SRC/audio.h"




#endif // _ZTE_DEF
