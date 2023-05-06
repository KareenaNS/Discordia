#ifndef PLAY_H
#define PLAY_H

#define SONGCOUNT 1

typedef struct {
    unsigned int sampleRate;
    unsigned int length;
    signed char* data;
} SONG;

SONG song;

void playSong();

extern int paused;
extern int shuffle;
extern int currentSong;

extern int minute;
extern int second;

#endif