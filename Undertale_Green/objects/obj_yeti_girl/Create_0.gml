if (global.school_time_sequence == 3)
	instance_destroy(self);
if (global.lobby_unlocked == true)
	instance_destroy(self);
dialogue2 = false;
image_speed = 0;
depth = -bbox_bottom;
progress = -1;
timer = -1;
