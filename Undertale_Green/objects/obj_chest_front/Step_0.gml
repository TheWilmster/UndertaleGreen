if (image_alpha == 1)
	fadein = false;
if (image_alpha < 1 && fadein == true)
	image_alpha += 0.1;
if (fadeout == true && image_alpha > 0)
	image_alpha -= 0.1;
if (vspeed != 0)
	vspeed += 0.1;
siner += 2.5;
if (shake == true)
{
	hspeed = 1.5 * sin(siner);
}
else
{
	hspeed = 0;
	x = 263;
}
