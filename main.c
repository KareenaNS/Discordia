/*THINGS IMPLEMENTED!
1. Our sprites have been mostly developed, and the enemy sprites, as well as the player sprite, animates
    while walking. The player sprite animates to a different position when attacking.
2. Scrolling backgrounds have been fully fleshed out.
3. The background sound has been developed.
    **NOTE: The levels 2 and 3 are coded in reverse. Level 3 is labeled level 2 with its files and
        all of its functions, and level 2 is labeled level 3. Sorry for the confusion.
4. To activate the cheat, you must hold the down button.
5. to unpause, you have to press select, wait 3 seconds, then press start to unpause...
*/

#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include <stdlib.h>
#include "titlescreen.h"
#include "instructions.h"
#include "level1possibly.h"
#include "level3possibly.h"
#include "level3map.h"
#include "clouds.h"
#include "mnt.h"
#include "winnn.h"
#include "loseee.h"
#include "game.h"
#include "num.h"
#include "spritesheet.h"
#include "bgsound.h"
#include "sound.h"
#include "dedeffect.h"
#include "play.h"
#include "text.h"

#define MAPWIDTH 240
#define MAPHEIGHT 160

void initialize();

OBJ_ATTR shadowOAM[128];

double hoff;
int voff;

#define GAMEPAK_RAM  ((u8*)0x0E000000)

typedef struct {
  int playerX;
  int playerY;
  int playerDirection;
  int hOff;
  int vOff;
  int hasSavedBefore;
  int enemy1x;
  int enemy2x;
  int enemy3x;
  int levelOn;
} SAVE_DATA;

SAVE_DATA saveData;

//function prototypes
void goToStart();
void start();
void goToInstruct();
void instruct();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void game();
void goToGame();
void game2();
void goToGame2();
void game3();
void goToGame3();
void setupInterrupts();
void interruptHandler();
void saveToCartridgeRAM();
void loadFromCartridgeRAM();
void saveGame();
void loadGame();

// random prototype
void srand();
int rseed;

int seed;

int shuffle;
int currentSong;

enum
{
    START,
    INSTRUCT,
    GAME,
    GAME2,
    GAME3,
    PAUSE,
    WIN,
    LOSE
};
int state;

unsigned short oldButtons;
unsigned short buttons;

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state) {
            case START:
                start();
                break;
            case INSTRUCT:
                instruct();
                break;
            case GAME:
                game();
                break;
            case GAME2:
                game2();
                break;
            case GAME3:
                game3();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                winlose();
                break;
            case LOSE:
                winlose();
                break;
        }

        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128*4);
    }
}

void saveToCartridgeRAM() {
    // We need to copy 1 byte at a time, so we index a u8 pointer
    u8* saveDataAsCharPointer = &saveData;

    for (unsigned int i = 0; i < sizeof(SAVE_DATA); i++) {
        GAMEPAK_RAM[i] = saveDataAsCharPointer[i];
    }
}

void loadFromCartridgeRAM() {
    u8* saveDataAsCharPointer = &saveData; //pointer of the struct that we're chunking into 8 bits
    for (unsigned int i = 0; i < sizeof(SAVE_DATA); i++) {
        saveDataAsCharPointer[i] = GAMEPAK_RAM[i];
    }
}

void saveGame() {
    if (saveData.levelOn == 1) {
        saveData.playerX = player.x;
        saveData.playerY = player.y;
        saveData.playerDirection = player.direction;

        saveData.enemy1x = enemy.x;
        saveData.enemy2x = enemy2.x;
        saveData.enemy3x = enemy3.x;

        saveData.hOff = hOff;
        saveData.vOff = vOff;
    }
    if (saveData.levelOn == 2) {
        saveData.playerX = player3.x;
        saveData.playerY = player3.y;
        saveData.playerDirection = player3.direction;

        saveData.enemy1x = enemyy.x;
        saveData.enemy2x = enemyyy.x;
        saveData.enemy3x = enemyyyy.x;

        saveData.hOff = hOff3;
        saveData.vOff = vOff;
    }
    if (saveData.levelOn == 3) {
        saveData.playerX = player2.x;
        saveData.playerY = player2.y;
        saveData.playerDirection = player2.direction;

        saveData.enemy1x = enemy01.x;
        saveData.enemy2x = enemy02.x;
        saveData.enemy3x = enemy03.x;

        saveData.hOff = hOff2;
        saveData.vOff = vOff2;
    }
    saveToCartridgeRAM();
}

