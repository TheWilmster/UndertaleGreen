if (startmusic == true)
{
	audio_play_sound(mus_plush, 2, true, 1);
	audio_sound_loop_start(mus_plush, 23.55);
	audio_sound_loop_end(mus_plush, 40.78);
	startmusic = false;
	heartbeat_false = true;
}
if (opacity_change == 1)
{
	global.half_op -= 0.1;
	if (global.half_op == 0.5)
		opacity_change = 0;
}
if (opacity_change2 == 1)
{
	global.half_op += 0.1;
	if (global.half_op == 1)
		opacity_change2 = 0;
}
if (fall == true)
{
	image_speed = 0.5;
	if (fallsfx == false && image_index >= 8)
	{
		fallsfx = true;
		audio_play_sound(snd_bigdoor_open, 1, false);
		obj_heart.shake = 3;
	}
	if (image_index >= 31)
	{
		fall = false;
		getbackup = true;
		audio_play_sound(snd_damage, 1, false);
		obj_heart.shake = 5;
		if (obj_heart.invincible == false)
		{
			obj_heart.image_index += 1;
			obj_heart.invincible = true;
			global.hp -= 4;
			audio_play_sound(snd_hurt1_c, 80, false);
		}
	}
}
if (getbackup == true)
{
	if (image_index >= 57)
	{
		image_speed = 0;
		image_index = 0;
		getbackup = false;
	}
}
