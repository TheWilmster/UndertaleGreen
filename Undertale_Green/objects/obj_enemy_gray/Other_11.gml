battle_image = spr_enemy_gray_head;
if (!instance_exists(par_bullet) && hp > 0)
{
	if (atk_choice == 3)
	{
		alarm_set(1, 30);
		instance_create_depth(460, random_range(220, 420), -5000, obj_axe_left);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 210;
	}
	if (atk_choice == 6)
	{
		alarm_set(2, 300);
		instance_create_depth(190, 0, -500, obj_arrow_locate);
		if (obj_battle_system.timer == -1)
		{
			obj_battle_system.timer = 300;
			opacity_change = 1;
		}
	}
	if (atk_choice == 7)
	{
		instance_create_depth(455, 363, -500, obj_dragon);
		instance_create_depth(185, 363, -500, obj_dragon_lnew);
		instance_create_depth(0, 0, 0, obj_dragon_control);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 490;
	}
	if (atk_choice == 1)
	{
		instance_create_depth(172, 286, -500, obj_sword_l);
		instance_create_depth(468, 286, -500, obj_sword_r);
		alarm_set(2, 300);
		if (obj_battle_system.timer == -1)
		{
			obj_battle_system.timer = 300;
			opacity_change = 1;
		}
	}
	if (atk_choice == 2)
	{
		instance_create_depth(0, 0, -500, obj_joust_control);
		alarm_set(2, 360);
		if (obj_battle_system.timer == -1)
		{
			obj_battle_system.timer = 360;
			opacity_change = 1;
		}
	}
	if (atk_choice == 4)
	{
		alarm[5] = 10;
		instance_create_depth(320, 440, -9995, obj_sword_down);
		instance_create_depth(320, 530, -9996, obj_stone);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 1020;
	}
	if (atk_choice == 5)
	{
		instance_create_depth(320, 140, -500, obj_shield);
		alarm_set(2, 350);
		if (obj_battle_system.timer == -1)
		{
			obj_battle_system.timer = 350;
			opacity_change = 1;
		}
	}
}
else if (hp <= 0)
{
	obj_battle_system.timer = 99999;
}
