draw_sprite_ext(spr_blackscreen, 0, 0, 0 + offset, 1, 1, 0, c_white, 1);
draw_set_font(fnt_determination);
if (credits_screen == -1)
	draw_sprite_ext(spr_logo_credits, 0, 40, 0 + offset, 0.4, 0.4, 0, c_white, 1);
if (credits_screen == 0)
{
	x_offset = 0;
	y_offset = 0;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "Hen", 2, 2, 0);
	draw_text_transformed(130 + x_offset, 48 + y_offset + offset, "Project Lead", 0.5, 0.5, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "Programming");
	draw_text(80 + x_offset, 73 + y_offset + offset, "Music");
	draw_text(80 + x_offset, 88 + y_offset + offset, "Writing");
	draw_set_color(c_white);
	x_offset = 0;
	y_offset = 90;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "Nic", 2, 2, 0);
	draw_text_transformed(130 + x_offset, 48 + y_offset + offset, "Project Lead", 0.5, 0.5, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "Art");
	draw_text(80 + x_offset, 73 + y_offset + offset, "Writing");
	draw_text(80 + x_offset, 88 + y_offset + offset, "Music");
	draw_set_color(c_white);
}
if (credits_screen == 1)
{
	x_offset = 0;
	y_offset = 0;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "Casual", 2, 2, 0);
	draw_text_transformed(180 + x_offset, 48 + y_offset + offset, "Project Lead", 0.5, 0.5, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "Media Management");
	draw_text(80 + x_offset, 73 + y_offset + offset, "Writing");
	draw_set_color(c_white);
	x_offset = 0;
	y_offset = 67;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "MpD", 2, 2, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "Music");
	draw_set_color(c_white);
	x_offset = 0;
	y_offset = 120;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "Traxter", 2, 2, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "Programming");
	draw_set_color(c_white);
}
if (credits_screen == 2)
{
	x_offset = -30;
	y_offset = 0;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "Playtesters", 2, 2, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "gecko");
	draw_text(80 + x_offset, 58 + y_offset + offset + 15, "Latin Word");
	draw_text(80 + x_offset, 58 + y_offset + offset + 30, "saffrax");
	draw_text(80 + x_offset, 58 + y_offset + offset + 45, "Seth?");
	draw_text(80 + x_offset, 58 + y_offset + offset + 60, "TerraNE0");
	draw_text(80 + x_offset, 58 + y_offset + offset + 75, "Clog");
	draw_text(80 + x_offset, 58 + y_offset + offset + 90, "Ashlyn");
	draw_text(80 + x_offset, 58 + y_offset + offset + 105, "Phasmite");
	draw_text(80 + x_offset, 58 + y_offset + offset + 120, "Mr. Fluffy");
	draw_text(80 + x_offset, 58 + y_offset + offset + 135, "Collin");
	draw_set_color(c_white);
}
if (credits_screen == 3)
{
	x_offset = -35;
	y_offset = 0;
	draw_text_transformed(80 + x_offset, 30 + y_offset + offset, "Special Thanks", 2, 2, 0);
	draw_set_color(c_lime);
	draw_text(80 + x_offset, 58 + y_offset + offset, "Lauren");
	draw_text(80 + x_offset, 58 + y_offset + offset + 15, "saffrax");
	draw_text(80 + x_offset, 58 + y_offset + offset + 30, "Collin");
	draw_text(80 + x_offset, 58 + y_offset + offset + 45, "gecko");
	draw_text(80 + x_offset, 58 + y_offset + offset + 60, "Seth?");
	draw_text(80 + x_offset, 58 + y_offset + offset + 75, "Dianna");
	draw_text(80 + x_offset, 58 + y_offset + offset + 90, "Toby Fox");
	draw_text(80 + x_offset, 58 + y_offset + offset + 105, "You - Thanks for playing!");
	draw_set_color(c_white);
}
if (credits_screen == 4)
	draw_sprite_ext(spr_logo_proto, 0, 160, 180, 0.4, 0.4, 0, c_white, 1);
if (credits_screen == 5)
{
	x_offset = -20;
	y_offset = 70;
	draw_text_transformed_color(105 + x_offset, 25 + y_offset + offset, "To be Continued in", 1, 1, 0, c_white, c_white, c_white, c_white, fade_txt);
	draw_text_transformed_color(83 + x_offset, 40 + y_offset + offset, "Undertale Green Act One:", 1, 1, 0, c_white, c_white, c_white, c_white, fade_txt);
	draw_text_transformed_color(136 + x_offset, 55 + y_offset + offset, "Tree Fever", 1, 1, 0, c_lime, c_lime, c_lime, c_lime, fade_txt);
}
