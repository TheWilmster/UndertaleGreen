display_set_gui_size(global.gui_width, global.gui_height);
draw_set_color(c_white);
if (obj_player.y > (room_height - 120))
	movey = 270;
else
	movey = 0;
if (current_menu >= 0 && current_menu != 2)
{
	if (item_list_prompt == false)
	{
		draw_ui(32, 52 + movey, 173, 161 + movey);
		draw_ui(32, 168, 173, 315);
		if (array_length(global.inventory) != 0)
		{
			if (global.language == 0)
				draw_ui_text(84, 196, "ITEM", fnt_determination);
			if (global.language == 1)
				draw_ui_text(84, 196, "OBJT", fnt_determination);
		}
		else
		{
			draw_set_color(c_gray);
			if (global.language == 0)
				draw_ui_text(84, 196, "ITEM", fnt_determination);
			if (global.language == 1)
				draw_ui_text(84, 196, "OBJT", fnt_determination);
			draw_set_color(c_white);
		}
		if (array_length(global.journal) != 1)
		{
			draw_ui_text(84, 232, "JRNL", fnt_determination);
		}
		else
		{
			draw_set_color(c_gray);
			draw_ui_text(84, 232, "JRNL", fnt_determination);
			draw_set_color(c_white);
		}
		if (global.language == 0)
			draw_ui_text(84, 268, "SETT", fnt_determination);
		if (global.language == 1)
			draw_ui_text(84, 268, "OPCI", fnt_determination);
		if (room == rm_ebott_cave || room == rm_ebott_main)
			draw_ui_text(46, 68 + movey, "Chai", fnt_determination);
		else
			draw_ui_text(46, 68 + movey, "Olive", fnt_determination);
		draw_ui_text(46, 118 + movey, "HP  " + string(global.hp) + "/" + string(global.maxhp), fnt_crypt);
		draw_ui_text(46, 136 + movey, "C", fnt_crypt);
		draw_ui_text(82, 136 + movey, string(global.money), fnt_crypt);
	}
}
if (current_menu == 0)
	draw_sprite(spr_heart_choice, 0, 56, 198 + (option * 36));
if (current_menu == 1 && item_text == false)
{
	draw_ui(187 - text_offset, 53, 533 - text_offset, 431);
	if (item_list_prompt == false)
	{
		if (global.language == 0)
		{
			draw_ui_text(231, 386, "USE", fnt_determination);
			draw_ui_text(328, 386, "INFO", fnt_determination);
			draw_ui_text(442, 386, "DROP", fnt_determination);
		}
		if (global.language == 1)
		{
			draw_ui_text(231, 386, "USAR", fnt_determination);
			draw_ui_text(328, 386, "INFO", fnt_determination);
			draw_ui_text(442, 386, "TIRAR", fnt_determination);
		}
	}
	if (item_menu == 0)
	{
		draw_sprite(spr_heart_choice, 0, 204 - text_offset, 88 + (option * 32));
	}
	else
	{
		if (option == 0)
			item_option_x = 0;
		if (option == 1)
			item_option_x = 98;
		if (option == 2)
			item_option_x = 212;
		draw_sprite(spr_heart_choice, 0, 203 + item_option_x, 389);
	}
	for (var i = 0; i < array_length(global.inventory); i += 1)
		draw_ui_text(232 - text_offset, 85 + (i * 32), global.inventory[i].label, fnt_determination);
}
if (current_menu == 2)
{
	draw_sprite_ext(spr_save_book_picture, global.journal[option], 0, book_y, 2, 2, 0, c_white, book_alpha);
	draw_sprite(spr_textbox, 0, 32, 320);
	draw_ui_text(100, 345, "[Left]", fnt_determination);
	draw_ui_text(100, 380, "Previous", fnt_determination);
	draw_ui_text(100, 415, "Page", fnt_determination);
	draw_ui_text(295, 345, "[X]", fnt_determination);
	draw_ui_text(295, 380, "Back", fnt_determination);
	draw_ui_text(425, 345, "[Right]", fnt_determination);
	draw_ui_text(425, 380, "Next", fnt_determination);
	draw_ui_text(425, 415, "Page", fnt_determination);
}
if (current_menu == 3)
{
	draw_ui(187, 53, 533, 431);
	if (global.language == 0)
		draw_ui_text(231, 85, "LANGUAGE", fnt_determination);
	else if (global.language == 1)
		draw_ui_text(231, 85, "IDIOMA", fnt_determination);
	if (global.language == 0)
		draw_ui_text(380, 85, "ENGLISH", fnt_determination);
	else if (global.language == 1)
		draw_ui_text(380, 83, "ESPAÑOL", fnt_determination_esp);
	draw_set_font(fnt_determination);
	draw_set_color(c_gray);
	draw_text_transformed(231, 110, "MORE LANGUAGES COMING SOON!", 1, 1, 0);
	draw_set_color(c_white);
	if (global.language == 0)
		draw_ui_text(231, 137, "VOLUME", fnt_determination);
	else if (global.language == 1)
		draw_ui_text(231, 137, "VOLUMEN", fnt_determination);
	if (global.language == 0)
		draw_ui_text(231, 225, "WINDOW", fnt_determination);
	else if (global.language == 1)
		draw_ui_text(231, 223, "PANTA.", fnt_determination_esp);
	if (global.language == 0)
	{
		if (global.window == 1)
			draw_ui_text(350, 225, "SMALL", fnt_determination);
		if (global.window == 2)
			draw_ui_text(350, 225, "LARGE", fnt_determination);
		if (global.window == 3)
			draw_ui_text(350, 225, "FULLSCREEN", fnt_determination);
	}
	else if (global.language == 1)
	{
		if (global.window == 1)
			draw_ui_text(350, 223, "PEQUEÑO", fnt_determination_esp);
		if (global.window == 2)
			draw_ui_text(350, 223, "GRANDE", fnt_determination_esp);
		if (global.window == 3)
			draw_ui_text(350, 223, "FULLSCREEN", fnt_determination_esp);
	}
	if (global.language == 0)
		draw_ui_text(231, 280, "RETURN TO TITLE", fnt_determination);
	else if (global.language == 1)
		draw_ui_text(231, 280, "DEVOLVER AL TÍTULO", fnt_determination);
	draw_text_transformed(231, 310, "ALL UNSAVED PROGRESS WILL BE LOST", 1, 1, 0);
	draw_set_color(c_gray);
	draw_text_transformed(231, 335, "[Z] Select/Interact", 1, 1, 0);
	draw_text_transformed(231, 350, "[X] Cancel/Skip Text", 1, 1, 0);
	draw_text_transformed(231, 365, "[C] Open Menu", 1, 1, 0);
	draw_text_transformed(231, 380, "[Arrows] Move Around", 1, 1, 0);
	draw_text_transformed(231, 395, "[ESC] Quit Game", 1, 1, 0);
	draw_set_color(c_white);
	draw_set_color(c_white);
	draw_rectangle(231, 173, 235, 193, false);
	draw_rectangle(485, 173, 489, 193, false);
	draw_rectangle(231, 182, 489, 183, false);
	if (option == 0)
		draw_sprite(spr_heart_choice, 0, 204, 88);
	if (option == 1)
		draw_sprite(spr_heart_choice, 0, vol_heart_x, 176);
	if (option == 2)
		draw_sprite(spr_heart_choice, 0, 204, 228);
	if (option == 3)
		draw_sprite(spr_heart_choice, 0, 204, 283);
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
}
