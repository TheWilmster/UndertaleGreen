if (global.school_time_sequence != 3)
	DIALOG[0] = "[character,none,-1][delay,1]* Looks like someone's skipping.";
else
	DIALOG[0] = "[character,none,-1][delay,1]* It's a chair and a stand.";
instance_create_depth(x, y, -1000, obj_textboxNEW);
