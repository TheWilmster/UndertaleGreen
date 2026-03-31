display_set_gui_size(global.gui_width, global.gui_height);
if (face_image != -1)
	draw_sprite_ext(face_image, index, 64, 340, 2, 2, 0, c_white, 1);
if (is_choice == true)
{
	if (t.get_state() == 1)
		ch.draw(226 + choice_x, 378, tch);
	if (tch.get_state() == 1)
		ch2.draw(419 + choice2_x, 378, tch2);
	if (tch.get_state() == 1 && tch2.get_state() == 1)
		draw_sprite(spr_heart_choice, 0, 178 + option_x, 420);
}
if (obj_shop.curr_menu == ShopMenu.MAIN)
	s.draw(40 + face_x, 262, t);
if (obj_shop.curr_menu == ShopMenu.BUY || obj_shop.curr_menu == ShopMenu.TALK)
	s.draw(458 + face_x, 262, t);
if (obj_shop.curr_menu == ShopMenu.EXIT)
	s.draw(60 + face_x, 262, t);
