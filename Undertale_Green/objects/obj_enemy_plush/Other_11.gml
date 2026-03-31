battle_image = spr_enemy_gray_head;
if (!instance_exists(par_bullet) && hp > 0)
{
	if (atk_choice >= 1)
	{
		instance_create_depth(0, 0, -500, obj_plush_control);
		if (obj_battle_system.timer == -1)
			obj_battle_system.timer = 180;
	}
}
else if (hp <= 0)
{
	obj_battle_system.timer = 99999;
}
