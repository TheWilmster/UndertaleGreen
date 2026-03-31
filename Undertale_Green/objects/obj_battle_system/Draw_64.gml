if (xwrite == 0)
{
	if (enemy[0] != -1)
	{
		xwrite = string_length(enemy[0]._name) * 45;
	}
	else if (enemy[0] != -1 && enemy[1] != -1)
	{
		var enemy0_len = string_length(enemy[0]._name);
		var enemy1_len = string_length(enemy[1]._name);
		if (enemy0_len > enemy1_len)
			xwrite = string_length(enemy[0]._name) * 45;
		else
			xwrite = string_length(enemy[1]._name) * 45;
	}
	else if (enemy[0] != -1 && enemy[1] != -1 && enemy[2] != -1)
	{
		var enemy0_len = string_length(enemy[0]._name);
		var enemy1_len = string_length(enemy[1]._name);
		var enemy2_len = string_length(enemy[2]._name);
		if (enemy0_len > enemy1_len && enemy0_len > enemy2_len)
			xwrite = string_length(enemy[0]._name) * 45;
		else if (enemy1_len > enemy0_len && enemy1_len > enemy2_len)
			xwrite = string_length(enemy[1]._name) * 45;
		else if (enemy2_len > enemy0_len && enemy2_len > enemy1_len)
			xwrite = string_length(enemy[2]._name) * 45;
	}
}
draw_set_font(fnt_determination);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (instance_exists(obj_heart))
{
	if (turn == BattleTurn.NONE)
	{
		if (obj_heart.curr_menu == BattleMenu.FIGHT)
		{
			for (var i = 0; i < array_length(enemy); i++)
			{
				if (enemy[i] != -1)
				{
					draw_text_ext_transformed(100, 272 + (i * 32), string(enemy[i]._name), 2, 999, 2, 2, 0);
					draw_set_color(c_red);
					draw_rectangle(xwrite, 280 + (i * 32), xwrite + 100, 280 + (i * 32) + 16, false);
					draw_set_color(c_lime);
					draw_rectangle(xwrite, 280 + (i * 32), xwrite + ((enemy[i].hp / enemy[i].maxhp) * 100), 280 + (i * 32) + 16, false);
					draw_set_color(c_white);
				}
			}
		}
		if (obj_heart.curr_menu == BattleMenu.ITEMS)
		{
			if (array_length(global.inventory) != 0)
			{
				if (page == 1)
				{
					draw_text_ext_transformed(356, 336, "  PAGE 1", 2, 999, 2, 2, 0);
					draw_text_ext_transformed(100, 272, "* " + global.inventory[0].label, 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 1)
						draw_text_ext_transformed(356, 272, "* " + global.inventory[1].label, 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 2)
						draw_text_ext_transformed(100, 304, "* " + global.inventory[2].label, 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 3)
						draw_text_ext_transformed(356, 304, "* " + global.inventory[3].label, 2, 999, 2, 2, 0);
				}
				if (page == 2)
				{
					draw_text_ext_transformed(354, 336, "  PAGE 2", 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 4)
						draw_text_ext_transformed(100, 272, "* " + global.inventory[4].label, 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 5)
						draw_text_ext_transformed(356, 272, "* " + global.inventory[5].label, 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 6)
						draw_text_ext_transformed(100, 304, "* " + global.inventory[6].label, 2, 999, 2, 2, 0);
					if (array_length(global.inventory) > 7)
						draw_text_ext_transformed(356, 304, "* " + global.inventory[7].label, 2, 999, 2, 2, 0);
				}
			}
		}
	}
}
