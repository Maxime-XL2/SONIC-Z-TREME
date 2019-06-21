#include "ZTE_DEF.h"


#define p_width1 (15<<16)
#define p_width2 (10<<16)
#define p_len (34<<16)
#define p_height (toFIXED(22.05))
#define p_height2 (10<<16)
void groundCollision(player_t * currentPlayer, VECTOR planeNorm, FIXED dist, FIXED distB)
{
        if (distB<=5<<16)
        {
        currentPlayer->POSITION[X]-=slMulFX((distB-p_width2), planeNorm[X]);
        currentPlayer->POSITION[Z]+=slMulFX((distB-p_width2), planeNorm[Z]);
        }



        currentPlayer->STATUS |= V_COLLISION;

        currentPlayer->POSITION[Y]-=slMulFX(dist-p_height, planeNorm[Y]);

        currentPlayer->ROTATION[Z]=slAtan(-planeNorm[Y],planeNorm[X]);
        currentPlayer->ROTATION[X]=slAtan(-planeNorm[Y], planeNorm[Z]);
        currentPlayer->STATUS |= CAN_JUMP;

/***AJOUT SAGE***/
        if (currentPlayer->SPEED[Y] > toFIXED(3.0))
        {
            if (currentPlayer->SPEED[Y] > ABS(currentPlayer->SPEED[X]))
            {
                if ((planeNorm[X] > 0 && currentPlayer->SPEED[X]>=-toFIXED(3.0))||(planeNorm[X] < 0 && currentPlayer->SPEED[X]<=toFIXED(3.0)))
                {
                    currentPlayer->SPEED[X] += slMulFX(MIN(currentPlayer->SPEED[Y], ALT_SPRING),planeNorm[X]);
                   // currentPlayer->POSITION[X] -= slMulFX((dist-p_width1), planeNorm[X]);
                }


            }
            if (currentPlayer->SPEED[Y] > ABS(currentPlayer->SPEED[Z]))
            {
                if ((planeNorm[Z]>0 && currentPlayer->SPEED[Z]>=-toFIXED(3.0))||((planeNorm[Z]<0 && currentPlayer->SPEED[Z]<=toFIXED(3.0))))
                    currentPlayer->SPEED[Z] += slMulFX(MIN(currentPlayer->SPEED[Y], ALT_SPRING),planeNorm[Z]);
            }
        }


            if (currentPlayer->SPEED[Y]>=-toFIXED(1.0)  || distB<=toFIXED(4.0))
        {
            currentPlayer->SPEED[Y]=0;
            currentPlayer->POSITION[Y]+= slMulFX(currentPlayer->SPEED[X]*ZT_FRAMERATE, slSin(currentPlayer->ROTATION[Z]) ) +
                                    slMulFX(currentPlayer->SPEED[Z]*ZT_FRAMERATE, slSin(currentPlayer->ROTATION[X]) );

        }




}

