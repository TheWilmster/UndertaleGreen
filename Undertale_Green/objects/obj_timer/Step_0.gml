audio_master_gain(global.game_volume);
if (global.game_time < 1801170)
	global.game_time += 1;
minutes = floor(global.game_time / 1800);
seconds = floor((global.game_time - (minutes * 1800)) / 30);
last_minutes = floor(global.last_save_time / 1800);
last_seconds = floor((global.last_save_time - (last_minutes * 1800)) / 30);
if (window_get_fullscreen() == true)
	global.window = 3;
if (window_get_fullscreen() == false && global.window == 3)
{
	global.window = 1;
	window_set_size(global.gui_width * global.window, global.gui_height * global.window);
	window_center();
}
