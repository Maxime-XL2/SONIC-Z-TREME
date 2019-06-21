#include "../ZTE/ZTE_DEF.H"



/**TEMPORARY, WILL ALL BE MOVED ELSEWHERE**/

void accelerate(player_t * currentPlayer, FIXED acc)
{
    FIXED speed[2], SinR, CosR;
    speed[0]=currentPlayer->SPEED[X];
    speed[1]=currentPlayer->SPEED[Z];
    ANGLE rot = currentPlayer->ROTATION[Y];
    SinR=slSin(rot);
    CosR=slCos(rot);
    FIXED speedIncrease[2];
    speedIncrease[0] = acc * ZT_FRAMERATE;
    speedIncrease[1] = speedIncrease[0];
    //FIXED speedDecelerate = PHYS_TURNING_FRICTION*ZT_FRAMERATE;

   // currentPlayer->SPEED[X]-=slMulFX(speed[0],speedDecelerate);

    FIXED cosMaxSpeed = slMulFX(CosR, PHYS_MAX_SPEED);
    FIXED sinMaxSpeed = slMulFX(SinR, PHYS_MAX_SPEED);

    if (sinMaxSpeed < 0){if (currentPlayer->SPEED[X] < sinMaxSpeed) speedIncrease[0]=0;    }
    else if (sinMaxSpeed > 0)    {if (currentPlayer->SPEED[X] > sinMaxSpeed) speedIncrease[0]=0;    }

    if (cosMaxSpeed < 0)   {if (currentPlayer->SPEED[Z] < cosMaxSpeed) speedIncrease[1]=0; }
    else if (cosMaxSpeed > 0){if (currentPlayer->SPEED[Z] > cosMaxSpeed) speedIncrease[1]=0;}

    if (currentPlayer->STATUS & IS_IN_AIR)
    {
        if ((speed[0] < 0 && SinR > 0) || (speed[0] > 0 && SinR < 0))
            currentPlayer->SPEED[X] += slMulFX(SinR, slMulFX(speedIncrease[0], PHYS_AIR_DECELERATION_STRENGTH) );
        else
            currentPlayer->SPEED[X] += slMulFX(SinR, slMulFX(speedIncrease[0], PHYS_AIR_ACCELERATION_STRENGTH) );

        if ((speed[1] < 0 && CosR > 0) || (speed[1] > 0 && CosR < 0))
            currentPlayer->SPEED[Z] += slMulFX(CosR, slMulFX(speedIncrease[1], PHYS_AIR_DECELERATION_STRENGTH) );
        else
            currentPlayer->SPEED[Z] += slMulFX(CosR, slMulFX(speedIncrease[1], PHYS_AIR_ACCELERATION_STRENGTH) );
    }
    else
    {
        if ((speed[0] < 0 && SinR > 0) || (speed[0] > 0 && SinR < 0))
            currentPlayer->SPEED[X] += slMulFX(SinR, slMulFX(speedIncrease[0], PHYS_DECELERATION_STRENGTH) );
        else
            currentPlayer->SPEED[X] += slMulFX(SinR, slMulFX(speedIncrease[0], PHYS_ACCELERATION_STRENGTH) );

        if ((speed[1] < 0 && CosR > 0) || (speed[1] > 0 && CosR < 0))
            currentPlayer->SPEED[Z] += slMulFX(CosR, slMulFX(speedIncrease[1], PHYS_DECELERATION_STRENGTH) );
        else
            currentPlayer->SPEED[Z] += slMulFX(CosR, slMulFX(speedIncrease[1], PHYS_ACCELERATION_STRENGTH) );
    }


    if (ABS(SinR) < 32768)
        currentPlayer->SPEED[X] -= MIN(ABS(currentPlayer->SPEED[X]), PHYS_TURNING_FRICTION*ZT_FRAMERATE) * (currentPlayer->SPEED[X] > 0 ? 1 : -1);

    if (ABS(CosR) < 32768) //était à < 22000
        currentPlayer->SPEED[Z] -= MIN(ABS(currentPlayer->SPEED[Z]), PHYS_TURNING_FRICTION*ZT_FRAMERATE) * (currentPlayer->SPEED[Z] > 0 ? 1 : -1);

}