void wallCollision(player_t * currentPlayer, VECTOR planeNorm, FIXED dist)
{
        if (planeNorm[Z] != 0 && ABS(currentPlayer->ROTATION[X]) >= DEGtoANG(35.0))
        {
                if (ABS(currentPlayer->SPEED[Z]) >= toFIXED(4.0))
                {
                    currentPlayer->ROTATION[X] = slAtan(-planeNorm[Y], planeNorm[Z]);
                    currentPlayer->SPEED[Y] +=  slMulFX(currentPlayer->SPEED[Z], slSin(currentPlayer->ROTATION[X]));
                    if (currentPlayer->SPEED[Y] < -PHYS_MAX_SPEED_Y) currentPlayer->SPEED[Y]=-PHYS_MAX_SPEED_Y;
                }
        }

        if (planeNorm[X] != 0 && ABS(currentPlayer->ROTATION[Z]) >= DEGtoANG(35.0))
        {
                if (ABS(currentPlayer->SPEED[X]) >= toFIXED(4.0))
                {
                    currentPlayer->ROTATION[Z] = slAtan(-planeNorm[Y],planeNorm[X]);
                    currentPlayer->SPEED[Y] +=  slMulFX(currentPlayer->SPEED[X], slSin(currentPlayer->ROTATION[Z]) );
                    if (currentPlayer->SPEED[Y] < -PHYS_MAX_SPEED_Y) currentPlayer->SPEED[Y]=-PHYS_MAX_SPEED_Y;
                }
        }
        if (planeNorm[Y] != 0  && (currentPlayer->ROTATION[Z] != 0 || currentPlayer->ROTATION[X] != 0))
        {
            if (currentPlayer->SPEED[Y] <= -toFIXED(4.0))
            {
                if (planeNorm[X]!=0)
                {
                   currentPlayer->SPEED[X] -= slMulFX(MAX(currentPlayer->SPEED[Y],-ALT_SPRING), planeNorm[X]);//slSin(currentPlayer->ROTATION[Z]));
                }
                if (planeNorm[Z]!=0)
                {
                   currentPlayer->SPEED[Z] -= slMulFX(MAX(currentPlayer->SPEED[Y],-ALT_SPRING), planeNorm[Z]);//slSin(currentPlayer->ROTATION[X]));
                }
            }
        }

        if (currentPlayer->SPEED[X]>0 && planeNorm[X] < 0)
        {
            currentPlayer->SPEED[X] +=slMulFX(currentPlayer->SPEED[X], planeNorm[X]);
            currentPlayer->POSITION[X] -= slMulFX((dist-p_width1-65536), planeNorm[X]);
        }
        else if (currentPlayer->SPEED[X]<0 && planeNorm[X] > 0)
        {
            currentPlayer->SPEED[X] -= slMulFX(currentPlayer->SPEED[X], planeNorm[X]);
            currentPlayer->POSITION[X] -= slMulFX((dist-p_width1-65536), planeNorm[X]);
        }

        if (currentPlayer->SPEED[Z]>0 && planeNorm[Z] < 0)
        {
            currentPlayer->SPEED[Z] += slMulFX(currentPlayer->SPEED[Z], planeNorm[Z]);
            currentPlayer->POSITION[Z] -= slMulFX(dist-p_width1-65536, planeNorm[Z]);
        }
        else if (currentPlayer->SPEED[Z]<0 && planeNorm[Z] > 0)
        {
            currentPlayer->SPEED[Z] -= slMulFX(currentPlayer->SPEED[Z], planeNorm[Z]);
            currentPlayer->POSITION[Z] -= slMulFX(dist-p_width1-65536, planeNorm[Z]);
        }

        if (planeNorm[Y]>0 && currentPlayer->SPEED[Y]<= 0) currentPlayer->SPEED[Y]+=slMulFX(-currentPlayer->SPEED[Y], planeNorm[Y]);


/***SAGE-SAFE COLLISION CODE. I changed to the code above like 1 week before submitting my demo...
        if (currentPlayer->SPEED[X]>0 && planeNorm[X] < 0)currentPlayer->SPEED[X]=0;
        else if (currentPlayer->SPEED[X]<0 && planeNorm[X] > 0)currentPlayer->SPEED[X]=0;
        if (currentPlayer->SPEED[Z]>0 && planeNorm[Z] < 0)currentPlayer->SPEED[Z]=0;
        else if (currentPlayer->SPEED[Z]<0 && planeNorm[Z] > 0)currentPlayer->SPEED[Z]=0;

        if (planeNorm[Y]>0 && currentPlayer->SPEED[Y]< 0) currentPlayer->SPEED[Y]+=slMulFX(-currentPlayer->SPEED[Y], planeNorm[Y]);
***/


}


