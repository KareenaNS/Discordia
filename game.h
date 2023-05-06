#include "sprites.h"

//structs
#define MAPHEIGHT 160
#define MAPWIDTH 240
#define BITES 3
#define ENEMYCOUNT 4

typedef enum {RIGHT, LEFT} DIRECTION;

//extern typedef enum {DOWN, UP, RIGHT, LEFT} DIRECTION;

extern int hOff;
extern int vOff;
extern int hOff2;
extern int vOff2;
extern int hOff3;
extern int levelTracker;
extern int mapWidth3;
extern int mapWidth2;
extern OBJ_ATTR shadowOAM[128];
extern int bites;
extern int bites3;
extern int bites2;
extern int enemynum;


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int numFramesAttack;
    int timeNextAttack;
    int attackCounter;
    int active;
    int hide;
    int attack;
    int isJumping;
    double jumpAccel;
    int jumpDeccel;
    int jumpHeight;
    double jumpSpeed;
    int jumpStart;
    int currentFrame;
    int cheat;
    int hasSavedBefore;
} PLAYER;

typedef struct {
    double x;
    int y;
    int mapX;
    int mapY;
    int xVel;
    int yVel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int currFrame;
    int currentFrame; //for the death ani
    int time;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int hide;
    int health;
    int isHit;
    int active;
} ENEMY;

extern PLAYER player;
extern ENEMY enemy;
extern ENEMY enemy2;
extern ENEMY enemy3;

extern PLAYER player3;
extern ENEMY enemy01;
extern ENEMY enemy02;
extern ENEMY enemy03;

extern PLAYER player2;
extern ENEMY enemyy;
extern ENEMY enemyyy;
extern ENEMY enemyyyy;


// function prototypes
void initGame();
void initPlayer();
void initEnemy();
void updateGame();
void updatePlayer();
void updateEnemy();
void drawGame();
void drawEnemy();
void drawPlayer();
void drawBites();

void initGame3();
void initPlayer3();
void initEnemy3();
void updateGame3();
void updatePlayer3();
void updateEnemy3();
void drawGame3();
void drawEnemy3();
void drawPlayer3();
void drawBites3();

void initGame2();
void initPlayer2();
void initEnemy2();
void updateGame2();
void updatePlayer2();
void updateEnemy2();
void drawGame2();
void drawEnemy2();
void drawPlayer2();
void drawBites2();
