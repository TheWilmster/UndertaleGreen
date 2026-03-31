confirm = keyboard_check_pressed(ord("Z"));
if (global.end_battle == true && !instance_exists(obj_enemy_text))
{
	global.end_battle = false;
	global.flag_win = true;
	if (global.battle_eden == true)
	{
		global.cutscene = 1;
		global.has_battled = true;
	}
	if (global.battle_gray == true)
		global.has_battled = true;
	if (global.battle_chai == true)
		global.has_battled = true;
	instance_create_depth(0, 0, -99999999999, obj_transition);
}
if (turn == BattleTurn.GAMEOVER)
{
	audio_stop_all();
	global.heart_x = obj_heart.x;
	global.heart_y = obj_heart.y;
	room = rm_gameover;
}
if (turn == BattleTurn.NONE)
{
	if (global.item_used == 1 && !instance_exists(obj_battle_text))
	{
		global.item_used = 0;
		turn = BattleTurn.ENEMY;
	}
	if (global.battle_heal == 1 && !instance_exists(obj_battle_text))
	{
		global.battle_heal = 0;
		turn = BattleTurn.ENEMY;
	}
	if (global.plush_flee_attempt == 1 && !instance_exists(obj_battle_text))
	{
		global.plush_flee_attempt = 0;
		turn = BattleTurn.ENEMY;
	}
}
else if (turn == BattleTurn.ENEMY)
{
	obj_bordercontroller.box_mode = BattleBox.ATTACK;
	if (!instance_exists(obj_heart))
		instance_create_depth((room_width / 2) - 8, ((room_height / 2) - 8) + 80, -999999, obj_heart);
	if (e_text_shown == 0)
	{
		for (var i = 0; i < array_length(enemy); i++)
		{
			if (enemy[i] != -1)
			{
				with (enemy[i])
					event_user(0);
			}
		}
		e_text_shown = 1;
	}
	else if (!instance_exists(obj_enemy_text))
	{
		obj_heart.move_time = 1;
		for (var i = 0; i < array_length(enemy); i++)
		{
			if (enemy[i] != -1)
			{
				with (enemy[i])
					event_user(1);
			}
		}
		if (timer > 0)
		{
			timer--;
		}
		else
		{
			instance_destroy(par_bullet);
			instance_destroy(obj_heart);
			turn = BattleTurn.PLAYER;
		}
	}
}
else if (turn == BattleTurn.PLAYER)
{
	damage_multiplier = 1;
	obj_bordercontroller.box_mode = BattleBox.TEXT;
	if (obj_border.x < 33)
	{
		timer = -1;
		par_enemy.atk_choice = -1;
		e_text_shown = 0;
		turn = BattleTurn.NONE;
		var heart = instance_create_depth(room_width / 2, (room_height / 2) + 80, -999999, obj_heart);
		heart.visible = 0;
	}
	if (instance_exists(obj_enemy_plush))
	{
		obj_enemy_plush.image_index = 0;
		obj_enemy_plush.fallsfx = false;
	}
}
if (global.hp <= 0)
	turn = BattleTurn.GAMEOVER;
for (var i = 0; i < array_length(enemy); i++)
{
	if (!instance_exists(enemy[i]))
		enemy[i] = -1;
}
if (enemy[1] == -1 && enemy[2] != -1)
{
	enemy[1] = enemy[2];
	enemy[2] = -1;
}
if (contfight == true)
{
	turn = BattleTurn.ENEMY;
	if (instance_exists(obj_battle_text))
		instance_destroy(obj_battle_text);
	contfight = false;
}
show_debug_message(turn);
