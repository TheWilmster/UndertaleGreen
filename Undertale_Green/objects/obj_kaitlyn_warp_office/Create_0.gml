warptooffice = false;
warptoeden = false;
image_blend = c_gray;
eden_warptoggle = false;
for (var i = 0; i < array_length(global.inventory); i += 1)
{
	if (global.inventory[i].label == global.itemlist.necklace.label)
		eden_warptoggle = true;
}
if (global.forest_cutscene != 3)
	instance_destroy(self);
image_speed = 0;
depth = -bbox_bottom;
progress = -1;
timer = -1;
