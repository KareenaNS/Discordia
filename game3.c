#include "gba.h"
#include "game.h"
#include <stdlib.h>
#include "dedeffect.h"
#include "sound.h"

PLAYER player3;
int hOff3;
int bites3;
int vOff3;
int mapWidth3;
OBJ_ATTR shadowOAM[128];
ENEMY enemyy;
ENEMY enemyyy;
ENEMY enemyyyy;

void initPlayer3() {
    player3.x = 8;
    player3.y = 112;
    player3.xVel = 1;
    player3.yVel = 1;
    player3.width = 16;
    player3.height = 16;
    player3.hide = 0;
    player3.attack = 0;
    player3.active = 1;
    player3.isJumping = 0;
    player3.jumpAccel = 1;
    player3.jumpDeccel = 1;
    player3.jumpHeight = 40;
    player3.jumpSpeed = 0.5;
    player3.jumpStart;
    player3.direction = RIGHT;
    player3.numOfFrames = 4;
    player3.numFramesAttack = 2;
    player3.timeNextAttack = 10;
    player3.timeUntilNextFrame = 10;
    player3.cheat = 0;
}
void initEnemy3() {
    enemyy.x = (rand() % 121 + 120 - enemyy.width);
    enemyyy.x = (rand() % 121 + 120 - enemyy.width);
    enemyyyy.x = (rand() % 121 + 120 - enemyy.width);

    enemyy.y = player3.y;
    enemyyy.y = player3.y;
    enemyyyy.y = player3.y;

    enemyy.numOfFrames = 3;
    enemyyy.numOfFrames = 3;
    enemyyyy.numOfFrames = 3;

    enemyy.height = 16;
    enemyyy.height = 16;
    enemyyyy.height = 16;

    enemyy.width = 16;
    enemyyy.width = 16;
    enemyyyy.width = 16;

    enemyy.hide = 0;
    enemyyy.hide = 0;
    enemyyyy.hide = 0;

    enemyy.xVel = 1;
    enemyyy.xVel = 1;
    enemyyyy.xVel = 1;

    enemyy.yVel = 1;
    enemyyy.yVel = 1;
    enemyyyy.yVel = 1;

    enemyy.active = 1;
    enemyyy.active = 1;
    enemyyyy.active = 1;

    enemyy.timeUntilNextFrame = 10;
    enemyyy.timeUntilNextFrame = 10;
    enemyyyy.timeUntilNextFrame = 10;

    enemyy.aniCounter = 10;
    enemyyy.aniCounter = 10;
    enemyyyy.aniCounter = 10;

    enemyy.frame = 4;
    enemyyy.frame = 4;
    enemyyyy.frame = 4;

    enemyy.isHit = 0;
    enemyyy.isHit = 0;
    enemyyyy.isHit = 0;
}

void initGame3() {
    vOff3 = 0;
    hOff3 = 0;
    initPlayer3();
    initEnemy3();
    bites3 = bites;
    mapWidth3 = 305;
}

