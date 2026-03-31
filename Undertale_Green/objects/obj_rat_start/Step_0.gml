if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 2;
	global.rat_start = true;
	instance_destroy(obj_rat_start);
}
if (instance_exists(obj_mouse))
{
	if (obj_mouse.come_out == true)
		rat_came_out = true;
}
