/// @description Deal with music and more

// play music based on room

switch room {
	case rm_bedroom:
		audio_play_sound(snd_pixel_playground_color_parade_main_version_25382_01_43, 1, 1);
		break;
	case rm_computer:
		audio_stop_sound(snd_pixel_playground_color_parade_main_version_25382_01_43);
		audio_play_sound(snd_sneak_in_soundroll_main_version_16772_01_52, 1, 1);
		break;
}

// Mark Sequences Layer
if (layer_exists("Cutscenes")) {
	curSeqLayer = "Cutscenes";
} 
else {
	curSeqLayer = "Instances";
}