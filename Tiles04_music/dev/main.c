#include "main.h"
#include "banks\bank6.h"
#include "banks\bank7.h"

#define TP014_psg TP014_psg
#define TP015_psg TP015_psg
#define TP016_psg TP016_psg
#define TP017_psg TP017_psg
#define TP018_psg TP018_psg
#define TP027_psg TP027_psg
#define TP028_psg TP028_psg		// awesome
#define TP036_psg TP036_psg
#define TP044_psg TP044_psg		// weird medium
#define TP047_psg TP047_psg		// spring short tho'

#define TP054_psg TP054_psg		// not bad med
#define TP057_psg TP057_psg		// nice slow one but too short and could be annoying when loop
#define TP062_psg TP062_psg
#define TP190_psg TP190_psg		// nice
#define TP221_psg TP221_psg		// ode to joy
#define TP229_psg TP229_psg
#define TP237_psg TP237_psg		// we BBQ'd
#define TP243_psg TP243_psg
#define TP247_psg TP247_psg
#define TP257_psg TP257_psg

void main(void)
{
	SMS_init();
	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	SMS_useFirstHalfTilesforSprites(true);
	SMS_VDPturnOnFeature(VDPFEATURE_HIDEFIRSTCOL);

	SMS_setSpritePaletteColor( 0, RGB( 2, 2, 2 ) );

	SMS_mapROMBank( 6 );

	PSGPlayNoRepeat( TP018_psg );
	//PSGPlay( TP044_psg );

	SMS_displayOn();
	for (;;)
	{
		PSGFrame();
		PSGSFXFrame();

		SMS_waitForVBlank();
	}
}

#ifdef _CONSOLE
#else
	SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
	SMS_EMBED_SDSC_HEADER(1, 0, 2017, 3, 17, "StevePro Studios", "Candy Kid Demo", "DESC");
#endif
