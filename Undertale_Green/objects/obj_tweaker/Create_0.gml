depth = -bbox_bottom;
image_speed = 0;
if (global.school_time_sequence >= 2)
	instance_destroy(self);
if (global.school_time_sequence == 0)
	sprite_index = spr_tweaker;
if (global.school_time_sequence == 1)
	sprite_index = spr_tweaker_tweaked;
