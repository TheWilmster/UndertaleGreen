if (movement == true)
{
	depth = -300;
	if (y >= 219)
	{
		depth = -300;
		vspeed = 0;
		image_speed = 0.2;
		sprite_index = spr_destiny_l;
		hspeed = -2;
		if (x <= 90)
			depth = -30;
		if (x <= 77)
		{
			hspeed = 0;
			image_speed = 0;
			image_index = 0;
			sprite_index = spr_destiny_chill;
			x = 69;
			y = 217;
			depth = -30;
			movement = false;
		}
	}
}
if (move_in == true)
{
	hspeed = -0.5;
	if (x <= 140)
	{
		hspeed = 0;
		move_in = false;
	}
}
if (global.greenroomadvance6 == true && !instance_exists(obj_textboxNEW))
{
	global.people_leave = true;
	alarm_set(0, 160);
}
if (global.people_leave == true)
{
	alarm_set(1, 10);
	alarm_set(2, 20);
	alarm_set(3, 30);
	alarm_set(4, 40);
	global.people_leave = false;
}
if (leave == true)
{
	hspeed = 2;
	image_speed = 0.2;
	sprite_index = spr_destiny_r;
	if (x >= 114)
	{
		hspeed = 0;
		sprite_index = spr_destiny_d;
		vspeed = 2;
		if (y >= 420)
		{
			visible = false;
			vspeed = 0;
		}
	}
}
