if (claps < 3)
{
	if (visible == false)
	{
		visible = true;
		audio_play_sound(snd_noise, 80, false);
		claps += 1;
	}
	else
	{
		visible = false;
	}
	alarm[0] = 2;
}
else
{
	audio_play_sound(snd_battlefall, 80, false);
	spd = distance_to_point(camera_get_view_x(view_camera[0]) + 23, camera_get_view_y(view_camera[0]) + 221) / 17;
}
