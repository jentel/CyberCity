/// @description Conditionally moves the arrow and select keys
// when a textbox appears
if(instance_exists(obj_textbox_di))
{
	// Parent first
	obj_virtual_key.visible = 0;
	obj_virtual_button.visible = 1;
	obj_virtual_key_mini.visible = 1;
	obj_virtual_button.keycode = vk_space;
	obj_virtual_button.y = 150;
}
else {
	obj_virtual_button.y = 285.2945;
	obj_virtual_button.keycode = vk_enter;
	// Parent first
	obj_virtual_key.visible = 1;
	obj_virtual_key_mini.visible = 0;
}