#include "gba.h"
#include "game.h"
#include <stdlib.h>
#include <stdio.h>
#include "dedeffect.h"
#include "mode0.h"

PLAYER player;
int hOff;
int bites;
int vOff;
int hoff;
int voff;
int enemynum;
OBJ_ATTR shadowOAM[128];
ENEMY enemy;
ENEMY enemy2;
ENEMY enemy3;
//maybe implement 3 different enemy things.

void initGame() {
    vOff = 0;
    hOff = 0;
    initPlayer();
    initEnemy();
    bites = BITES;
    enemynum = 0;
}

void initPlayer() {
    player.y = 94 - 12;
    player.x = 8;
    player.xVel = 1;
    player.yVel = 1;
    player.width = 16;
    player.height = 16;
    player.hide = 0;
    player.attack = 0;
    player.active = 1;
    player.isJumping = 0;
    player.jumpAccel = 1;
    player.jumpDeccel = 1;
    player.jumpHeight = 50;
    player.jumpSpeed = 0.5;
    player.jumpStart;
    player.direction = RIGHT;
    player.numOfFrames = 4;
    player.numFramesAttack = 2;
    player.timeNextAttack = 10;
    player.timeUntilNextFrame = 10;
}

void initEnemy() {
    enemy.x = (rand() % 121 + 120 - enemy.width);
    enemy2.x = (rand() % 121 + 120 - enemy.width);
    enemy3.x = (rand() % 121 + 120 - enemy.width);

    enemy.y = player.y;
    enemy2.y = player.y;
    enemy3.y = player.y;

    enemy.numOfFrames = 3;
    enemy2.numOfFrames = 3;
    enemy3.numOfFrames = 3;

    enemy.height = 16;
    enemy2.height = 16;
    enemy3.height = 16;

    enemy.width = 16;
    enemy2.width = 16;
    enemy3.width = 16;

    enemy.hide = 0;
    enemy2.hide = 0;
    enemy3.hide = 0;

    enemy.xVel = 1;
    enemy2.xVel = 1;
    enemy3.xVel = 1;

    enemy.yVel = 1;
    enemy2.yVel = 1;
    enemy3.yVel = 1;

    enemy.active = 1;
    enemy2.active = 1;
    enemy3.active = 1;

    enemy.timeUntilNextFrame = 10;
    enemy2.timeUntilNextFrame = 10;
    enemy3.timeUntilNextFrame = 10;

    enemy.aniCounter = 10;
    enemy2.aniCounter = 10;
    enemy3.aniCounter = 10;

    enemy.frame = 4;
    enemy2.frame = 4;
    enemy3.frame = 4;

    enemy.isHit = 0;
    enemy2.isHit = 0;
    enemy3.isHit = 0;
}

void updateGame() {
    updatePlayer();
    updateEnemy();
    hOff = player.x - SCREENWIDTH/2;
    vOff = player.y - SCREENHEIGHT/2;

    // Handle screen wrapping
    if (hOff < 0) {
        hOff = 0;
    }
    if (hOff > MAPWIDTH - SCREENWIDTH) {
        hOff = MAPWIDTH - SCREENWIDTH;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (vOff > MAPHEIGHT - SCREENHEIGHT) {
        vOff = MAPHEIGHT - SCREENHEIGHT;
    }
}

void updatePlayer() {
    player.isMoving = 0; //var for animating sprite later

    if (BUTTON_HELD(BUTTON_LEFT) && player.x >= -4) {
        player.direction = LEFT;
        player.isMoving = 1;
        player.x -= player.xVel;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && player.x < 240) {
        player.direction = RIGHT;
        player.isMoving = 1;
        player.x += player.xVel;
    }

    if (BUTTON_PRESSED(BUTTON_A) && (enemy.active || enemy2.active || enemy3.active)
            && (player.attack != 1) && ((enemy.x - player.x) <= 25
            || ((enemy2.x - player.x) <= 25) || ((enemy3.x - player.x) <= 25))) {
        player.attack = 1;
    }

    //cheat activation
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        player.y = 40;
        SCREENBLOCK[0].tilemap[OFFSET(MAPWIDTH / 2, 0, 32)] = TMAP_ENTRY_TILEID(148); //top left
        // SCREENBLOCK[0].tilemap[OFFSET(MAPWIDTH / 2, 0, 32)] = TMAP_ENTRY_TILEID(308); //top right
        // SCREENBLOCK[0].tilemap[OFFSET(MAPWIDTH / 2, 0, 32)] = TMAP_ENTRY_TILEID(401); //bot left
        // SCREENBLOCK[0].tilemap[OFFSET(MAPWIDTH / 2, 0, 32)] = TMAP_ENTRY_TILEID(404); //bottom right
    }

    if (BUTTON_PRESSED(BUTTON_UP) && player.isJumping == 0) {
        player.isJumping = 1;
        player.jumpStart = player.y;
        player.jumpSpeed = -7;
    }
    jump();

    if (player.active == 0) {
        goToLose();
    }

    if ((enemy.active == 0) && (enemy2.active == 0) && (enemy3.active == 0)) {
        player.attack = 0;
    }
}


