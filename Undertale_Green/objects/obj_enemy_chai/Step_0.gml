siner -= 0.1;
siner2 += 0.04;
spr_body_vscale = (sin(siner) / 15) + 2;
spr_head_offset = -sin(siner) * 2;
if (dead == true)
{
}
if (opacity_change == 1)
{
	global.half_op -= 0.1;
	if (global.half_op == 0.5)
		opacity_change = 0;
}
if (opacity_change2 == 1)
{
	global.half_op += 0.1;
	if (global.half_op == 1)
		opacity_change2 = 0;
}
if (snap == true && !instance_exists(obj_enemy_text))
{
	snap_play = true;
	snap = false;
}
if (snap_play == true)
{
	hand_frame += 0.33333333;
	if (hand_frame == 2)
	{
		audio_play_sound(snd_snap, 1, false);
		alarm[6] = 15;
	}
	if (hand_frame >= 12)
	{
		hand_frame = 0;
		snap_play = false;
	}
}
if (instance_exists(obj_henchmen_tutorial))
{
	if (obj_henchmen_tutorial.chai_talk == true)
		chai_talk = true;
	else
		chai_talk = false;
}
if (obj_battle_system.turn == BattleTurn.NONE)
{
	if (snap_begin == true)
	{
		snap_time += 1;
		if (floor(snap_time / 3) == (snap_time / 3))
		{
			if (obj_battle_system.enemy[1] == -1 || obj_battle_system.enemy[2] == -1)
				alarm[4] = 10;
		}
		snap_begin = false;
	}
}
