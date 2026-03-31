if (global.forest_cutscene != 3)
	instance_destroy(self);
global.school_time_sequence = 4;
eden_warptoggle = false;
for (var i = 0; i < array_length(global.inventory); i += 1)
{
	if (global.inventory[i].label == global.itemlist.necklace.label)
		eden_warptoggle = true;
}
warptoschool = false;
warptoeden = false;
image_blend = c_gray;
image_speed = 0;
depth = -bbox_bottom;
progress = -1;
timer = -1;
