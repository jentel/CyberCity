/// @description Player Movement
// Will run this code 60 times per second

// Check keys for movement
if (global.playerControl) {
	moveRight = keyboard_check(vk_right)
	moveLeft = keyboard_check(vk_left)
	moveUp = keyboard_check(vk_up)
	moveDown = keyboard_check(vk_down)
}
else {
	moveRight = 0;
	moveLeft = 0;
	moveUp = 0;
	moveDown = 0;
}

// calculate movement
vx = ((moveRight - moveLeft) * (walkSpeed + runSpeed) * (1-carryLimit));
vy = ((moveDown - moveUp) * (walkSpeed + runSpeed) * (1-carryLimit));

// if idle
if (vx == 0 && vy == 0) {
	// If I'm not picking up or putting down an item
	if (myState != playerState.pickingUp && myState != playerState.puttingDown) {
		// If I don't have an item
		if (hasItem == noone) {
			myState = playerState.idle;
		}
		// If I'm carrying an item
		else {
			myState = playerState.carryIdle;
		}
	}
}

// if moving
if (vx != 0 || vy != 0) {
	if (!collision_point(x + vx, y, obj_par_environment, true, true)) {
		x += vx;
	}
	
	if (!collision_point(x, y + vy, obj_par_environment, true, true)) {
		y += vy;
	}
	
	// Change direction based on movement
	if (vx > 0) {
		dir = 0;
	}
	if (vx < 0) {
		dir = 2;
	}
	if (vy > 0) {
		dir = 3;
	}
	if (vy < 0) {
		dir = 1;
	}

	// Set state	
	myState = playerState.walking;
}

if (keyboard_check(vk_enter)) {
	show_message_async("hi");
}

// Depth sorting
depth =- y;

// Auto-Choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir];