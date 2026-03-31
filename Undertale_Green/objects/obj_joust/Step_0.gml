if (fade_in == true)
	image_alpha += 0.1;
if (fade_in == true && fade_out == false && image_alpha == 1)
	fade_in = false;
if (fade_out == true)
	image_alpha -= 0.1;
if (fade_out == true && image_alpha == 0)
	instance_destroy(self);
if (move_start == true)
{
	if (temp_dir == 0)
	{
		hspeed -= 0.3;
		if (hspeed <= 0)
			hspeed -= 5;
	}
	if (temp_dir == 1)
	{
		vspeed += 0.3;
		if (vspeed >= 0)
			vspeed += 5;
	}
	if (temp_dir == 2)
	{
		hspeed += 0.3;
		if (hspeed >= 0)
			hspeed += 5;
	}
	if (temp_dir == 3)
	{
		vspeed -= 0.3;
		if (vspeed <= 0)
			vspeed -= 5;
	}
}
