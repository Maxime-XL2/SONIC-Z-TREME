#ifndef ZT_ANIMATION_H
#define ZT_ANIMATION_H

typedef     Sint16	compVert[XYZ];
typedef     Uint8   compNorm;

typedef struct
{
 compVert * cVert;
 compNorm * cNorm;

} anim_struct;


typedef struct
{
    FIXED   pos[XYZ];
    FIXED   length[XYZ];
    Uint16  nbMeshes;
    Uint16  nbFrames;
    Uint16  AnimInterpolation;
    Uint16  DUMMY; //Maybe an identifier would be nice...
    anim_struct * animation[240];
    //ztObject * obj;  --> Maybe in the future
    XPDATA * pol[MAX_MESHES];
} entity_t;



void ztUpdateAnimation(animationControl * animCtrl, entity_t * currentModel);

#endif // ZT_ANIMATION_H
