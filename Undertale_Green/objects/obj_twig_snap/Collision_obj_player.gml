if (!audio_is_playing(snd_twig) && playsound == 0)
{
	audio_play_sound(snd_twig, 1, false);
	alarm[0] = 15;
	alarm[1] = 85;
}
playsound = 1;
