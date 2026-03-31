alarm[0] = 5;
gem_spawn_number = 0;
timer = 0;
gem_theta = 0.1;
sfx_play = 0;
randomize();
break_order = array_create(6, 0);
for (var i = 0; i < array_length(break_order); i++)
	break_order[i] = i + 1;
array_shuffle_ext(break_order);
alarm[1] = 80;
