siner += 2.5;
vspeed += 0.32;
if (shake == true)
{
	hspeed = 1.5 * sin(siner);
}
else
{
	hspeed = 0;
	x = init_x;
}
if (fadein == true)
	image_alpha += 0.2;
