#include "main.h"

#define EXIT_TILES 16

void engine_content_manager_load()
{
	//unsigned char palette__bin[] = { 0x00, 0x01, 0x05, 0x06, 0x06, 0x07, 0x05, 0x07, 0x07, 0x17, 0x1A, 0x2A, 0x0A, 0x1F, 0x0F, 0x3F };
	//SMS_loadBGPalette((void *)palette__bin);

	SMS_loadPSGaidencompressedTiles(back_tiles__tiles__psgcompr, 0);
	SMS_loadBGPalette((void *)back_tiles__palette__bin);
	//SMS_loadBGPalette((void *)font_tiles__palette__bin);
	
}

void engine_content_manager_draw_font(unsigned char i, unsigned char x, unsigned char y)
{
	const unsigned char *pnt = back_tiles__tilemap__bin;
	SMS_setNextTileatXY(x + 0, y + 0);	SMS_setTile(*pnt + i);
}

void engine_content_manager_draw_tile(unsigned char i, unsigned char x, unsigned char y)
{
	const unsigned char *pnt = back_tiles__tilemap__bin;
	i = 64 + (i / 8) * 16 + i * 2;

	SMS_setNextTileatXY(x + 0, y + 0);	SMS_setTile(*pnt + i + 0);
	SMS_setNextTileatXY(x + 1, y + 0);	SMS_setTile(*pnt + i + 1);
	SMS_setNextTileatXY(x + 0, y + 1);	SMS_setTile(*pnt + i + 16);
	SMS_setNextTileatXY(x + 1, y + 1);	SMS_setTile(*pnt + i + 17);
}

void main(void)
{
	SMS_init();
	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	SMS_useFirstHalfTilesforSprites(true);
	SMS_VDPturnOnFeature(VDPFEATURE_HIDEFIRSTCOL);

	engine_content_manager_load();

	engine_content_manager_draw_font(33 + 18, 1, 1);
	engine_content_manager_draw_font(33 + 19, 2, 1);
	engine_content_manager_draw_font(33 + 4, 3, 1);
	engine_content_manager_draw_font(33 + 21, 4, 1);
	engine_content_manager_draw_font(33 + 4, 5, 1);

	engine_content_manager_draw_tile(0, 1, 2);
	engine_content_manager_draw_tile(1, 3, 2);
	engine_content_manager_draw_tile(2, 5, 2);
	engine_content_manager_draw_tile(3, 7, 2);
	engine_content_manager_draw_tile(4, 9, 2);
	engine_content_manager_draw_tile(5, 11, 2);
	engine_content_manager_draw_tile(6, 13, 2);
	engine_content_manager_draw_tile(7, 15, 2);
	engine_content_manager_draw_tile(8, 17, 2);
	engine_content_manager_draw_tile(9, 19, 2);
	engine_content_manager_draw_tile(10, 21, 2);
	engine_content_manager_draw_tile(11, 23, 2);

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
