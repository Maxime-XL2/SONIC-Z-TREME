#ifndef ZT_COLLISION_H
#define ZT_COLLISION_H

static inline FIXED ztBBCollision(POINT pos1, POINT size1, POINT pos2, POINT size2)
{
    if (pos1[X]-(size1[X]) > (pos2[X]+size2[X])) return 0;
    if (pos1[X]+(size1[X]) < (pos2[X]-size2[X])) return 0;
    if (pos1[Z]-(size1[Z]) > (pos2[Z]+size2[Z])) return 0;
    if (pos1[Z]+(size1[Z]) < (pos2[Z]-size2[Z])) return 0;
    if (pos1[Y]-(size1[Y]) > (pos2[Y]+size2[Y])) return 0;
    if (pos1[Y]+(size1[Y]) < (pos2[Y]-size2[Y])) return 0;
    return 1;
}
void collision_handling(player_t *currentPlayer, Uint32 nbPlayers);

#endif // ZT_COLLISION_H
