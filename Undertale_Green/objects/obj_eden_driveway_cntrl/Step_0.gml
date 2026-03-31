if (global.eden_drivewaycut == true)
	obj_player.curr_state = PlayerState.CUTSCENE;
if (driveway1 == true && !instance_exists(obj_textboxNEW))
{
	obj_kaitlyn_edendrive.walkup = true;
	obj_player_dummy2.dw_walkright = true;
	alarm[1] = 90;
	driveway1 = false;
}
if (driveway2 == true && !instance_exists(obj_textboxNEW))
{
	alarm[2] = 65;
	alarm[4] = 40;
	driveway2 = false;
}
if (driveway3 == true && !instance_exists(obj_textboxNEW))
{
	obj_kaitlyn_edendrive.walkright = true;
	obj_player_dummy2.dw_walkup = true;
	alarm[3] = 70;
	driveway3 = false;
}
if (driveway4 == true && !instance_exists(obj_textboxNEW))
{
	obj_kaitlyn_edendrive.walkinside = true;
	alarm[6] = 5;
	alarm[5] = 13;
	alarm[7] = 55;
	driveway4 = false;
}
if (driveway5 == true && !instance_exists(obj_textboxNEW))
{
	obj_eden_driveway.walkinside = true;
	alarm[8] = 30;
	driveway5 = false;
}
