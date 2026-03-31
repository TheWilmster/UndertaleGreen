function start_play_music()
{
	audio_play_sound(mus_art_center, 2, true);
	audio_play_sound(mus_greenroom, 2, true);
	global.pitorch_sound = audio_play_sound(mus_pitorch, 2, true);
	audio_play_sound(mus_greenroom_lp, 2, true);
	audio_play_sound(mus_pitorch_lp, 2, true);
	audio_sound_gain(mus_greenroom, 0, 0);
	audio_sound_gain(mus_greenroom_lp, 0, 0);
	audio_sound_gain(mus_pitorch, 0, 0);
	if (room == rm_hallway1 && global.school_time_sequence != 3)
		audio_sound_gain(mus_art_center, 1, 0);
	if (room == rm_basement)
		audio_sound_gain(mus_art_center, 0, 0);
	else
		audio_sound_gain(mus_pitorch_lp, 0, 0);
}
