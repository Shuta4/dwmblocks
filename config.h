#define CMDLENGTH 50
#define DELIMITER " | "
#define TRAILING_DELIMITER
#define CLICKABLE_BLOCKS

const Block blocks[] = {
	BLOCK("dwmblocks-disk",    60,   5)
	BLOCK("dwmblocks-network", 3,    4)
#ifdef HAS_BATTERY
	BLOCK("dwmblocks-battery", 5,    3)
#endif
	BLOCK("dwmblocks-volume",  30,   2)
	BLOCK("dwmblocks-kb",      60,   6)
	BLOCK("dwmblocks-time",    1,    1)
};

