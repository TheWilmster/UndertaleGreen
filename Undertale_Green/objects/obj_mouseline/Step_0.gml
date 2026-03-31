if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 2;
	obj_player.curr_state = PlayerState.CUTSCENE;
	obj_player.image_speed = 0;
	obj_player.image_index = 0;
	alarm[0] = 20;
}
