vspeed += 0.5;
if (y >= 360 && has_hit_ground == 0)
{
	has_hit_ground = 1;
	audio_play_sound(snd_bigdoor_open, 1, false);
	obj_heart.shake = 4;
	alarm_set(0, 10);
	vspeed = -3;
}
if (fade_out == 1)
	image_alpha -= 0.1;
if (fade_in == 1)
	image_alpha += 0.3;
if (image_alpha == 1)
	fade_in = 0;
