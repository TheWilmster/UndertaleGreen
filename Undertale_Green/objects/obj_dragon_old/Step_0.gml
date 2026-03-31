if (come_out == true)
	image_speed = 0.33;
if (osc == true)
{
	if (y <= 250 || y >= 280)
		switch_sides = true;
}
if (switch_sides == true)
{
	if (y <= 270)
		vspeed = 0.75;
	else
		vspeed = -0.75;
	switch_sides = false;
}
