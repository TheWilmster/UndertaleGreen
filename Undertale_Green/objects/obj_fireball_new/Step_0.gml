if (jump == true)
{
	if (y < 375)
	{
		vspeed += 0.5;
		hspeed = -2.5;
	}
	else if (x <= 457 && x >= 183)
	{
		y = 374.9;
		vspeed = 0;
		hspeed = 0;
		alarm[0] = 2;
		jump = false;
	}
}
if (bigjump == true)
	vspeed += grav;
siner += 2;
if (shake == true)
	hspeed = 2.5 * sin(siner);