FIXED ztCollision(player_t * currentPlayer, POINT pos1, COLLISION * curCol, FIXED distF, FIXED distB)
{
    /**Need to reproject the point on the plane to test for actual collision. It uses bounding box to test**/
    POINT colRepro;

    if (curCol->norm[Y] < -22000)
    {
        colRepro[X]= curCol->pos[X] + slMulFX(distB, curCol->norm[X]);
        colRepro[Y]= curCol->pos[Y] + slMulFX(distB, curCol->norm[Y]);
        colRepro[Z]= curCol->pos[Z] + slMulFX(distB, curCol->norm[Z]);
        FIXED size1[XYZ]={p_width2, p_height, p_width2};
        if (ztBBCollision(pos1, size1, colRepro, curCol->len)==0) return 0;
            groundCollision(currentPlayer, curCol->norm, distF, distB);
    }
    else
    {
        colRepro[X]= curCol->pos[X] - slMulFX(-distB+p_width1, curCol->norm[X]);
        colRepro[Y]= curCol->pos[Y] - slMulFX(-distB+p_height2, curCol->norm[Y]);
        colRepro[Z]= curCol->pos[Z] - slMulFX(-distB+p_width1, curCol->norm[Z]);
        FIXED size1[XYZ]={p_width1, p_height2, p_width1};
        FIXED altPos[XYZ]={pos1[X], pos1[Y]-p_height2, pos1[Z]};
        if (ztBBCollision(altPos, size1, colRepro, curCol->len)==0) return 0;
        wallCollision(currentPlayer, curCol->norm, distF);
    }


    pos1[X]=currentPlayer->POSITION[X]+currentPlayer->SPEED[X]*ZT_FRAMERATE;
    pos1[Y]=currentPlayer->POSITION[Y]+currentPlayer->SPEED[Y]*ZT_FRAMERATE;
    pos1[Z]=currentPlayer->POSITION[Z]+currentPlayer->SPEED[Z]*ZT_FRAMERATE;
    return 1;
}

/**Might sound dumb, but you need a rough collision check for the stupid player's shadow!**/
FIXED shadowCalculation(POINT pos, POINT planePos, POINT planeLength, FIXED dist, FIXED shadowDist)
{
    if (planePos[Y]-planeLength[Y] > shadowDist) return shadowDist;
    if (pos[Y] > planePos[Y]+planeLength[Y]) return shadowDist;
    if (pos[X] < planePos[X]-planeLength[X]) return shadowDist;
    if (pos[X] > planePos[X]+planeLength[X]) return shadowDist;
    if (pos[Z] < planePos[Z]-planeLength[Z]) return shadowDist;
    if (pos[Z] > planePos[Z]+planeLength[Z]) return shadowDist;
    return pos[Y]+dist;
}

void per_bb_col(int PDATAid, player_t * currentPlayer)
{
    unsigned int i;
    FIXED distB, distF; //FIXED ballDist, ballRadius;
    COLLISION * curCol;
    CDATA * curCDATA = LevelColl[PDATAid];
    Uint32 nbcol = curCDATA->nbCo;

    POINT player_pos;

    player_pos[X]=currentPlayer->POSITION[X]+currentPlayer->SPEED[X]*ZT_FRAMERATE;
    player_pos[Y]=currentPlayer->POSITION[Y]+currentPlayer->SPEED[Y]*ZT_FRAMERATE;
    player_pos[Z]=currentPlayer->POSITION[Z]+currentPlayer->SPEED[Z]*ZT_FRAMERATE;

    for (i=0; i<nbcol; ++i)
    {
        curCol = &curCDATA->cotbl[i];
        if (curCol->att != 0)
        {
            POINT clen; clen[X]=p_height; clen[Y]=p_height; clen[Z]=p_height;
            if (ztBBCollision(player_pos, clen, curCol->pos, curCol->len) == 1)
                {
                    attributebehavior(currentPlayer, curCol->norm, 65536, curCol->att);
                    player_pos[X]=currentPlayer->POSITION[X]+currentPlayer->SPEED[X]*ZT_FRAMERATE;
                    player_pos[Y]=currentPlayer->POSITION[Y]+currentPlayer->SPEED[Y]*ZT_FRAMERATE;
                    player_pos[Z]=currentPlayer->POSITION[Z]+currentPlayer->SPEED[Z]*ZT_FRAMERATE;
                }
            continue;
        }
        //if (slBallCollision(currentPlayer->POSITION, p_len*ZT_FRAMERATE, curCol->pos, MAX(MAX(curCol->len[X],curCol->len[Y]), curCol->len[Z]))<0) continue;

        if (curCol->planeType != 4) //Small optmization : use if it's axis-aligned, we don't need the full dot product
            distB = slMulFX(player_pos[curCol->planeType]-curCol->pos[curCol->planeType],curCol->norm[curCol->planeType]);
        else
            distB=ztCheckOnPlane(player_pos, curCol->pos, curCol->norm);

        if (curCol->norm[Y]<-22000)
          currentPlayer->SHADOW_DIST = shadowCalculation(player_pos, curCol->pos, curCol->len, distB, currentPlayer->SHADOW_DIST);

        if (distB<= (p_height))
        {
            if (curCol->planeType != 4)
            {
                if ((distF = slMulFX(currentPlayer->POSITION[curCol->planeType]-curCol->pos[curCol->planeType],curCol->norm[curCol->planeType])) >= (-5<<16))
                    ztCollision(currentPlayer, player_pos, curCol, distF, distB);
            }
            else if ((distF = ztCheckOnPlane(currentPlayer->POSITION, curCol->pos, curCol->norm))>= (-15<<16) )
                ztCollision(currentPlayer, player_pos, curCol, distF, distB);
        }
    }
}

