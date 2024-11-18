/// @description Insert description here
// Check for mouse click or touch tap on the button (only when pressed)
if (mouse_check_button_pressed(mb_left) || device_mouse_check_button_pressed(0, 0)) {
    // Check if the mouse/touch is inside the button's boundaries
    if (mouse_x > x - sprite_width / 2 && mouse_x < x + sprite_width / 2 &&
        mouse_y > y - sprite_height / 2 && mouse_y < y + sprite_height / 2) {
        room_goto(rm_bedroom); // Switch to the bedroom room
    }
}