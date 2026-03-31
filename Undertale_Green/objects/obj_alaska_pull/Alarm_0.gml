if (pulltimes == 0)
	audio_play_sound(snd_noise, 1, false, 0.5);
image_index = 7;
shake = false;
alarm[1] = 15;
if (audio_is_playing(snd_pull))
	audio_stop_sound(snd_pull);
