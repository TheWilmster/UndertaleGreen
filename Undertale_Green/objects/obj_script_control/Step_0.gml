if (binderopen == 1 && !instance_exists(obj_textboxNEW))
{
	binderopen = 0;
	instance_create_depth(0, 0, -9999999, obj_script_visual);
}
