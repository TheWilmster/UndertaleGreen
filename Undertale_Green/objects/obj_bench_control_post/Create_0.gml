if (instance_exists(obj_player))
{
	obj_player.visible = false;
	obj_player.curr_state = PlayerState.INTERACT;
}
shiftcam = false;
trans_alarm = false;
