if (global.school_time_sequence != 3)
	instance_destroy(self);
if (global.stagehand[5] != 0)
	instance_destroy();
image_blend = c_gray;
spr_x = x;
depth = -bbox_bottom;
progress = -1;
timer = -1;
