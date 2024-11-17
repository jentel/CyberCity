/// @description Setup and variables

// prompt variables
fadeMe = FADE_IN;
fadeSpeed = 0.1;
image_alpha = 0;

// play UI sound
audio_play_sound(snd_pop02, 1, 0);

// set up bobbing effect
shift = 1;
alarm[1] = 10;

original_y = y;  // Store the initial y position