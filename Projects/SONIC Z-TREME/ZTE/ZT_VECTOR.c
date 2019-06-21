#include "ZTE_DEF.H"

void VecNormalize( FIXED * dest )
{
	FIXED mag = slSquartFX(slMulFX(dest[X], dest[X])+slMulFX(dest[Y], dest[Y])+slMulFX(dest[Z], dest[Z]));
	//VecMag( dest );

	if (mag != toFIXED(0.0))
	{
		dest[X] = slDivFX( mag, dest[X] );
		dest[Y] = slDivFX( mag, dest[Y] );
		dest[Z] = slDivFX( mag, dest[Z] );
	}
	else
	{
		dest[X] = toFIXED(0.0);
		dest[Y] = toFIXED(0.0);
		dest[Z] = toFIXED(0.0);
	}
}

void VecCross( FIXED * dest, FIXED * a, FIXED * b )
{
	dest[X] = slMulFX( a[Y], b[Z] ) - slMulFX( a[Z], b[Y] );
	dest[Y] = slMulFX( a[Z], b[X] ) - slMulFX( a[X], b[Z] );
	dest[Z] = slMulFX( a[X], b[Y] ) - slMulFX( a[Y], b[X] );
}

void fx3dSet(FIXED result[XYZ], FIXED x, FIXED y, FIXED z)
{
	result[X] = x;
	result[Y] = y;
	result[Z] = z;
}

void fxCopy(VECTOR result, VECTOR source)
{
	result[X] = source[X];
	result[Y] = source[Y];
	result[Z] = source[Z];
}

/*
void fxVectorAdd(VECTOR dest, VECTOR a, VECTOR b)
{
	dest[X] = a[X] + b[X];
	dest[Y] = a[Y] + b[Y];
	dest[Z] = a[Z] + b[Z];
}

void fxVectorSub(VECTOR dest, VECTOR a, VECTOR b)
{
	dest[X] = a[X] - b[X];
	dest[Y] = a[Y] - b[Y];
	dest[Z] = a[Z] - b[Z];
}*/

void fxVectorCross(VECTOR dest, VECTOR a, VECTOR b)
{
	dest[X] = slMulFX(a[Y], b[Z]) - slMulFX(a[Z], b[Y]);
	dest[Y] = slMulFX(a[Z], b[X]) - slMulFX(a[X], b[Z]);
	dest[Z] = slMulFX(a[X], b[Y]) - slMulFX(a[Y], b[X]);
}

/*
void fxVectorMult(VECTOR dest, VECTOR a, FIXED b)
{
	dest[X] = slMulFX(a[X], b);
	dest[Y] = slMulFX(a[Y], b);
	dest[Z] = slMulFX(a[Z], b);
}

void fxVectorDiv(VECTOR dest, VECTOR a, FIXED b)
{
	dest[X] = slDivFX(a[X], b);
	dest[Y] = slDivFX(a[Y], b);
	dest[Z] = slDivFX(a[Z], b);
}*/

FIXED VecMag( VECTOR source )
{
	FIXED m2;
	m2  = slMulFX( source[X], source[X]);
	m2 += slMulFX( source[Y], source[Y]);
	m2 += slMulFX( source[Z], source[Z]);
	return( slSquartFX( m2 ) );
}

void fxVectorNormalize( VECTOR dest )
{
	FIXED mag = VecMag( dest );
	if (mag != toFIXED(0.0))	{
		dest[X] = slDivFX( mag, dest[X] );
		dest[Y] = slDivFX( mag, dest[Y] );
		dest[Z] = slDivFX( mag, dest[Z] );
	}
	else	{
		dest[X] = toFIXED(0.0);
		dest[Y] = toFIXED(0.0);
		dest[Z] = toFIXED(0.0);
	}
}
