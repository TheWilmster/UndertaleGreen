display_set_gui_size(global.gui_width, global.gui_height);
draw_set_font(fnt_determination);
if (escape_check > 0 && escape_check <= 30)
{
	draw_set_color(c_black);
	draw_text_transformed(10, 11.5, "Quitting.", 1.5, 1.5, 0);
	draw_set_color(c_white);
	draw_text_transformed(10, 10, "Quitting.", 1.5, 1.5, 0);
}
if (escape_check > 30 && escape_check <= 60)
{
	draw_set_color(c_black);
	draw_text_transformed(10, 11.5, "Quitting..", 1.5, 1.5, 0);
	draw_set_color(c_white);
	draw_text_transformed(10, 10, "Quitting..", 1.5, 1.5, 0);
}
if (escape_check > 60 && escape_check <= 90)
{
	draw_set_color(c_black);
	draw_text_transformed(10, 11.5, "Quitting...", 1.5, 1.5, 0);
	draw_set_color(c_white);
	draw_text_transformed(10, 10, "Quitting...", 1.5, 1.5, 0);
}
