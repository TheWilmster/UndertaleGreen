randomize();
spawnx = 320 + choose(120, -120);
spawny = 320 + random_range(-50, 50);
instance_create_depth(spawnx, spawny, obj_heart.depth - 1, obj_jester_ball);
alarm[0] = 162;
