if (global.eden_spotlight_leave == false && !audio_is_playing(snd_eden_cry))
	audio_play_sound(snd_eden_cry, 1, true);
audio_sound_gain(snd_eden_cry, 0.35, 0);
audio_sound_gain(mus_school_night, 0, 1000);
