if (groverrun == true)
	obj_player.curr_state = PlayerState.CUTSCENE;
if (groverbit == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(610, 454, -999, obj_stagehand_run);
	groverbit = false;
}
if (groverran == true && !instance_exists(obj_textboxNEW) && !instance_exists(obj_stagehand_run))
{
	alarm[0] = 20;
	groverran = false;
}
