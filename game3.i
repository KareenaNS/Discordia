# 1 "game3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game3.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;


typedef void (*ihp)(void);
# 42 "gba.h"
void waitForVBlank();
# 59 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 75 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 107 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "game3.c" 2
# 1 "game.h" 1
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 63 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int dx;
    int dy;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int active;
    int hide;
} SPRITE;
# 2 "game.h" 2







typedef enum {RIGHT, LEFT} DIRECTION;



extern int hOff;
extern int vOff;
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
    int currentFrame;
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
# 3 "game3.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 4 "game3.c" 2
# 1 "dedeffect.h" 1



# 3 "dedeffect.h"
extern const unsigned int dedeffect_sampleRate;
extern const unsigned int dedeffect_length;
extern const signed char dedeffect_data[];
# 5 "game3.c" 2
# 1 "sound.h" 1



extern int paused;
extern int shuffle;
extern int currentSong;

void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 53 "sound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 6 "game3.c" 2

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
            player3.timeUntilNextFrame--;
            if (player3.timeUntilNextFrame == 0) {
                player3.timeUntilNextFrame = 10;
                player3.currentFrame = (player3.currentFrame + 1) % player3.numOfFrames;
            }
            shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (player3.currentFrame*4)) & 0x3FF);
        } else if (player3.attack == 1 && player3.isMoving == 0) {
            if (player3.currentFrame < player3.numFramesAttack - 1) {
                player3.currentFrame++;
            } else {
                player3.attack = 0;
            }
            shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((0) * 32 + (16 + player3.currentFrame * 4)) & 0x3FF);
        } else if (player3.cheat == 1 && (player3.isMoving) && ((!(~(oldButtons) & ((1<<5))) && (~(buttons) & ((1<<5)))) || (!(~(oldButtons) & ((1<<4))) && (~(buttons) & ((1<<4)))))) {
            shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((9) * 32 + (17)) & 0x3FF);
        } else {
            player3.currentFrame = 0;
        }
        shadowOAM[0].attr0 = (0<<13) | (0<<14) | ((player3.y) & 0xFF);
        shadowOAM[0].attr1 = (2<<14) | ((player3.x) & 0x1FF);
        if (player3.direction == RIGHT) {
            shadowOAM[0].attr1 |= (1<<12);
        }
    } else {
        shadowOAM[0].attr0 |= (2<<8);
    }
}
void drawEnemy3() {
    if (enemyy.active) {
        if (enemyy.isHit == 0) {
            enemyy.timeUntilNextFrame--;
            if (enemyy.timeUntilNextFrame == 0) {
                enemyy.timeUntilNextFrame = 10;
                enemyy.currFrame = (enemyy.currFrame + 1) % enemyy.numOfFrames;
            }
            shadowOAM[1].attr2 = (((0) & 0xF) << 12) | (((4) * 32 + (enemyy.currFrame*4)) & 0x3FF);
        } else {
            enemyy.aniCounter--;
            if (enemyy.aniCounter == 0) {
                enemyy.active = 0;
                enemyy.aniCounter = 10;
                enemyy.currentFrame = (enemyy.currentFrame + 1) % enemyy.frame;
            }
            shadowOAM[1].attr2 = (((0) & 0xF) << 12) | (((9) * 32 + (enemyy.currentFrame*4)) & 0x3FF);
        }
        shadowOAM[1].attr0 = (0<<13) | (0<<14) | ((enemyy.y) & 0xFF);
        shadowOAM[1].attr1 = (2<<14) | (((int)enemyy.x) & 0x1FF) | (1<<12);


    }
    else {
        shadowOAM[1].attr0 |= (2<<8);
    }

    if (enemyyy.active) {
        if (enemyyy.isHit == 0) {
            enemyyy.timeUntilNextFrame--;
            if (enemyyy.timeUntilNextFrame == 0) {
                enemyyy.timeUntilNextFrame = 10;
                enemyyy.currFrame = (enemyyy.currFrame + 1) % enemyyy.numOfFrames;
            }
            shadowOAM[2].attr2 = (((0) & 0xF) << 12) | (((4) * 32 + (enemyyy.currFrame*4)) & 0x3FF);
        } else {
            enemyyy.aniCounter--;
            if (enemyyy.aniCounter == 0) {
                enemyyy.aniCounter = 10;
                enemyyy.currentFrame = (enemyyy.currentFrame + 1) % enemyyy.frame;
            }
            shadowOAM[2].attr2 = (((0) & 0xF) << 12) | (((9) * 32 + (enemyyy.currentFrame*4)) & 0x3FF);
            enemyyy.active = 0;
        }
        shadowOAM[2].attr0 = (0<<13) | (0<<14) | ((enemyyy.y) & 0xFF);
        shadowOAM[2].attr1 = (2<<14) | (((int)enemyyy.x) & 0x1FF) | (1<<12);
    }
    else {
        shadowOAM[2].attr0 |= (2<<8);
    }

    if (enemyyyy.active) {
        if (enemyyyy.isHit == 0) {
            enemyyyy.timeUntilNextFrame--;
            if (enemyyyy.timeUntilNextFrame == 0) {
                enemyyyy.timeUntilNextFrame = 10;
                enemyyyy.currFrame = (enemyyyy.currFrame + 1) % enemyyyy.numOfFrames;
            }
            shadowOAM[3].attr2 = (((0) & 0xF) << 12) | (((4) * 32 + (enemyyyy.currFrame*4)) & 0x3FF);
        } else {
            enemyyyy.aniCounter--;
            if (enemyyyy.aniCounter == 0) {
                enemyyyy.aniCounter = 10;
                enemyyyy.currentFrame = (enemyyyy.currentFrame + 1) % enemyyyy.frame;
            }
            shadowOAM[3].attr2 = (((0) & 0xF) << 12) | (((9) * 32 + (enemyyyy.currentFrame*4)) & 0x3FF);
            enemyyyy.active = 0;
        }
        shadowOAM[3].attr0 = (0<<13) | (0<<14) | ((enemyyyy.y) & 0xFF);
        shadowOAM[3].attr1 = (2<<14) | (((int)enemyyyy.x) & 0x1FF) | (1<<12);
    }
    else {
        shadowOAM[3].attr0 |= (2<<8);
    }
}

