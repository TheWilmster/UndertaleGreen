if (is_active == true)
	image_index = 1;
else
	image_index = 0;
image_alpha = global.half_op;
if (global.gray_buttons == true && instance_exists(obj_enemy_eden))
	image_index = 2;
