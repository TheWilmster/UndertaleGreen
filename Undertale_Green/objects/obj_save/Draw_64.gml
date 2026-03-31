display_set_gui_size(global.gui_width, global.gui_height);
draw_sprite_ext(spr_save_book, book_img, 0, book_y, 2, 2, 0, c_white, book_alpha);
if (has_saved == false)
{
	draw_ui(120, 310, 520, 470);
	draw_sprite(spr_heart_choice, 0, 170 + option_x, 422);
	draw_ui_text(200, 420, "Save", fnt_determination);
	draw_ui_text(360, 420, "Return", fnt_determination);
	draw_ui_text(150, 330, "Olive", fnt_determination);
	draw_ui_text(360, 330, display_minute + ":" + display_second, fnt_determination);
	draw_ui_text(150, 365, global.last_location, fnt_determination);
}
else
{
	draw_sprite_part_ext(spr_save_book_picture, global.save_photo, 0, 0, 320, draw_height, 0, book_y, 2, 2, c_white, 1);
}
if (drawing_complete == true)
{
	draw_ui(120, 310, 520, 470);
	draw_set_color(c_yellow);
	draw_ui_text(150, 330, "Olive", fnt_determination);
	if (obj_timer.last_hours > 0)
		draw_ui_text(360, 330, display_hour + ":" + display_minute + ":" + display_second, fnt_determination);
	else
		draw_ui_text(360, 330, display_minute + ":" + display_second, fnt_determination);
	draw_ui_text(150, 365, global.last_location, fnt_determination);
	draw_ui_text(200, 420, "File saved.", fnt_determination);
	draw_set_color(c_white);
}
