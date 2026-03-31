obj_player.curr_state = PlayerState.MENU;
confirm = keyboard_check_pressed(ord("Z"));
cancel = keyboard_check_pressed(ord("X"));
right = keyboard_check_pressed(vk_right);
left = keyboard_check_pressed(vk_left);
if (has_saved == false)
{
	if (fade_in == false)
	{
		if (right || left)
		{
			audio_play_sound(snd_squeak, 1, false);
			if (option == 1)
				option = 0;
			else
				option = 1;
		}
		if (confirm)
		{
			if (option == 1)
			{
				instance_destroy();
			}
			else
			{
				if (room == rm_basement)
					global.last_location = "MWHS - Basement";
				if (room == rm_hallway1)
					global.last_location = "MWHS - Hallway";
				if (room == rm_spookyforest)
					global.last_location = "MWP - Forest";
				global.last_save_time = global.game_time;
				audio_play_sound(snd_heal, 1, false);
				global.hp = 20;
				if (!array_contains(global.journal, global.save_photo))
					array_push(global.journal, global.save_photo);
				save();
				alarm[0] = 2;
				has_saved = true;
			}
			keyboard_clear(confirm);
		}
		if (cancel)
		{
			keyboard_clear(cancel);
			instance_destroy();
		}
		switch (option)
		{
			case 0:
				option_x = 0;
				break;
			case 1:
				option_x = 160;
				break;
		}
	}
}
else if (confirm && drawing_complete == true)
{
	instance_destroy();
}
step_since_spawned += 1;
if (fade_in == true)
{
	book_alpha += 0.05;
	book_y -= (8 / step_since_spawned);
}
if (book_alpha >= 1)
	fade_in = false;
if (obj_timer.last_hours == 0)
{
	display_minute = string(obj_timer.last_minutes);
}
else
{
	if (string_length(string(obj_timer.last_minutes)) == 1)
		display_minute = "0" + string(obj_timer.last_minutes);
	if (string_length(string(obj_timer.last_minutes)) == 2)
		display_minute = string(obj_timer.last_minutes);
}
if (string_length(string(obj_timer.last_seconds)) == 2)
	display_second = string(obj_timer.last_seconds);
if (string_length(string(obj_timer.last_seconds)) == 1)
	display_second = "0" + string(obj_timer.last_seconds);
if (has_saved == true)
{
	draw_height += 2;
	if (draw_height >= 140)
		drawing_complete = true;
}
if (drawing_complete == true && saved_sound == true)
{
	saved_sound = false;
	audio_play_sound(snd_save, 1, false);
}
