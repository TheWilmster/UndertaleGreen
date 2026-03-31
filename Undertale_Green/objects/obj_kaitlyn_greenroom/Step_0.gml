if (y >= 242 && global.people_leave == false)
{
	vspeed = 0;
	sprite_index = spr_kaitlyn_l;
	image_speed = 0.2;
	hspeed = -2;
	if (x <= 76)
	{
		image_speed = 0;
		image_index = 0;
		sprite_index = spr_kaitlyn_chill;
		x = 67;
		y = 240;
		hspeed = 0;
	}
}
if (leave == true)
{
	hspeed = 2;
	image_speed = 0.2;
	sprite_index = spr_kaitlyn_r;
	if (x >= 114)
	{
		hspeed = 0;
		sprite_index = spr_kaitlyn_d;
		vspeed = 2;
		if (y >= 420)
		{
			visible = false;
			vspeed = 0;
		}
	}
}