/**Entity collision : uses sphere collision. You could use bounding boxes too**/
#define sizeEnt (32<<16)
void entityCollision(octree_node_t * curNode, player_t * currentPlayer)
{
    int i;
    FIXED res, dist;
    staticEntity * curEnt=&curNode->entbl[0];
    Uint32 curTime=TIMER;
    Sint16 nbEntities = curNode->nbEntities;
    for (i=0; i<nbEntities; ++i)
    {
        //curEnt=&curNode->entbl[i];
        if (curEnt->status > 0)
        {
            dist = slBallCollision(currentPlayer->POSITION, p_height, curEnt->pos,sizeEnt);
            if (dist >= 0)
            {
                res = attributebehavior(currentPlayer, curEnt->pos, dist, curEnt->id);
                if (res >= 1) //Explosion/particle effect
                {
                    curEnt->status-=res;
                    curEnt->tick=curTime+32;
                }

            }

        }
        *curEnt++;
    }
}


void traverse_octree_col(octree_node_t * curNode, player_t * currentPlayer)
{
    POINT pos;
    pos[X]=curNode->bv.x;
    pos[Y]=curNode->bv.y;
    pos[Z]=curNode->bv.z;

     if (currentPlayer->POSITION[X]-(64<<16)+currentPlayer->SPEED[X] <= pos[X]+curNode->bv.length && currentPlayer->POSITION[X]+(64<<16)+currentPlayer->SPEED[X] >= pos[X]-curNode->bv.length)
    {
        if (currentPlayer->POSITION[Z]-(64<<16)+currentPlayer->SPEED[Z] <= pos[Z]+curNode->bv.length && currentPlayer->POSITION[Z]+(64<<16)+currentPlayer->SPEED[Z] >= pos[Z]-curNode->bv.length)
        {
            if (currentPlayer->POSITION[Y]-(48<<16) <= pos[Y]+curNode->bv.length && currentPlayer->POSITION[Y]+(48<<16) >= pos[Y]-curNode->bv.length)
            {
                if (curNode->PDATAid >= 0)
                {
                    //curNode->parentID &= ~IS_LIGHTED;
                    if (curNode->parentID & IS_SINGLE_PLANE_NODE)
                    {
                        POINT newPos;
                        newPos[X]=currentPlayer->POSITION[X]+currentPlayer->SPEED[X]*ZT_FRAMERATE;
                        newPos[Y]=currentPlayer->POSITION[Y]+currentPlayer->SPEED[Y]*ZT_FRAMERATE;
                        newPos[Z]=currentPlayer->POSITION[Z]+currentPlayer->SPEED[Z]*ZT_FRAMERATE;
                        CDATA * curCDATA = LevelColl[curNode->PDATAid];
                        if (curCDATA->nbCo !=0)
                        {
                            COLLISION * curCol = &curCDATA->cotbl[0];
                            if (ztCheckOnPlane(newPos, curCol->pos, curCol->norm) <= p_height)
                                per_bb_col(curNode->PDATAid, currentPlayer);
                        }
                    }
                    else
                        per_bb_col(curNode->PDATAid, currentPlayer);
                }

                else
                {
                    int i;
                    for (i=0; i<8; ++i)
                    {
                        if (curNode->child[i] >= 0)
                        {
                            octree_node_t * childNode = nodes[curNode->child[i]];
                            traverse_octree_col(childNode, currentPlayer);
                        }
                    }
                }
                if (curNode->nbEntities > 0)
                    entityCollision(curNode, currentPlayer);

            }
        }
    }
}

