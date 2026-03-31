if (room == rm_greenroom && global.stagehand[1] == 0)
	instance_destroy(self);
if (room == rm_auditorium && global.stagehand[2] == 0)
	instance_destroy(self);
if (room == rm_pitorch && global.stagehand[3] == 0)
	instance_destroy(self);
if (room == rm_backstage && global.stagehand[4] == 0)
	instance_destroy(self);
solidify = false;
