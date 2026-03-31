if (global.school_time_sequence != 3 && !instance_exists(obj_title))
{
	if (!audio_is_playing(snd_rain_inside))
		audio_play_sound(snd_rain_inside, 2, true);
}
