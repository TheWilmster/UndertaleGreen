if (y >= 210 && global.people_leave == false && chaistop == true)
{
	hspeed = 2;
	vspeed = 0;
	sprite_index = spr_chai_walk_r;
	if (x >= 181)
	{
		hspeed = 0;
		sprite_index = spr_chai_walk_l;
		image_speed = 0;
		image_index = 0;
		chaistop = false;
	}
}
if (walkcenter == true)
{
	hspeed = -1;
	image_speed = 0.15;
	sprite_index = spr_chai_walk_l;
	if (x <= 143)
	{
		hspeed = 0;
		image_speed = 0;
		sprite_index = spr_chai_walk_d;
		image_index = 0;
		walkcenter = false;
	}
}
if (leave == true)
{
	hspeed = 2;
	vspeed = 0;
	image_speed = 0.2;
	sprite_index = spr_chai_walk_r;
	if (x >= 166)
	{
		hspeed = 0;
		vspeed = 2;
		sprite_index = spr_chai_walk_d;
		if (y >= 420)
		{
			visible = false;
			vspeed = 0;
		}
	}
}
