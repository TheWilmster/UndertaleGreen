depth = -bbox_bottom;
if (stop == 1)
{
	fall = 1;
	vspeed = -2;
	stop = 0;
	alarm[0] = 70;
}
if (fall == 1)
{
	vspeed += 0.5;
	image_angle += deathrot;
	hspeed = -deathrot / 2;
}
