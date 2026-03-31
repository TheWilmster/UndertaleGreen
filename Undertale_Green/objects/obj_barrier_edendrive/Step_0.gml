if (place_meeting(x, y, obj_player))
{
	obj_player.y = 337;
	obj_player.curr_state = PlayerState.INTERACT;
	global.msg[0] = "[character,none,-1][delay,1]* (It'd be rude to run away\n  now.)";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