void decelerate(player_t * currentPlayer)
{
    FIXED friction;
    if (currentPlayer->STATUS & IS_IN_AIR)
        friction=0;
    else if (currentPlayer->STATUS & SPIN_DASH)
        friction=PHYS_ROLLING_FRICTION*ZT_FRAMERATE;
    else
        friction=PHYS_NORMAL_FRICTION*ZT_FRAMERATE;

currentPlayer->SPEED[X] -= MIN(ABS(currentPlayer->SPEED[X]), friction) * (currentPlayer->SPEED[X] > 0 ? 1 : -1);
currentPlayer->SPEED[Z] -= MIN(ABS(currentPlayer->SPEED[Z]), friction) * (currentPlayer->SPEED[Z] > 0 ? 1 : -1);
//_physics->speed.ZSP -= JO_MIN(ZT_ABS(_physics->speed.ZSP), _physics->friction) * (_physics->speed.ZSP > ZT_ZERO ? ZT_ONE : -ZT_ONE);
    /*FIXED dec = toFIXED(0.90);
    if (currentPlayer->STATUS & IS_IN_AIR)
    {
        //if (ABS(currentPlayer->SPEED[X]) > 16384)
        currentPlayer->SPEED[X]=slMulFX(currentPlayer->SPEED[X], dec);
        currentPlayer->SPEED[Z]=slMulFX(currentPlayer->SPEED[Z], dec);
    }
    else
    {
        currentPlayer->SPEED[X]=slMulFX(currentPlayer->SPEED[X], dec);
        currentPlayer->SPEED[Z]=slMulFX(currentPlayer->SPEED[Z], dec);
    }
*/

}

#define DEAD_ZONE (34)
/***While using 3D control pad***/
FIXED analog_control(player_t * currentPlayer, camera_t * currentCamera, PerAnalog * pad)
{
    ANGLE new_Angle=currentPlayer->ROTATION[Y];

    if ((currentPlayer->STATUS&SPIN_DASH) && ((currentPlayer->STATUS&IS_IN_AIR)==0) &&
        ((ABS(currentPlayer->SPEED[X]) > toFIXED(4.0)) || (ABS(currentPlayer->SPEED[Z]) > toFIXED(4.0))))
         return 0;
    else if ((currentPlayer->STATUS&SPIN_DASH) && ((currentPlayer->STATUS&IS_IN_AIR)==0))
    {
        if (currentPlayer->SPIN_CHARGE == 0)
            currentPlayer->STATUS &= ~SPIN_DASH;
        return 0;
    }
    FIXED analogX = (pad->x-128);
    FIXED analogY = (pad->y-128);

    if (ABS(analogX)<=DEAD_ZONE) analogX=0;
    else if (analogX<-127) analogX=-127;

    if (ABS(analogY)<=DEAD_ZONE) analogY=0;
    else if (analogY<-127)analogY=-127;

    if (analogX==0 && analogY==0) return 0;

    analogX=analogX<<9;
    analogY=analogY<<9;

    new_Angle=slAtan(-analogY, analogX) + currentCamera->camAngle[Y];
    currentPlayer->ROTATION[Y]=new_Angle;


    return slSquartFX(slMulFX(analogX,analogX) + slMulFX(analogY,analogY));

}


/**While using digital control pad***/
FIXED digital_control(player_t * currentPlayer, camera_t * currentCamera, PerDigital * pad)
{
    FIXED is_accelerating = 65536;
    ANGLE new_Angle=currentPlayer->ROTATION[Y];
    Uint16 padData = pad->data;

    if ((currentPlayer->STATUS&SPIN_DASH) && ((currentPlayer->STATUS&IS_IN_AIR)==0) &&
        ((ABS(currentPlayer->SPEED[X]) > toFIXED(4.0)) || (ABS(currentPlayer->SPEED[Z]) > toFIXED(4.0))))
         return 0;
    else if ((currentPlayer->STATUS&SPIN_DASH) && ((currentPlayer->STATUS&IS_IN_AIR)==0))
    {
        if (currentPlayer->SPIN_CHARGE == 0)
            currentPlayer->STATUS &= ~SPIN_DASH;
        return 0;
    }
    else
    {
        if (KEY_PRESS(padData, PER_DGT_KU))    {
            if (KEY_PRESS(padData, PER_DGT_KL)) new_Angle=currentCamera->camAngle[Y]-8192;
            else if (KEY_PRESS(padData, PER_DGT_KR)) new_Angle=currentCamera->camAngle[Y]+8192;
            else new_Angle=currentCamera->camAngle[Y];
        }
        else if (KEY_PRESS(padData, PER_DGT_KD))    {
            if (KEY_PRESS(padData, PER_DGT_KL)) new_Angle=currentCamera->camAngle[Y]+40960;
            else if (KEY_PRESS(padData, PER_DGT_KR)) new_Angle=currentCamera->camAngle[Y]-40960;
            else  new_Angle=currentCamera->camAngle[Y]-32768;
        }
        else if (KEY_PRESS(padData, PER_DGT_KL))
            new_Angle=currentCamera->camAngle[Y]-16384;
        else if (KEY_PRESS(padData, PER_DGT_KR))
            new_Angle=currentCamera->camAngle[Y]+16384;
        else is_accelerating=0;
        currentPlayer->ROTATION[Y]=new_Angle;
    }
    return is_accelerating;
}

