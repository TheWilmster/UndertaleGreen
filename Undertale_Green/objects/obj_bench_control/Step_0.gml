if (global.cutscene_battle_start == true && !instance_exists(obj_textboxNEW))
{
	battle_setup("* Queen Chai declares war!");
	instance_create_depth(0, 0, depth, obj_battle_transition);
	global.cutscene_battle_start = false;
}
