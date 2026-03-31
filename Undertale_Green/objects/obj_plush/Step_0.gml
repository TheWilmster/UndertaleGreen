if (activate == true)
{
	activate = false;
	alarm[0] = 85;
	audio_sound_gain(mus_eden_house, 0, 1000);
}
if (image_index >= 57)
	image_speed = 0;
if (image_index >= 25 && second_swing == false)
{
	audio_play_sound(snd_largeswing, 1, false);
	audio_play_sound(snd_scary, 1, false);
	second_swing = true;
	alarm[1] = 18;
}
