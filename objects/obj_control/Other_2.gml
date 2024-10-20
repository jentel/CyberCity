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