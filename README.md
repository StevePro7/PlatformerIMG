# PlatformerIMG
Images for Platformer game

19/02/2019
Powershell rename files
Reference:
E:\Steven\XNA\Platformer\SpriteBlackBG_04_sprites\Game\bin\x86\Debug

Start | Run | Powershell
cd E:\GitHub\StevePro7\PlatformerIMG\Sprites02_64_slice\Game\Content\Sprites01_64\MonsterA
get-childitem *.png | foreach { rename-item $_ $_.Name.Replace("MonsterA_", "") }

18/02/2019
Get all the PNG files and make black background fill
Open in paint.net and set all rest to transparent
Save all spritesheets on black background
This now has outline.
Determine the largest width between 32-48
Copy all monsters to maximum width and resize using
resize.net
All images should be 32x64
Build spritesheet 320x64
Save
Half all spritesheets and save again to 160x32
Dump out 10x frames at 16x32 for all spritesheets
Copy and dump into Gimp2
Change to common palette
.db $00 $00 $01 $00 $11 $16 $25 $15 $15 $05 $27 $0B $2A $1A $2F $3F
Source:
spritesheet.bmp
E:\Steven\XNA\Platformer\SpriteBlackBG\Game\bin\x86\Debug