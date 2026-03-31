if (walk_to_car == true)
{
	if (y <= 203)
	{
		vspeed = 1;
		image_speed = 0.1;
		sprite_index = spr_chai_walk_d;
	}
	else
	{
		vspeed = 0;
		hspeed = -1;
		sprite_index = spr_chai_walk_l;
		if (x <= 525)
		{
			image_index = 0;
			hspeed = 0;
			image_speed = 0;
			walk_to_car = false;
		}
	}
}
if (walk_offscreen == true)
{
	vspeed = -2;
	image_speed = 0.2;
	sprite_index = spr_chai_walk_u;
	if (y <= 111)
		instance_destroy();
}
