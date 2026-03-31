if (global.edenroom_entered == false)
	obj_player.curr_state = PlayerState.CUTSCENE;
if (diastart == 1 && !instance_exists(obj_textboxNEW))
{
	global.edenroom_entered = true;
	obj_player.curr_state = PlayerState.NORMAL;
	diastart = 0;
}
