#include "gba.h"
#include "game.h"
#include <stdlib.h>
//#include "sound.h"
#include <stdio.h>
#include "dedeffect.h"

PLAYER player2;
int hOff2;
int bites2;
int vOff2;
int mapWidth2;
int enemynum2;
OBJ_ATTR shadowOAM[128];
ENEMY enemy01;
ENEMY enemy02;
ENEMY enemy03;

void initGame2() {
    vOff2 = 0;
    hOff2 = 0;
    initPlayer2();
    initEnemy2();
    bites2 = bites;
    mapWidth2 = 512;
}

void initPlayer2() {
    player2.y = 94 - 12;
    player2.x = 8;
    player2.xVel = 1;
    player2.yVel = 1;
    player2.width = 16;
    player2.height = 16;
    player2.hide = 0;
    player2.attack = 0;
    player2.active = 1;
    player2.isJumping = 0;
    player2.jumpAccel = 1;
    player2.jumpDeccel = 1;
    player2.jumpHeight = 40;
    player2.jumpSpeed = 0.5;
    player2.jumpStart;
    player2.direction = RIGHT;
    player2.numOfFrames = 4;
    player2.numFramesAttack = 2;
    player2.timeNextAttack = 10;
    player2.timeUntilNextFrame = 10;
    player2.cheat = 35;
}

void initEnemy2() {
    enemy01.x = (rand() % 121 + 120 - enemy01.width);
    enemy02.x = (rand() % 121 + 120 - enemy02.width);
    enemy03.x = (rand() % 121 + 120 - enemy03.width);

    enemy01.timeUntilNextFrame = 10;
    enemy02.timeUntilNextFrame = 10;
    enemy03.timeUntilNextFrame = 10;

    enemy01.numOfFrames = 3;
    enemy02.numOfFrames = 3;
    enemy03.numOfFrames = 3;

    enemy01.y = player2.y;
    enemy02.y = player2.y;
    enemy03.y = player2.y;

    enemy01.height = 16;
    enemy02.height = 16;
    enemy03.height = 16;

    enemy01.width = 16;
    enemy02.width = 16;
    enemy03.width = 16;

    enemy01.hide = 0;
    enemy02.hide = 0;
    enemy03.hide = 0;

    enemy01.xVel = 1;
    enemy02.xVel = 1;
    enemy03.xVel = 1;

    enemy01.yVel = 1;
    enemy02.yVel = 1;
    enemy03.yVel = 1;

    enemy01.active = 1;
    enemy02.active = 1;
    enemy03.active = 1;

    enemy01.aniCounter = 10;
    enemy02.aniCounter = 10;
    enemy03.aniCounter = 10;

    enemy01.frame = 4;
    enemy02.frame = 4;
    enemy03.frame = 4;

    enemy01.isHit = 0;
    enemy02.isHit = 0;
    enemy03.isHit = 0;
}

void updateGame2() {
    updatePlayer2();
    updateEnemy2();

    if (player2.x + (SCREENWIDTH/2) < mapWidth2) {
        hOff2 = player2.x;
    }

    // Handle screen wrapping
    if (hOff2 < 0) {
        hOff2 = 0;
    }
    if (hOff2 > mapWidth2 - SCREENWIDTH) {
        hOff2 = mapWidth2 - SCREENWIDTH;
    }
}

void updatePlayer2() {
    player2.isMoving = 0; //var for animating sprite later

    if (BUTTON_HELD(BUTTON_LEFT) && player2.x >= -4) {
        player2.direction = LEFT;
        player2.isMoving = 1;
        player2.x -= player2.xVel;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && player2.x < mapWidth2) {
        player2.direction = RIGHT;
        player2.isMoving = 1;
        player2.x += player2.xVel;
    }

    if (BUTTON_HELD(BUTTON_DOWN)) {
        player2.y = 35;
    }

    if (BUTTON_PRESSED(BUTTON_A) && (enemy01.active || enemy02.active || enemy03.active)
            && (player2.attack != 1) && ((enemy01.x - player2.x) <= 25
            || ((enemy02.x - player2.x) <= 25) || ((enemy03.x - player2.x) <= 25))) {
        player2.attack = 1;
    }

    if (BUTTON_PRESSED(BUTTON_UP) && player2.isJumping == 0) {
        player2.isJumping = 1;
        player2.jumpStart = player2.y;
        player2.jumpSpeed = -7;
    }
    jump2();

    if (player2.active == 0) {
        goToLose();
    }

    if ((enemy01.active == 0) && (enemy02.active == 0) && (enemy03.active == 0)) {
        player2.attack = 0;
    }
}

