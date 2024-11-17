/// @description effects and animation

// bob up and down
y += shift;

switch fadeMe {
    case FADE_IN: {
        // Reset position when we start fading in
        if (image_alpha == 0) {  // Only reset position if we are fading in
            shift = 1;            // Set shift to 1 (upward direction)
            y = original_y;       // Reset y to the starting position
            alarm[1] = 10;        // Restart bobbing cycle
        }

        // Handle fade-in effect
        if (image_alpha < 1) {
            image_alpha += fadeSpeed;
        }
        if (image_alpha >= 1) {
            fadeMe = FADE_VISIBLE;  // Transition to visible state
        }
        break;
    }

    case FADE_OUT: {
        // Handle fade-out effect
        if (image_alpha > 0) {
            image_alpha -= fadeSpeed;
        }
        if (image_alpha <= 0) {
            fadeMe = FADE_DONE;
            alarm[0] = 2;  // Queue any additional actions after fade-out
        }
        break;
    }
}