/*
int updateDirection(player_t * currentPlayer, camera_t * currentCamera, PerDigital * pad)
{
    int is_moving = 1;
    ANGLE new_Angle=currentPlayer->ROTATION[Y];
    Uint16 padData = pad->data;

    if (KEY_PRESS(padData, PER_DGT_KU))    {
        if (KEY_PRESS(padData, PER_DGT_KL)) new_Angle=currentCamera->camAngle[Y]-8192;
        else if (KEY_PRESS(padData, PER_DGT_KR)) new_Angle=currentCamera->camAngle[Y]+8192;
        else new_Angle=currentCamera->camAngle[Y];
    }
    else if (KEY_PRESS(padData, PER_DGT_KD))    {
        if (KEY_PRESS(padData, PER_DGT_KL)) new_Angle=currentCamera->camAngle[Y]+40960;
        else if (KEY_PRESS(padData, PER_DGT_KR)) new_Angle=currentCamera->camAngle[Y]-40960;
        else  new_Angle=currentCamera->camAngle[Y]-32768;
    }
    else if (KEY_PRESS(padData, PER_DGT_KL))
        new_Angle=currentCamera->camAngle[Y]-16384;
    else if (KEY_PRESS(padData, PER_DGT_KR))
        new_Angle=currentCamera->camAngle[Y]+16384;
    else is_moving=0;
    currentPlayer->ROTATION[Y]=new_Angle;

    return is_moving;
}*/



void    jump(player_t * currentPlayer)
{
    ztPlaySound(SFX_JUMP);

    if (currentPlayer->STATUS&CAN_JUMP)
        currentPlayer->STATUS |= DOUBLE_JUMP;
    else
        currentPlayer->STATUS &= ~DOUBLE_JUMP;
currentPlayer->STATUS &= ~CAN_JUMP;

    currentPlayer->STATUS |= IS_IN_AIR;
    currentPlayer->STATUS |= IS_SPINNING;

    currentPlayer->SPEED[Y] = -PHYS_JUMP_SPEED_Y;
    currentPlayer->SPEED[X] += slMulFX(PHYS_JUMP_SPEED_Y, slSin(currentPlayer->ROTATION[Z]));
    currentPlayer->SPEED[Z] += slMulFX(PHYS_JUMP_SPEED_Y, slSin(currentPlayer->ROTATION[X]));

    FIXED divFactor = 65536 - (ZT_FRAMERATE * toFIXED(0.05));
    if (currentPlayer->ROTATION[X] != 0)
        slMulFX(currentPlayer->ROTATION[X], divFactor);
    if (currentPlayer->ROTATION[Z] != 0)
        slMulFX(currentPlayer->ROTATION[Z], divFactor);

    /*if (currentPlayer->ROTATION[X] >= DEGtoANG(15.0))       currentPlayer->ROTATION[X] -= DEGtoANG(15.0);
    else if (currentPlayer->ROTATION[X] <= -DEGtoANG(15.0)) currentPlayer->ROTATION[X] += DEGtoANG(15.0);

    if (currentPlayer->ROTATION[Z] >= DEGtoANG(15.0))       currentPlayer->ROTATION[Z] -= DEGtoANG(15.0);
    else if (currentPlayer->ROTATION[X] <= -DEGtoANG(15.0)) currentPlayer->ROTATION[X] += DEGtoANG(15.0);

    if (_physics->rotation.rotZ >= 15) _physics->rotation.rotZ -= 15;
    else if (_physics->rotation.rotZ <= 15) _physics->rotation.rotZ += 15;*/

}