void updateEnemy2() {
    if (enemy01.active == 1) {
        if (player2.attack == 1 && ((enemy01.x - player2.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            enemy01.active = 0;
            enemy01.hide = 1;
            player2.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player2.x < enemy01.x && enemy01.x > 0) {
            enemy01.x -= 2;
        }

        if (collision(player2.x, player2.y, player2.width, player2.height,
                enemy01.x, enemy01.y, enemy01.width, enemy01.height) == 1) {
            bites -= 1;
            player2.x = 8;
            enemy01.x = (rand() % 121 + 120 - enemy01.width);
            if (bites == 0) {
                player2.active = 0;
            }
        }
    }

    if (enemy02.active == 1) {
        if (player2.attack == 1 && ((enemy02.x - player2.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            enemy02.active = 0;
            enemy02.hide = 1;
            player2.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player2.x < enemy02.x && enemy02.x > 0) {
            enemy02.x -= 1;
        }

        if (collision(player2.x, player2.y, player2.width, player2.height,
                enemy02.x, enemy02.y, enemy02.width, enemy02.height) == 1) {
            bites -= 1;
            player2.x = 8;
            enemy02.x = (rand() % 121 + 120 - enemy02.width);
            if (bites == 0) {
                player2.active = 0;
            }
        }
    }

    if (enemy03.active == 1) {
        if (player2.attack == 1 && ((enemy03.x - player2.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            enemy03.active = 0;
            enemy03.hide = 1;
            player2.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player2.x < enemy03.x && enemy03.x > 0) {
            enemy03.x -= 1.5;
        }

        if (collision(player2.x, player2.y, player2.width, player2.height,
                enemy03.x, enemy03.y, enemy03.width, enemy03.height) == 1) {
            bites -= 1;
            player2.x = 8;
            enemy03.x = (rand() % 121 + 120 - enemy03.width);
            if (bites == 0) {
                player2.active = 0;
            }
        }
    }
}

void jump2() {
    // apply gravity to the player when jumping or falling
    if (player2.isJumping == 1) {
        player2.y += player2.jumpSpeed;
        player2.jumpSpeed += player2.jumpAccel;
        int jumpDistance = player2.y - player2.jumpStart;
        if (jumpDistance >= player2.jumpHeight) {
            player2.jumpSpeed -= player2.jumpDeccel;
            if (player2.jumpSpeed <= 0) {
                player2.isJumping = 0;
                player2.y = player2.jumpStart + player2.jumpHeight;
            }
        } else if (player2.y >= player2.jumpStart) {
            player2.isJumping = 0;
            player2.y = player2.jumpStart;
        }
    }
}

void drawGame2() {

    if (BUTTON_HELD(BUTTON_DOWN) && player2.isMoving && player2.active) {
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 9);
    } else {
        drawPlayer2();
    }
    drawEnemy2();
    drawBites2();

    //waitForVBlank();

    REG_BG0HOFF = hOff2;
    REG_BG0VOFF = vOff2;

    //for spelling bites
    shadowOAM[120].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[120].attr1 = ATTR1_TINY | ATTR1_X(2 + hOff2);
    shadowOAM[120].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 5);

    shadowOAM[121].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[121].attr1 = ATTR1_TINY | ATTR1_X(10 + hOff2);
    shadowOAM[121].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 5);

    shadowOAM[122].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[122].attr1 = ATTR1_TINY | ATTR1_X(18 + hOff2);
    shadowOAM[122].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(19, 5);

    shadowOAM[123].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[123].attr1 = ATTR1_TINY | ATTR1_X(26 + hOff2);
    shadowOAM[123].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 5);

    shadowOAM[124].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[124].attr1 = ATTR1_TINY | ATTR1_X(34 + hOff2);
    shadowOAM[124].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(21, 5);

    shadowOAM[125].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(0);
    shadowOAM[125].attr1 = ATTR1_TINY | ATTR1_X(42 + hOff2);
    shadowOAM[125].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(22, 5);

    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawEnemy2() {
    if (enemy01.active) {
        if (enemy01.isHit == 0) {
            enemy01.timeUntilNextFrame--;
            if (enemy01.timeUntilNextFrame == 0) {
                enemy01.timeUntilNextFrame = 10;
                enemy01.currFrame = (enemy01.currFrame + 1) % enemy01.numOfFrames; // 0 % 3
            }
            shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy01.currFrame*4, 4);
        } else {
            enemy01.aniCounter--;
            if (enemy01.aniCounter == 0) {
                enemy01.active = 0;
                enemy01.aniCounter = 10;
                enemy01.currentFrame = (enemy01.currentFrame + 1) % enemy01.frame;
            }
            shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy01.currentFrame*4, 9);
        }
        shadowOAM[1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemy01.y);
        shadowOAM[1].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemy01.x) | ATTR1_HFLIP;

        //shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);
    }
    else {
        shadowOAM[1].attr0 |= ATTR0_HIDE;
    }

    if (enemy02.active) {
        if (enemy02.isHit == 0) {
            enemy02.timeUntilNextFrame--;
            if (enemy02.timeUntilNextFrame == 0) {
                enemy02.timeUntilNextFrame = 10;
                enemy02.currFrame = (enemy02.currFrame + 1) % enemy02.numOfFrames; // 0 % 3
            }
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy02.currFrame*4, 4);
        } else {
            enemy02.aniCounter--;
            if (enemy02.aniCounter == 0) {
                enemy02.aniCounter = 10;
                enemy02.currentFrame = (enemy02.currentFrame + 1) % enemy02.frame;
            }
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy02.currentFrame*4, 9);
            enemy02.active = 0;
        }
        shadowOAM[2].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemy02.y);
        shadowOAM[2].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemy02.x) | ATTR1_HFLIP;
    }
    else {
        shadowOAM[2].attr0 |= ATTR0_HIDE;
    }


    if (enemy03.active) {
        if (enemy03.isHit == 0) {
            enemy03.timeUntilNextFrame--;
            if (enemy03.timeUntilNextFrame == 0) {
                enemy03.timeUntilNextFrame = 10;
                enemy03.currFrame = (enemy03.currFrame + 1) % enemy03.numOfFrames; // 0 % 3
            }
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy03.currFrame*4, 4);
        } else {
            enemy03.aniCounter--;
            if (enemy03.aniCounter == 0) {
                enemy03.aniCounter = 10;
                enemy03.currentFrame = (enemy03.currentFrame + 1) % enemy03.frame;
            }
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy03.currentFrame*4, 9);
            enemy03.active = 0;
        }
        shadowOAM[3].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemy03.y);
        shadowOAM[3].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemy03.x) | ATTR1_HFLIP;
    }
    else {
        shadowOAM[3].attr0 |= ATTR0_HIDE;
    }
}

