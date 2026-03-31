if (dialogue2 == true && !instance_exists(obj_textboxNEW))
{
	dialogue2 = false;
	global.yetti_dialogue_3 = false;
}
if (!instance_exists(obj_textboxNEW) && global.yeti_leave3 == true)
{
	instance_create_depth(0, 0, -9999, obj_transition_screen);
	global.yeti_leave3 = false;
	global.office_unlocked = true;
}
