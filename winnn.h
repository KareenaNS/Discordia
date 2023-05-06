
//{{BLOCK(winnn)

//======================================================================
//
//	winnn, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 478 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 15296 + 2048 = 17856
//
//	Time-stamp: 2023-04-25, 15:56:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINNN_H
#define GRIT_WINNN_H

#define winnnTilesLen 15296
extern const unsigned short winnnTiles[7648];

#define winnnMapLen 2048
extern const unsigned short winnnMap[1024];

#define winnnPalLen 512
extern const unsigned short winnnPal[256];

#endif // GRIT_WINNN_H

//}}BLOCK(winnn)
