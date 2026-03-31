left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
down = keyboard_check_pressed(vk_down);
up = keyboard_check_pressed(vk_up);
confirm = keyboard_check_pressed(ord("Z"));
cancel = keyboard_check_pressed(ord("X"));
vol_heart_x = (223 * global.game_volume) + 239;
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
if (new_or_load == 2 && curr_menu == 0)
{
	if (right)
	{
		if (file_exists("save.txt"))
		{
			if (option == 0)
				audio_play_sound(snd_squeak, 1, false);
			option = 1;
			prev_top = 1;
		}
		else
		{
			option = 0;
		}
	}
	if (left)
	{
		if (option == 1)
			audio_play_sound(snd_squeak, 1, false);
		prev_top = 0;
		option = 0;
	}
	if (down)
	{
		if (option != 2)
			audio_play_sound(snd_squeak, 1, false);
		option = 2;
	}
	if (up)
	{
		if (option == 2)
			audio_play_sound(snd_squeak, 1, false);
		option = prev_top;
	}
	if (confirm)
	{
		if (option == 1 || option == 0)
		{
			audio_play_sound(snd_select, 1, false);
			if (option == 0)
				new_or_load = 1;
			if (option == 1)
				new_or_load = 0;
			alarm[0] = 205;
			alarm[1] = 30;
			alarm[2] = 215;
		}
		if (option == 2)
		{
			audio_play_sound(snd_select, 1, false);
			curr_menu = 1;
			option = 0;
			audio_pause_sound(snd_crowd_chatter);
			if (!audio_is_paused(mus_settings))
				audio_play_sound(mus_settings, 1, true);
			else
				audio_resume_sound(mus_settings);
		}
		confirm_pressed = 1;
	}
}
if (curr_menu == 1)
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
