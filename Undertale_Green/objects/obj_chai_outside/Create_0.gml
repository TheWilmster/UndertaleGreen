image_blend = c_gray;
if (global.school_time_sequence != 3)
	instance_destroy(self);
if (global.forest_cutscene == 3)
	instance_destroy(self);
depth = -bbox_bottom;
progress = -1;
timer = -1;
image_speed = 0;
neckdialogue = false;
for (var i = 0; i < array_length(global.inventory); i += 1)
{
	if (global.inventory[i].label == global.itemlist.necklace.label)
		neckdialogue = true;
}
