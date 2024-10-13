/// @description Textbox test
var _text;

// create a textbox if NPC is nearby
if (nearbyNPC && global.playerControl) {
	_text = nearbyNPC.npc_text;
	if (!instance_exists(obj_textbox)) {
		var _iii = instance_create_depth(x, y, -10000, obj_textbox);
		_iii.textToShow = _text;
	}
}
