image_speed = 0.75;
if (global.intro_cut_parkinglot == true)
	instance_destroy(self);
depth = -bbox_bottom;
if (global.school_time_sequence == 3)
{
	sprite_index = spr_chai_car_night2;
	image_blend = c_gray;
}
if (global.forest_cutscene == 3)
	instance_destroy(self);