/**Quick function for bouncing the player when you hit the other player in 2 players games **/
void attackHits(player_t * currentPlayer)
{
    currentPlayer->SPEED[X]=slMulFX(currentPlayer->SPEED[X], toFIXED(0.7));
    currentPlayer->SPEED[Z]=slMulFX(currentPlayer->SPEED[Z], toFIXED(0.7));
    if (currentPlayer->SPEED[Y] > 0)
        currentPlayer->SPEED[Y]=-currentPlayer->SPEED[Y];
    else
        currentPlayer->SPEED[Y]+=toFIXED(2.0);
}

/**Rough "physics" for 2 players gameplay**/
void attackBBack(player_t * currentPlayer, player_t * otherPlayer)
{
    currentPlayer->SPEED[Y]=-PHYS_JUMP_SPEED_Y;
    otherPlayer->SPEED[Y]=-PHYS_JUMP_SPEED_Y;

    ANGLE b = slAtan(currentPlayer->POSITION[X]-otherPlayer->POSITION[X],currentPlayer->POSITION[Z]-otherPlayer->POSITION[Z]);

    currentPlayer->SPEED[X]=slMulFX(slCos(b), toFIXED(7.5));
    currentPlayer->SPEED[Z]=slMulFX(slSin(b), toFIXED(7.5));
    currentPlayer->INVINCIBLE=60;

    otherPlayer->SPEED[X]=slMulFX(slCos(b+32768), toFIXED(7.5));
    otherPlayer->SPEED[Z]=slMulFX(slSin(b+32768), toFIXED(7.5));
    otherPlayer->INVINCIBLE=60;
}

void attack(player_t * currentPlayer, player_t * target)
{
    FIXED dist = slBallCollision(currentPlayer->POSITION , toFIXED(20.0) , target->POSITION, toFIXED(20.0)) ;

    if (dist >= 0)
    {
        if (target->STATUS & IS_SPINNING || target->STATUS & SPIN_DASH)
        {
            attackBBack(currentPlayer, target);
        }
        else
        {
            attackHits(currentPlayer);
            playerHurt(target, 0);
        }

    }
}

/**The Sonic Z-Treme spefic code should be moved elsewhere...**/
void collision_handling(player_t *currentPlayer, Uint32 nbPlayers)
{
    currentPlayer->SHADOW_DIST=0x7fffffff;  //Make the shadow far below in case no collision is detected
    currentPlayer->STATUS &= ~V_COLLISION;
    #ifndef USE_GRID //Left-overs from when I used a uniform grid back in 2017
    traverse_octree_col(nodes[0], currentPlayer);
    #else
    currentPlayer->STATUS |= V_COLLISION;
    #endif // USE_GRID

    if (PLAYER_1.INVINCIBLE>0 || PLAYER_2.INVINCIBLE>0) return;
    if ((currentPlayer->STATUS & IS_SPINNING || currentPlayer->STATUS & SPIN_DASH) && nbPlayers > 1) //Cheap way to fire the weapon for now. It also means it goes through walls!
    {
        if (currentPlayer->PLAYER_ID==0)
            attack(currentPlayer, &PLAYER_2);
        else
            attack(currentPlayer, &PLAYER_1);
    }
}

