visible = true;
if (keyboard_check(vk_escape) && !instance_exists(obj_menu) && !instance_exists(obj_textboxNEW) && !instance_exists(obj_save) && !instance_exists(obj_end_credits))
	escape_check++;
else
	escape_check = 0;
if (escape_check >= 90)
	game_end();
