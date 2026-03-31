if (image_index >= 24)
	image_speed = 0;
if (image_index == 6 && !audio_is_playing(snd_flashlight_sweep))
	audio_play_sound(snd_flashlight_sweep, 1, false);
if (image_index == 22 && !audio_is_playing(snd_flashlight_sweep2))
{
	audio_play_sound(snd_flashlight_sweep2, 1, false);
	audio_play_sound(snd_lightning, 0, false);
}
