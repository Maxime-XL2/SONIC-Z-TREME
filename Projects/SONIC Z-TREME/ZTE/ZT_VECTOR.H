#ifndef ZT_VECTOR_H
#define ZT_VECTOR_H

void VecNormalize( FIXED * dest );
void VecCross( FIXED * dest, FIXED * a, FIXED * b );
void fx3dSet(FIXED result[XYZ], FIXED x, FIXED y, FIXED z);
void fxCopy(VECTOR result, VECTOR source);
void fxVectorAdd(VECTOR dest, VECTOR a, VECTOR b);
void fxVectorSub(VECTOR dest, VECTOR a, VECTOR b);
void fxVectorCross(VECTOR dest, VECTOR a, VECTOR b);
void fxVectorMult(VECTOR dest, VECTOR a, FIXED b);
void fxVectorDiv(VECTOR dest, VECTOR a, FIXED b);
FIXED VecMag( VECTOR source );
void fxVectorNormalize( VECTOR dest );


#endif // ZT_VECTOR_H
