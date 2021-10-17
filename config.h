#define CMDLENGTH 50
#define DELIMITER " | "
#define TRAILING_DELIMITER
/* #define CLICKABLE_BLOCKS */

const Block blocks[] = {
	BLOCK("echo \"BAT:$(cat /sys/class/power_supply/BAT1/capacity)\"%", 5,    23)
	BLOCK("date '+%Y-%m-%d %H:%M:%S'",                                  1,    24)
};
