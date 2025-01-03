/// @description Customizable Variables

// Input
//confirm_key = vk_space; // button to press to go to the next page
confirm_key = vk_enter; // button to press to go to the next page
up_key = vk_up; // button to press to move down in options
down_key = vk_down; // button to press to move down in options
max_input_delay = 5; // how many frames to ignore input
input_delay = max_input_delay;

// position
margin = 16; // how much space the textbox gets from the edges of the screen
padding = 30; // how much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = (display_get_gui_height() - margin * 2) - 150;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

// Text
text_font = font_textbox;
text_color = c_white;
text_speed = 0.6;
text_x = padding;
text_y = padding;
text_width = width - padding * 2;

// Portrait
portrait_x = padding;
portrait_y = padding;
portrait_scaling = 0.25;

// Speaker
speaker_x = padding;
speaker_y = 0;
speaker_y_offset = 8;
speaker_font = font_name;
speaker_color = c_white;

// Options
option_x = padding;
option_y = padding + y - height - 45;
option_spacing = 40;
option_selection_indent = 24;
option_width = 200;
option_height = 75;
option_text_x = 20;
option_text_y = 5;
option_text_color = c_white;

/// Private Properties
/** LOOK BUT DO NOT EDIT! **/
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

portrait_sprite = -1;
portrait_width = sprite_get_width(spr_portrait);
portrait_height = sprite_get_height(spr_portrait);
portrait_side = PORTRAIT_SIDE.LEFT;

enum PORTRAIT_SIDE {
	LEFT,
	RIGHT
}

speaker_name = "";
speaker_width = sprite_get_width(spr_name);
speaker_heigth = sprite_get_height(spr_name);

options = [];
current_option = 0;
option_count = 0;

current_topic = ""
/// Methods
/*** Generally, you'll never need to call these manually **/


// Start conversation
setTopic = function(topic) {
	global.playerControl = false;
	actions = global.topics[$ topic];
	current_action = -1;
	current_topic = topic;
	next(topic);
}

// Move to the next action, or close the textbox if out of actions
next = function(topic) {
	current_topic = topic;
	current_action++;
	if (current_action >= array_length(actions)) {
		global.playerControl = true;
		instance_destroy();
	}
	else {
		actions[current_action].act(id);
	}
}

// Set the text that should be typed out
setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}