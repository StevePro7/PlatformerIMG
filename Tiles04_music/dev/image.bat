@echo off
REM echo Execute bmp2tile

cd ..\gfx

bmp2tile.exe Title\title6.png -savetiles "title6 (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 0 -savetilemap "title6 (tilemap).stmcompr" -savepalette "title6 (palette).bin" -fullpalette -exit
bmp2tile.exe Title\title8.png -savetiles "title8 (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 0 -savetilemap "title8 (tilemap).stmcompr" -savepalette "title8 (palette).bin" -fullpalette -exit

cd ..\dev

folder2c ..\gfx gfx