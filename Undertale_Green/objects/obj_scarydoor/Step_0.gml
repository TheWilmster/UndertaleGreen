if (moveleft == true)
{
	hspeed = -0.5;
	if (x <= 123)
	{
		hspeed = 0;
		x = 123;
		moveleft = false;
	}
}
