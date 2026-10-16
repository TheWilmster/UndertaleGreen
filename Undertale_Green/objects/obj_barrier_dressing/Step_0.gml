if (place_meeting(x, y, obj_player))
{
	obj_player.x = 358;
	obj_player.curr_state = PlayerState.INTERACT;
	DIALOG[0] = "[character,none,-1][delay,1]* Occupied!";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¡Ocupado!";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (global.school_time_sequence == 3)
	instance_destroy();
