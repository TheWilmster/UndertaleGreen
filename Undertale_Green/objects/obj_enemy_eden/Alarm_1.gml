randomize();
instance_create_depth(choose(400, 230), (room_height / 2) - 16, -500, obj_falling_rock);
if (obj_battle_system.timer >= 50)
	alarm_set(1, random_range(33, 50));
