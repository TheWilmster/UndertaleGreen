if (y >= 246 && global.people_leave == false && leave == false && alaskastop == true)
{
	vspeed = 0;
	hspeed = 2;
	sprite_index = spr_alaska_r;
	if (x >= 180)
	{
		hspeed = 0;
		image_speed = 0;
		image_index = 0;
		sprite_index = spr_alaska_chill;
		x = 192;
		y = 246;
		alaskastop = false;
	}
}
if (leave == true)
{
	hspeed = -2;
	vspeed = 0;
	image_speed = 0.2;
	sprite_index = spr_alaska_l;
	if (x <= 166)
	{
		hspeed = 0;
		vspeed = 2;
		sprite_index = spr_alaska_d;
		if (y >= 420)
		{
			visible = false;
			vspeed = 0;
		}
	}
}