void loadGame() {
    loadFromCartridgeRAM();
    if (saveData.hasSavedBefore == -1) {
        // Initialize any default values you want here
        saveData.hOff = 0;
        saveData.vOff = 0;
        saveData.playerX = 8;
        if (saveData.levelOn == 2) {
            saveData.playerY = 112;
        } else {
            saveData.playerY = 94 - 12;
        }
        saveData.playerDirection = RIGHT;
        saveData.hasSavedBefore = 1;
    }
    if (saveData.levelOn == 1) {
        player.x = saveData.playerX;
        player.y = saveData.playerY;
        enemy.x = saveData.enemy1x;
        enemy2.x = saveData.enemy2x;
        enemy3.x = saveData.enemy3x;
        player.direction = saveData.playerDirection;
        hOff = saveData.hOff;
        vOff = saveData.vOff;
    }
    if (saveData.levelOn == 2) {
        player3.x = saveData.playerX;
        player3.y = saveData.playerY;
        enemyy.x = saveData.enemy1x;
        enemyyy.x = saveData.enemy2x;
        enemyyyy.x = saveData.enemy3x;
        player3.direction = saveData.playerDirection;
        hOff3 = saveData.hOff;
        vOff = saveData.vOff;
    }
    if (saveData.levelOn == 3) {
        player2.x = saveData.playerX;
        player2.y = saveData.playerY;
        enemy01.x = saveData.enemy1x;
        enemy02.x = saveData.enemy2x;
        enemy03.x = saveData.enemy3x;
        player2.direction = saveData.playerDirection;
        hOff2 = saveData.hOff;
        vOff2 = saveData.vOff;
    }
}

void initialize() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    setupSounds();
    setupInterrupts();
    //goToOff();
    hoff = 0;
    voff = 0;
    hideSprites();
    loadGame();
    goToStart();
}

void goToStart() {
    //display the title screen so you have to DMA that in
    DMANow(3, titlescreenPal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load tiles to charblock and map to screenblock
    DMANow(3, titlescreenTiles, &CHARBLOCK[0], titlescreenTilesLen/2);
    DMANow(3, titlescreenMap, &SCREENBLOCK[31], titlescreenMapLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    //playSoundA((signed char*)bgsound_data, bgsound_length, soundA.looping);
    playSong();
    state = START;
}

void start() {
    hideSprites();
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstruct();
    }


    // Set bg1 hOff to curr hOff
    //REG_BG1HOFF = hOff;
}

void goToInstruct() {
    DMANow(3, instructionsPal, PALETTE, 256);

    //REG_DISPCTL = MODE(0) | BG_ENABLE(0);
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP;

    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen/2);

    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = INSTRUCT;

}

void instruct() {
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_START)){
        srand(rseed);
        initGame();
        //initGame3();
        goToGame();
    }
}

