alarm[0] = 8;
obj_player.visible = true;
if (!audio_is_playing(snd_mouse))
	audio_play_sound(snd_mouse, 1, false);
if (audio_is_playing(mus_school_night))
	audio_sound_gain(mus_school_night, 0, 1000);
