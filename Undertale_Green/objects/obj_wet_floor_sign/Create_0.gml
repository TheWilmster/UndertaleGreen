depth = -bbox_bottom;
progress = -1;
timer = -1;
image_speed = 0;
if (global.school_time_sequence == 0)
{
	sprite_index = spr_wet_floor_sign;
	x = 325;
	y = 198;
}
if (global.school_time_sequence == 1)
{
	sprite_index = spr_wet_floor_sign_big;
	x = 319;
	y = 189;
}
if (global.school_time_sequence > 1)
	instance_destroy();
