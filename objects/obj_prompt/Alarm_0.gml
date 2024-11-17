// Alarm[0] event - after fade-out is complete, reset the object

// If the fade-out is done, you can either deactivate the object or reset its properties
// Example: Resetting the object to prepare it for re-entry (make it visible again)
fadeMe = FADE_IN;  // Set back to fade-in state so it can reappear
image_alpha = 0;    // Reset alpha to make it invisible
shift = 1;          // Reset bobbing direction to default
alarm[1] = 10;      // Reset bobbing alarm to continue the bobbing effect
audio_play_sound(snd_pop02, 1, 0); // Play the sound effect again when reactivated
