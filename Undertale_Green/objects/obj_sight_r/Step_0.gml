if (image_alpha < 1)
	image_alpha += 0.2;
if (!instance_exists(obj_axe_right))
	instance_destroy(self);
if (instance_exists(obj_heart))
{
	tar_y = obj_axe_right.y - (obj_heart.y + 8);
	tar_x = obj_axe_right.x - (obj_heart.x + 8);
}
if (instance_exists(obj_axe_right))
{
	if (obj_axe_right.throwing == true)
		instance_destroy(self);
	if (obj_axe_right.aiming == true)
		y = (-(tar_y / tar_x) * pos_x) + obj_axe_right.y;
}
visible = true;
if (x <= 408 && x >= 232)
{
	if (y >= 380 || y <= 260)
		visible = false;
}
