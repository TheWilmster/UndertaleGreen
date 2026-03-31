if (global.fun <= 80 || global.fun > 85)
	instance_destroy();
if (global.school_time_sequence != 3)
	instance_destroy();
image_blend = merge_color(c_black, #1E312F, 0.6);
depth = obj_bsscreen2.depth - 1;
progress = -1;
timer = -1;
image_speed = 0;
