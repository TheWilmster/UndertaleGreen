if (fade_out == true)
	fade_txt -= 0.02;
if (reset == true && !instance_exists(obj_textboxNEW))
{
	alarm[2] = 90;
	reset = false;
}
