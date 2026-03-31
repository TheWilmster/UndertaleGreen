if (sfx_play > 0)
	audio_play_sound(snd_fireball, 1, false, 0.9);
sfx_play -= 1;
if (sfx_play > 0)
	alarm[2] = 6;
