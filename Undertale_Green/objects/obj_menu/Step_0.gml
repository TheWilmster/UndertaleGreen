vol_heart_x = (223 * global.game_volume) + 239;
if (item_text == false)
{
	option_up = keyboard_check_pressed(vk_up);
	option_down = keyboard_check_pressed(vk_down);
	option_left = keyboard_check_pressed(vk_left);
	option_right = keyboard_check_pressed(vk_right);
	confirm = keyboard_check_pressed(ord("Z"));
	cancel = keyboard_check_pressed(ord("X"));
	if (confirm)
	{
		if (option != 1 || current_menu != 3)
			audio_play_sound(snd_select, 1, false);
	}
	if (cancel && current_menu != 0)
		audio_play_sound(snd_squeak, 1, false);
}
if (item_list_prompt == true)
	global.deliverable = true;
else
	global.deliverable = false;
if (current_menu == -1)
{
	instance_destroy();
	obj_player.curr_state = PlayerState.NORMAL;
}
if (current_menu == 0)
{
	instance_destroy(obj_textboxNEW);
	book_alpha = 0;
	fade_in = true;
	step_since_spawned = 0;
	book_y = 30;
	if (option_up)
	{
		option -= 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (option_down)
	{
		option += 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (option < 0)
		option = 2;
	if (option > 2)
		option = 0;
	if (confirm)
	{
		switch (option)
		{
			case 0:
				if (array_length(global.inventory) != 0)
				{
					current_menu = 1;
					option = 0;
				}
				else
				{
					current_menu = 0;
					option = 0;
				}
				break;
			case 1:
				if (array_length(global.journal) != 1)
				{
					current_menu = 2;
					option = 0;
					audio_play_sound(snd_page, 1, false);
				}
				else
				{
					current_menu = 0;
					option = 1;
				}
				break;
			case 2:
				current_menu = 3;
				option = 0;
				break;
		}
		confirm_pressed = 1;
	}
}
if (current_menu == 1 && item_text == false)
{
	if (item_menu == 0)
	{
		if (option_up)
		{
			option -= 1;
			audio_play_sound(snd_squeak, 1, false);
		}
		if (option_down)
		{
			option += 1;
			audio_play_sound(snd_squeak, 1, false);
		}
		if (option < 0)
			option = array_length(global.inventory) - 1;
		if (option > (array_length(global.inventory) - 1))
			option = 0;
		if (confirm && confirm_pressed == 0)
		{
			item_selected = option;
			if (item_list_prompt == false)
			{
				selected_item = global.inventory[option];
				prev_option = option;
				item_menu = 1;
				option = 0;
			}
			else
			{
				instance_destroy();
				selected_item = global.inventory[option];
				if (room == rm_greenroom)
					global.msg[0] = "[character,none,-1][delay,1]* (Nothing happened.)";
				else if (room == rm_hallway1)
					global.msg[0] = "[character,none,-1][delay,1]* (That's not a helmet.)";
				else if (room == rm_hallway2)
					global.msg[0] = "[character,none,-1][delay,1]* (That's not a helmet.)";
				else if (room == rm_lobby)
					global.msg[0] = "[character,none,-1][delay,1]* (That's not a helmet.)";
				else if (room == rm_hallway3)
					global.msg[0] = "[character,none,-1][delay,1]* (Nothing happened.)";
				if (selected_item.label == global.itemlist.keycard.label && room == rm_greenroom)
				{
					global.msg[0] = "[character,none,-1][delay,1]* (You scan the Keycard.)[keyunlock]";
					array_delete(global.inventory, item_selected, 1);
				}
				if (selected_item.label == global.itemlist.helmet.label && room == rm_hallway1)
				{
					global.msg[0] = "[character,none,-1][delay,1]* (You hand her the helmet.)[helmetunlock1]";
					array_delete(global.inventory, item_selected, 1);
				}
				if (selected_item.label == global.itemlist.helmet.label && room == rm_hallway2)
				{
					global.msg[0] = "[character,none,-1][delay,1]* (You hand her the helmet.)[helmetunlock2]";
					array_delete(global.inventory, item_selected, 1);
				}
				if (selected_item.label == global.itemlist.helmet.label && room == rm_lobby)
				{
					global.msg[0] = "[character,none,-1][delay,1]* (You hand her the helmet.)[helmetunlock3]";
					array_delete(global.inventory, item_selected, 1);
				}
				if (selected_item.label == global.itemlist.masterkey.label && room == rm_hallway3)
				{
					global.msg[0] = "[character,none,-1][delay,1]* (You try the Master Keys.)[/page]";
					global.msg[1] = "[character,none,-1][delay,1]* [nightfade](...[delay,333]!)[/page]";
					global.msg[2] = "[character,none,-1][delay,1]* (They worked!)[delay,333]\n* (The door is unlocked!)[/page]";
					global.msg[3] = "[character,none,-1][delay,1]* (...)[/page]";
					global.msg[4] = "[character,none,-1][delay,1]* (...[delay,333]But the keys got jammed in\n  the keyhole.)[/page]";
					global.msg[5] = "[character,none,-1][delay,1]* (Oh well.)[delay,333]\n* (Not like you wanted them\n  anyway.)[unlockhall3]";
					array_delete(global.inventory, item_selected, 1);
				}
				obj_player.curr_state = PlayerState.INTERACT;
				instance_create_depth(x, y, -1000, obj_textboxNEW);
			}
			confirm_pressed = 1;
		}
		if (cancel)
		{
			if (item_list_prompt == false)
				option = 0;
			if (item_list_prompt == true)
			{
				instance_destroy();
				obj_player.curr_state = PlayerState.NORMAL;
			}
		}
	}
	if (item_menu == 1)
	{
		if (option_right)
		{
			audio_play_sound(snd_squeak, 1, false);
			option += 1;
		}
		if (option_left)
		{
			option -= 1;
			audio_play_sound(snd_squeak, 1, false);
		}
		if (option < 0)
			option = 2;
		if (option > 2)
			option = 0;
		if (confirm && confirm_pressed == 0)
		{
			if (option == 0)
			{
				item_text = true;
				item_effect(selected_item.effect);
				if (selected_item.label != global.itemlist.keycard.label && selected_item.label != global.itemlist.helmet.label && selected_item.label != global.itemlist.masterkey.label && selected_item.label != global.itemlist.necklace.label)
					array_delete(global.inventory, item_selected, 1);
				obj_player.curr_state = PlayerState.INTERACT;
				instance_create_depth(x, y, -1000, obj_textboxNEW);
			}
			if (option == 1)
			{
				item_text = true;
				global.msg[0] = selected_item.desc;
				obj_player.curr_state = PlayerState.INTERACT;
				instance_create_depth(x, y, -1000, obj_textboxNEW);
			}
			if (option == 2)
			{
				item_text = true;
				if (selected_item.can_trash == true)
				{
					global.msg[0] = "[character,none,-1][delay,1]* You dropped the " + selected_item.label + ".";
					array_delete(global.inventory, item_selected, 1);
				}
				else
				{
					global.msg[0] = "[character,none,-1][delay,1]* You should probably hold on\n  to the " + selected_item.label + ".";
				}
				obj_player.curr_state = PlayerState.INTERACT;
				instance_create_depth(x, y, -1000, obj_textboxNEW);
			}
		}
	}
}
if (current_menu == 2)
{
	step_since_spawned += 1;
	if (fade_in == true)
	{
		book_alpha += 0.05;
		book_y -= (8 / step_since_spawned);
	}
	if (book_alpha >= 1)
		fade_in = false;
	if (option_left && fade_in == false)
	{
		option -= 1;
		audio_play_sound(snd_page, 1, false);
	}
	if (option_right && fade_in == false)
	{
		option += 1;
		audio_play_sound(snd_page, 1, false);
	}
	if (option < 0)
		option = array_length(global.journal) - 1;
	if (option > (array_length(global.journal) - 1))
		option = 0;
	if (cancel)
		option = 1;
}
if (current_menu == 3)
{
	if (option_down)
	{
		option += 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (option_up)
	{
		option -= 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (option < 0)
		option = 3;
	if (option > 3)
		option = 0;
	if (cancel)
		option = 0;
	if (confirm && confirm_pressed == 0)
	{
		if (option == 0)
		{
			audio_stop_sound(snd_select);
			audio_play_sound(snd_bigdoor_open, 1, false);
		}
		if (option == 2)
		{
			global.window += 1;
			if (global.window > 3)
				global.window = 1;
			if (global.window != 3)
			{
				window_set_size(global.gui_width * global.window, global.gui_height * global.window);
				window_set_fullscreen(false);
				window_center();
			}
			else
			{
				window_set_fullscreen(true);
			}
		}
		if (option == 3)
		{
			audio_play_sound(snd_select, 1, false);
			audio_stop_all();
			game_restart();
		}
		confirm_pressed = 1;
	}
	if (option == 1)
	{
		if (option_left)
		{
			audio_play_sound(snd_squeak, 1, false);
			if (global.game_volume > 0)
				global.game_volume -= 0.1;
		}
		if (option_right)
		{
			audio_play_sound(snd_squeak, 1, false);
			if (global.game_volume < 1)
				global.game_volume += 0.1;
		}
	}
}
if (cancel)
{
	switch (current_menu)
	{
		case 0:
			current_menu -= 1;
			break;
		case 1:
			if (item_list_prompt == false)
			{
				if (item_menu == 0)
				{
					current_menu = 0;
				}
				else
				{
					item_menu = 0;
					option = prev_option;
				}
			}
			break;
		case 2:
			current_menu = 0;
			option = 1;
			break;
		case 3:
			current_menu = 0;
			option = 2;
			break;
	}
}
if (keyboard_check_released(ord("Z")))
	confirm_pressed = 0;
if (obj_player.playtester_mode == true)
{
	if (keyboard_check_pressed(vk_rshift) && array_length(global.inventory) < 8)
		array_push(global.inventory, global.itemlist.test);
	if (keyboard_check_pressed(vk_ralt) && array_length(global.inventory) < 8)
		array_push(global.inventory, global.itemlist.necklace);
}
show_debug_message(selected_item);
if (item_text == true && !instance_exists(obj_textboxNEW))
	instance_destroy();
