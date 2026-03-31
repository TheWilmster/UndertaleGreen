if (walk_in == true)
{
	vspeed = 1;
	image_speed = 0.15;
	sprite_index = spr_chai_walk_d;
	if (y >= 62)
	{
		vspeed = 0;
		sprite_index = spr_chai_walk_r;
		hspeed = 1;
		if (x >= 212)
		{
			sprite_index = spr_chai_walk_u;
			hspeed = 0;
			image_index = 0;
			image_speed = 0;
			alarm_set(2, 20);
			alarm_set(1, 100);
			walk_in = false;
		}
	}
}
if (walk_out == true)
{
	hspeed = -1;
	image_speed = 0.15;
	sprite_index = spr_chai_walk_l;
	if (x <= 178)
	{
		hspeed = 0;
		sprite_index = spr_chai_walk_u;
		vspeed = -1;
		if (y <= 37)
		{
			vspeed = 0;
			alarm_set(3, 40);
			image_index = 0;
			image_speed = 0;
			walk_out = false;
		}
	}
}
