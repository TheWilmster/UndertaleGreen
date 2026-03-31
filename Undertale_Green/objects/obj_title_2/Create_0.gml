window_scale = 0;
global.gui_width = 640;
global.gui_height = 480;
option = 0;
depth = -6000;
curr_menu = 0;
prev_top = 0;
confirm_pressed = 0;
vol_heart_x = 0;
setting_offset = -40;
audio_play_sound(snd_crowd_chatter, 1, true, 2);
audio_sound_gain(snd_crowd_chatter, 1, 0);
text_alpha = 1;
new_or_load = 3;
fade_out = 0;
blackout = 0;
blackout_timer = 80;
spotlight_alpha = 1;
curtain_index = 0;
curtain_timer = 30;
logo_y = -20;
play_sound = false;
time_display_string = "";
if (file_exists("settings.txt"))
{
	var settings_file = file_text_open_read("settings.txt");
	var _json_s = file_text_read_string(settings_file);
	var settings_struct = json_parse(_json_s);
	global.language = settings_struct.language;
	global.game_volume = settings_struct.game_volume;
	global.window = settings_struct.window;
	file_text_close(settings_file);
}
else
{
	global.language = 0;
	global.game_volume = 0.5;
	global.window = 1;
}
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
if (file_exists("save.txt"))
{
	var save_file = file_text_open_read("save.txt");
	var _json = file_text_read_string(save_file);
	var save_struct = json_parse(_json);
	global.last_save_time = save_struct.last_save_time;
	global.last_location = save_struct.last_location;
	file_text_close(save_file);
	last_minutes = floor(global.last_save_time / 1800);
	last_seconds = floor((global.last_save_time - (last_minutes * 1800)) / 30);
	display_minute = string(last_minutes);
	display_second = string(last_seconds);
	if (string_length(string(last_seconds)) == 1)
		display_second = "0" + string(last_seconds);
	time_display_string = display_minute + ":" + display_second;
}
else
{
	global.last_save_time = 0;
	global.last_location = "--";
	last_hours = 0;
	last_minutes = 0;
	last_seconds = 0;
}
