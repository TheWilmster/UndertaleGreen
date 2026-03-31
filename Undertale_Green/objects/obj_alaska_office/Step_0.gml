if (walk_down == true)
{
	if (y <= 233)
	{
		image_speed = 0.2;
		sprite_index = spr_alaska_d;
		vspeed = 2;
	}
	else
	{
		sprite_index = spr_alaska_l;
		vspeed = 0;
		obj_chai_office.sprite_index = spr_chai_walk_l;
		hspeed = -2;
		if (x <= 480)
		{
			hspeed = 0;
			image_speed = 0;
			sprite_index = spr_alaska_u;
			image_index = 0;
			walk_down = false;
		}
	}
}
if (walk_offscreen == true)
{
	if (x <= 525)
	{
		image_speed = 0.2;
		sprite_index = spr_alaska_r;
		hspeed = 2;
	}
	else
	{
		sprite_index = spr_alaska_u;
		vspeed = -2;
		hspeed = 0;
		if (y <= 111)
			instance_destroy();
	}
}
