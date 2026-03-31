if (instance_exists(obj_title))
	image_speed = 0;
else
	image_speed = 1;
if (open_save == true)
{
	instance_create_depth(x, y, -1000, obj_save);
	instance_destroy(obj_textboxNEW);
	open_save = false;
}
