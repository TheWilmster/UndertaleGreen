function sprite_handler()
{
	if (facing == 2)
	{
		if (down)
			facing = 0;
		if (!up && pressdir != -1)
			facing = pressdir;
	}
	if (facing == 0)
	{
		if (up)
			facing = 2;
		if (!down && pressdir != -1)
			facing = pressdir;
	}
	if (facing == 3)
	{
		if (right)
			facing = 1;
		if (!left && pressdir != -1)
			facing = pressdir;
	}
	if (facing == 1)
	{
		if (left)
			facing = 3;
		if (!right && pressdir != -1)
			facing = pressdir;
	}
	if (!up && !down && !left && !right)
	{
		image_index = 0;
		image_speed = 0;
		start_anim = false;
	}
	else
	{
		if (start_anim == false)
		{
			image_index = 1;
			start_anim = true;
		}
		image_speed = 1;
	}
	if (right && !left)
		pressdir = 1;
	if (left)
		pressdir = 3;
	if (up)
		pressdir = 2;
	if (down && !up)
		pressdir = 0;
}
