#ifndef GAME_H
#define GAME_H

extern int mapId;

void    ztReset(player_t *currentPlayer);
void    ztLoadPermanentAssets(Uint32 nbPlayers);
void    playerHurt(player_t * currentPlayer, bool autodeath);
void    update_camera(player_t * currentPlayer, camera_t * currentCam);
void    main_loop(Uint32 nbPlayers);
FIXED attributebehavior(player_t * currentPlayer, VECTOR planeNorm, FIXED dist, Sint16 passedAttr);

#endif // GAME_H