void    spinCharge(player_t * currentPlayer)
{
    if (ABS(currentPlayer->SPEED[X]) > toFIXED(3.0) || ABS(currentPlayer->SPEED[Z]) > toFIXED(3.0))
        currentPlayer->STATUS |= SPIN_DASH;
    else if (currentPlayer->SPEED[X] == 0 && currentPlayer->SPEED[Z] == 0)
    {
        if (currentPlayer->SPIN_CHARGE == 0)
        {
            ztPlaySound(SFX_CHARGE);
            currentPlayer->SPIN_CHARGE=toFIXED(6.0);
        }
        else  currentPlayer->SPIN_CHARGE += SPIN_INCREMENT*ZT_FRAMERATE;

        currentPlayer->STATUS |= SPIN_DASH;
        if (currentPlayer->SPIN_CHARGE > MAX_SPINCHARGE)
            currentPlayer->SPIN_CHARGE=MAX_SPINCHARGE;
    }
    else
        currentPlayer->STATUS &= ~SPIN_DASH;
    /*    else if (currentPlayer->SPIN_CHARGE ==0)
        currentPlayer->STATUS &= !SPIN_DASH;*/
}

void buttonsCheck(player_t * currentPlayer, PerDigital * pad)
{
    Uint16 lastPress = currentPlayer->LAST_INPUTS;
    if (((currentPlayer->STATUS & CAN_JUMP) || (currentPlayer->STATUS & DOUBLE_JUMP)) &&
        ((KEY_PRESS(pad->data, PER_DGT_TA) && (lastPress & PER_DGT_TA)) ||
         (KEY_PRESS(pad->data, PER_DGT_TB) && (lastPress & PER_DGT_TB)) ||
         (KEY_PRESS(pad->data, PER_DGT_TC) && (lastPress & PER_DGT_TC))))
        jump(currentPlayer);

    else if ((pad->data & PER_DGT_TA) && (pad->data & PER_DGT_TB) &&
             (pad->data & PER_DGT_TC) && (currentPlayer->SPEED[Y]<-toFIXED(4.0)))
             {
                 if ((KEY_PRESS(lastPress, PER_DGT_TA) || KEY_PRESS(lastPress, PER_DGT_TB) || KEY_PRESS(lastPress, PER_DGT_TC))&&(currentPlayer->STATUS&DOUBLE_JUMP))
                    currentPlayer->SPEED[Y]=-toFIXED(4.0);
             }

    if (KEY_PRESS(pad->data, PER_DGT_TX) || KEY_PRESS(pad->data, PER_DGT_TY) || KEY_PRESS(pad->data, PER_DGT_TZ))
        spinCharge(currentPlayer);
    else if (currentPlayer->SPIN_CHARGE != 0 && ((currentPlayer->STATUS & IS_IN_AIR)==0))
    {
        ztPlaySound(SFX_CRELEASE);
        currentPlayer->SPEED[X] = slMulFX(slSin(currentPlayer->ROTATION[Y]), currentPlayer->SPIN_CHARGE);
        currentPlayer->SPEED[Z] = slMulFX(slCos(currentPlayer->ROTATION[Y]), currentPlayer->SPIN_CHARGE);
        currentPlayer->SPIN_CHARGE=0;
        //currentPlayer->STATUS &= SPIN_DASH;
        //currentPlayer->STATUS |= IS_SPINNING;
    }
    /*else
        currentPlayer->STATUS &= !SPIN_DASH;*/


      /*  if (jo_is_pad1_key_pressed(JO_KEY_X) || jo_is_pad1_key_pressed(JO_KEY_Y) || jo_is_pad1_key_pressed(JO_KEY_Z))
            {
                if (_physics->speed.XSP > 3136 || _physics->speed.XSP < -3136 || _physics->speed.ZSP > 3136 || _physics->speed.ZSP < -3136)
                    {_player->status |= SPIN_DASH;}
                else if (_physics->speed.XSP == 0 && _physics->speed.ZSP == 0)
                {
                    if (_player->spinCharge == 0) {play_sound(&sound.scdspincharge); _player->spinCharge=6144;}
                    _player->status |= SPIN_DASH;
                    _player->spinCharge += SPINCHARGE_INCREMENT;
                    if (_player->spinCharge > MAX_SPINCHARGE) _player->spinCharge = MAX_SPINCHARGE;
                }
                else
                {
                    _player->status &= !SPIN_DASH;
                }
            }
        else if (_player->spinCharge != 0)
            {
                play_sound(&sound.scdspinrelease);
                _physics->speed.XSP = jo_cos_mult(_player->spinCharge, _physics->rotation.rotY);
                _physics->speed.ZSP = jo_sin_mult(_player->spinCharge, _physics->rotation.rotY);
                _player->spinCharge = 0;
            }

        //else _player->spindash = false;
    }*/
}

