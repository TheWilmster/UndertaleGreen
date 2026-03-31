if (global.forest_cutscene == 3 && !audio_is_playing(mus_school_night))
	audio_play_sound(mus_school_night, 1, true);
bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence == 0)
	layer_background_index(bgid, 0);
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 1);
part_system_destroy(global.p_sys);
global.slowfade = false;
