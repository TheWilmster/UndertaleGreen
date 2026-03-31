if (instance_exists(obj_player))
{
	obj_player.visible = false;
	obj_player.curr_state = PlayerState.INTERACT;
}
if (shiftcam == true)
{
	obj_player.vspeed = 0.75;
	if (obj_player.y > 240)
		obj_player.vspeed = 0;
}
if (trans_alarm == true)
{
	alarm[0] = 200;
	alarm[1] = 130;
	trans_alarm = false;
}
