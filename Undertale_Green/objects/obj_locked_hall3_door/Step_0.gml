if (global.hall3door_enterable == true)
	instance_destroy(self);
if (unlock == true && !instance_exists(obj_textboxNEW))
{
	global.hall3door_enterable = true;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_school_hall,
		target_marker: "A"
	});
	unlock = false;
}
if (global.keycard_prompt == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(x, y, -9999, obj_menu);
	obj_menu.item_list_prompt = true;
	obj_menu.current_menu = 1;
	obj_menu.text_offset = 40;
	obj_player.curr_state = PlayerState.MENU;
	global.keycard_prompt = false;
}
