#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "gba.h"
#include "mode0.h"
#include "sprites.h"

#include "play.h"
#include "sound.h"

#include "bgsound.h"

SONG song;

int paused;
int shuffle;

int minute;
int second;

int frame;
int progress;

int currentSong;

char* screenTitle;
int titlePosition;


void init() {
    paused = 0;
    currentSong = 0;
}