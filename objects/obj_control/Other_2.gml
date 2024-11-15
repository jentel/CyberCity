/// @description Game variables

// Game (Global) variables
global.playerControl = true;

global.gameOver = false;
global.gameStart = false;

// Player States
enum playerState {
	idle,
	walking,
	pickingUp,
	carrying,
	carryIdle,
	puttingDown,
}

// Item states
enum itemState {
	idle,
	taken,
	used,
	puttingBack,
}

// Sequence States
enum seqState {
	notPlaying,
	waiting,
	playing,
	finished,
}

// Sequence Variables
sequenceState = seqState.notPlaying;
curSeqLayer = noone;
curSeq = noone;

// NPC states
enum npcState {
	normal,
	done,
}

/// @description Initialize
// Create this object on starting the game. It must remain active throughout the entire game

// set the default language to ID 0. This can be changed later when you add a save/load options feature
global.currentLanguage = 0;

// load and parse the list of available localizations
var _availableLangsJsonStr = load_json_file_to_string("Localization/availableLanguages.json");
availableLangsStruct = json_parse(_availableLangsJsonStr);

localizedStrings = {}; // initialize the localized strings struct
set_language(global.currentLanguage);

