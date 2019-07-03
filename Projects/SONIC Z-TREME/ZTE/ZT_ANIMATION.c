#include "ZTE_DEF.h"
#include "ANORM.h"

/**Old implementation of the ZTP animation format. The newer iterations of the engine will allow directly using the compressed vertices while transforming them for faster speed**/
void ztUpdateAnimation(animationControl * animCtrl, entity_t * currentModel)
{
    if (currentModel->nbFrames==0)return;
    XPDATA * currentPDATA = currentModel->pol[0];

    /**Sets the animation data**/
    animCtrl->currentFrm+=ZT_FRAMERATE;
    Uint32 FPS = animCtrl->fps;
    if (animCtrl->currentFrm>=animCtrl->endFrm<<FPS)
        animCtrl->currentFrm-=(animCtrl->endFrm-animCtrl->startFrm)<<FPS;

    /**Safety measure**/
    if (animCtrl->currentFrm < animCtrl->startFrm<<FPS || animCtrl->currentFrm >= animCtrl->endFrm<<FPS)
        animCtrl->currentFrm=animCtrl->startFrm<<FPS;

    animCtrl->currentKeyFrm=animCtrl->currentFrm>>FPS;  //should be >>currentModel->AnimInterpolation; but I forgot to output 60 fps animations... No time to fix it...

    Uint16 nextKeyFrm=animCtrl->currentKeyFrm+1;
    if (nextKeyFrm>animCtrl->endFrm)
        nextKeyFrm=animCtrl->startFrm;

    compVert * curKeyFrame = (compVert*)currentModel->animation[animCtrl->currentKeyFrm]->cVert;
    compVert * nextKeyFrame = (compVert*)currentModel->animation[nextKeyFrm]->cVert;

    Uint16 interpFctr = animCtrl->currentFrm-(animCtrl->currentKeyFrm<<FPS);

    /**Uncompress the vertices and apply linear interpolation**/
    register Uint32	i;
    Sint32 *dst=currentPDATA->pntbl[0];
    Sint16 *src=curKeyFrame[0];
    Sint16 *nxt=nextKeyFrame[0];
    for (i = 0; i < currentPDATA->nbPoint*sizeof(POINT); i+= sizeof(int)) {
		*dst++=(*src+(((*nxt-*src)*interpFctr)>>FPS))<<8;  //Here is a "mistake" : Using <<8 would be faster since the SH2 supports a shift left 8 instruction, but I didn't know it when I made this animation tool. To be changed to 8 instead
		*src++; *nxt++;
    }
    *dst=currentPDATA->pltbl[0].norm[0];
    Uint8 *src2=currentModel->animation[animCtrl->currentKeyFrm]->cNorm;
    for (i = 0; i < currentPDATA->nbPolygon; i++)    {
    /**Not 100% sure which technique is faster**/
        /*currentPDATA->pltbl[i].norm[X]=anorms[*src2][X];
        currentPDATA->pltbl[i].norm[Y]=anorms[*src2][Y];
        currentPDATA->pltbl[i].norm[Z]=anorms[*src2++][Z];*/
        *dst++=anorms[*src2][X];
        *dst++=anorms[*src2][Y];
        *dst=anorms[*src2++][Z];
        dst=dst+3 ; //++; *dst++;
    }
}
