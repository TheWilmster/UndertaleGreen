depth = -bbox_bottom;
progress = -1;
timer = -1;
image_speed = 0;
if (room == rm_hallway1)
{
	if (global.lootdrops[1] == 0)
		instance_destroy(self);
}
if (room == rm_vent3)
{
	if (global.lootdrops[2] == 0)
		instance_destroy(self);
}
if (room == rm_vent3)
{
	if (global.lootdrops[3] == 0)
		instance_destroy(self);
}
