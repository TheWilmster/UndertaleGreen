alarm[2] = 5;
nearmouse = instance_nearest(x, y, obj_mouse_v5);
if (image_index == 0)
{
	if (nearmouse.hspeed == 0)
	{
		nearmouse.hspeed = nearmouse.mouse_speed;
		nearmouse.vspeed = 0;
		nearmouse.image_index = 2;
	}
	else
	{
		nearmouse.hspeed = 0;
		nearmouse.vspeed = nearmouse.mouse_speed;
		nearmouse.image_index = 0;
	}
}
if (image_index == 1)
{
	if (nearmouse.hspeed == 0)
	{
		nearmouse.hspeed = nearmouse.mouse_speed;
		nearmouse.vspeed = 0;
		nearmouse.image_index = 2;
	}
	else
	{
		nearmouse.hspeed = 0;
		nearmouse.vspeed = -nearmouse.mouse_speed;
		nearmouse.image_index = 1;
	}
}
if (image_index == 2)
{
	if (nearmouse.hspeed == 0)
	{
		nearmouse.hspeed = -nearmouse.mouse_speed;
		nearmouse.vspeed = 0;
		nearmouse.image_index = 3;
	}
	else
	{
		nearmouse.hspeed = 0;
		nearmouse.vspeed = -nearmouse.mouse_speed;
		nearmouse.image_index = 1;
	}
}
if (image_index == 3)
{
	if (nearmouse.hspeed == 0)
	{
		nearmouse.hspeed = -nearmouse.mouse_speed;
		nearmouse.vspeed = 0;
		nearmouse.image_index = 3;
	}
	else
	{
		nearmouse.hspeed = 0;
		nearmouse.vspeed = nearmouse.mouse_speed;
		nearmouse.image_index = 0;
	}
}
