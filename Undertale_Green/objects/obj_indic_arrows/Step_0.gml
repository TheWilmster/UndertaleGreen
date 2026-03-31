obj_battle_system.timer = 5;
if (obj_heart.left_enemy || obj_heart.right_enemy || obj_heart.down_enemy || obj_heart.up_enemy)
{
	if (visible == true)
	{
		global.eden_first_time = false;
		x = 0;
		y = 0;
		alarm_set(0, 80);
		alarm_set(1, 160);
		visible = false;
	}
}
if (global.eden_turn_end == true && !instance_exists(obj_enemy_text))
{
	global.eden_turn_end = false;
	obj_enemy_eden.battle_image = spr_enemy_eden_head;
	obj_enemy_eden.song_start = 1;
	instance_destroy(self);
}
