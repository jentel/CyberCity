/// @description Deal with music and more

// play music based on room

switch room {
	case rm_bedroom:
		audio_stop_sound(snd_happy_farmer_giulio_fazio_main_version_24036_00_43);
		audio_play_sound(snd_pixel_playground_color_parade_main_version_25382_01_43, 1, 1);
		break;
	case rm_computer:
		audio_stop_sound(snd_pixel_playground_color_parade_main_version_25382_01_43);
		audio_play_sound(snd_sneak_in_soundroll_main_version_16772_01_52, 1, 1);
		scr_playSequence(open_email)
		break;
	case rm_gameover:
		audio_stop_sound(snd_pixel_playground_color_parade_main_version_25382_01_43);
		audio_play_sound(snd_happy_farmer_giulio_fazio_main_version_24036_00_43, 1, 1);
}

// Mark Sequences Layer
if (layer_exists("Cutscenes")) {
	curSeqLayer = "Cutscenes";
} 
else {
	curSeqLayer = "Instances";
}