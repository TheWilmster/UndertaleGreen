if (credits_screen != 5)
{
	credits_screen += 1;
	audio_play_sound(snd_intro, 1, false);
	alarm[0] = 200;
}
else
{
	fade_out = true;
	audio_sound_gain(snd_wind_ambience, 0, 3000);
	alarm[1] = 180;
}
