/// @description Variables and setup

// emitter variables
en_emitter = 0;

// create emitter
if (useSound != noone) {
	if (!audio_is_playing(useSound)) {
		en_emitter = audio_emitter_create();
		audio_emitter_position(en_emitter, x, y, 0);
		audio_falloff_set_model(audio_falloff_exponent_distance);
		audio_emitter_falloff(en_emitter, fallStart, maxDist, 1);
		audio_play_sound_on(en_emitter, useSound, 1, 1);
	}
}
