if (fadein == true)
	image_alpha += 0.1;
if (fromleft == true && x > 320)
	shoot_bounce = true;
if (fromright == true && x < 320)
	shoot_bounce = true;
if (has_bounced == false && x >= 222.5 && x <= 417.5 && y >= 255 && y <= 385)
{
	if (shoot == true)
	{
		if (y <= 265 || y >= 375)
		{
			vspeed = -vspeed;
			audio_play_sound(snd_bigdoor_open, 1, false, 0.7);
			obj_heart.shake = 2;
			has_bounced = true;
		}
	}
	if (shoot_bounce == true)
	{
		if (x <= 235 || x >= 405)
		{
			hspeed = -hspeed;
			audio_play_sound(snd_bigdoor_open, 1, false, 0.6);
			obj_heart.shake = 2;
			has_bounced = true;
		}
	}
}
