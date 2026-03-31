instance_create_depth(0, 0, 0, obj_timer);
if (room == rm_hallway1)
{
	if (global.school_time_sequence != 3)
	{
		start_play_music();
		audio_play_sound(snd_rain_inside, 2, true);
	}
	else
	{
		audio_play_sound(mus_school_night, 1, true);
	}
}
if (room == rm_basement)
{
	if (global.school_time_sequence != 3)
		start_play_music();
	else
		audio_play_sound(mus_school_night, 1, true);
}
if (room == rm_spookyforest)
{
	audio_play_sound(snd_forest, 1, true);
	audio_sound_gain(snd_forest, 0, 0);
	audio_sound_gain(snd_forest, 0.65, 1000);
}
curr_state = PlayerState.NORMAL;
