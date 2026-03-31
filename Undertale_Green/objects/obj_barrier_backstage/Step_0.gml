if (global.school_time_sequence == 3)
{
	x = 79;
	y = 449;
}
if (place_meeting(x, y, obj_player))
{
	obj_player.y = 369;
	obj_player.curr_state = PlayerState.INTERACT;
	if (global.school_time_sequence != 3)
		global.msg[0] = "[character,none,-1][delay,1]* (You don't want to interrupt\n  the rehearsal.)";
	else
		global.msg[0] = "[character,none,-1][delay,1]* (It's too dark back here.)";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
