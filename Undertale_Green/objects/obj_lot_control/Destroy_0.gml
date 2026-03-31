if (global.forest_cutscene == 3 && !audio_is_playing(snd_rain))
	audio_play_sound(snd_rain, 1, true);
audio_sound_gain(snd_rain, 1, 100);
