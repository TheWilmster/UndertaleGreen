bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence != 3)
{
	part_system_destroy(global.p_sys);
	global.p_sys = part_system_create(pat_rain);
	part_system_position(global.p_sys, 426, 0);
	part_system_depth(global.p_sys, -3001);
	layer_background_index(bgid, 0);
}
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 1);
