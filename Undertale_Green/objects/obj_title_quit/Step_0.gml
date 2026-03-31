left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
down = keyboard_check_pressed(vk_down);
up = keyboard_check_pressed(vk_up);
confirm = keyboard_check_pressed(ord("Z"));
cancel = keyboard_check_pressed(ord("X"));
vol_heart_x = (223 * global.game_volume) + 239;
if (file_exists("act0_file1"))
	act0_save1data = 1;
if (file_exists("act0_file2"))
	act0_save2data = 1;
if (file_exists("act0_file3"))
	act0_save3data = 1;
var save_settings = 
{
	language: global.language,
	game_volume: global.game_volume,
	window: global.window
};
var stringify_settings = json_stringify(save_settings);
var settings_file = file_text_open_write("settings.txt");
file_text_write_string(settings_file, stringify_settings);
show_debug_message("Saved!");
file_text_close(settings_file);
audio_master_gain(global.game_volume);
if (window_get_fullscreen() == true)
	global.window = 3;
if (window_get_fullscreen() == false && global.window == 3)
{
	global.window = 1;
	window_set_size(global.gui_width * global.window, global.gui_height * global.window);
	window_center();
}
if (new_or_load == 2 && curr_menu == 0 && menu_transition == 0)
{
	if (down)
	{
		option -= 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (up)
	{
		option += 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (option > 1)
		option = 0;
	if (option < 0)
		option = 1;
	if (confirm)
	{
		if (option == 0)
		{
			audio_play_sound(snd_select, 1, false);
			curr_menu = 2;
			option = stage_option;
			menu_transition = 1;
			alarm[3] = 30;
		}
		else if (option == 1)
		{
			audio_play_sound(snd_select, 1, false);
			curr_menu = 1;
			option = 0;
		}
		confirm_pressed = 1;
	}
}
if (curr_menu == 1 && menu_transition == 0)
{
	if (cancel)
	{
		curr_menu = 0;
		option = 2;
		audio_pause_sound(mus_settings);
		audio_resume_sound(snd_crowd_chatter);
		audio_play_sound(snd_impact, 1, false);
	}
	if (down)
	{
		option += 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (up)
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
			audio_play_sound(snd_bigdoor_open, 1, false);
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
			audio_play_sound(snd_select, 1, false);
		}
		confirm_pressed = 1;
	}
	if (option == 1)
	{
		if (left)
		{
			audio_play_sound(snd_squeak, 1, false);
			if (global.game_volume > 0)
				global.game_volume -= 0.1;
		}
		if (right)
		{
			audio_play_sound(snd_squeak, 1, false);
			if (global.game_volume < 1)
				global.game_volume += 0.1;
		}
	}
}
if (curr_menu == 2 && menu_transition == 0)
{
	if (left)
	{
		option -= 1;
		audio_play_sound(snd_noise, 1, false);
		menu_transition = 2;
		alarm[4] = 34;
	}
	if (right)
	{
		option += 1;
		audio_play_sound(snd_noise, 1, false);
		menu_transition = 2;
		alarm[4] = 34;
	}
	if (option > 3)
		option = 0;
	if (option < 0)
		option = 3;
	stage_option = option;
	if (cancel)
	{
		audio_play_sound(snd_squeak, 1, false);
		curtain_index = 7;
		menu_transition = 3;
		alarm[5] = 20;
		alarm[6] = 85;
	}
	if (confirm && confirm_pressed == 0)
	{
		if (option == 0)
		{
			curr_menu = 3;
			option = 0;
			audio_pause_sound(snd_crowd_chatter);
			audio_resume_sound(mus_act0_select);
			if (!audio_is_playing(mus_act0_select))
				audio_play_sound(mus_act0_select, 1, true);
			audio_play_sound(snd_select, 1, false);
		}
		if (option != 0)
			audio_play_sound(snd_bigdoor_open, 1, false);
		confirm_pressed = 1;
	}
}
if (curr_menu == 3)
{
	if (up)
	{
		option -= 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (down)
	{
		option += 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (option > 2)
		option = 0;
	if (option < 0)
		option = 2;
	act0_fileoption = option;
	if (cancel)
	{
		audio_resume_sound(snd_crowd_chatter);
		audio_pause_sound(mus_act0_select);
		curr_menu = 2;
		option = stage_option;
	}
	if (confirm && confirm_pressed == 0)
	{
		audio_play_sound(snd_select, 1, false);
		curr_menu = 4;
		option = 0;
		confirm_pressed = 1;
	}
}
if (curr_menu == 3 || curr_menu == 4)
{
	if (act0_save1data == 1)
	{
		var save_file = file_text_open_read("save.txt");
		var _json_s = file_text_read_string(save_file);
		var settings_struct = json_parse(_json_s);
		act0_1location = settings_struct.last_location;
		act0_1minutes = floor(settings_struct.last_save_time / 1800);
		act0_1seconds = floor((settings_struct.last_save_time - (act0_1minutes * 1800)) / 30);
		f1_display_minute = string(act0_1minutes);
		f1_display_second = string(act0_1seconds);
		if (string_length(string(act0_1seconds)) == 1)
			f1_display_second = "0" + string(act0_1seconds);
		file_text_close(save_file);
	}
	if (act0_save2data == 1)
	{
		var save_file = file_text_open_read("save2.txt");
		var _json_s = file_text_read_string(save_file);
		var settings_struct = json_parse(_json_s);
		act0_2location = settings_struct.last_location;
		act0_2minutes = floor(settings_struct.last_save_time / 1800);
		act0_2seconds = floor((settings_struct.last_save_time - (act0_2minutes * 1800)) / 30);
		f2_display_minute = string(act0_2minutes);
		f2_display_second = string(act0_2seconds);
		if (string_length(string(act0_2seconds)) == 1)
			f2_display_second = "0" + string(act0_2seconds);
		file_text_close(save_file);
	}
	if (act0_save3data == 1)
	{
		var save_file = file_text_open_read("save3.txt");
		var _json_s = file_text_read_string(save_file);
		var settings_struct = json_parse(_json_s);
		act0_3location = settings_struct.last_location;
		act0_3minutes = floor(settings_struct.last_save_time / 1800);
		act0_3seconds = floor((settings_struct.last_save_time - (act0_3minutes * 1800)) / 30);
		f3_display_minute = string(act0_3minutes);
		f3_display_second = string(act0_3seconds);
		if (string_length(string(act0_3seconds)) == 1)
			f3_display_second = "0" + string(act0_3seconds);
		file_text_close(save_file);
	}
}
if (curr_menu == 4 && menu_transition == 0)
{
	if (act0_save1data == 1 && act0_fileoption == 0)
		graydelete = false;
	else if (act0_save2data == 1 && act0_fileoption == 1)
		graydelete = false;
	else if (act0_save3data == 1 && act0_fileoption == 2)
		graydelete = false;
	else
		graydelete = true;
	if (left)
	{
		option -= 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (right)
	{
		option += 1;
		audio_play_sound(snd_squeak, 1, false);
	}
	if (graydelete == false)
	{
		if (option > 2)
			option = 0;
		if (option < 0)
			option = 2;
	}
	else
	{
		if (option > 1)
			option = 0;
		if (option < 0)
			option = 1;
	}
	if (cancel)
	{
		audio_play_sound(snd_squeak, 1, false);
		curr_menu = 3;
		option = act0_fileoption;
	}
	if (confirm && confirm_pressed == 0)
	{
		if (option == 0)
		{
			audio_play_sound(snd_select, 1, false);
			menu_transition = 4;
			alarm[5] = 20;
			alarm[7] = 100;
			curtain_index = 7;
			audio_stop_sound(mus_act0_select);
			global.act0_save = act0_fileoption + 1;
		}
		else if (option == 1)
		{
			audio_play_sound(snd_squeak, 1, false);
			curr_menu = 3;
			option = act0_fileoption;
		}
		else if (option == 2)
		{
			audio_play_sound(snd_largeswing, 1, false);
			curr_menu = 3;
			if (act0_fileoption == 0)
			{
				act0_save1data = 0;
				file_delete("save.txt");
				global.transfer_act0[0] = 0;
				data_transfer_save();
			}
			if (act0_fileoption == 1)
			{
				act0_save2data = 0;
				file_delete("save2.txt");
				global.transfer_act0[1] = 0;
				data_transfer_save();
			}
			if (act0_fileoption == 2)
			{
				act0_save3data = 0;
				file_delete("save3.txt");
				global.transfer_act0[2] = 0;
				data_transfer_save();
			}
			option = act0_fileoption;
		}
		confirm_pressed = 1;
	}
}
if (curtain_move == 1)
{
	curtain_index += 0.2;
	spotlight_alpha -= 0.06666;
}
if (curtain_move == 2 && curtain_index > 0)
	curtain_index -= 0.2;
if (curtain_move == 2 && curtain_index <= 0)
{
	curtain_move = 0;
	curtain_index = 0;
}
if (curtain_move == 3 && curtain_index < 7)
	curtain_index += 0.2;
if (curtain_move == 3 && curtain_index == 7)
{
	curtain_move = 0;
	curtain_index = 0;
	instance_destroy();
}
if (menu_transition == 1 && curtain_index == 7)
{
	menu_transition = 0;
	curtain_move = 0;
	curtain_index = 0;
	spotlight_alpha = 0.65;
}
if (keyboard_check_released(ord("Z")))
	confirm_pressed = 0;
if (fade_out == 1)
{
	spotlight_alpha -= 0.005;
	logo_y -= 0.85;
	audio_sound_gain(snd_crowd_chatter, 0, 1750);
}
if (blackout_timer > 0)
	blackout_timer--;
else if (blackout == 0)
	blackout = 1;
