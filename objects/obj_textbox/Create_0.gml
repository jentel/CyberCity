/// @description Variables and setup

// textbox variables
textToShow = "Put whatever text you'd like in here in this string";
textWidth = 450;
lineHeight = 28;
fadeMe = 0;
fadeSpeed = 0.1;
image_alpha = 0;
sequenceToShow = noone;


global.playerControl = false;

// play UI sound
audio_play_sound(snd_pop01, 1, 0);

// dismiss any visible prompts
scr_dismissPrompt(obj_prompt, 0);