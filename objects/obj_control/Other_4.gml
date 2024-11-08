/// @description Deal with music and more

// play music based on room

switch room {
	case rm_bedroom:
		audio_play_sound(snd_Sunset_Landscape_chosic_com_, 1, 1);
		break;
}

// Mark Sequences Layer
if (layer_exists("Cutscenes")) {
	curSeqLayer = "Cutscenes";
} 
else {
	curSeqLayer = "Instances";
}