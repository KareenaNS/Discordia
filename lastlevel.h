
//{{BLOCK(lastlevel)

//======================================================================
//
//	lastlevel, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1090 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 34880 + 8192 = 43584
//
//	Time-stamp: 2023-04-28, 14:19:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LASTLEVEL_H
#define GRIT_LASTLEVEL_H

#define lastlevelTilesLen 34880
extern const unsigned short lastlevelTiles[17440];

#define lastlevelMapLen 8192
extern const unsigned short lastlevelMap[4096];

#define lastlevelPalLen 512
extern const unsigned short lastlevelPal[256];

#endif // GRIT_LASTLEVEL_H

//}}BLOCK(lastlevel)