void drawPlayer2() {
    if (player2.active) {
        if (player2.isMoving) {
            player2.timeUntilNextFrame--; //the tileid x values are 16, 20, 24, 28
            if (player2.timeUntilNextFrame == 0) {
                player2.timeUntilNextFrame = 10;
                player2.currentFrame = (player2.currentFrame + 1) % player2.numOfFrames; //(0 + 4) % 4 =
            }
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player2.currentFrame*4, 0);
        } else if (player2.attack == 1 && player2.isMoving == 0) {
            if (player2.currentFrame < player2.numFramesAttack - 1) {
                player2.currentFrame++;
            } else {
                player2.attack = 0; // Attack animation has ended
            }
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16 + player2.currentFrame * 4, 0);
        } else if (BUTTON_PRESSED(BUTTON_DOWN) && (BUTTON_PRESSED(BUTTON_LEFT) || BUTTON_PRESSED(BUTTON_RIGHT))) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 9);
        } else {
            player2.currentFrame = 0;
        }
        shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player2.y);
        shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(player2.x);
        if (player2.direction == RIGHT) {
            shadowOAM[0].attr1 |= ATTR1_HFLIP;
        }
    } else {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    }
}

void drawBites2() {
    shadowOAM[4].attr0 |= ATTR0_HIDE;
    shadowOAM[5].attr0 |= ATTR0_HIDE;
    shadowOAM[6].attr0 |= ATTR0_HIDE;
    shadowOAM[7].attr0 |= ATTR0_HIDE;
    shadowOAM[8].attr0 |= ATTR0_HIDE;
    shadowOAM[9].attr0 |= ATTR0_HIDE;
    if (bites == 1) {
        shadowOAM[11].attr0 |= ATTR0_HIDE;
        shadowOAM[12].attr0 |= ATTR0_HIDE;
        shadowOAM[10].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[10].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff2);
        shadowOAM[10].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(23, 5);
    }
    if (bites == 2) {
        shadowOAM[10].attr0 |= ATTR0_HIDE;
        shadowOAM[12].attr0 |= ATTR0_HIDE;
        shadowOAM[11].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[11].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff2);
        shadowOAM[11].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(24, 5);
    }
    if (bites == 3) {
        shadowOAM[10].attr0 |= ATTR0_HIDE;
        shadowOAM[11].attr0 |= ATTR0_HIDE;
        shadowOAM[12].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[12].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff2);
        shadowOAM[12].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(25, 5);
    }
    if (bites == 0) {
        shadowOAM[10].attr0 |= ATTR0_HIDE;
        shadowOAM[11].attr0 |= ATTR0_HIDE;
        shadowOAM[12].attr0 |= ATTR0_HIDE;
        player2.active = 0;
    }
}