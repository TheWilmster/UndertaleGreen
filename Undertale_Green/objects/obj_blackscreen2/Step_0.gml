if (fadeout == true)
	image_alpha -= 0.03;
if (fadein == true)
	image_alpha += 0.03;
if (beat_1 == true && !instance_exists(obj_textboxNEW))
{
	alarm[2] = 60;
	beat_1 = false;
}
if (officeparking == true && !instance_exists(obj_textboxNEW))
{
	alarm[4] = 60;
	fadein = true;
	fadeout = false;
	image_alpha = 0;
	officeparking = false;
}
