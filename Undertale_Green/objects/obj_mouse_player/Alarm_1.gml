if (image_index == 0)
{
	with (obj_mouse_player)
	{
		if (hspeed == 0)
		{
			hspeed = mouse_speed;
			vspeed = 0;
			image_index = 2;
		}
		else
		{
			hspeed = 0;
			vspeed = mouse_speed;
			image_index = 0;
		}
	}
}
if (image_index == 1)
{
	with (obj_mouse_player)
	{
		if (hspeed == 0)
		{
			hspeed = mouse_speed;
			vspeed = 0;
			image_index = 2;
		}
		else
		{
			hspeed = 0;
			vspeed = -mouse_speed;
			image_index = 1;
		}
	}
}
if (image_index == 2)
{
	with (obj_mouse_player)
	{
		if (hspeed == 0)
		{
			hspeed = -mouse_speed;
			vspeed = 0;
			image_index = 3;
		}
		else
		{
			hspeed = 0;
			vspeed = -mouse_speed;
			image_index = 1;
		}
	}
}
if (image_index == 3)
{
	with (obj_mouse_player)
	{
		if (hspeed == 0)
		{
			hspeed = -mouse_speed;
			vspeed = 0;
			image_index = 3;
		}
		else
		{
			hspeed = 0;
			vspeed = mouse_speed;
			image_index = 0;
		}
	}
}
