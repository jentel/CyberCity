 /// @description Virtual Keyboard
// Initialize Virtual Keys
#macro MAIN_KEY "obj_virtual_key"
#macro MINI_KEY "obj_virtual_key_mini"
#macro ENTER_KEY "obj_virtual_button"
#macro ENTER_MINI "mini"
#macro ENTER_MAIN "main"

#macro LEFT_K "Left"
#macro RIGHT_K "Right"
#macro UP_K "Up"
#macro DOWN_K "Down"
#macro MINIUP "MiniUp"
#macro MINIDOWN "MiniDown"
#macro ENTER_K "Enter"
#macro MINIENTER_K "MiniEnter"

var virt_id = virtual_key_add(x - sprite_width / 2, y - sprite_height / 2, sprite_width, sprite_height, keycode);
var str = object_get_name(object_index);
var strType = "";

if(str == MAIN_KEY) {
	switch(keycode){
		case vk_left:
			strType = "Left";
			break;
		case vk_right:
			strType = "Right";
			break;
		case vk_up:
			strType = "Up";
			break;
		case vk_down:
			strType = "Down";
			break;
	}
}
else if(str == MINI_KEY) {
	switch(keycode){
		case vk_up:
			strType = "MiniUp";
			break;
		case vk_down:
			strType = "MiniDown";
			break;
	}
}
else if(str == ENTER_KEY) {
	strType = variable_name == ENTER_MINI ? "MiniEnter" : "Enter";
}

global.ButtonCoords[$ strType] = {buttonId: virt_id, xp: x, yp: y, spriteH: sprite_height, spriteW: sprite_width};



//if(str == MAIN_KEY) {
//	switch(keycode){
//		case vk_left:
//			strType = LEFT_K;
//			break;
//		case vk_right:
//			strType = RIGHT_K;
//			break;
//		case vk_up:
//			strType = UP_K;
//			break;
//		case vk_down:
//			strType = DOWN_K;
//			break;
//	}
//}
//else if(str == MINI_KEY) {
//	switch(keycode){
//		case vk_up:
//			strType = MINIUP;
//			break;
//		case vk_down:
//			strType = MINIDOWN;
//			break;
//	}
//}
//else if(str == ENTER_KEY) {
//	strType = variable_name == MINIENTER_K ? MINIENTER_K : ENTER_K;
//}

//global.ButtonCoords[$ strType] = {button_id:virt_id, xp:x, yp:y, spriteH:sprite_height, spriteW:sprite_width};