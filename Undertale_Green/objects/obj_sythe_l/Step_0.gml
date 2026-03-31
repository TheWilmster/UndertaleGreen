if (fade_in == 0)
{
	image_alpha += 0.05;
	vspeed -= 0.1;
}
if (vspeed == 0 && fade_in == 0)
{
	fade_in = 1;
	vspeed = 0;
	image_alpha = 1;
	if (first_sythe == 1)
		alarm_set(1, random_range(20, 40));
	if (first_sythe == 2)
		alarm_set(1, random_range(70, 75));
}
if (swipe == 1 && vspeed != 0)
	vspeed += 0.1;
if (swipe == 1 && vspeed == 0)
{
	swipe = 0;
	alarm[2] = 20;
	shake = true;
}
if (swipe2 == 1 && image_index == 2)
{
	image_speed = 0;
	image_alpha -= 0.05;
	if (image_alpha == 0)
		instance_destroy();
}
siner += 2;
if (shake == true)
	x = pos_x + (2 * sin(siner));
if (shake == false)
	x = pos_x;
