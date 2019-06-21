#ifndef ZT_FRUSTUM_H
#define ZT_FRUSTUM_H

#define FOV (DEGtoANG(80.0))
#define NEARDIST (toFIXED(50.0))

#define RATIO_1 (toFIXED(1.5714285714285714))
#define RATIO_2 (toFIXED(3.1428571428571428))

#ifndef USE_GRID
typedef enum
{
	LEFT_PLANE = 0,
	RIGHT_PLANE = 1,
	TOP_PLANE = 2,
	BOTTOM_PLANE = 3,
	FAR_PLANE = 4,
	NEAR_PLANE = 5,
} FRUSTUM_PLANE;


extern f_plane_t PLANE[6];

typedef enum
{
	OUTSIDE_FRUSTUM = 0,
	INTERSECTS_FRUSTUM = 1,
	INSIDE_FRUSTUM = 2
} FRUSTUM_INTERSECTION;



Uint32 ztCheckInFrustum(POINT p, FIXED radius);
Uint32 ztCheckBoxInFrustum(VECTOR BoxMin, VECTOR BoxMax);
void ztInitFrustum();
void ztUpdateFrustum(POINT p, camera_t * cam);
#endif

#endif // ZT_FRUSTUM_H
