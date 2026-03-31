if (global.greenroomadvance4 == true)
{
	alarm_set(2, 140);
	alarm_set(3, 160);
	alarm_set(4, 200);
	alarm_set(1, 260);
}
if (instance_exists(obj_gray_greenroom))
{
	if (obj_gray_greenroom.walktochai == true)
	{
		if (obj_gray_greenroom.x < 147)
		{
			sprite_index = spr_eden_gr;
			image_index = 1;
		}
		if (obj_gray_greenroom.y > 171)
			image_index = 0;
	}
	if (obj_gray_greenroom.runout == true && obj_gray_greenroom.y <= 180)
		image_index = 1;
}
if (walkout == true)
{
	hspeed = -0.75;
	sprite_index = spr_eden_walkl;
	image_speed = 0.1;
	if (x <= 106)
	{
		hspeed = 0;
		sprite_index = spr_eden_walkup;
		vspeed = -0.75;
		if (y <= 89)
		{
			vspeed = 0;
			instance_destroy(self);
		}
	}
}
if (move_back == true)
{
	vspeed += 0.25;
	if (x >= 173)
		hspeed = -1;
	if (x <= 171)
		hspeed = 1;
	if (vspeed >= 0)
	{
		vspeed = 0;
		move_back = false;
		hspeed = 0;
		x = 172;
	}
}
