randomize();
alarm[0] = random_range(4, 12);
gem_spawn_x = prev_spawn_x + random_range(20, 200);
if (gem_spawn_x >= 220)
	gem_spawn_x -= 220;
instance_create_depth(210 + gem_spawn_x, -5, -5001, obj_gem_atk3);
prev_spawn_x = gem_spawn_x;