void goToGame() {
    waitForVBlank();
    //DMANow(3, , PALETTE, 256);

    DMANow(3, level1possiblyPal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP;

    DMANow(3, level1possiblyTiles, &CHARBLOCK[0], level1possiblyTilesLen/2);
    DMANow(3, level1possiblyMap, &SCREENBLOCK[31], level1possiblyMapLen/2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    //hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4/2);

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE | SPRITE_MODE_2D;
    saveData.levelOn = 1;

    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        saveGame();
        goToPause();
    }
    if (bites == 0 || player.active == 0) {
        goToLose();
    }
    if (player.x + player.width >= 240 && bites > 0) {
        //player.active = 0;
        initGame3();
        goToGame3();
    }
}

void goToGame3() {
    waitForVBlank();

    DMANow(3, level3possiblyPal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP;

    DMANow(3, level3possiblyTiles, &CHARBLOCK[0], level3possiblyTilesLen/2);
    DMANow(3, level3possiblyMap, &SCREENBLOCK[28], level3possiblyMapLen/2);
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;

    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    //hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4/2);

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE | SPRITE_MODE_2D;
    saveData.levelOn = 2;

    state = GAME3;
}

void game3() {
    //player.active = 0;
    updateGame3();
    drawGame3();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (bites3 == 0 || player3.active == 0) {
        goToLose();
    }
    if (player3.x + player3.width >= mapWidth3 && bites3 > 0) {
        initGame2();
        goToGame2();
    }
}

void goToGame2() {
    waitForVBlank();
    DMANow(3, level3mapPal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_4BPP;

    DMANow(3, level3mapTiles, &CHARBLOCK[1], level3mapTilesLen/2);
    DMANow(3, level3mapMap, &SCREENBLOCK[28], level3mapMapLen/2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    //hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4/2);

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE | SPRITE_MODE_2D;
    saveData.levelOn = 3;

    state = GAME2;
}

void game2() {
    updateGame2();
    drawGame2();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (bites2 == 0 || player2.active == 0) {
        goToLose();
    }
    if ((player2.x >= 240) && (bites2 > 0)) {
        goToWin();
    }
}

void goToPause() {
    REG_DISPCTL = BG_ENABLE(1) | BG_ENABLE(0) | MODE(0);

    waitForVBlank();

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP; // clouds
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP;

    DMANow(3, mntPal, PALETTE, 256);
    //DMANow(3, textPal, PALETTE + 16, 256);
    DMANow(3, cloudsPal + 16, PALETTE + 16, 256);
    pauseSounds();

    DMANow(3, cloudsTiles, &CHARBLOCK[2], cloudsTilesLen/2);
    DMANow(3, mntTiles, &CHARBLOCK[0], mntTilesLen/2);
    DMANow(3, cloudsMap, &SCREENBLOCK[29], cloudsMapLen/2);
    DMANow(3, mntMap, &SCREENBLOCK[31], mntMapLen/2);

    while (hoff < 256.0) {
        hoff += 0.5;
        // if (hoff > 255.0) {
        //     hoff = 0;
        // }
        REG_BG1HOFF = hoff * 5;
        REG_BG0HOFF = hoff * 2;
        REG_BLDCNT = BLD_STD | BLD_BOT(0); // using BG 0 as bottom layer
        REG_BLDALPHA = BLD_EVA(7) | BLD_EVB(9);

        if (BUTTON_PRESSED(BUTTON_SELECT)) {
            hoff = 257;
        }

        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128*4);
    }
    hoff = 0;
    state = PAUSE;
}

void pause() {
    waitForVBlank();
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        unpauseSounds();
    }
}

void goToWin() {
    waitForVBlank();
    pauseSounds();
    hideSprites();

    DMANow(3, winnnPal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP;

    DMANow(3, winnnTiles, &CHARBLOCK[0], winnnTilesLen/2);
    DMANow(3, winnnMap, &SCREENBLOCK[28], winnnMapLen/2);

    DMANow(3, shadowOAM, OAM, 128*4);
    state = WIN;
}

void goToLose() {
    waitForVBlank();
    pauseSounds();
    hideSprites();

    DMANow(3, loseeePal, PALETTE, 256);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP;

    DMANow(3, loseeeTiles, &CHARBLOCK[0], loseeeTilesLen/2);
    DMANow(3, loseeeMap, &SCREENBLOCK[31], loseeeMapLen/2);

    DMANow(3, shadowOAM, OAM, 128*4);
    state = LOSE;
}

void winlose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void interruptHandler() {

	REG_IME = 0;

	if (REG_IF & IRQ_VBLANK) {

        // TODO 2.0: Handle soundA
        if (soundA.isPlaying == 1) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount >= soundA.durationInVBlanks) {
                if (soundA.looping == 1) {
                    playSoundA(soundA.data, soundA.dataLength, soundA.looping);
                } else {
                    soundA.isPlaying = 0;
                    //turn off thetimer and DMA channel used by soundA.
                    REG_TM0CNT = TIMER_OFF;
                    dma[1].cnt = 0;
                }
            }

        }

        // TODO 2.1: Handle soundB
        if (soundB.isPlaying == 1) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount >= soundB.durationInVBlanks) {
                if (soundB.looping == 1) {
                    playSoundB(soundB.data, soundB.dataLength, soundB.looping);
                } else {
                    soundB.isPlaying = 0;
                    //turn off thetimer and DMA channel used by soundA.
                    REG_TM1CNT = TIMER_OFF;
                    dma[2].cnt = 0;
                }
            }
		}

	}

    // if (REG_IF & IRQ_TIMER(2)) {
    //     int second = (second + 1) % 60;
    // }

    // if (REG_IF & IRQ_TIMER(3)) {
    //     int minute = (minute + 1) % 100;
    // }

    REG_IF = REG_IF;
    REG_IME = 1;

}

void setupInterrupts() {

	REG_IME = 0;

    REG_IE = IRQ_VBLANK | IRQ_TIMER(2) | IRQ_TIMER(3);
    REG_DISPSTAT = DISPSTAT_VBLANK_IRQ;

    REG_INTERRUPT = &interruptHandler;

	REG_IME = 1;

}

void playSong() {
    playSoundA((signed char*) bgsound_data, bgsound_length, soundA.looping);

    REG_TM2CNT = 0;
    REG_TM2D = 65536 - 16384;

    REG_TM3CNT = 0;
    REG_TM3D = 65536 - 60;

    if ((state == PAUSE)) {
        pauseSounds();
    } else {
        REG_TM2CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
        REG_TM3CNT = TM_CASCADE | TIMER_ON | TM_IRQ;
    }
}