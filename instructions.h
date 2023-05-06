
//{{BLOCK(instructions)

//======================================================================
//
//	instructions, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 538 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 17216 + 2048 = 19776
//
//	Time-stamp: 2023-04-25, 13:32:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS_H
#define GRIT_INSTRUCTIONS_H

#define instructionsTilesLen 17216
extern const unsigned short instructionsTiles[8608];

#define instructionsMapLen 2048
extern const unsigned short instructionsMap[1024];

#define instructionsPalLen 512
extern const unsigned short instructionsPal[256];

#endif // GRIT_INSTRUCTIONS_H

//}}BLOCK(instructions)
