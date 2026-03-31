if (audio_is_playing(mus_shop))
	audio_stop_sound(mus_shop);
if (audio_is_playing(mus_school_night))
	audio_sound_gain(mus_school_night, 0.9, 500);
bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence != 3)
	layer_background_index(bgid, 0);
else
	layer_background_index(bgid, 1);
