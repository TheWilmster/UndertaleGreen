if (global.fade_in == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(1, 20);
	global.fade_in = false;
}
if (fade_screen == true)
{
	obj_blackscreen.image_alpha -= 0.01;
	if (obj_blackscreen.image_alpha == 0)
	{
		alarm_set(2, 40);
		fade_screen = false;
	}
}
if (fade_screen_out == true)
{
	obj_blackscreen.image_alpha += 0.01;
	if (obj_blackscreen.image_alpha == 1)
		fade_screen_out = false;
}
if (global.beat1 == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(3, 80);
	global.beat1 = false;
}
if (global.fade_out == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(4, 140);
	alarm_set(5, 20);
	global.fade_out = false;
}
