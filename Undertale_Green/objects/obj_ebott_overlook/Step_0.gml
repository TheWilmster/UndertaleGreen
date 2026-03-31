obj_player.curr_state = PlayerState.CUTSCENE;
if (credits == true && !instance_exists(obj_textboxNEW))
{
	alarm[1] = 170;
	credits = false;
}
if (ebott1 == true && !instance_exists(obj_textboxNEW))
{
	alarm[3] = 40;
	alarm[4] = 310;
	ebott1 = false;
}
if (ebott2 == true && !instance_exists(obj_textboxNEW))
{
	alarm[5] = 60;
	ebott2 = false;
}