void drawPlayer3() {
    if (player3.active) {
        if (player3.isMoving) {
            player3.timeUntilNextFrame--; //the tileid x values are 16, 20, 24, 28
            if (player3.timeUntilNextFrame == 0) {
                player3.timeUntilNextFrame = 10;
                player3.currentFrame = (player3.currentFrame + 1) % player3.numOfFrames; //(0 + 4) % 4 =
            }
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player3.currentFrame*4, 0);
        } else if (player3.attack == 1 && player3.isMoving == 0) {
            if (player3.currentFrame < player3.numFramesAttack - 1) {
                player3.currentFrame++;
            } else {
                player3.attack = 0; // Attack animation has ended
            }
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16 + player3.currentFrame * 4, 0);
        } else if (player3.cheat == 1 && (player3.isMoving) && (BUTTON_PRESSED(BUTTON_LEFT) || BUTTON_PRESSED(BUTTON_RIGHT))) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 9);
        } else {
            player3.currentFrame = 0;
        }
        shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player3.y);
        shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(player3.x);
        if (player3.direction == RIGHT) {
            shadowOAM[0].attr1 |= ATTR1_HFLIP;
        }
    } else {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    }
}
void drawEnemy3() {
    if (enemyy.active) {
        if (enemyy.isHit == 0) {
            enemyy.timeUntilNextFrame--;
            if (enemyy.timeUntilNextFrame == 0) {
                enemyy.timeUntilNextFrame = 10;
                enemyy.currFrame = (enemyy.currFrame + 1) % enemyy.numOfFrames; // 0 % 3
            }
            shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyy.currFrame*4, 4);
        } else {
            enemyy.aniCounter--;
            if (enemyy.aniCounter == 0) {
                enemyy.active = 0;
                enemyy.aniCounter = 10;
                enemyy.currentFrame = (enemyy.currentFrame + 1) % enemyy.frame;
            }
            shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyy.currentFrame*4, 9);
        }
        shadowOAM[1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemyy.y);
        shadowOAM[1].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemyy.x) | ATTR1_HFLIP;

        //shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);
    }
    else {
        shadowOAM[1].attr0 |= ATTR0_HIDE;
    }

    if (enemyyy.active) {
        if (enemyyy.isHit == 0) {
            enemyyy.timeUntilNextFrame--;
            if (enemyyy.timeUntilNextFrame == 0) {
                enemyyy.timeUntilNextFrame = 10;
                enemyyy.currFrame = (enemyyy.currFrame + 1) % enemyyy.numOfFrames; // 0 % 3
            }
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyyy.currFrame*4, 4);
        } else {
            enemyyy.aniCounter--;
            if (enemyyy.aniCounter == 0) {
                enemyyy.aniCounter = 10;
                enemyyy.currentFrame = (enemyyy.currentFrame + 1) % enemyyy.frame;
            }
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyyy.currentFrame*4, 9);
            enemyyy.active = 0;
        }
        shadowOAM[2].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemyyy.y);
        shadowOAM[2].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemyyy.x) | ATTR1_HFLIP;
    }
    else {
        shadowOAM[2].attr0 |= ATTR0_HIDE;
    }

    if (enemyyyy.active) {
        if (enemyyyy.isHit == 0) {
            enemyyyy.timeUntilNextFrame--;
            if (enemyyyy.timeUntilNextFrame == 0) {
                enemyyyy.timeUntilNextFrame = 10;
                enemyyyy.currFrame = (enemyyyy.currFrame + 1) % enemyyyy.numOfFrames; // 0 % 3
            }
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyyyy.currFrame*4, 4);
        } else {
            enemyyyy.aniCounter--;
            if (enemyyyy.aniCounter == 0) {
                enemyyyy.aniCounter = 10;
                enemyyyy.currentFrame = (enemyyyy.currentFrame + 1) % enemyyyy.frame;
            }
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyyyy.currentFrame*4, 9);
            enemyyyy.active = 0;
        }
        shadowOAM[3].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemyyyy.y);
        shadowOAM[3].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemyyyy.x) | ATTR1_HFLIP;
    }
    else {
        shadowOAM[3].attr0 |= ATTR0_HIDE;
    }
}

void drawGame3() {
    if (BUTTON_HELD(BUTTON_DOWN) && player3.isMoving && player3.active) {
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 9);
    } else {
        drawPlayer3();
    }
    drawEnemy3();
    drawBites3();

    REG_BG0HOFF = hOff3;
    REG_BG0VOFF = vOff3;

    //for spelling bites
    shadowOAM[120].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[120].attr1 = ATTR1_TINY | ATTR1_X(2 + hOff);
    shadowOAM[120].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 5);

    shadowOAM[121].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[121].attr1 = ATTR1_TINY | ATTR1_X(10 + hOff);
    shadowOAM[121].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 5);

    shadowOAM[122].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[122].attr1 = ATTR1_TINY | ATTR1_X(18 + hOff);
    shadowOAM[122].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(19, 5);

    shadowOAM[123].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[123].attr1 = ATTR1_TINY | ATTR1_X(26 + hOff);
    shadowOAM[123].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 5);

    shadowOAM[124].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[124].attr1 = ATTR1_TINY | ATTR1_X(34 + hOff);
    shadowOAM[124].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(21, 5);

    shadowOAM[125].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[125].attr1 = ATTR1_TINY | ATTR1_X(42 + hOff);
    shadowOAM[125].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(22, 5);

    DMANow(3, shadowOAM, OAM, 128*4);}

