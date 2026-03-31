display_set_gui_size(global.gui_width, global.gui_height);
draw_sprite(spr_textbox, 0, 32, 320 + txt_y);
if (face_image != -1)
	draw_sprite_ext(face_image, index, 64, 340 + txt_y, 2, 2, 0, c_white, 1);
if (is_choice == true)
{
	if (t.get_state() == 1)
		ch.draw(226 + choice_x, 378 + txt_y, tch);
	if (tch.get_state() == 1)
		ch2.draw(419 + choice2_x, 378 + txt_y, tch2);
	if (tch.get_state() == 1 && tch2.get_state() == 1)
		draw_sprite(spr_heart_choice, 0, 178 + option_x, 420 + txt_y);
}
s.draw(60 + face_x, 342 + txt_y, t);
