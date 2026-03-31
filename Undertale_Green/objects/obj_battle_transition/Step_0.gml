image_xscale = room_width;
image_yscale = room_height;
if (room == rm_battle)
	image_alpha -= 0.08;
if (image_alpha <= 0)
	instance_destroy();
