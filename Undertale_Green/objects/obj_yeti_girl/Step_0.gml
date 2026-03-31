if (dialogue2 == true && !instance_exists(obj_textboxNEW))
{
	dialogue2 = false;
	global.yetti_dialogue_1 = false;
}
if (!instance_exists(obj_textboxNEW) && global.yeti_leave1 == true)
{
	instance_create_depth(0, 0, -9999, obj_transition_screen);
	global.yeti_leave1 = false;
	global.lobby_unlocked = true;
}
