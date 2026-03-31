if (binderopen == true && !instance_exists(obj_textboxNEW))
{
	binderopen = false;
	if (!instance_exists(obj_script_visual))
	{
		instance_create_depth(0, 0, -9999999, obj_script_visual, 
		{
			page: global.page_number
		});
	}
}
