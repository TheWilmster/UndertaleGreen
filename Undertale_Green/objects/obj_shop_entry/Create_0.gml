depth = -bbox_bottom;
progress = -1;
timer = -1;
image_speed = 0;
playercut = false;
shopkeepintro = false;
dooropen = false;
shopenter = false;
if (global.shopkeep_cutscene == false)
	instance_destroy(self);
