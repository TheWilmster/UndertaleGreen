if (obj_textboxNEW.choice == 0)
{
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	progress = 2;
	instance_destroy(obj_textboxNEW);
}
show_debug_message(global.msg);
