depth = -bbox_bottom;
progress = -1;
if (global.eden_dance == false && x < 160)
	instance_destroy();
image_speed = 0.2;
if (global.eden_dance == false)
{
	sprite_index = spr_eden_dancewalk;
	hspeed = -2;
}
if (global.eden_dance == true)
{
	image_index = 5;
	sprite_index = spr_eden_dance;
	image_speed = 0.93888;
}
checkfordance = false;
time_changed = 0;
