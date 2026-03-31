randomize();
if (hp > 0)
{
	if (atk_choice == -1)
		battle_image = spr_enemy_chai_head;
	if (prev_choice == 9)
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
		if (global.chai_firsttime == false && atk_choice == 2)
			atk_choice = 3;
		prev_choice = atk_choice;
	}
	battle_msg += 1;
	if (battle_msg == 7)
		battle_msg = 1;
	if (battle_msg == 1)
		global.battle_start_msg = "* Chai's grin lights up the night.";
	if (battle_msg == 2)
		global.battle_start_msg = "* Smells like fireflies.[delay,333]\n* Tastes like them too.";
	if (battle_msg == 3)
		global.battle_start_msg = "* Chai admires her fancy attire.";
	if (battle_msg == 4)
		global.battle_start_msg = "* A purple haze engulfs the moon.";
	if (battle_msg == 5)
		global.battle_start_msg = "* Chai's tiara is slightly too\n  big for her head.";
	if (battle_msg == 6)
		global.battle_start_msg = "* Chai wishes she had a mirror.";
	if (battle_msg == 6)
		global.battle_start_msg = "* Chai wishes she had a mirror.";
	switch (atk_choice)
	{
		case 1:
			battle_box(175, 200, undefined, -60);
			decree_text += 1;
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 2:
			battle_box(200, 200, undefined, -60);
			decree_text += 1;
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 3:
			battle_box(200, 200, undefined, -60);
			decree_text += 1;
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 4:
			battle_box(175, 200, undefined, -60);
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 5:
			battle_box(175, 200, undefined, -60);
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 6:
			battle_box(175, 200, undefined, -60);
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 7:
			battle_box(175, 200, undefined, -60);
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 8:
			battle_box(200, 200, undefined, -60);
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
		case 9:
			battle_box(175, 200, undefined, -60);
			if (global.chai_firsttime == false && decree_text == 2)
				decree_text += 1;
			decree_text += 1;
			if (decree_text < 10)
				chai_text(decree_text);
			break;
	}
	if (decree_text < 10)
		instance_create_depth(x + spr_w, y - spr_h, depth - 1, obj_enemy_text);
}
else
{
	global.school_time_sequence = 2;
	audio_stop_sound(mus_queen_chai);
	global.msg[0] = "[battleface,chai,normal][c_black]Well done,[freeze][delay,333][continue] Olive.[battle_end]";
	instance_create_depth(x + spr_w, y - spr_h, depth - 1, obj_enemy_text);
}
