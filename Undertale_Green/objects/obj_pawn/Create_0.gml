randomize();
depth = 1;
image_speed = 0;
accel = 0;
helpme = 0;
if (instance_exists(obj_enemy_eden))
	sprite_index = spr_pawn;
if (instance_exists(obj_enemy_gray))
	sprite_index = spr_knight;
if (instance_exists(obj_enemy_chai))
	sprite_index = spr_chai_queen;
alarm_set(0, obj_fight.pawn_alarm);
rotation = random_range(180, 359);
second_hit = 0;
second_hit_dir = 0;
rotspeed = 0;