void wireframeDebug(PerDigital * pad)
{
    Uint16 padData = pad->data;
    if ((KEY_PRESS(padData, PER_DGT_TL)) && (KEY_PRESS(padData, PER_DGT_TZ)))
    {
        /*extern volatile Uint16 *ErasePolygonData;
        *ErasePolygonData = 0x0501; */
        unsigned int i, ii;
        for (i=0; i<MDATA.TOTAL_MESH; i++)
        {
            for (ii=0; ii<LevelMesh[i]->nbPolygon; ii++)
            {
                if (LevelMesh[i]->attbl[ii].dir & FUNC_Polygon)
                    continue;
                LevelMesh[i]->attbl[ii].dir &= ~FUNC_Texture;
                LevelMesh[i]->attbl[ii].dir |= FUNC_PolyLine;
            }
            for (ii=0; ii<LevelMeshLOD[i]->nbPolygon; ii++)
            {
                if (LevelMeshLOD[i]->attbl[ii].dir & FUNC_Polygon)
                    continue;
                LevelMeshLOD[i]->attbl[ii].dir &= ~FUNC_Texture;
                LevelMeshLOD[i]->attbl[ii].dir |= FUNC_PolyLine;
                /*LevelMeshLOD[i]->attbl[ii].atrb |= SPdis;
                LevelMeshLOD[i]->attbl[ii].colno = LevelMesh[i]->attbl[ii].colno;*/
            }
        }
    }
    else if ((KEY_PRESS(padData, PER_DGT_TR)) && (KEY_PRESS(padData, PER_DGT_TZ)))
    {
        /*extern volatile Uint16 *ErasePolygonData;
        *ErasePolygonData = 0x4501;*/
        unsigned int i, ii;
        for (i=0; i<MDATA.TOTAL_MESH; i++)
        {
            for (ii=0; ii<LevelMesh[i]->nbPolygon; ii++)
            {
                LevelMesh[i]->attbl[ii].dir &= ~FUNC_PolyLine;
                LevelMesh[i]->attbl[ii].dir |= FUNC_Texture;
            }
            for (ii=0; ii<LevelMeshLOD[i]->nbPolygon; ii++)
            {
                LevelMeshLOD[i]->attbl[ii].dir &= ~FUNC_PolyLine;
                LevelMeshLOD[i]->attbl[ii].dir |= FUNC_Texture;
            }
        }
    }
    else if ((KEY_PRESS(padData, PER_DGT_TL)) && (KEY_PRESS(padData, PER_DGT_TR)) && (KEY_PRESS(padData, PER_DGT_TZ)))
    {
        /*extern volatile Uint16 *ErasePolygonData;
        *ErasePolygonData = 0x4501;*/
        unsigned int i, ii;
        for (i=0; i<MDATA.TOTAL_MESH; i++)
        {
            for (ii=0; ii<LevelMesh[i]->nbPolygon; ii++)
            {
                LevelMesh[i]->attbl[ii].atrb |= UseDepth;
            }
            for (ii=0; ii<LevelMeshLOD[i]->nbPolygon; ii++)
            {
                LevelMeshLOD[i]->attbl[ii].atrb |= UseDepth;
            }
        }
    }

}


void controls(player_t * currentPlayer, camera_t * currentCamera)
{
    PerDigital pad = Smpc_Peripheral[currentPlayer->PLAYER_ID];
    if (pad.id == PER_ID_NotConnect) return;
    wireframeDebug(&pad);

    FIXED is_moving;
    if(pad.id == 0x16)
        is_moving = analog_control(currentPlayer, currentCamera, (PerAnalog*)&pad);
	else
        is_moving = digital_control(currentPlayer, currentCamera, &pad);
    //FIXED is_moving = digital_control(currentPlayer, currentCamera, &pad);

    if (is_moving != 0)         accelerate(currentPlayer, is_moving);
    else                        decelerate(currentPlayer);

    if (ABS(currentPlayer->SPEED[X]) < toFIXED(0.005)) currentPlayer->SPEED[X]=0;
    if (ABS(currentPlayer->SPEED[Z]) < toFIXED(0.005)) currentPlayer->SPEED[Z]=0;

buttonsCheck(currentPlayer, &pad);


    if (currentCamera->targetAngle == currentCamera->camAngle[Y])
    {
        if (KEY_PRESS(pad.data, PER_DGT_TL))
            currentCamera->targetAngle += 16384;
        else if (KEY_PRESS(pad.data, PER_DGT_TR))
            currentCamera->targetAngle -= 16384;
    }

    currentPlayer->LAST_INPUTS=pad.data;
}

