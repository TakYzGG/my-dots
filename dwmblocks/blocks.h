//Modify this file to change what commands output to your statusbar, and recompile using the make command.
#define sc(ruta) "$HOME/.config/dwmblocks/" ruta
static const Block blocks[] = {
	/*Icon*/	/*Command*/										/*Update Interval*/	/*Update Signal*/
	{"", sc("volumen.sh"),												0,		10},
	{"", sc("brillo.sh"),												0,		10},
	{"", sc("bateria.sh"),												300,	10},
	{"", "date +'%H:%M'",												5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 3;
