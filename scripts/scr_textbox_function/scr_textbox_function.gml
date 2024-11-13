/**
 *  Keeps track of which text goes to what page
 * @param {any*} _text Description
 */
function scr_text(_text) {
	text[page_number] = _text;
	page_number++;
}

/**
 * Keeps track of which option user chooses
 * @param {any*} _option Description
 * @param {any*} _link_id Description
 */
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	option_number++;
}

/**
 * Creates the textbox of which dialog we want
 * @param {any*} _text_id Description
 */
function create_textbox(_text_id) {
	with(instance_create_depth(0, 0, -9999, obj_textbox)) {
		scr_game_text(_text_id);
	}
}