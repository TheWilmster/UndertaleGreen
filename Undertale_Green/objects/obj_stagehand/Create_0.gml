if (global.greenroomcut == true)
	instance_destroy(self);
if (global.school_time_sequence == 3)
	instance_destroy(self);
if (room == rm_hallway1 && global.stagehand[0] == 0)
	instance_destroy(self);
if (room == rm_greenroom && global.stagehand[1] == 0)
	instance_destroy(self);
if (room == rm_auditorium && global.stagehand[2] == 0)
	instance_destroy(self);
if (room == rm_pitorch && global.stagehand[3] == 0)
	instance_destroy(self);
if (room == rm_backstage && global.stagehand[4] == 0)
	instance_destroy(self);
if (room == rm_pitorch)
	image_blend = c_gray;
spr_x = x;
depth = -bbox_bottom;
progress = -1;
timer = -1;
hspeed = 1;
