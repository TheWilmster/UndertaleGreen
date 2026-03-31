bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence == 0)
	layer_background_index(bgid, 0);
if (global.school_time_sequence == 1 && global.greenroomcut != true)
	layer_background_index(bgid, 1);
if (global.empty_greenroom == true)
	layer_background_index(bgid, 3);
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 2);
