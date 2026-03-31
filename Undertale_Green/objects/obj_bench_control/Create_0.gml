randomize();
ff_x = 0;
ff_y = 0;
ff_area = 1;
alarm[0] = random_range(3, 15);
if (!audio_is_playing(snd_forest))
{
	audio_play_sound(snd_forest, 1, true, 0.5);
	audio_sound_gain(snd_forest, 0, 0);
	audio_sound_gain(snd_forest, 0.2, 1000);
}
