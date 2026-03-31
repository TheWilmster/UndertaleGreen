randomize();
if (hp > 0)
{
	if (atk_choice == -1)
		battle_image = spr_enemy_gray_head;
	if (prev_choice == 7)
		global.random_atk = true;
	if (global.random_atk == true)
	{
		atk_choice = atk_list[0];
		array_delete(atk_list, 0, 1);
		array_push(atk_list, atk_choice);
		prev_choice = atk_choice;
	}
	if (global.random_atk == false)
	{
		atk_choice = prev_choice + 1;
		prev_choice = atk_choice;
	}
	battle_msg += 1;
	if (battle_msg == 8)
		battle_msg = 1;
	if (battle_msg == 1)
		global.battle_start_msg = "* ...?";
	if (battle_msg == 2)
		global.battle_start_msg = "* ...?";
	if (battle_msg == 3)
		global.battle_start_msg = "* ...?";
	if (battle_msg == 4)
		global.battle_start_msg = "* ...?";
	if (battle_msg == 5)
		global.battle_start_msg = "* ...?";
	if (battle_msg == 6)
		global.battle_start_msg = "* ...?";
	if (battle_msg == 7)
		global.battle_start_msg = "* ...?";
	switch (atk_choice)
	{
		case 3:
			battle_box(120, 120, undefined, -60);
			break;
		case 6:
			battle_box(120, 200, undefined, -60);
			break;
		case 7:
			battle_box(120, 200, undefined, -60);
			break;
		case 1:
			battle_box(120, 120, undefined, -60);
			break;
		case 2:
			battle_box(120, 200, undefined, -60);
			break;
		case 4:
			battle_box(120, 200, undefined, -60);
			break;
		case 5:
			battle_box(120, 200, undefined, -60);
			break;
	}
}
else
{
	global.school_time_sequence = 2;
	audio_stop_sound(mus_knight_gray);
	global.msg[0] = "[battleface,gray,surprised][c_black]You got me, little\nChai...[battle_end]";
}
