
//{{BLOCK(level3map)

//======================================================================
//
//	level3map, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 843 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 26976 + 4096 = 31584
//
//	Time-stamp: 2023-04-25, 15:50:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL3MAP_H
#define GRIT_LEVEL3MAP_H

#define level3mapTilesLen 26976
extern const unsigned short level3mapTiles[13488];

#define level3mapMapLen 4096
extern const unsigned short level3mapMap[2048];

#define level3mapPalLen 512
extern const unsigned short level3mapPal[256];

#endif // GRIT_LEVEL3MAP_H

//}}BLOCK(level3map)
