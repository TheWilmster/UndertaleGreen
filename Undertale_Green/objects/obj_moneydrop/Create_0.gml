depth = -bbox_bottom;
progress = -1;
timer = -1;
image_speed = 0;
if (global.school_time_sequence == 3)
	image_blend = c_gray;
if (room == rm_greenroom)
	instance_destroy(self);
if (room == rm_hallway1)
{
	if (global.lootdrops[1] == 1)
		solid = true;
	image_index = 0;
	sprite_index = spr_coins;
	if (global.lootdrops[1] == 0)
		instance_destroy(self);
}
if (room == rm_vent3)
{
	if (global.lootdrops[2] == 1)
		solid = true;
	image_index = 1;
	sprite_index = spr_coins;
	if (global.lootdrops[2] == 0)
		instance_destroy(self);
}
if (room == rm_basement)
{
	if (global.lootdrops[3] == 1)
		solid = false;
	image_index = 2;
	depth = 10;
	sprite_index = spr_coins;
	if (global.lootdrops[3] == 0)
		instance_destroy(self);
}
