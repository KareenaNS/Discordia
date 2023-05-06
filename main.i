# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 12 "main.c"
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
# 13 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 14 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
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
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 15 "main.c" 2
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
# 16 "main.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
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






typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3






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

# 17 "main.c" 2
# 1 "titlescreen.h" 1
# 22 "titlescreen.h"

# 22 "titlescreen.h"
extern const unsigned short titlescreenTiles[5728];


extern const unsigned short titlescreenMap[1024];


extern const unsigned short titlescreenPal[256];
# 18 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[8608];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 19 "main.c" 2
# 1 "level1possibly.h" 1
# 22 "level1possibly.h"
extern const unsigned short level1possiblyTiles[6496];


extern const unsigned short level1possiblyMap[1024];


extern const unsigned short level1possiblyPal[256];
# 20 "main.c" 2
# 1 "level3possibly.h" 1
# 22 "level3possibly.h"
extern const unsigned short level3possiblyTiles[9984];


extern const unsigned short level3possiblyMap[2048];


extern const unsigned short level3possiblyPal[256];
# 21 "main.c" 2
# 1 "level3map.h" 1
# 22 "level3map.h"
extern const unsigned short level3mapTiles[13488];


extern const unsigned short level3mapMap[2048];


extern const unsigned short level3mapPal[256];
# 22 "main.c" 2
# 1 "clouds.h" 1
# 22 "clouds.h"
extern const unsigned short cloudsTiles[4688];


extern const unsigned short cloudsMap[1024];


extern const unsigned short cloudsPal[256];
# 23 "main.c" 2
# 1 "mnt.h" 1
# 22 "mnt.h"
extern const unsigned short mntTiles[7456];


extern const unsigned short mntMap[2048];


extern const unsigned short mntPal[256];
# 24 "main.c" 2
# 1 "winnn.h" 1
# 22 "winnn.h"
extern const unsigned short winnnTiles[7648];


extern const unsigned short winnnMap[1024];


extern const unsigned short winnnPal[256];
# 25 "main.c" 2
# 1 "loseee.h" 1
# 22 "loseee.h"
extern const unsigned short loseeeTiles[8800];


extern const unsigned short loseeeMap[1024];


extern const unsigned short loseeePal[256];
# 26 "main.c" 2
# 1 "game.h" 1
# 9 "game.h"
typedef enum {RIGHT, LEFT} DIRECTION;



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
# 27 "main.c" 2
# 1 "num.h" 1
# 21 "num.h"
extern const unsigned short numTiles[16384];


extern const unsigned short numPal[256];
# 28 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 29 "main.c" 2
# 1 "bgsound.h" 1


extern const unsigned int bgsound_sampleRate;
extern const unsigned int bgsound_length;
extern const signed char bgsound_data[];
# 30 "main.c" 2
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
# 31 "main.c" 2
# 1 "dedeffect.h" 1


extern const unsigned int dedeffect_sampleRate;
extern const unsigned int dedeffect_length;
extern const signed char dedeffect_data[];
# 32 "main.c" 2
# 1 "play.h" 1





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
# 33 "main.c" 2
# 1 "text.h" 1
# 22 "text.h"
extern const unsigned short textTiles[1392];


extern const unsigned short textMap[2048];


extern const unsigned short textPal[256];
# 34 "main.c" 2




void initialize();

OBJ_ATTR shadowOAM[128];

double hoff;
int voff;



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
        buttons = (*(volatile unsigned short *)0x04000130);

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
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    }
}

void saveToCartridgeRAM() {

    u8* saveDataAsCharPointer = &saveData;

    for (unsigned int i = 0; i < sizeof(SAVE_DATA); i++) {
        ((u8*)0x0E000000)[i] = saveDataAsCharPointer[i];
    }
}

void loadFromCartridgeRAM() {
    u8* saveDataAsCharPointer = &saveData;
    for (unsigned int i = 0; i < sizeof(SAVE_DATA); i++) {
        saveDataAsCharPointer[i] = ((u8*)0x0E000000)[i];
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
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    setupSounds();
    setupInterrupts();

    hoff = 0;
    voff = 0;
    hideSprites();
    loadGame();
    goToStart();
}

void goToStart() {

    DMANow(3, titlescreenPal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);


    DMANow(3, titlescreenTiles, &((charblock *)0x06000000)[0], 11456/2);
    DMANow(3, titlescreenMap, &((screenblock *)0x6000000)[31], 2048/2);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    playSong();
    state = START;
}

void start() {
    hideSprites();
    waitForVBlank();

    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToInstruct();
    }




}

void goToInstruct() {
    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8) | (0 << 7);

    DMANow(3, instructionsTiles, &((charblock *)0x06000000)[0], 17216/2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = INSTRUCT;

}

void instruct() {
    hideSprites();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
        srand(rseed);
        initGame();

        goToGame();
    }
}

void goToGame() {
    waitForVBlank();


    DMANow(3, level1possiblyPal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8) | (0 << 7);

    DMANow(3, level1possiblyTiles, &((charblock *)0x06000000)[0], 12992/2);
    DMANow(3, level1possiblyMap, &((screenblock *)0x6000000)[31], 2048/2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;


    DMANow(3, spritesheetTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512/2);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4/2);

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12) | (0 << 6);
    saveData.levelOn = 1;

    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        saveGame();
        goToPause();
    }
    if (bites == 0 || player.active == 0) {
        goToLose();
    }
    if (player.x + player.width >= 240 && bites > 0) {

        initGame3();
        goToGame3();
    }
}

