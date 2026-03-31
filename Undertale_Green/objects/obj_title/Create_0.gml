window_scale = 0;
global.gui_width = 640;
global.gui_height = 480;
menu_transition = 0;
with (all)
{
	if (persistent && !obj_title)
		instance_destroy();
}
if (instance_exists(obj_timer))
	instance_destroy(obj_timer);
option = 0;
depth = -6000;
curr_menu = 0;
prev_top = 0;
confirm_pressed = 0;
vol_heart_x = 0;
setting_offset = -40;
stage_option = 0;
randomize();
act0_spr = irandom_range(0, 5);
audio_play_sound(snd_crowd_chatter, 1, true, 2);
audio_sound_gain(snd_crowd_chatter, 1, 0);
show_save = 1;
text_alpha = 1;
new_or_load = 3;
fade_out = 0;
blackout = 0;
blackout_timer = 80;
spotlight_alpha = 1;
curtain_index = 0;
curtain_move = 0;
curtain_timer = 30;
setting_yoff = -35;
logo_y = -20;
filemenu_y = 10;
play_sound = false;
time_display_string = "";
title_control = true;
if (file_exists("act0_file1") || file_exists("act0_file2") || file_exists("act0_file3"))
	title_control = false;
if (title_control == true)
	act0_spr = 2;
if (file_exists("settings.txt"))
{
	var settings_file = file_text_open_read("settings.txt");
	var _json_s = file_text_read_string(settings_file);
	var settings_struct = json_parse(_json_s);
	global.language = clamp(settings_struct.language, 0, 1);
	global.game_volume = clamp(settings_struct.game_volume, 0, 1);
	global.window = clamp(settings_struct.window, 1, 3);
	file_text_close(settings_file);
}
else
{
	global.language = 0;
	global.game_volume = 0.5;
	global.window = 1;
}
if (file_exists("data_transfer"))
{
	var dataToLoad = jsonLoad("data_transfer");
	global.transfer_act0 = dataToLoad.transfer_act0;
	global.transfer_act1 = dataToLoad.transfer_act1;
	global.transfer_act2 = dataToLoad.transfer_act2;
	global.transfer_act3 = dataToLoad.transfer_act3;
	global.placeholder1 = dataToLoad.placeholder1;
	global.placeholder2 = dataToLoad.placeholder2;
	global.placeholder3 = dataToLoad.placeholder3;
	global.placeholder4 = dataToLoad.placeholder4;
	global.placeholder5 = dataToLoad.placeholder5;
	global.placeholder6 = dataToLoad.placeholder6;
	global.placeholder7 = dataToLoad.placeholder7;
	global.placeholder8 = dataToLoad.placeholder8;
	global.placeholder9 = dataToLoad.placeholder9;
	global.placeholder10 = dataToLoad.placeholder10;
	global.placeholder11 = dataToLoad.placeholder11;
	global.placeholder12 = dataToLoad.placeholder12;
}
else
{
	global.transfer_act0 = [0, 0, 0];
	global.transfer_act1 = [0, 0, 0];
	global.transfer_act2 = [0, 0, 0];
	global.transfer_act3 = [0, 0, 0];
	global.placeholder1 = 0;
	global.placeholder2 = 0;
	global.placeholder3 = 0;
	global.placeholder4 = 0;
	global.placeholder5 = 0;
	global.placeholder6 = 0;
	global.placeholder7 = 0;
	global.placeholder8 = 0;
	global.placeholder9 = 0;
	global.placeholder10 = 0;
	global.placeholder11 = 0;
	global.placeholder12 = 0;
}
data_transfer_save();
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
global.act0_save = 1;
graydelete = false;
act0_save1data = 0;
act0_save2data = 0;
act0_save3data = 0;
act0_1location = " ";
act0_2location = " ";
act0_3location = " ";
act0_1minutes = 0;
act0_1seconds = 0;
act0_2minutes = 0;
act0_2seconds = 0;
act0_3minutes = 0;
act0_3seconds = 0;
f1_display_minute = 0;
f1_display_second = 0;
f2_display_minute = 0;
f2_display_second = 0;
f3_display_minute = 0;
f3_display_second = 0;
act0_fileoption = 0;
