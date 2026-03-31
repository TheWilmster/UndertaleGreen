if (global.plush_battled == true)
	instance_destroy();
activate = false;
second_swing = false;
if (global.plush_battled == false)
	depth = -bbox_bottom;
else
	depth = 0;
progress = -1;
timer = -1;
image_speed = 0;
