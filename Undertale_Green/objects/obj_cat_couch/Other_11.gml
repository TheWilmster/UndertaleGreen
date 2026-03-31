if (obj_textboxNEW.choice == 0)
{
	progress = 1;
	instance_destroy(obj_textboxNEW);
	alarm[0] = 10;
	alarm[1] = 40;
	global.second_dia[16] = 1;
}
else
{
	instance_destroy(obj_textboxNEW);
	obj_player.curr_state = PlayerState.NORMAL;
}
show_debug_message(global.msg);
