if (fade_in == 0)
{
	image_alpha += 0.05;
	vspeed -= 0.1;
}
if (vspeed == 0 && fade_in == 0)
{
	fade_in = 1;
	vspeed = 0;
	alarm_set(0, 35);
}
if (swipe == 1 && vspeed != 0)
{
	image_index = 1;
	vspeed += 0.1;
}
if (swipe == 1 && vspeed == 0)
{
	swipe = 0;
	vspeed = 0;
	image_index = 2;
	alarm_set(1, 2);
}
