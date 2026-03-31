if (tele_open == true && keyboard_check(ord("Z")))
{
	tele_open = false;
	if (!instance_exists(obj_tele_visual))
		instance_create_depth(0, 0, -9999999, obj_tele_visual);
}
