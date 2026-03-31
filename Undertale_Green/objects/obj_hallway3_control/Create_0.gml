bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence == 0)
	layer_background_index(bgid, 0);
if (global.school_time_sequence == 1)
	layer_background_index(bgid, 1);
if (global.fun >= 10 && global.fun <= 20)
	layer_background_index(bgid, 3);
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 2);
if (global.school_time_sequence == 3 && global.fun >= 10 && global.fun <= 20)
	layer_background_index(bgid, 4);
audio_sound_gain(mus_school_night, 0.9, 1000);
audio_stop_sound(snd_eden_cry);