void goToGame3() {
    waitForVBlank();

    DMANow(3, level3possiblyPal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x4000008) = (1 << 14) | ((0) << 2) | ((28) << 8) | (0 << 7);

    DMANow(3, level3possiblyTiles, &((charblock *)0x06000000)[0], 19968/2);
    DMANow(3, level3possiblyMap, &((screenblock *)0x6000000)[28], 4096/2);
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;


    DMANow(3, spritesheetTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512/2);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4/2);

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12) | (0 << 6);
    saveData.levelOn = 2;

    state = GAME3;
}

void game3() {

    updateGame3();
    drawGame3();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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
    DMANow(3, level3mapPal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x4000008) = (1 << 14) | ((1) << 2) | ((28) << 8) | (0 << 7);

    DMANow(3, level3mapTiles, &((charblock *)0x06000000)[1], 26976/2);
    DMANow(3, level3mapMap, &((screenblock *)0x6000000)[28], 4096/2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;


    DMANow(3, spritesheetTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512/2);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4/2);

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12) | (0 << 6);
    saveData.levelOn = 3;

    state = GAME2;
}

void game2() {
    updateGame2();
    drawGame2();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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
    (*(volatile unsigned short *)0x4000000) = (1 << (8 + (1 % 4))) | (1 << (8 + (0 % 4))) | ((0) & 7);

    waitForVBlank();

    (*(volatile unsigned short*)0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8) | (0 << 7);
    (*(volatile unsigned short*)0x400000A) = (0 << 14) | ((1) << 2) | ((30) << 8) | (0 << 7);

    DMANow(3, mntPal, ((unsigned short *)0x5000000), 256);

    DMANow(3, cloudsPal + 16, ((unsigned short *)0x5000000) + 16, 256);
    pauseSounds();

    DMANow(3, cloudsTiles, &((charblock *)0x06000000)[2], 9376/2);
    DMANow(3, mntTiles, &((charblock *)0x06000000)[0], 14912/2);
    DMANow(3, cloudsMap, &((screenblock *)0x6000000)[29], 2048/2);
    DMANow(3, mntMap, &((screenblock *)0x6000000)[31], 4096/2);

    while (hoff < 256.0) {
        hoff += 0.5;



        (*(volatile unsigned short *)0x04000014) = hoff * 5;
        (*(volatile unsigned short *)0x04000010) = hoff * 2;
        (*(unsigned short *)0x4000050) = (1 << 6) | (1 << (0 +8));
        (*(unsigned short *)0x4000052) = (7 & 0x1F) | ((9&0x1F) << 8);

        if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
            hoff = 257;
        }

        waitForVBlank();
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    }
    hoff = 0;
    state = PAUSE;
}

void pause() {
    waitForVBlank();
    hideSprites();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToGame();
        unpauseSounds();
    }
}

void goToWin() {
    waitForVBlank();
    pauseSounds();
    hideSprites();

    DMANow(3, winnnPal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x4000008) = (0 << 14) | ((0) << 2) | ((28) << 8) | (0 << 7);

    DMANow(3, winnnTiles, &((charblock *)0x06000000)[0], 15296/2);
    DMANow(3, winnnMap, &((screenblock *)0x6000000)[28], 2048/2);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    state = WIN;
}

void goToLose() {
    waitForVBlank();
    pauseSounds();
    hideSprites();

    DMANow(3, loseeePal, ((unsigned short *)0x5000000), 256);

    (*(volatile unsigned short*)0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8) | (0 << 7);

    DMANow(3, loseeeTiles, &((charblock *)0x06000000)[0], 17600/2);
    DMANow(3, loseeeMap, &((screenblock *)0x6000000)[31], 2048/2);

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    state = LOSE;
}

void winlose() {
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
    }
}

void interruptHandler() {

 *(unsigned short*)0x4000208 = 0;

 if (*(volatile unsigned short*)0x4000202 & (1 << 0)) {


        if (soundA.isPlaying == 1) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount >= soundA.durationInVBlanks) {
                if (soundA.looping == 1) {
                    playSoundA(soundA.data, soundA.dataLength, soundA.looping);
                } else {
                    soundA.isPlaying = 0;

                    *(volatile unsigned short*)0x4000102 = (0<<7);
                    dma[1].cnt = 0;
                }
            }

        }


        if (soundB.isPlaying == 1) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount >= soundB.durationInVBlanks) {
                if (soundB.looping == 1) {
                    playSoundB(soundB.data, soundB.dataLength, soundB.looping);
                } else {
                    soundB.isPlaying = 0;

                    *(volatile unsigned short*)0x4000106 = (0<<7);
                    dma[2].cnt = 0;
                }
            }
  }

 }
# 575 "main.c"
    *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;
    *(unsigned short*)0x4000208 = 1;

}

void setupInterrupts() {

 *(unsigned short*)0x4000208 = 0;

    *(unsigned short*)0x4000200 = (1 << 0) | (1 << ((2 % 4) + 3)) | (1 << ((3 % 4) + 3));
    *(unsigned short*)0x4000004 = (1 << 3);

    *((ihp*)0x03007FFC) = &interruptHandler;

 *(unsigned short*)0x4000208 = 1;

}

void playSong() {
    playSoundA((signed char*) bgsound_data, bgsound_length, soundA.looping);

    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x4000108 = 65536 - 16384;

    *(volatile unsigned short*)0x400010E = 0;
    *(volatile unsigned short*)0x400010C = 65536 - 60;

    if ((state == PAUSE)) {
        pauseSounds();
    } else {
        *(volatile unsigned short*)0x400010A = (3) | (1<<7) | (1<<6);
        *(volatile unsigned short*)0x400010E = (1<<2) | (1<<7) | (1<<6);
    }
}
