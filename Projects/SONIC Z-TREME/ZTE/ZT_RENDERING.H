#ifndef ZT_RENDERING_H
#define ZT_RENDERING_H


#define MAX_PARTICLES (48)
#define DEF_PARTICLE_LIFE1 (110)
#define DEF_PARTICLE_LIFE2 (110)
typedef struct
{
    FIXED   pos[XYZS];
    VECTOR  speed;
    ANGLE   rotation;
    Uint8   spriteID;
    Sint8   life;
} particles_t;

extern Sint32            currentParticle;
extern particles_t      particleArray[MAX_PARTICLES];

extern camera_t         cam1, cam2;
extern Uint8            enableRTG;
extern GOURAUDTBL		gourRealMax[GOUR_REAL_MAX];
extern Uint8			vwork[GOUR_REAL_MAX];

void    ztInitDisplay(Uint32 nbPlayers);
void	ztRender(player_t * currentPlayer, camera_t * currentCamera, Uint32 nbPlayers);
void    display_model(entity_t * model, bool UseRealtimeGouraud);


//FOR TESTING ONLY! Will then stay in one spot
void    computeLight();
void    ztVBLANKcustom();

#endif // ZT_RENDERING_H
