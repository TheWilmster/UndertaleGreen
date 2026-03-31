if (global.school_time_sequence != 2)
	instance_destroy(self);
walkout = false;
alarm_set(0, 30);
image_speed = 0;
progress = -1;
timer = -1;
depth = -bbox_bottom;
move_back = false;
