if (crash == true)
{
	increase += 2;
	if (image_angle >= -130)
	{
		image_angle -= (8 + increase);
	}
	else
	{
		crash = false;
		increase = 0;
		reset = true;
		obj_heart.shake = 5;
	}
}
if (reset == true)
{
	if (image_angle < 0)
	{
		image_angle += 15;
	}
	else
	{
		image_angle = 0;
		reset = false;
	}
}
