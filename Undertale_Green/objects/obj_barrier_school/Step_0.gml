if (place_meeting(x, y, obj_player))
{
	obj_player.y = 303;
	obj_player.curr_state = PlayerState.INTERACT;
	DIALOG[0] = "[character,none,-1][delay,1]* (Probably not a good idea to\n  leave.)";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
