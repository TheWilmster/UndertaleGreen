if (crash == true)
{
	increase += 2;
	if (image_angle <= 130)
	{
		image_angle += (8 + increase);
	}
	else
	{
		crash = false;
		increase = 0;
		reset = true;
		audio_play_sound(snd_heavydamage, 1, false);
	}
}
if (reset == true)
{
	if (image_angle > 0)
	{
		image_angle -= 15;
	}
	else
	{
		image_angle = 0;
		reset = false;
	}
}
