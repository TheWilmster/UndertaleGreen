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
	if (new_or_load > 1 && curr_menu == 0 && menu_transition == 0)
	{
		draw_sprite_ext(spr_curtain, floor(curtain_index), 0, 0, 0.5, 0.5, 0, c_maroon, 1);
		draw_sprite_ext(spr_title_spotlight, 1, 0, 0, 0.5, 0.5, 0, c_white, spotlight_alpha);
		if (title_control == true)
		{
			draw_sprite_ext(spr_logo_title, 0, 47, -25 + logo_y, 0.3763235, 0.3763235, 0, c_white, 1);
			display_set_gui_size(global.gui_width / 2, global.gui_height / 2);
			draw_set_font(fnt_determination);
			if (option == 0)
			{
				draw_set_color(c_yellow);
				draw_text(121, 120, "Start Game");
				draw_set_color(c_white);
				draw_text(130, 140, "Settings");
			}
			if (option == 1)
			{
				draw_text(121, 120, "Start Game");
				draw_set_color(c_yellow);
				draw_text(130, 140, "Settings");
				draw_set_color(c_white);
			}
			draw_set_color(c_ltgray);
			draw_text_transformed(100, 165, "[Z] Select/Interact", 0.75, 0.75, 0);
			draw_text_transformed(100, 175, "[X] Cancel/Skip Text", 0.75, 0.75, 0);
			draw_text_transformed(100, 185, "[C] Open Menu", 0.75, 0.75, 0);
			draw_text_transformed(100, 195, "[Arrows] Move Around", 0.75, 0.75, 0);
			draw_text_transformed(100, 205, "[ESC] Quit Game", 0.75, 0.75, 0);
			draw_set_color(c_white);
		}
		else
		{
			draw_sprite_ext(spr_logo_title, 0, 47, logo_y, 0.3763235, 0.3763235, 0, c_white, 1);
			display_set_gui_size(global.gui_width / 2, global.gui_height / 2);
			draw_set_font(fnt_determination);
			if (option == 0)
			{
				draw_set_color(c_yellow);
				draw_text(121, 145, "Start Game");
				draw_set_color(c_white);
				draw_text(130, 165, "Settings");
			}
			if (option == 1)
			{
				draw_text(121, 145, "Start Game");
				draw_set_color(c_yellow);
				draw_text(130, 165, "Settings");
				draw_set_color(c_white);
			}
		}
	}
	if (new_or_load > 1 && curr_menu == 1)
	{
		display_set_gui_size(global.gui_width, global.gui_height);
		if (global.language == 0)
		{
			if (option != 0)
			{
				draw_ui_text(231 + setting_offset, 85 + setting_yoff, "LANGUAGE", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 85 + setting_yoff, "LANGUAGE", fnt_determination);
				draw_set_color(c_white);
			}
		}
		else if (global.language == 1)
		{
			if (option != 0)
			{
				draw_ui_text(231 + setting_offset, 85 + setting_yoff, "IDIOMA", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 85 + setting_yoff, "IDIOMA", fnt_determination);
				draw_set_color(c_white);
			}
		}
		draw_set_font(fnt_determination);
		draw_set_color(c_gray);
		draw_text_transformed(231 + setting_offset, 110 + setting_yoff, "MORE LANGUAGES COMING SOON!", 1, 1, 0);
		draw_set_color(c_white);
		if (global.language == 0)
			draw_ui_text(380 + setting_offset, 85 + setting_yoff, "ENGLISH", fnt_determination);
		else if (global.language == 1)
			draw_ui_text(380 + setting_offset, 83 + setting_yoff, "ESPAÑOL", fnt_determination_esp);
		if (global.language == 0)
		{
			if (option != 1)
			{
				draw_ui_text(231 + setting_offset, 137 + setting_yoff, "VOLUME", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 137 + setting_yoff, "VOLUME", fnt_determination);
				draw_set_color(c_white);
			}
		}
		else if (global.language == 1)
		{
			if (option != 1)
			{
				draw_ui_text(231 + setting_offset, 137 + setting_yoff, "VOLUMEN", fnt_determination);
			}
			else
			{
				draw_set_color(c_yellow);
				draw_ui_text(231 + setting_offset, 137 + setting_yoff, "VOLUMEN", fnt_determination);
				draw_set_color(c_white);
			}
		}
		if (option != 2)
		{
			if (global.language == 0)
				draw_ui_text(231 + setting_offset, 225 + setting_yoff, "WINDOW", fnt_determination);
			else if (global.language == 1)
				draw_ui_text(231 + setting_offset, 223 + setting_yoff, "PANTA.", fnt_determination_esp);
		}
		else
		{
			draw_set_color(c_yellow);
			if (global.language == 0)
				draw_ui_text(231 + setting_offset, 225 + setting_yoff, "WINDOW", fnt_determination);
			else if (global.language == 1)
				draw_ui_text(231 + setting_offset, 223 + setting_yoff, "PANTA.", fnt_determination_esp);
			draw_set_color(c_white);
		}
		if (global.language == 0)
		{
			if (global.window == 1)
				draw_ui_text(350 + setting_offset, 225 + setting_yoff, "SMALL", fnt_determination);
			if (global.window == 2)
				draw_ui_text(350 + setting_offset, 225 + setting_yoff, "LARGE", fnt_determination);
			if (global.window == 3)
				draw_ui_text(350 + setting_offset, 225 + setting_yoff, "FULLSCREEN", fnt_determination);
		}
		else if (global.language == 1)
		{
			if (global.window == 1)
				draw_ui_text(350 + setting_offset, 223 + setting_yoff, "PEQUEÑO", fnt_determination_esp);
			if (global.window == 2)
				draw_ui_text(350 + setting_offset, 223 + setting_yoff, "GRANDE", fnt_determination_esp);
			if (global.window == 3)
				draw_ui_text(350 + setting_offset, 223 + setting_yoff, "FULLSCREEN", fnt_determination_esp);
		}
		draw_ui_text(296 + setting_offset, 277 + setting_yoff, "CONTROLS", fnt_determination);
		draw_set_color(c_gray);
		draw_ui_text(205 + setting_offset, 329 + setting_yoff, "[Z] Select/Interact", fnt_determination);
		draw_ui_text(205 + setting_offset, 359 + setting_yoff, "[X] Cancel/Skip Text", fnt_determination);
		draw_ui_text(205 + setting_offset, 389 + setting_yoff, "[C] Open Menu", fnt_determination);
		draw_ui_text(205 + setting_offset, 419 + setting_yoff, "[Arrows] Move Around", fnt_determination);
		draw_ui_text(205 + setting_offset, 449 + setting_yoff, "[ESC] Quit Game", fnt_determination);
		draw_set_color(c_white);
		draw_rectangle(231 + setting_offset, 173 + setting_yoff, 235 + setting_offset, 193 + setting_yoff, false);
		draw_rectangle(485 + setting_offset, 173 + setting_yoff, 489 + setting_offset, 193 + setting_yoff, false);
		draw_rectangle(231 + setting_offset, 182 + setting_yoff, 489 + setting_offset, 183 + setting_yoff, false);
		draw_rectangle(vol_heart_x + setting_offset + 8, 173 + setting_yoff, vol_heart_x + setting_offset + 12, 193 + setting_yoff, false);
	}
	if (new_or_load > 1 && curr_menu == 2 && menu_transition != 2)
	{
		if (option == 0)
			draw_sprite_ext(spr_act0_title, act0_spr, 0, 0, 1, 1, 0, c_white, 1);
		if (option == 1)
			draw_sprite_ext(spr_act1_title, 0, 0, 0, 1, 1, 0, c_white, 1);
		if (option == 2)
			draw_sprite_ext(spr_act2_title, 0, 0, 0, 1, 1, 0, c_white, 1);
		if (option == 3)
			draw_sprite_ext(spr_act3_title, 0, 0, 0, 1, 1, 0, c_white, 1);
	}
	if (new_or_load > 1 && curr_menu == 3)
	{
		draw_sprite_ext(spr_saveboxes, 0, 0, 0, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[0] == 1)
			draw_sprite_ext(spr_save_star, 0, 230, 50 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[1] == 1)
			draw_sprite_ext(spr_save_star, 0, 230, 110 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[2] == 1)
			draw_sprite_ext(spr_save_star, 0, 230, 170 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[0] == 2)
			draw_sprite_ext(spr_save_star, 1, 230, 50 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[1] == 2)
			draw_sprite_ext(spr_save_star, 1, 230, 110 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[2] == 2)
			draw_sprite_ext(spr_save_star, 1, 230, 170 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (option == 0)
		{
			draw_set_color(c_yellow);
			draw_text(70, 30 + filemenu_y, "File 1");
			draw_set_color(c_white);
			draw_text(70, 90 + filemenu_y, "File 2");
			draw_text(70, 150 + filemenu_y, "File 3");
		}
		if (option == 1)
		{
			draw_text(70, 30 + filemenu_y, "File 1");
			draw_set_color(c_yellow);
			draw_text(70, 90 + filemenu_y, "File 2");
			draw_set_color(c_white);
			draw_text(70, 150 + filemenu_y, "File 3");
		}
		if (option == 2)
		{
			draw_text(70, 30 + filemenu_y, "File 1");
			draw_text(70, 90 + filemenu_y, "File 2");
			draw_set_color(c_yellow);
			draw_text(70, 150 + filemenu_y, "File 3");
			draw_set_color(c_white);
		}
		if (act0_save1data == 1)
		{
			draw_text(70, 50 + filemenu_y, act0_1location);
			draw_text(200, 30 + filemenu_y, f1_display_minute + ":" + f1_display_second);
		}
		else
		{
			draw_text(70, 50 + filemenu_y, "----");
			draw_text(200, 30 + filemenu_y, "EMPTY");
		}
		if (act0_save2data == 1)
		{
			draw_text(70, 110 + filemenu_y, act0_2location);
			draw_text(200, 90 + filemenu_y, f2_display_minute + ":" + f2_display_second);
		}
		else
		{
			draw_text(70, 110 + filemenu_y, "----");
			draw_text(200, 90 + filemenu_y, "EMPTY");
		}
		if (act0_save3data == 1)
		{
			draw_text(70, 170 + filemenu_y, act0_3location);
			draw_text(200, 150 + filemenu_y, f3_display_minute + ":" + f3_display_second);
		}
		else
		{
			draw_text(70, 170 + filemenu_y, "----");
			draw_text(200, 150 + filemenu_y, "EMPTY");
		}
		draw_set_color(c_white);
		draw_text(60, 210, "[Z] Select");
		draw_text(195, 210, "[X] Back");
	}
	if (new_or_load > 1 && curr_menu == 4 && show_save == 1)
	{
		draw_sprite_ext(spr_saveboxes, 0, 0, 0, 0.5, 0.5, 0, c_white, 1);
		draw_text(70, 30 + filemenu_y, "File 1");
		draw_text(70, 90 + filemenu_y, "File 2");
		draw_text(70, 150 + filemenu_y, "File 3");
		if (global.transfer_act0[0] == 1 && act0_fileoption != 0)
			draw_sprite_ext(spr_save_star, 0, 230, 50 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[1] == 1 && act0_fileoption != 1)
			draw_sprite_ext(spr_save_star, 0, 230, 110 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[2] == 1 && act0_fileoption != 2)
			draw_sprite_ext(spr_save_star, 0, 230, 170 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[0] == 2 && act0_fileoption != 0)
			draw_sprite_ext(spr_save_star, 1, 230, 50 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[1] == 2 && act0_fileoption != 1)
			draw_sprite_ext(spr_save_star, 1, 230, 110 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (global.transfer_act0[2] == 2 && act0_fileoption != 2)
			draw_sprite_ext(spr_save_star, 1, 230, 170 + filemenu_y, 0.5, 0.5, 0, c_white, 1);
		if (option == 0)
		{
			draw_set_color(c_yellow);
			draw_text(70, 50 + filemenu_y + (60 * act0_fileoption), "Play");
			draw_set_color(c_white);
			draw_text(130, 50 + filemenu_y + (60 * act0_fileoption), "Cancel");
			if (graydelete == true)
			{
				draw_set_color(c_gray);
				draw_text(200, 50 + filemenu_y + (60 * act0_fileoption), "Delete");
				draw_set_color(c_white);
			}
			else
			{
				draw_text(200, 50 + filemenu_y + (60 * act0_fileoption), "Delete");
			}
		}
		if (option == 1)
		{
			draw_text(70, 50 + filemenu_y + (60 * act0_fileoption), "Play");
			draw_set_color(c_yellow);
			draw_text(130, 50 + filemenu_y + (60 * act0_fileoption), "Cancel");
			draw_set_color(c_white);
			draw_text(200, 50 + filemenu_y + (60 * act0_fileoption), "Delete");
			if (graydelete == true)
			{
				draw_set_color(c_gray);
				draw_text(200, 50 + filemenu_y + (60 * act0_fileoption), "Delete");
				draw_set_color(c_white);
			}
			else
			{
				draw_text(200, 50 + filemenu_y + (60 * act0_fileoption), "Delete");
			}
		}
		if (option == 2)
		{
			draw_text(70, 50 + filemenu_y + (60 * act0_fileoption), "Play");
			draw_text(130, 50 + filemenu_y + (60 * act0_fileoption), "Cancel");
			draw_set_color(c_yellow);
			draw_text(200, 50 + filemenu_y + (60 * act0_fileoption), "Delete");
			draw_set_color(c_white);
		}
		if (act0_save1data == 1)
		{
			if (act0_fileoption != 0)
				draw_text(70, 50 + filemenu_y, act0_1location);
			draw_text(200, 30 + filemenu_y, f1_display_minute + ":" + f1_display_second);
		}
		else
		{
			if (act0_fileoption != 0)
				draw_text(70, 50 + filemenu_y, "----");
			draw_text(200, 30 + filemenu_y, "EMPTY");
		}
		if (act0_save2data == 1)
		{
			if (act0_fileoption != 1)
				draw_text(70, 110 + filemenu_y, act0_2location);
			draw_text(200, 90 + filemenu_y, f2_display_minute + ":" + f2_display_second);
		}
		else
		{
			if (act0_fileoption != 1)
				draw_text(70, 110 + filemenu_y, "----");
			draw_text(200, 90 + filemenu_y, "EMPTY");
		}
		if (act0_save3data == 1)
		{
			if (act0_fileoption != 2)
				draw_text(70, 170 + filemenu_y, act0_3location);
			draw_text(200, 150 + filemenu_y, f3_display_minute + ":" + f3_display_second);
		}
		else
		{
			if (act0_fileoption != 2)
				draw_text(70, 170 + filemenu_y, "----");
			draw_text(200, 150 + filemenu_y, "EMPTY");
		}
		draw_set_color(c_white);
		draw_text(60, 210, "[Z] Select");
		draw_text(195, 210, "[X] Back");
	}
}
if (menu_transition == 1)
{
	draw_sprite_ext(spr_curtain, floor(curtain_index), 0, 0, 0.5, 0.5, 0, c_maroon, 1);
	draw_sprite_ext(spr_title_spotlight, 1, 0, 0, 0.5, 0.5, 0, c_white, spotlight_alpha);
}
if (menu_transition == 3 || menu_transition == 4)
	draw_sprite_ext(spr_curtain, floor(curtain_index), 0, 0, 0.5, 0.5, 0, c_maroon, 1);
