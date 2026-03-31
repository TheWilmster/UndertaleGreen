if (room == rm_dressing4 && global.firstdressing == 0)
	global.firstdressing = 1;
if (room == rm_dressing2 && global.firstdressing == 0)
	global.firstdressing = 2;
if (room == rm_dressing4 && global.firstdressing == 1)
	instance_destroy(obj_bully);
if (room == rm_dressing4 && global.firstdressing == 2)
	instance_destroy(obj_victim);
if (room == rm_dressing2 && global.firstdressing == 1)
	instance_destroy(obj_victim);
if (room == rm_dressing2 && global.firstdressing == 2)
	instance_destroy(obj_bully);