//ok, for some reason, its registering all of the enemies as the same enemy... there are three different
//enemies drawn on the screen, but the three enemies are using the same sprite/thingie
void updateEnemy() {
    if (enemy.isHit == 0) {
        if (player.attack == 1 && ((enemy.x - player.x) <= 25)) {
            playSoundB((signed char*)dedeffect_data, dedeffect_length, 0);
            enemy.isHit = 1;
            //enemy.active = 0;
            player.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player.x < enemy.x && enemy.x > 0) {
            enemy.x -= 0.5;
        }

        if (collision(player.x, player.y, player.width, player.height,
                enemy.x, enemy.y, enemy.width, enemy.height) == 1) {
            bites -= 1;
            player.attack = 0;
            player.x = 8;
            enemy.x = (rand() % 121 + 120 - enemy.width);
            if (bites == 0) {
                player.active = 0;
            }
        }
    }

    if (enemy2.isHit == 0) {
        if (player.attack == 1 && ((enemy2.x - player.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            //enemy2.active = 0;
            enemy2.isHit = 1;
            player.attack = 0;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player.x < enemy2.x && enemy2.x > 0) {
            enemy2.x -= 0.5;
        }

        if (collision(player.x, player.y, player.width, player.height,
                enemy2.x, enemy2.y, enemy2.width, enemy2.height) == 1) {
            bites -= 1;
            player.x = 8;
            enemy2.x = (rand() % 121 + 120 - enemy2.width);
            if (bites == 0) {
                player.active = 0;
            }
        }
    }

    if (enemy3.isHit == 0) {
        if (player.attack == 1 && ((enemy3.x - player.x) <= 25)) {
            playSoundB(dedeffect_data, dedeffect_length, 0);
            //enemy3.active = 0;
            player.attack = 0;
            enemy3.isHit = 1;
        }
        int enemy_speed = 1 << 8;  // 0.25 speed
        if (player.x < enemy3.x && enemy3.x > 0) {
            enemy3.x -= 0.5;
        }

        if (collision(player.x, player.y, player.width, player.height,
                enemy3.x, enemy3.y, enemy3.width, enemy3.height) == 1) {
            bites -= 1;
            player.x = 8;
            enemy3.x = (rand() % 121 + 120 - enemy3.width);
            if (bites == 0) {
                player.active = 0;
            }
        }
    }
}

void jump() {
    // apply gravity to the player when jumping or falling
    if (player.isJumping == 1) {
        player.y += player.jumpSpeed;
        player.jumpSpeed += player.jumpAccel;
        int jumpDistance = player.y - player.jumpStart;
        if (jumpDistance >= player.jumpHeight) {
            player.jumpSpeed -= player.jumpDeccel;
            if (player.jumpSpeed <= 0) {
                player.isJumping = 0;
                player.y = player.jumpStart + player.jumpHeight;
            }
        } else if (player.y >= player.jumpStart) {
            player.isJumping = 0;
            player.y = player.jumpStart;
        }
    }
}

void drawGame() {
    drawEnemy();
    drawPlayer();
    drawBites();

    //waitForVBlank();

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    //for spelling lives
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

    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawEnemy() {
    if (enemy.active) {
        if (enemy.isHit == 0) {
            enemy.timeUntilNextFrame--;
            if (enemy.timeUntilNextFrame == 0) {
                enemy.timeUntilNextFrame = 10;
                enemy.currFrame = (enemy.currFrame + 1) % enemy.numOfFrames; // 0 % 3
            }
            shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy.currFrame*4, 4);
        } else {
            enemy.aniCounter--;
            if (enemy.aniCounter == 0) {
                enemy.active = 0;
                enemy.aniCounter = 10;
                enemy.currentFrame = (enemy.currentFrame + 1) % enemy.frame;
            }
            shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy.currentFrame*4, 9);
        }
        shadowOAM[1].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemy.y);
        shadowOAM[1].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemy.x) | ATTR1_HFLIP;

        //shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);
    }
    else {
        shadowOAM[1].attr0 |= ATTR0_HIDE;
    }

    if (enemy2.active) {
        if (enemy2.isHit == 0) {
            enemy2.timeUntilNextFrame--;
            if (enemy2.timeUntilNextFrame == 0) {
                enemy2.timeUntilNextFrame = 10;
                enemy2.currFrame = (enemy2.currFrame + 1) % enemy2.numOfFrames; // 0 % 3
            }
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy2.currFrame*4, 4);
        } else {
            enemy2.aniCounter--;
            if (enemy2.aniCounter == 0) {
                enemy2.aniCounter = 10;
                enemy2.currentFrame = (enemy2.currentFrame + 1) % enemy2.frame;
            }
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy2.currentFrame*4, 9);
            enemy2.active = 0;
        }
        shadowOAM[2].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemy2.y);
        shadowOAM[2].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemy2.x) | ATTR1_HFLIP;
    }
    else {
        shadowOAM[2].attr0 |= ATTR0_HIDE;
    }


    if (enemy3.active) {
        if (enemy3.isHit == 0) {
            enemy3.timeUntilNextFrame--;
            if (enemy3.timeUntilNextFrame == 0) {
                enemy3.timeUntilNextFrame = 10;
                enemy3.currFrame = (enemy3.currFrame + 1) % enemy3.numOfFrames; // 0 % 3
            }
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy3.currFrame*4, 4);
        } else {
            enemy3.aniCounter--;
            if (enemy3.aniCounter == 0) {
                enemy3.aniCounter = 10;
                enemy3.currentFrame = (enemy3.currentFrame + 1) % enemy3.frame;
            }
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy3.currentFrame*4, 9);
            enemy3.active = 0;
        }
        shadowOAM[3].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(enemy3.y);
        shadowOAM[3].attr1 = ATTR1_MEDIUM | ATTR1_X((int)enemy3.x) | ATTR1_HFLIP;
    }
    else {
        shadowOAM[3].attr0 |= ATTR0_HIDE;
    }
}