void drawGame3() {
    if ((~(buttons) & ((1<<7))) && player3.isMoving && player3.active) {
        shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((9) * 32 + (17)) & 0x3FF);
    } else {
        drawPlayer3();
    }
    drawEnemy3();
    drawBites3();

    (*(volatile unsigned short *)0x04000010) = hOff3;
    (*(volatile unsigned short *)0x04000012) = vOff3;


    shadowOAM[120].attr0 = (0<<13) | (0<<14) | ((0) & 0xFF);
    shadowOAM[120].attr1 = (0<<14) | ((2 + hOff) & 0x1FF);
    shadowOAM[120].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (17)) & 0x3FF);

    shadowOAM[121].attr0 = (0<<13) | (0<<14) | ((0) & 0xFF);
    shadowOAM[121].attr1 = (0<<14) | ((10 + hOff) & 0x1FF);
    shadowOAM[121].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (18)) & 0x3FF);

    shadowOAM[122].attr0 = (0<<13) | (0<<14) | ((0) & 0xFF);
    shadowOAM[122].attr1 = (0<<14) | ((18 + hOff) & 0x1FF);
    shadowOAM[122].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (19)) & 0x3FF);

    shadowOAM[123].attr0 = (0<<13) | (0<<14) | ((0) & 0xFF);
    shadowOAM[123].attr1 = (0<<14) | ((26 + hOff) & 0x1FF);
    shadowOAM[123].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (20)) & 0x3FF);

    shadowOAM[124].attr0 = (0<<13) | (0<<14) | ((0) & 0xFF);
    shadowOAM[124].attr1 = (0<<14) | ((34 + hOff) & 0x1FF);
    shadowOAM[124].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (21)) & 0x3FF);

    shadowOAM[125].attr0 = (0<<13) | (0<<14) | ((0) & 0xFF);
    shadowOAM[125].attr1 = (0<<14) | ((42 + hOff) & 0x1FF);
    shadowOAM[125].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (22)) & 0x3FF);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);}

