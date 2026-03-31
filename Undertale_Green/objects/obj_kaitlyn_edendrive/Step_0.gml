obj_player.curr_state = PlayerState.CUTSCENE;
if (walkup == true)
{
	sprite_index = spr_kaitlyn_u;
	image_speed = 0.2;
	vspeed = -1;
	if (y <= 183)
	{
		vspeed = 0;
		image_index = 0;
		image_speed = 0;
		walkup = false;
		alarm[0] = 10;
	}
}
if (walkright == true)
{
	sprite_index = spr_kaitlyn_r;
	image_speed = 0.2;
	hspeed = 1;
	if (x >= 260)
	{
		hspeed = 0;
		sprite_index = spr_kaitlyn_l;
		image_index = 0;
		image_speed = 0;
		walkright = false;
	}
}
if (walkinside == true)
{
	sprite_index = spr_kaitlyn_l;
	image_speed = 0.4;
	hspeed = -2;
	if (x <= 244)
	{
		hspeed = 0;
		vspeed = -2;
		sprite_index = spr_kaitlyn_u;
		if (y <= 167)
			instance_destroy();
	}
}
