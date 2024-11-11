/// @description Textbox initialization
depth = -999;

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
page_number = 0;
text = ["Here's a kinda long bit of text so we can see if everything works alright!",
		"Here's another kinda long bit of text so we can see if everything works alrighttttttt!!!",
		"Short",
		"This guy that is teaching this tutorial doesn't apparently know how to instantiate an array like this so all of his code looks like trash."]



text_length[0] = string_length(text[0]);
draw_char = 0;

text_speed = 1;

setup = false;