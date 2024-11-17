/// @description Virtual Keyboard
// You can write your code in this editor

virtual_key_add(x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height, vk_enter);

// In the Room Start event
show_debug_message("Virtual Key Added at (" + string(x - sprite_width / 2) + ", " + string(y - sprite_height / 2) + ")");
