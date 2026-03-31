if (image_index >= 3 && image_index <= 4 && !audio_is_playing(snd_jump))
	audio_play_sound(snd_jump, 0.7, false);
if (image_index == 6 && !audio_is_playing(snd_noise))
{
	audio_play_sound(snd_noise, 0.2, false);
	audio_stop_sound(mus_eulogy);
	audio_sound_gain(snd_forest, 0.2, 0);
}
if (image_index >= 11 && image_index <= 14)
	image_speed = 0.05;
if (image_index == 19)
	image_speed = 0.05;
if (image_index >= 11 && image_index <= 14)
	image_speed = 0.15;
if (image_index >= 21 && mid_hug == 0)
{
	image_speed = 0;
	mid_hug = 1;
}
if (image_index >= 34)
{
	instance_destroy(self);
	obj_player.visible = true;
	obj_chai_forest_bench.posthug = true;
	obj_chai_forest_bench.visible = true;
}
