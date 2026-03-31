display_set_gui_size(global.gui_width / 2, global.gui_height / 2);
if (blackout == 0)
{
	spotlight_alpha = 1;
	draw_sprite_ext(spr_title_spotlight, 0, 0, 0, 0.5, 0.5, 0, c_white, spotlight_alpha);
}
if (blackout == 1)
{
	if (play_sound == false)
	{
		play_sound = true;
		new_or_load = 2;
		audio_play_sound(snd_impact, 1, false, 0.8);
		spotlight_alpha = 0.65;
	}
	if (room != rm_titlescreen)
	{
		if (curtain_timer > 0)
		{
			curtain_timer--;
		}
		else if (curtain_index < 7)
		{
			obj_player.curr_state = PlayerState.INTERACT;
			curtain_index += 0.5;
		}
		else
		{
			obj_player.curr_state = PlayerState.NORMAL;
			instance_destroy();
		}
	}
	if (curr_menu != 1)
	{
		draw_sprite_ext(spr_curtain, floor(curtain_index), 0, 0, 0.5, 0.5, 0, c_maroon, 1);
		draw_sprite_ext(spr_logo, 0, 47, 0 + logo_y, 0.3763235, 0.3763235, 0, c_white, 1);
		draw_sprite_ext(spr_title_spotlight, 1, 0, 0, 0.5, 0.5, 0, c_white, spotlight_alpha);
	}
	if (new_or_load > 1 && curr_menu == 0)
	{
		display_set_gui_size(global.gui_width / 2, global.gui_height / 2);
		draw_set_font(fnt_determination);
		draw_text(126, 140, "Press [Z]");
		draw_set_color(c_ltgray);
		draw_text_transformed(100, 175, "[Z] Select/Interact", 0.75, 0.75, 0);
		draw_text_transformed(100, 185, "[X] Cancel/Skip Text", 0.75, 0.75, 0);
		draw_text_transformed(100, 195, "[C] Open Menu", 0.75, 0.75, 0);
		draw_text_transformed(100, 205, "[Arrows] Move Around", 0.75, 0.75, 0);
		draw_set_color(c_white);
	}
	if (new_or_load > 1 && curr_menu == 1)
	{
		display_set_gui_size(global.gui_width, global.gui_height);
		if (global.language == 0)
		{
			if (option != 0)
			{
				draw_ui_text(231 + setting_offset, 85, "LANGUAGE", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 85, "LANGUAGE", fnt_determination);
				draw_set_color(c_white);
			}
		}
		else if (global.language == 1)
		{
			if (option != 0)
			{
				draw_ui_text(231 + setting_offset, 85, "IDIOMA", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 85, "IDIOMA", fnt_determination);
				draw_set_color(c_white);
			}
		}
		draw_set_font(fnt_determination);
		draw_set_color(c_gray);
		draw_text_transformed(231 + setting_offset, 110, "MORE LANGUAGES COMING SOON!", 1, 1, 0);
		draw_set_color(c_white);
		if (global.language == 0)
			draw_ui_text(380 + setting_offset, 85, "ENGLISH", fnt_determination);
		else if (global.language == 1)
			draw_ui_text(380 + setting_offset, 83, "ESPAÑOL", fnt_determination_esp);
		if (global.language == 0)
		{
			if (option != 1)
			{
				draw_ui_text(231 + setting_offset, 137, "VOLUME", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 137, "VOLUME", fnt_determination);
				draw_set_color(c_white);
			}
		}
		else if (global.language == 1)
		{
			if (option != 1)
			{
				draw_ui_text(231 + setting_offset, 137, "VOLUMEN", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 137, "VOLUMEN", fnt_determination);
				draw_set_color(c_white);
			}
		}
		if (option != 2)
		{
			if (global.language == 0)
				draw_ui_text(231 + setting_offset, 225, "WINDOW", fnt_determination);
			else if (global.language == 1)
				draw_ui_text(231 + setting_offset, 223, "PANTA.", fnt_determination_esp);
		}
		else
		{
			draw_set_color(c_yellow);
			if (global.language == 0)
				draw_ui_text(231 + setting_offset, 225, "WINDOW", fnt_determination);
			else if (global.language == 1)
				draw_ui_text(231 + setting_offset, 223, "PANTA.", fnt_determination_esp);
			draw_set_color(c_white);
		}
		if (global.language == 0)
		{
			if (global.window == 1)
				draw_ui_text(350 + setting_offset, 225, "SMALL", fnt_determination);
			if (global.window == 2)
				draw_ui_text(350 + setting_offset, 225, "LARGE", fnt_determination);
			if (global.window == 3)
				draw_ui_text(350 + setting_offset, 225, "FULLSCREEN", fnt_determination);
		}
		else if (global.language == 1)
		{
			if (global.window == 1)
				draw_ui_text(350 + setting_offset, 223, "PEQUEÑO", fnt_determination_esp);
			if (global.window == 2)
				draw_ui_text(350 + setting_offset, 223, "GRANDE", fnt_determination_esp);
			if (global.window == 3)
				draw_ui_text(350 + setting_offset, 223, "FULLSCREEN", fnt_determination_esp);
		}
		draw_ui_text(296 + setting_offset, 277, "CONTROLS", fnt_determination);
		draw_set_color(c_gray);
		draw_ui_text(205 + setting_offset, 329, "[Z] Select/Interact", fnt_determination);
		draw_ui_text(205 + setting_offset, 359, "[X] Cancel/Skip Text", fnt_determination);
		draw_ui_text(205 + setting_offset, 389, "[C] Open Menu", fnt_determination);
		draw_ui_text(205 + setting_offset, 419, "[Arrows] Move Around", fnt_determination);
		draw_set_color(c_white);
		draw_rectangle(231 + setting_offset, 173, 235 + setting_offset, 193, false);
		draw_rectangle(485 + setting_offset, 173, 489 + setting_offset, 193, false);
		draw_rectangle(231 + setting_offset, 182, 489 + setting_offset, 183, false);
		draw_rectangle(vol_heart_x + setting_offset + 8, 173, vol_heart_x + setting_offset + 12, 193, false);
	}
}
