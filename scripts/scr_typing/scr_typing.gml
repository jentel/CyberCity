/**
 * Function The one function we need to call!
 * Creates a textbox and starts a conversation
 * @param {any*} topic Description
 */
function startDialogue(topic) {
	if(instance_exists(obj_textbox_di))
		return;
	
	try
	{
		var inst = instance_create_depth(x, y, -999, obj_textbox_di);
		inst.setTopic(topic);
	}
	catch(_exception) {
		instance_destroy(obj_textbox_di, true);
		
		var margin = 16;
		var width = display_get_gui_width() - margin * 2;
		var height = (display_get_gui_height() - margin * 2) - 150;
		
		x = (display_get_gui_width() - width) / 2;
		y = display_get_gui_height() - height - margin;
		
		var inst = instance_create_depth(x, y, -999, obj_textbox_di);
		inst.setTopic(topic);
	}
}

/**
 * Function Gets called at the end of the computer sequence
 * This is called a "moment"
 */
function startDialogueMoment() {
	layer_sequence_destroy(open_link);
	new DialogueAction();
	global.isSeqActive = false;
	startDialogue(ViewEmail);
}

/**
 * Function Gets called at the end of the computer sequence
 * This is called a "moment"
 */
function startDialogueMomentVirus() {
	layer_sequence_destroy(open_email);
		
	var lay_id = layer_get_id("Background_PC");
	var back_id = layer_background_get_id(lay_id);
	if (layer_background_get_sprite(back_id) != cut_ssn)
	{
	    layer_background_sprite(back_id, virus);
	}

	new DialogueAction();
	global.isSeqActive = false;
	startDialogue(VirusPopup);
}

/// @desc Function Types out the text in the textbox, and looks for
/// longer words to put on the next line
/// @param {any*} x Description
/// @param {any*} y Description
/// @param {any*} text Description
/// @param {any*} progress Description
/// @param {any*} width Description
function type(x, y, text, progress, width) {
	var draw_x = 0;
	var draw_y = 0;
	
	for (var i = 1; i <= progress; i++) {
		var char = string_char_at(text, i);
		
		// handle normal line breaks
		if(char == "\n") {
			draw_x = 0;
			draw_y += string_height("A");
		}
		// If we're staring a new word, we can line break
		else if(char == " ") {
			draw_x += string_width(char);
			
			var word_width = 0;
			for (var ii = i + 1; ii <= string_length(text); ii++) {
				var word_char = string_char_at(text, ii);
				
				// if we reached the end of the word, stop checking
				if(word_char == "\n" || word_char == " ")
					break;
				
				// if the current word extends past the width boundary,
				// then move it to the next line
				word_width += string_width(word_char);
				if(draw_x + word_width > width) {
					draw_x = 0;
					draw_y += string_height("A");
					break;
				}
			}
		}
		else {
			// Draw the letter
			draw_text(x + draw_x, y + draw_y, char);
			draw_x += string_width(char);
		}
	}
}