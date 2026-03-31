randomize();
if (!instance_exists(par_bullet) && hp > 0)
{
	battle_image = spr_enemy_chai_head;
	if (atk_choice == 1)
	{
		if (global.chai_firsttime == false)
			snap_begin = true;
		lightning_boundaries = 175;
		alarm_set(2, 220);
		instance_create_depth(263, 144, -5000, obj_chest_front);
		if (obj_battle_system.timer == -1)
			opacity_change = 1;
		obj_battle_system.timer = 520;
	}
	if (atk_choice == 2)
	{
		snap_begin = true;
		battle_image = spr_enemy_chai_head_down;
		lightning_boundaries = 200;
		instance_create_depth(0, 0, -5000, obj_henchmen_tutorial);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 450;
	}
	if (atk_choice == 3)
	{
		snap_begin = true;
		lightning_boundaries = 200;
		instance_create_depth(choose(85, 441), 252, -5000, obj_chest_side);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 350;
	}
	if (atk_choice == 4)
	{
		snap_begin = true;
		lightning_boundaries = 175;
		instance_create_depth(random_range(32, 120), 480, -5000, obj_gem_break_2);
		alarm[3] = 60;
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 500;
	}
	if (atk_choice == 6)
	{
		snap_begin = true;
		lightning_boundaries = 175;
		instance_create_depth(0, 0, -5000, obj_gemspin_control);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 630;
	}
	if (atk_choice == 7)
	{
		snap_begin = true;
		lightning_boundaries = 175;
		instance_create_depth(choose(85, 441), 252, -5000, obj_chest_side);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 350;
	}
	if (atk_choice == 5)
	{
		snap_begin = true;
		lightning_boundaries = 175;
		instance_create_depth(0, 0, -5000, obj_pearl_control_2);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 350;
	}
	if (atk_choice == 8)
	{
		snap_begin = true;
		lightning_boundaries = 200;
		instance_create_depth(0, 0, -5000, obj_pearl_control_3);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 350;
	}
	if (atk_choice == 9)
	{
		snap_begin = true;
		lightning_boundaries = 175;
		instance_create_depth(0, 0, -5000, obj_gemfall_control);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 300;
	}
}
else if (hp <= 0)
{
	obj_battle_system.timer = 99999;
}
