audio_play_sound(snd_largeswing, 1, false);
randomize();
if (global.left_soldier == true && global.right_soldier == false)
	obj_battle_system.enemy[2] = instance_create_depth((room_width / 2) + 130, (room_height / 2) + 6, -99, obj_enemy_soldier);
if (global.left_soldier == false && global.right_soldier == true)
	obj_battle_system.enemy[2] = instance_create_depth((room_width / 2) - 130, (room_height / 2) + 6, -99, obj_enemy_soldier);
if (global.left_soldier == false && global.right_soldier == false)
	obj_battle_system.enemy[1] = instance_create_depth((room_width / 2) + choose(130, -130), (room_height / 2) + 6, -99, obj_enemy_soldier);
