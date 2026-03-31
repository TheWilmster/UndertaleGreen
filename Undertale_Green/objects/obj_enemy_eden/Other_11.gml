if (!instance_exists(par_bullet) && hp > 0)
{
	if (atk_choice == 1)
	{
		battle_image = spr_enemy_eden_head;
		alarm_set(1, 20);
		instance_create_depth(400, (room_height / 2) - 16, -500, obj_falling_rock);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 150;
	}
	if (atk_choice == 3)
	{
		battle_image = spr_enemy_eden_head;
		if (obj_battle_system.timer == -1)
		{
			instance_create_depth(310, 110, -500, obj_sythe_r);
			instance_create_depth(125, 110, -500, obj_sythe_l);
			obj_battle_system.timer = 160;
		}
	}
	if (atk_choice == 4)
	{
		battle_image = spr_enemy_eden_head;
		randomize();
		lute_side = choose(0, 1);
		if (lute_side == 1)
			instance_create_depth(565, 320, -500, obj_lute);
		if (lute_side == 0)
			instance_create_depth(75, 320, -500, obj_lute);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 220;
	}
	if (atk_choice == 5)
	{
		battle_image = spr_enemy_eden_head;
		instance_create_depth(obj_heart.x + 30, 130, -500, obj_bottle);
		alarm_set(2, 380);
		if (obj_battle_system.timer == -1)
		{
			opacity_change = 1;
			obj_battle_system.timer = 380;
		}
	}
	if (atk_choice == 2)
	{
		battle_image = spr_enemy_eden_head;
		instance_create_depth(538, obj_heart.y + 80, -500, obj_hand);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 210;
	}
	if (atk_choice == 100)
	{
		battle_image = spr_enemy_eden_head;
		instance_create_depth(room_width / 2, (room_height / 2) + 115, -999999, obj_indic_arrows);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 150;
	}
	if (atk_choice == 101)
	{
		misscount += 1;
		obj_battle_system.turn = BattleTurn.NONE;
	}
}
else if (hp <= 0)
{
	obj_battle_system.timer = 9999999;
}
show_debug_message(obj_battle_system.timer);
