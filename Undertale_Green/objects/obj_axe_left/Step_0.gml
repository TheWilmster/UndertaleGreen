randomize();
if (aiming == true && instance_exists(obj_heart))
{
	tar_y = obj_axe_left.y - (obj_heart.y + 8);
	tar_x = obj_axe_left.x - (obj_heart.x + 8);
	image_angle = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8) + 180;
}
if (image_alpha < 1 && fadeout == false)
	image_alpha += 0.2;
if (throwing == true)
{
	pos_x = abs(460 - x);
	y = (-(tar_y / tar_x) * pos_x) + save_y;
	hspeed = -28;
	image_angle += 17;
}
if (fadeout == true)
{
	image_alpha -= 0.25;
	if (image_alpha <= 0)
	{
		instance_destroy();
		instance_create_depth(460, random_range(240, 400), -5000, obj_axe_left);
	}
}
siner += 2;
if (shake == true)
	x = pos_x + (3.5 * sin(siner));
if (shake == false && throwing == false)
	x = pos_x;
