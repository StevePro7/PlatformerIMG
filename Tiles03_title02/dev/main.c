#include "main.h"

#define EXIT_TILES 16

void engine_content_manager_load()
{
	SMS_loadPSGaidencompressedTiles( title6__tiles__psgcompr, 0);
	SMS_loadSTMcompressedTileMap( 0, 0, title6__tilemap__stmcompr );
	SMS_loadBGPalette((void *) title6__palette__bin );

	/*SMS_loadPSGaidencompressedTiles( title8__tiles__psgcompr, 0);
	SMS_loadSTMcompressedTileMap( 0, 0, title8__tilemap__stmcompr );
	SMS_loadBGPalette((void *) title8__palette__bin );*/
}


void main(void)
{
	SMS_init();
	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	SMS_useFirstHalfTilesforSprites(true);
	SMS_VDPturnOnFeature(VDPFEATURE_HIDEFIRSTCOL);

	engine_content_manager_load();

	SMS_displayOn();
	for (;;)
	{
		SMS_waitForVBlank();
	}
}

#ifdef _CONSOLE
#else
	SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
	SMS_EMBED_SDSC_HEADER(1, 0, 2017, 3, 17, "StevePro Studios", "Candy Kid Demo", "DESC");
#endif
