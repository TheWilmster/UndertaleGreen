if (global.school_time_sequence != 3)
	instance_destroy(self);
if (global.office_unlocked == true)
	instance_destroy(self);
image_blend = c_gray;
dialogue2 = false;
image_speed = 0;
depth = -bbox_bottom;
progress = -1;
timer = -1;
