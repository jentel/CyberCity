/// @description Main event

// Variables
walkSpeed = 5;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
nearbyNPC = noone;
lookRange = 90;
hasGreeted = false;
npcPrompt = noone;
hasItem = noone;
hasItemX = x;
hasItemY = y;
nearbyItem = noone;
itemPrompt = noone;
carryLimit = 0;
myState = playerState.idle;
runSpeed = 0;
runMax = 12;
running = false;
startDust = 0;

// create listener and set orientation
audio_listener_set_position(0, x, y, 0);
audio_listener_set_orientation(0, 0, 1, 0, 0, 0, 1);

// Player Sprite array [myState][dir]
// Idle
playerSpr[playerState.idle][0] = spr_oldWoman_idle_right;
playerSpr[playerState.idle][1] = spr_oldWoman_idle_up;
playerSpr[playerState.idle][2] = spr_oldWoman_idle_left;
playerSpr[playerState.idle][3] = spr_oldWoman_idle_down;

//Walking
playerSpr[playerState.walking][0] = spr_oldWoman_walk_right;
playerSpr[playerState.walking][1] = spr_oldWoman_walk_up;
playerSpr[playerState.walking][2] = spr_oldWoman_walk_left;
playerSpr[playerState.walking][3] = spr_oldWoman_walk_down;