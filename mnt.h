
//{{BLOCK(mnt)

//======================================================================
//
//	mnt, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 466 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 14912 + 4096 = 19520
//
//	Time-stamp: 2023-05-03, 14:30:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MNT_H
#define GRIT_MNT_H

#define mntTilesLen 14912
extern const unsigned short mntTiles[7456];

#define mntMapLen 4096
extern const unsigned short mntMap[2048];

#define mntPalLen 512
extern const unsigned short mntPal[256];

#endif // GRIT_MNT_H

//}}BLOCK(mnt)