void updatePlayer3() {
    player3.isMoving = 0; //var for animating sprite later
    if (BUTTON_HELD(BUTTON_LEFT) && player3.x >= -4) {
        player3.direction = LEFT;
        player3.isMoving = 1;
        player3.x -= player3.xVel;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && (player3.x < mapWidth3)) {
        player3.isMoving = 1;
        player3.x += player3.xVel;
        player3.direction = RIGHT;
    }

    if (BUTTON_HELD(BUTTON_DOWN)) {
        player3.y = 35;
        player3.cheat = 1;
    }

    if (BUTTON_PRESSED(BUTTON_A) && (enemyy.active || enemyyy.active || enemyyyy.active)
            && (player3.attack != 1) && ((enemyy.x - player3.x) <= 25
            || ((enemyyy.x - player3.x) <= 25) || ((enemyyyy.x - player3.x) <= 25))) {
        player3.attack = 1;
    }

    if (BUTTON_PRESSED(BUTTON_UP) && player3.isJumping == 0) {
        player3.isJumping = 1;
        player3.jumpStart = player3.y;
        player3.jumpSpeed = -7;
    }
    jump3();

    if (player3.active == 0) {
        goToLose();
    }

    if ((enemyy.active == 0) && (enemyyy.active == 0) && (enemyyyy.active == 0)) {
        player3.attack = 0;
    }
}
void updateEnemy3() {
    if (enemyy.active == 1) {
        if (player3.attack == 1 && ((enemyy.x - player3.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            enemyy.active = 0;
            enemyy.hide = 1;
            player3.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player3.x < enemyy.x && enemyy.x > 0) {
            enemyy.x -= 1;
        }

        if (collision(player3.x, player3.y, player3.width, player3.height,
                enemyy.x, enemyy.y, enemyy.width, enemyy.height) == 1) {
            bites -= 1;
            player3.x = 8;
            enemyy.x = (rand() % 121 + 120 - enemyy.width);
            if (bites == 0) {
                player3.active = 0;
            }
        }
    }

    if (enemyyy.active == 1) {
        if (player3.attack == 1 && ((enemyyy.x - player3.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            enemyyy.active = 0;
            enemyyy.hide = 1;
            player3.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player3.x < enemyyy.x && enemyyy.x > 0) {
            enemyyy.x -= 0.5;
        }

        if (collision(player3.x, player3.y, player3.width, player3.height,
                enemyyy.x, enemyyy.y, enemyyy.width, enemyyy.height) == 1) {
            bites -= 1;
            player3.x = 8;
            enemyyy.x = (rand() % 121 + 120 - enemyyy.width);
            if (bites == 0) {
                player3.active = 0;
            }
        }
    }

    if (enemyyyy.active == 1) {
        if (player3.attack == 1 && ((enemyyyy.x - player3.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            enemyyyy.active = 0;
            enemyyyy.hide = 1;
            player3.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player3.x < enemyyyy.x && enemyyyy.x > 0) {
            enemyyyy.x -= 0.75;
        }

        if (collision(player3.x, player3.y, player3.width, player3.height,
                enemyyyy.x, enemyyyy.y, enemyyyy.width, enemyyyy.height) == 1) {
            bites -= 1;
            player3.x = 8;
            enemyyyy.x = (rand() % 121 + 120 - enemyyyy.width);
            if (bites == 0) {
                player3.active = 0;
            }
        }
    }
}
void updateGame3() {
    updatePlayer3();
    updateEnemy3();

    if (player3.x > (mapWidth3 / 2) && (hOff3 + SCREENWIDTH) < mapWidth3) {
        hOff3 = player3.x - (mapWidth3 / 2);
    }

    // Handle screen wrapping
    if (hOff3 < 0) {
        hOff3 = 0;
    }
    if (hOff3 > mapWidth3 - SCREENWIDTH) {
        hOff3 = mapWidth3 - SCREENWIDTH;
    }
    if (vOff3 < 0) {
        vOff3 = 0;
    }
    if (vOff3 > MAPHEIGHT - SCREENHEIGHT) {
        vOff3 = MAPHEIGHT - SCREENHEIGHT;
    }
}

void jump3() {
    // apply gravity to the player when jumping or falling
    if (player3.isJumping == 1) {
        player3.y += player3.jumpSpeed;
        player3.jumpSpeed += player3.jumpAccel;
        int jumpDistance = player3.y - player3.jumpStart;
        if (jumpDistance >= player3.jumpHeight) {
            player3.jumpSpeed -= player3.jumpDeccel;
            if (player3.jumpSpeed <= 0) {
                player3.isJumping = 0;
                player3.y = player3.jumpStart + player3.jumpHeight;
            }
        } else if (player3.y >= player3.jumpStart) {
            player3.isJumping = 0;
            player3.y = player3.jumpStart;
        }
    }
}

void drawBites3() {
    shadowOAM[4].attr0 |= ATTR0_HIDE;
    shadowOAM[5].attr0 |= ATTR0_HIDE;
    shadowOAM[6].attr0 |= ATTR0_HIDE;
    if (bites == 1) {
        shadowOAM[8].attr0 |= ATTR0_HIDE;
        shadowOAM[9].attr0 |= ATTR0_HIDE;
        shadowOAM[7].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[7].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff);
        shadowOAM[7].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(23, 5);
    }
    if (bites == 2) {
        shadowOAM[7].attr0 |= ATTR0_HIDE;
        shadowOAM[9].attr0 |= ATTR0_HIDE;
        shadowOAM[8].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[8].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff);
        shadowOAM[8].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(24, 5);
    }
    if (bites == 3) {
        shadowOAM[7].attr0 |= ATTR0_HIDE;
        shadowOAM[8].attr0 |= ATTR0_HIDE;
        shadowOAM[9].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[9].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff);
        shadowOAM[9].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(25, 5);
    }
    if (bites == 0) {
        shadowOAM[7].attr0 |= ATTR0_HIDE;
        shadowOAM[8].attr0 |= ATTR0_HIDE;
        shadowOAM[9].attr0 |= ATTR0_HIDE;
        player3.active = 0;
    }
}