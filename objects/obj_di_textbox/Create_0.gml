/// @description Textbox initialization
depth = -9999;

textbox_width = 500;
textbox_height = 150;
border = 30;
line_sep = 30;
line_width = textbox_width - border * 2;

txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60;

// the test
page = 0;
page_number = 1;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

// options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;


setup = false;