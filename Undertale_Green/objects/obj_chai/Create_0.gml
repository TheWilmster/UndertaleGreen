if (room == rm_school_lot)
{
	sprite_index = spr_chai_walk_l;
	image_speed = 0.12;
	hspeed = -0.75;
	walk_left = true;
	walk_right = false;
}
if (room == rm_hallway1)
{
	if (obj_player.chaialogue == false)
		instance_destroy(self);
	global.chai_run = false;
	sprite_index = spr_chai;
	image_speed = 0;
	depth = -bbox_bottom;
	alarm_set(0, 30);
}
