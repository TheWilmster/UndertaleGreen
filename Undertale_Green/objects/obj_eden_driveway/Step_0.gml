obj_player.curr_state = PlayerState.CUTSCENE;
if (knockback == true)
{
	hspeed += 0.5;
	if (hspeed >= 0)
	{
		hspeed = 0;
		knockback = false;
		alarm[0] = 15;
	}
}
if (walkright == true)
{
	sprite_index = spr_eden_drivewalk;
	image_speed = 0.2;
	hspeed = 1;
	if (x >= 241)
	{
		hspeed = 0;
		image_index = 0;
		image_speed = 0;
		sprite_index = spr_eden_drive;
		walkright = false;
	}
}
if (walkinside == true)
{
	sprite_index = spr_eden_walkup;
	image_speed = 0.2;
	vspeed = -1;
	if (y <= 159)
		instance_destroy();
}
