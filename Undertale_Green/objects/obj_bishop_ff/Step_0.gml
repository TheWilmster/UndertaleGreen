image_angle -= 5;
vspeed += 0.08;
if (vspeed < 3)
{
	fall_scale2 += 0.8;
	image_xscale += (2 / (fall_scale2 * 40));
	image_yscale += (2 / (fall_scale2 * 40));
}
if (vspeed > 3)
{
	fall_scale += 0.1;
	image_xscale -= (fall_scale / 80);
	image_yscale -= (fall_scale / 80);
}