void drawPlayer() {
    if (player.active) {
        if (BUTTON_PRESSED(BUTTON_DOWN)) {
            CHARBLOCK[4]->tileData[OFFSET(player.x + hOff, player.y, 32)] = TMAP_ENTRY_TILEID(305);
            CHARBLOCK[4]->tileData[OFFSET(player.x + hOff, player.y, 32)] = TMAP_ENTRY_TILEID(308);
            CHARBLOCK[4]->tileData[OFFSET(player.x + hOff, player.y, 32)] = TMAP_ENTRY_TILEID(401);
            CHARBLOCK[4]->tileData[OFFSET(player.x + hOff, player.y, 32)] = TMAP_ENTRY_TILEID(404);
        }
        else {
            if (player.isMoving) {
                player.timeUntilNextFrame--; //the tileid x values are 16, 20, 24, 28
                if (player.timeUntilNextFrame == 0) {
                    player.timeUntilNextFrame = 10;
                    player.currentFrame = (player.currentFrame + 1) % player.numOfFrames; //(0 + 4) % 4 =
                }
                shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.currentFrame*4, 0);
            } else if (player.attack == 1 && player.isMoving == 0) {
                if (player.currentFrame < player.numFramesAttack - 1) {
                    player.currentFrame++;
                } else {
                    player.attack = 0; // Attack animation has ended
                }
                shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16 + player.currentFrame * 4, 0);
            } else {
                player.currentFrame = 0;
            }
            shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ATTR0_Y(player.y);
            shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x);
            if (player.direction == RIGHT) {
                shadowOAM[0].attr1 |= ATTR1_HFLIP;
            }
        }
    } else {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    }
}

void drawBites() {
    if (bites == 1) {

        //can i replace this with the dynamic thingie that we did before in lab 7?

        PALETTE[4] = RED; //8, 12, 13
        PALETTE[6] = RED; //8, 12, 13
        PALETTE[8] = RED;
        PALETTE[12] = RED;
        PALETTE[13] = RED; //MAKING THE SCENE RED!!!
        shadowOAM[5].attr0 |= ATTR0_HIDE;
        shadowOAM[6].attr0 |= ATTR0_HIDE;
        shadowOAM[4].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[4].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff);
        shadowOAM[4].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(23, 5);
    }
    if (bites == 2) {
        shadowOAM[4].attr0 |= ATTR0_HIDE;
        shadowOAM[6].attr0 |= ATTR0_HIDE;
        shadowOAM[5].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[5].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff);
        shadowOAM[5].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(24, 5);
    }
    if (bites == 3) {
        shadowOAM[5].attr0 |= ATTR0_HIDE;
        shadowOAM[4].attr0 |= ATTR0_HIDE;
        shadowOAM[6].attr0 = ATTR0_4BPP | ATTR0_TALL | ATTR0_Y(0);
        shadowOAM[6].attr1 = ATTR1_SMALL | ATTR1_X(50 + hOff);
        shadowOAM[6].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(25, 5);
    }
    if (bites == 0) {
        shadowOAM[4].attr0 |= ATTR0_HIDE;
        shadowOAM[5].attr0 |= ATTR0_HIDE;
        shadowOAM[6].attr0 |= ATTR0_HIDE;
        player.active = 0;
    }
}