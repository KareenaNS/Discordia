
//{{BLOCK(titlescreen)

//======================================================================
//
//	titlescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 358 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11456 + 2048 = 14016
//
//	Time-stamp: 2023-04-03, 16:05:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESCREEN_H
#define GRIT_TITLESCREEN_H

#define titlescreenTilesLen 11456
extern const unsigned short titlescreenTiles[5728];

#define titlescreenMapLen 2048
extern const unsigned short titlescreenMap[1024];

#define titlescreenPalLen 512
extern const unsigned short titlescreenPal[256];

#endif // GRIT_TITLESCREEN_H

//}}BLOCK(titlescreen)
