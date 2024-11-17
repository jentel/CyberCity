/// @description Insert description here
// You can write your code in this editor
if(current_topic == "follow link")
{
	obj_virtual_key.visible = 0;
	obj_virtual_button.visible = 0
	obj_virtual_key_mini.visible = 0;
	global.isSeqActive = true;
	scr_playSequence(open_link);
}