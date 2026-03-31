if (cutscene == true)
{
	obj_player.curr_state = PlayerState.INTERACT;
	alarm[0] = 10;
	cutscene = false;
}
if (ebottwalkoff == true && !instance_exists(obj_textboxNEW))
{
	obj_player.curr_state = PlayerState.INTERACT;
	obj_destiny_fb.walkoff = true;
	obj_kaitlyn_fb.walkoff = true;
	obj_alaska_fb.walkoff = true;
	ebottwalkoff = false;
}
