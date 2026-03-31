right = keyboard_check_pressed(vk_right);
left = keyboard_check_pressed(vk_left);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
confirm = keyboard_check_pressed(ord("Z"));
cancel = keyboard_check_pressed(ord("X"));
right_enemy = keyboard_check(vk_right);
left_enemy = keyboard_check(vk_left);
up_enemy = keyboard_check(vk_up);
down_enemy = keyboard_check(vk_down);
slow = keyboard_check(ord("X"));
turn = obj_battle_system.turn;
if (instance_exists(obj_enemy_text))
	movespeed = 0;
if (turn == BattleTurn.NONE)
{
	if (curr_menu == BattleMenu.MAIN)
	{
		if (global.battle_plush == false)
		{
			if (!instance_exists(obj_battle_text))
			{
				global.msg[0] = global.battle_start_msg;
				global.msg_esp[0] = global.battle_start_msg_esp;
				instance_create_depth(x, y, -1, obj_battle_text);
			}
			par_button.is_active = false;
			if (global.gray_buttons == false)
			{
				if (left)
					option -= 1;
				if (right)
					option += 1;
			}
			if (array_length(global.inventory) == 0 && option == 2)
			{
				if (left)
					option -= 1;
				if (right)
					option += 1;
			}
			if (option < 0)
				option = 3;
			if (option > 3)
				option = 0;
			if (left || right)
			{
				if (global.gray_buttons == false)
					audio_play_sound(snd_squeak, 80, false);
			}
			switch (option)
			{
				case 0:
					obj_btn_fight.image_index = 1;
					x = 40;
					if (global.battle_plush == true)
						y = 446;
					else
						y = 447;
					break;
				case 1:
					obj_btn_heal.image_index = 1;
					x = 195;
					if (global.battle_plush == true)
						y = 446;
					else
						y = 447;
					break;
				case 2:
					obj_btn_item.image_index = 1;
					x = 351;
					if (global.battle_plush == true)
						y = 446;
					else
						y = 447;
					break;
				case 3:
					obj_btn_flee.image_index = 1;
					x = 506;
					if (global.battle_plush == true)
						y = 446;
					else
						y = 447;
					break;
			}
			visible = 1;
			if (confirm)
			{
				audio_play_sound(snd_select, 80, false);
				confirm_pressed = true;
				switch (option)
				{
					case 0:
						instance_destroy(obj_battle_text);
						curr_menu = BattleMenu.FIGHT;
						option = 0;
						break;
					case 1:
						instance_destroy(obj_battle_text);
						curr_menu = BattleMenu.HEAL;
						option = 0;
						visible = 0;
						break;
					case 2:
						if (array_length(global.inventory) != 0)
						{
							instance_destroy(obj_battle_text);
							curr_menu = BattleMenu.ITEMS;
							option = 0;
						}
						break;
					case 3:
						instance_destroy(obj_battle_text);
						curr_menu = BattleMenu.FLEE;
						option = 0;
						visible = 0;
						break;
				}
				confirm_pressed = true;
			}
		}
		else
		{
			if (!instance_exists(obj_battle_text))
			{
				global.msg[0] = global.battle_start_msg;
				global.msg_esp[0] = global.battle_start_msg_esp;
				instance_create_depth(x, y, -1, obj_battle_text);
			}
			par_button.is_active = false;
			option = 2;
			if (heartbeat == false)
			{
				if (left || right)
					audio_play_sound(snd_bigdoor_open, 80, false);
			}
			switch (option)
			{
				case 2:
					obj_btn_flee.image_index = 1;
					x = 506;
					y = 446;
			}
			visible = 1;
			if (confirm && heartbeat == false)
			{
				audio_play_sound(snd_select, 80, false);
				confirm_pressed = true;
				switch (option)
				{
					case 2:
						instance_destroy(obj_battle_text);
						curr_menu = BattleMenu.FLEE;
						option = 0;
						visible = 0;
						break;
				}
				confirm_pressed = true;
			}
		}
	}
	if (curr_menu == BattleMenu.FIGHT)
	{
		obj_btn_fight.is_active = true;
		if (up)
			option -= 1;
		if (down)
			option += 1;
		if (up || down)
			audio_play_sound(snd_squeak, 80, false);
		
		function selectable_enemies(arg0, arg1)
		{
			return arg0 != -1;
		}
		
		var enemy_number = array_filter(obj_battle_system.enemy, selectable_enemies);
		if (option < 0)
			option = array_length(enemy_number) - 1;
		if (option > (array_length(enemy_number) - 1))
			option = 0;
		switch (option)
		{
			case 0:
				x = 64;
				y = 279;
				break;
			case 1:
				x = 64;
				y = 311;
				break;
			case 2:
				x = 64;
				y = 343;
				break;
		}
		if (confirm && confirm_pressed == 0)
		{
			audio_play_sound(snd_select, 80, false);
			var center_x = room_width / 2;
			var center_y = (room_height / 2) + 80;
			obj_bordercontroller.box_mode = BattleBox.METER;
			selected_enemy = obj_battle_system.enemy[option];
			instance_create_depth(center_x, center_y, depth, obj_fight, 
			{
				enemy: selected_enemy
			});
			instance_destroy();
		}
		if (cancel)
		{
			curr_menu = BattleMenu.MAIN;
			option = 0;
		}
	}
	if (curr_menu == BattleMenu.ITEMS)
	{
		obj_btn_item.is_active = true;
		if (up)
			option_y = 0;
		if (down)
		{
			if (obj_battle_system.page == 1)
			{
				if (option_x == 0 && array_length(global.inventory) > 2)
					option_y = 1;
				if (option_x == 1 && array_length(global.inventory) > 3)
					option_y = 1;
			}
			if (obj_battle_system.page == 2)
			{
				if (option_x == 0 && array_length(global.inventory) > 6)
					option_y = 1;
				if (option_x == 1 && array_length(global.inventory) > 7)
					option_y = 1;
			}
		}
		if (left)
		{
			option_x -= 1;
			if (option_x < 0 && obj_battle_system.page == 2)
			{
				option_x = 1;
				obj_battle_system.page = 1;
			}
			if (option_x < 0)
				option_x = 0;
		}
		if (right)
		{
			if (obj_battle_system.page == 1)
			{
				if (option_y == 0 && array_length(global.inventory) > 1)
					option_x += 1;
				if (option_y == 1 && array_length(global.inventory) > 3)
					option_x += 1;
			}
			if (obj_battle_system.page == 2)
			{
				if (option_y == 0 && array_length(global.inventory) > 5)
					option_x += 1;
				if (option_y == 1 && array_length(global.inventory) > 7)
					option_x += 1;
			}
			if (option_x > 1 && obj_battle_system.page == 1 && array_length(global.inventory) > 4)
			{
				option_y = 0;
				option_x = 0;
				obj_battle_system.page = 2;
			}
			if (option_x > 1)
				option_x = 1;
			show_debug_message(array_length(global.inventory));
		}
		if (up || down || left || right)
			audio_play_sound(snd_squeak, 80, false);
		if (confirm && confirm_pressed == false)
		{
			audio_play_sound(snd_select, 80, false);
			if (obj_battle_system.page == 1)
			{
				visible = 0;
				if (option_x == 0 && option_y == 0)
				{
					item_effect(global.inventory[0].effect);
					if (global.inventory[0].label != global.itemlist.helmet.label)
						array_delete(global.inventory, 0, 1);
					instance_create_depth(x, y, -1000, obj_battle_text);
				}
				if (option_x == 1 && option_y == 0)
				{
					if (array_length(global.inventory) > 1)
					{
						item_effect(global.inventory[1].effect);
						if (global.inventory[1].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 1, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
				if (option_x == 0 && option_y == 1)
				{
					if (array_length(global.inventory) > 2)
					{
						item_effect(global.inventory[2].effect);
						if (global.inventory[2].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 2, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
				if (option_x == 1 && option_y == 1)
				{
					if (array_length(global.inventory) > 3)
					{
						item_effect(global.inventory[3].effect);
						if (global.inventory[3].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 3, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
			}
			if (obj_battle_system.page == 2)
			{
				visible = 0;
				if (option_x == 0 && option_y == 0)
				{
					if (array_length(global.inventory) > 4)
					{
						item_effect(global.inventory[4].effect);
						if (global.inventory[4].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 4, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
				if (option_x == 1 && option_y == 0)
				{
					if (array_length(global.inventory) > 5)
					{
						item_effect(global.inventory[5].effect);
						if (global.inventory[5].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 5, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
				if (option_x == 0 && option_y == 1)
				{
					if (array_length(global.inventory) > 6)
					{
						item_effect(global.inventory[6].effect);
						if (global.inventory[6].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 6, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
				if (option_x == 1 && option_y == 1)
				{
					if (array_length(global.inventory) > 7)
					{
						item_effect(global.inventory[7].effect);
						if (global.inventory[7].label != global.itemlist.helmet.label)
							array_delete(global.inventory, 7, 1);
						instance_create_depth(x, y, -1000, obj_battle_text);
					}
				}
			}
			global.item_used = 1;
			instance_destroy();
		}
		switch (option_x)
		{
			case 0:
				x = 64;
				break;
			case 1:
				x = 320;
				break;
		}
		switch (option_y)
		{
			case 0:
				y = 279;
				break;
			case 1:
				y = 311;
				break;
		}
		if (cancel)
		{
			curr_menu = BattleMenu.MAIN;
			option = 2;
			obj_battle_system.page = 1;
		}
	}
	if (curr_menu == BattleMenu.FLEE)
	{
		obj_btn_flee.is_active = true;
		if (!instance_exists(obj_battle_text) && global.battle_plush == false)
		{
			global.battle_prompt = 1;
			global.msg[0] = "* Are you sure you want to\n  flee?[choice]";
			global.msg_esp[0] = "* ¿Estás seguro?[choice]";
			global.choices_esp[0] = "\nYes";
			global.choices_esp[1] = "\nNo";
			global.choices_esp[0] = "\nSí";
			global.choices_esp[1] = "\nNo";
			instance_create_depth(x, y, -1, obj_battle_text);
		}
		if (!instance_exists(obj_battle_text) && global.battle_plush == true)
		{
			if (obj_enemy_plush.prev_choice == 0)
				global.msg[0] = "* (You called for Eden.)[delay,333]\n* (She didn't hear you.)";
			if (obj_enemy_plush.prev_choice == 1)
				global.msg[0] = "* (You yelled louder.)[delay,333]\n* (But nothing happened.)";
			if (obj_enemy_plush.prev_choice == 2)
				global.msg[0] = "* (You screamed Eden's name.)";
			if (obj_enemy_plush.prev_choice == 3)
				global.msg[0] = "* (You screamed louder.)";
			if (obj_enemy_plush.prev_choice == 4)
				global.msg[0] = "[unskip][slowtext]* (You screamed Eden's name\n  once more...)[delay,500][plush_end]";
			global.plush_flee_attempt = 1;
			instance_create_depth(x, y, -1, obj_battle_text);
		}
		instance_destroy();
	}
	if (curr_menu == BattleMenu.HEAL)
	{
		obj_btn_heal.is_active = true;
		global.battle_prompt = 0;
		if (!instance_exists(obj_battle_text))
		{
			if (global.battle_hashealed == false)
			{
				global.msg[0] = "* Heal yourself?[choice]";
				global.msg_esp[0] = "* ¿Estás seguro?[choice]";
			}
			else
			{
				global.msg[0] = "* Heal yourself?[delay,333] (1.5X enemy ATK\n  increase next turn)[choice]";
				global.msg_esp[0] = "* ¿Estás seguro?[choice]";
			}
			global.choices_esp[0] = "\nYes";
			global.choices_esp[1] = "\nNo";
			global.choices_esp[0] = "\nSí";
			global.choices_esp[1] = "\nNo";
			instance_create_depth(x, y, -1, obj_battle_text);
		}
		instance_destroy();
	}
}
else
{
	if (invincible == true && iframes > 0)
	{
		image_speed = 0.4;
		iframes--;
	}
	else
	{
		image_speed = 0;
		invincible = false;
		iframes = 30;
		image_index = 0;
	}
	hsp = 0;
	vsp = 0;
	if (move_time != 0)
	{
		if (up_enemy)
			vsp = -movespeed;
		if (down_enemy)
			vsp = movespeed;
		if (left_enemy)
			hsp = -movespeed;
		if (right_enemy)
			hsp = movespeed;
		if (slow)
			movespeed = 1;
		else if (!slow)
			movespeed = 3;
	}
	if (global.battle_plush == false)
	{
		if (x <= ((obj_border.bbox_left + 3) - hsp) && left_enemy)
		{
			x = xprevious;
			while (x > (obj_border.bbox_left + 3))
				x += sign(hsp);
			hsp = 0;
		}
		if (x >= (obj_border.bbox_right - 19 - hsp) && right_enemy)
		{
			x = xprevious;
			while (x < (obj_border.bbox_right - 19))
				x += sign(hsp);
			hsp = 0;
		}
		if (y <= ((obj_border.y + 5) - vsp) && up_enemy)
		{
			y = yprevious;
			while (y < obj_border.y)
				y += sign(vsp);
			vsp = 0;
		}
		if (y >= (obj_border.bbox_bottom - 22 - vsp) && down_enemy)
		{
			y = yprevious;
			while (y < (obj_border.bbox_bottom - 22))
				y += sign(vsp);
			vsp = 0;
		}
	}
	else
	{
		if (x <= ((obj_border.bbox_left + 3) - hsp) && left_enemy)
		{
			x = xprevious;
			while (x > (obj_border.bbox_left + 5))
				x += sign(hsp);
			hsp = 0;
		}
		if (x >= (obj_border.bbox_right - 19 - hsp) && right_enemy)
		{
			x = xprevious;
			while (x < (obj_border.bbox_right - 21))
				x += sign(hsp);
			hsp = 0;
		}
		if (y <= ((obj_border.y + 5) - vsp) && up_enemy)
		{
			y = yprevious;
			while (y < (obj_border.y + 4))
				y += sign(vsp);
			vsp = 0;
		}
		if (y >= (obj_border.bbox_bottom - 22 - vsp) && down_enemy)
		{
			y = yprevious;
			while (y < (obj_border.bbox_bottom - 21))
				y += sign(vsp);
			vsp = 0;
		}
	}
	x += hsp;
	y += vsp;
}
if (shake > 0)
	shake--;
if (keyboard_check_released(ord("Z")))
	confirm_pressed = false;
