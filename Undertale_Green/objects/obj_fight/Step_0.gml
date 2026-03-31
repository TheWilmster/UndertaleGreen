confirm = keyboard_check_pressed(ord("Z"));
randomize();
if (confirm && attacked == 0)
{
	if (instance_exists(obj_pawn) && instance_exists(obj_queen))
	{
		if (obj_pawn.x > obj_border.bbox_left && obj_queen.x < obj_border.bbox_right)
		{
			attacked = 1;
			if (hit_1_damage == 0)
			{
				instance_create_depth(enemy.x, enemy.y - enemy.spr_h, -10000, obj_miss, 
				{
					selected_enemy: enemy
				});
				alarm[3] = 40;
				idle_thing = 1;
			}
			if (hit_1_damage != 0)
			{
				alarm[2] = 13;
				alarm[6] = 8;
				freezeframe = true;
				obj_queen.hspeed = 0;
				obj_queen.vspeed = 0;
				obj_pawn.hspeed = 0;
				obj_pawn.vspeed = 0;
				instance_create_depth(enemy.x + random_range(-40, 40), (enemy.y - (enemy.spr_h / 2)) + random_range(-40, 40), -10000, obj_pow);
				shake = 5;
				global.damage_output = hit_1_damage;
				instance_create_depth(320, 240, -10000, display);
				audio_play_sound(snd_hit1, 80, false);
				audio_play_sound(snd_orch1, 80, false);
			}
		}
	}
}
if (confirm && attacked_2 == 1)
{
	if (instance_exists(obj_pawn) && instance_exists(obj_queen))
	{
		if (obj_queen.hspeed < 0)
		{
			attacked_2 = 0;
			if (obj_pawn.x > obj_border.bbox_left && obj_queen.x < obj_border.bbox_right)
			{
				if (hit_1_damage == 0)
				{
					alarm[4] = 30;
					instance_create_depth(320, 240, -10001, display);
					idle_thing = 1;
				}
				if (hit_1_damage != 0)
				{
					alarm[4] = 40;
					instance_create_depth(enemy.x + random_range(-40, 40), (enemy.y - (enemy.spr_h / 2)) + random_range(-40, 40), -10000, obj_pow);
					shake = 9;
					freezeframe = true;
					obj_queen.hspeed = 0;
					obj_queen.vspeed = 0;
					obj_pawn.hspeed = 0;
					obj_pawn.vspeed = 0;
					alarm[5] = 8;
					global.damage_output += hit_1_damage;
					instance_create_depth(320, 240, -10001, display);
					audio_play_sound(snd_hit2, 80, false);
					audio_play_sound(snd_orch2, 80, false);
				}
			}
		}
	}
}
if (obj_battle_system.turn == BattleTurn.ENEMY)
{
	image_alpha -= 0.3;
	if (image_alpha <= 0)
	{
		instance_destroy(self);
		instance_destroy(obj_pawn);
		instance_destroy(obj_queen);
	}
}
if (shake > 0)
	shake--;
if (instance_exists(obj_queen) && idle_thing == 0)
{
	if (global.piece_hit_number == 1)
	{
		if (obj_queen.x <= -200 && idle_miss == 0)
		{
			instance_create_depth(enemy.x, enemy.y - enemy.spr_h, -10000, obj_miss, 
			{
				selected_enemy: enemy
			});
			alarm[3] = 40;
			idle_miss = 1;
		}
	}
	if (global.piece_hit_number == 2 && !instance_exists(obj_miss2))
	{
		if (obj_queen.x <= -200 && idle_miss == 0)
		{
			alarm[4] = 30;
			instance_create_depth(320, 240, -10000, display);
			idle_miss = 1;
		}
	}
}