void updatePlayer3() {
    player3.isMoving = 0;
    if ((~(buttons) & ((1<<5))) && player3.x >= -4) {
        player3.direction = LEFT;
        player3.isMoving = 1;
        player3.x -= player3.xVel;
    } else if ((~(buttons) & ((1<<4))) && (player3.x < mapWidth3)) {
        player3.isMoving = 1;
        player3.x += player3.xVel;
        player3.direction = RIGHT;
    }

    if ((~(buttons) & ((1<<7)))) {
        player3.y = 35;
        player3.cheat = 1;
    }

    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0)))) && (enemyy.active || enemyyy.active || enemyyyy.active)
            && (player3.attack != 1) && ((enemyy.x - player3.x) <= 25
            || ((enemyyy.x - player3.x) <= 25) || ((enemyyyy.x - player3.x) <= 25))) {
        player3.attack = 1;
    }

    if ((!(~(oldButtons) & ((1<<6))) && (~(buttons) & ((1<<6)))) && player3.isJumping == 0) {
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
        int enemy_speed = 1 << 8;
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
        int enemy_speed = 1 << 8;
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
        int enemy_speed = 1 << 8;
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

    if (player3.x > (mapWidth3 / 2) && (hOff3 + 240) < mapWidth3) {
        hOff3 = player3.x - (mapWidth3 / 2);
    }


    if (hOff3 < 0) {
        hOff3 = 0;
    }
    if (hOff3 > mapWidth3 - 240) {
        hOff3 = mapWidth3 - 240;
    }
    if (vOff3 < 0) {
        vOff3 = 0;
    }
    if (vOff3 > 160 - 160) {
        vOff3 = 160 - 160;
    }
}

void jump3() {

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
    shadowOAM[4].attr0 |= (2<<8);
    shadowOAM[5].attr0 |= (2<<8);
    shadowOAM[6].attr0 |= (2<<8);
    if (bites == 1) {
        shadowOAM[8].attr0 |= (2<<8);
        shadowOAM[9].attr0 |= (2<<8);
        shadowOAM[7].attr0 = (0<<13) | (2<<14) | ((0) & 0xFF);
        shadowOAM[7].attr1 = (1<<14) | ((50 + hOff) & 0x1FF);
        shadowOAM[7].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (23)) & 0x3FF);
    }
    if (bites == 2) {
        shadowOAM[7].attr0 |= (2<<8);
        shadowOAM[9].attr0 |= (2<<8);
        shadowOAM[8].attr0 = (0<<13) | (2<<14) | ((0) & 0xFF);
        shadowOAM[8].attr1 = (1<<14) | ((50 + hOff) & 0x1FF);
        shadowOAM[8].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (24)) & 0x3FF);
    }
    if (bites == 3) {
        shadowOAM[7].attr0 |= (2<<8);
        shadowOAM[8].attr0 |= (2<<8);
        shadowOAM[9].attr0 = (0<<13) | (2<<14) | ((0) & 0xFF);
        shadowOAM[9].attr1 = (1<<14) | ((50 + hOff) & 0x1FF);
        shadowOAM[9].attr2 = (((0) & 0xF) << 12) | (((5) * 32 + (25)) & 0x3FF);
    }
    if (bites == 0) {
        shadowOAM[7].attr0 |= (2<<8);
        shadowOAM[8].attr0 |= (2<<8);
        shadowOAM[9].attr0 |= (2<<8);
        player3.active = 0;
    }
}
