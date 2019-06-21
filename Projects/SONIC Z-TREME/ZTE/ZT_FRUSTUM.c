#include        "ZTE_DEF.H"


//For testing, will be merged with main variables
FIXED FAR_DISTANCE = FIXEDdrawDist;
FIXED WFAR;
FIXED HFAR;
FIXED WNEAR;
FIXED HNEAR;
int zdsp = 6;
extern FIXED MsScreenDist;

f_plane_t PLANE[6];

void setNormalAndPoint(f_plane_t * plane,  VECTOR n, VECTOR p) {

    plane->normal[X]=n[X];
    plane->normal[Y]=n[Y];
    plane->normal[Z]=n[Z];
    VecNormalize(plane->normal);
	plane->d = -slInnerProduct(plane->normal, p);
}


void ztInitFrustum()
{

    FIXED DEPTH_RATIO = slDivFX(MsScreenDist,FAR_DISTANCE+MsScreenDist); //For the far plane

	WNEAR = toFIXED(ZT_TV_WIDTH/2);
	if (totalPlayers == 1)
        HNEAR = toFIXED(ZT_TV_HEIGHT/2);
    else
        HNEAR = toFIXED(ZT_TV_HEIGHT/4);

	WFAR = slMulFX(WNEAR, DEPTH_RATIO);
	HFAR = slMulFX(HNEAR, DEPTH_RATIO);
}



void ztUpdateFrustum(POINT p, camera_t * cam)
{
    POINT Xa, Ya, Za, nc, fc;
    FIXED NEAR_D = MsScreenDist;
    FIXED FAR_D  = FAR_DISTANCE+NEAR_D;
    POINT up={0, -65536, 0};

    //Get the direction vector and near plane
    Za[X] = slMulFX(slCos(cam->camAngle[Z]),-slSin(cam->camAngle[Y]));
    Za[Y] = -slSin(cam->camAngle[Z]);
    Za[Z] = slMulFX(slCos(cam->camAngle[Z]),-slCos(cam->camAngle[Y])) ;


    VecCross(Xa, Za, up);
    VecNormalize(Xa);

    //Real up
    VecCross(Ya, Za, Xa);

    //Center of near/far planes
    nc[X] = p[X] - slMulFX(Za[X], NEAR_D);
    nc[Y] = p[Y] - slMulFX(Za[Y], NEAR_D);
    nc[Z] = p[Z] - slMulFX(Za[Z], NEAR_D);

    fc[X] = p[X] - slMulFX(Za[X], FAR_D);
    fc[Y] = p[Y] - slMulFX(Za[Y], FAR_D);
    fc[Z] = p[Z] - slMulFX(Za[Z], FAR_D);

    //NEAR PLANE
    PLANE[NEAR_PLANE].normal[X]=-Za[X];
    PLANE[NEAR_PLANE].normal[Y]=-Za[Y];
    PLANE[NEAR_PLANE].normal[Z]=-Za[Z];
    PLANE[NEAR_PLANE].d= -slInnerProduct(PLANE[NEAR_PLANE].normal, nc)+NEAR_D;

    //FAR PLANE
    setNormalAndPoint(&PLANE[FAR_PLANE], Za, fc);
    VECTOR aux, norm;
    int i;
    for (i=0; i<3; i++)
        aux[i]= nc[i] + slMulFX(Ya[i], HNEAR) - p[i];
    VecNormalize(aux);
    VecCross(norm, aux, Xa);
    for (i=0; i<3; i++)
        aux[i]=nc[i]+slMulFX(Ya[i], HNEAR);
    setNormalAndPoint(&PLANE[TOP_PLANE], norm, aux);

    for (i=0; i<3; i++)
        aux[i]=nc[i]-slMulFX(Ya[i], HNEAR) - p[i];
    VecNormalize(aux);
    VecCross(norm, Xa, aux);
    for (i=0; i<3; i++)
        aux[i]=nc[i]-slMulFX(Ya[i], HNEAR);
    setNormalAndPoint(&PLANE[BOTTOM_PLANE], norm, aux);

    for (i=0; i<3; i++)
        aux[i]=nc[i]-slMulFX(Xa[i], WNEAR) - p[i];
    VecNormalize(aux);
    VecCross(norm, aux, Ya);
    for (i=0; i<3; i++)
        aux[i]=nc[i]-slMulFX(Xa[i], WNEAR);
    setNormalAndPoint(&PLANE[LEFT_PLANE], norm, aux);

    for (i=0; i<3; i++)
        aux[i]=nc[i]+slMulFX(Xa[i], WNEAR) - p[i];
    VecNormalize(aux);
    VecCross(norm, Ya, aux);
    for (i=0; i<3; i++)
        aux[i]=nc[i]+slMulFX(Xa[i], WNEAR);
    setNormalAndPoint(&PLANE[RIGHT_PLANE], norm, aux);

    //#define SHOW_FRUSTUM
    #ifdef SHOW_FRUSTUM
    for (i=0; i<6; i++)
    {
        slPrintFX(PLANE[i].normal[X], slLocate(0, 12+i*2));
        slPrintFX(PLANE[i].normal[Y], slLocate(12, 12+i*2));
        slPrintFX(PLANE[i].normal[Z], slLocate(24, 12+i*2));
    }
    #endif
}

Uint32 ztCheckInFrustum(POINT p, FIXED radius)
{
	f_plane_t * testPlane = &PLANE[0];
	Uint32 result = INSIDE_FRUSTUM;
	FIXED dist;

	int i;
	for (i = 0; i < 5; ++i)
	{
	    dist = slInnerProduct(p, testPlane->normal) + testPlane->d;
		if (dist < -radius)
			return OUTSIDE_FRUSTUM;
		else if (dist <= radius)
			result = INTERSECTS_FRUSTUM;
        testPlane++;
	}
	return (result);
}


#define DEBUG_START_PLANE (0)
#define MAX_TESTED_PLANES (5)
Uint32 ztCheckBoxInFrustum(VECTOR BoxMin,VECTOR BoxMax)
{
    VECTOR NearPoint, FarPoint;
    f_plane_t * Plane = &PLANE[DEBUG_START_PLANE];
    Uint32 result = INSIDE_FRUSTUM;
    for (int i=DEBUG_START_PLANE;i<MAX_TESTED_PLANES;i++)
    {
        NearPoint[X]= ((Plane->normal[X] < 0) ? BoxMin[X]:BoxMax[X]);
        NearPoint[Y]= ((Plane->normal[Y] < 0) ? BoxMin[Y]:BoxMax[Y]);
        NearPoint[Z]= ((Plane->normal[Z] < 0) ? BoxMin[Z]:BoxMax[Z]);

        FarPoint[X]= ((Plane->normal[X] >= 0) ? BoxMin[X]:BoxMax[X]);
        FarPoint[Y]= ((Plane->normal[Y] >= 0) ? BoxMin[Y]:BoxMax[Y]);
        FarPoint[Z]= ((Plane->normal[Z] >= 0) ? BoxMin[Z]:BoxMax[Z]);

        if (slInnerProduct(NearPoint, Plane->normal)+Plane->d <= 0) return OUTSIDE_FRUSTUM;
        if (slInnerProduct(FarPoint, Plane->normal)+Plane->d <= 0) result = INTERSECTS_FRUSTUM;
        Plane++;
    }
    return result;
}

