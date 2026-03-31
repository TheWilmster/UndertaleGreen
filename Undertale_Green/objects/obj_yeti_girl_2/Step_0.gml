if (dialogue2 == true && !instance_exists(obj_textboxNEW))
{
	dialogue2 = false;
	global.yetti_dialogue_2 = false;
}
if (!instance_exists(obj_textboxNEW) && global.yeti_leave2 == true)
{
	instance_create_depth(0, 0, -9999, obj_transition_screen);
	global.yeti_leave2 = false;
	global.backstage_unlocked = true;
}
