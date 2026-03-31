if (global.school_time_sequence != 3)
	global.msg[0] = "[character,none,-1][delay,1]* Looks like someone's skipping.";
else
	global.msg[0] = "[character,none,-1][delay,1]* It's a chair and a stand.";
instance_create_depth(x, y, -1000, obj_textboxNEW);
