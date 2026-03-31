if (global.school_time_sequence == 3)
	instance_destroy(self);
if (global.eden_first_time == false)
	instance_destroy(self);
if (global.gray_leave_lobby == true)
	instance_destroy(self);
progress = -1;
timer = -1;
depth = -500;
