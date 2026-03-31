hspeed = (x - cont_x) * 0.15;
vspeed = (y - cont_y) * 0.15;
if (x > 320)
	fromright = true;
if (x < 320)
	fromleft = true;
shoot = true;
if (!audio_is_playing(snd_arrow))
	audio_play_sound(snd_arrow, 1, false);
