has_saved = false;
book_img = 0;
book_y = 30;
book_alpha = 0;
draw_height = 30;
start_drawing = false;
saved_sound = true;
drawing_complete = false;
step_since_spawned = 0;
fade_in = true;
audio_play_sound(snd_page, 1, false);
display_minute = string(obj_timer.last_minutes);
display_second = string(obj_timer.last_seconds);
if (string_length(string(obj_timer.last_seconds)) == 1)
	display_second = "0" + string(obj_timer.last_seconds);
name = "------";
level = 0;
var currentSaveExists = (file_exists("act0_file1") && global.act0_save == 1) || (file_exists("act0_file2") && global.act0_save == 2) || (file_exists("act0_file3") && global.act0_save == 3);
if (currentSaveExists)
{
	var dataToLoad = jsonLoad("act0_file" + string(global.act0_save));
	name = "Olive";
	level = dataToLoad.love;
}
option = 0;
option_x = 0;
