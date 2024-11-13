/// @description Virtual Keyboard
// You can write your code in this editor

//my_key = virtual_key_add(x, y, sprite_get_width(sprite_index), sprite_get_height(sprite_index), keycode);

my_key = virtual_key_add(x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height, keycode);