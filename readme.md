# Abolish 3BPP
This repository is designed to make graphics edits for Zelda 3 easier by converting all graphics data to the 4 bits per pixel format (4BPP). It contains patches that remove both the compressed and uncompressed 3BPP graphics and updates vanilla routines to read directly from ROM whenever possible. This will thus provide visible reduction in loading times for large graphic changes.

## ASM notes
* This code is designed to work with Asar.
* Add `incsrc "4bppatches.asm"` to your main asm file somewhere. By default, this will add some code to bank $11, which normally contains graphics data.
* By default, banks $B0–$C0 are reserved for graphics. Ideally, these should be placed in consecutive banks, but you can manually change their location to anything
* Banks $11–$18 now contain usable space for anything.
* By default, addresses $19EA–$19EF are reserved to cache addresses for DMA. Addresses $76–$78 are reserved for caching pixel data (see palettes note below). These locations may be redefined.
* `gfx_sheets.asm` includes comments on which sheet contains what for sprites.

## Resources included
* `/vanilla` contains every graphics sheet converted to 4BPP (`.4bpp`) (except those that are 2BPP (`.2bpp`)), these binaries may be modified by any means to change the graphics loaded.
* `/vanillasheets` contains PNG images of every graphics sheet. The bottom half of the image also includes space to edit 3 palettes.
* `singlesheet.jar` is a quick-and-dirty (emphasis on the "dirty") Java executable that can be used to convert PNG images into 4BPP or 2BPP files. It will use the palettes below the image to determine which color is which index. Keep any PNG image in the same format, or the program will not accept it. A blank sheet is included as a template. See the note about palettes below.

## Note about palettes
* In the vanilla game, all graphics (besides Link) use either the first 8 colors or the last 8 colors (+0 for transparency) of a particular 16 color palette.
* For sprite characters, which half of the palette to use is determined by the sheet. As such, all sprite graphics in this code is designed to be put directly into VRAM or the appropriate buffer. To account for this, the .4bpp and .PNG files included have their palette data swapped to the last 8 colors. Technically, you can adjust any graphic to use either half of the palette, without affecting the other graphics on the same sheet. Likewise, you can technically create sprites that use all 16 palette colors, though extra planning will be required in some circumstances for colors to behave as expected.
* For background characters, which half of the palette to use is determined not by the sheet, but by its location in VRAM. To account for this, every background graphics sheet uses the first 8 colors. When transferring low palette sheets, they will be sent directly to VRAM or the appropriate buffer. When transferring high sheets, there is an extra step that picks through the graphics and flips every non-transparent pixel to the higher palette. As such, using the last 8 colors is not recommended when designing sheets. However, it is possible to use them explicitly for direct transfers or even to use all 16 colors if careful planning is done.

## Possible updates
* I might move the sheet pointers table to another location so that all 256 sheets can be accessed. This will necessarily increase the number of banks reserved for data, though I can probably shove some into vanilla banks. I don't see much use for this at the moment, though.