randomize();
save_y = y;
fadeout = false;
aiming = true;
throwing = false;
alarm[0] = random_range(43, 57);
pos_x = x;
tar_x = 0;
tar_y = 0;
for (var i = 1; i < 15; i += 1)
	instance_create_depth(x + (15 * i), 0, 0, obj_sight_r);
image_alpha = 0;
damage = 3;
siner = 0;
shake = false;
