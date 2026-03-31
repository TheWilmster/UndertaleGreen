bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence == 0)
	layer_background_index(bgid, 0);
if (global.school_time_sequence == 1)
	layer_background_index(bgid, 1);
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 2);
part_system_destroy(global.p_sys);
audio_sound_gain(mus_school_night, 0.9, 1000);
