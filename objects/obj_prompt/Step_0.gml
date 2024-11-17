/// @description effects and animation

// bob up and down
y += shift;

// fade effects
switch fadeMe {
	// fade in
	case FADE_IN: {
		if (image_alpha < 1) {
			image_alpha += fadeSpeed;
		}
		if (image_alpha >= 1) {
			fadeMe = FADE_VISIBLE;
		}
		break;
	}
	case FADE_OUT: {
		if (image_alpha > 0) {
			image_alpha -= fadeSpeed;
		}
		if (image_alpha <= 0) {
			fadeMe = FADE_DONE;
			alarm[0] = 2; // queue destroy
		}
		break;
	}
	
	case FADE_VISIBLE: {
		 // The object is now fully visible, do any continuous behavior here
        // For example, start bobbing, if not already in progress
		break;
	}
	case FADE_DONE: {
		// Handle post-fade behavior, maybe deactivate or reset object
		break;
	}
}