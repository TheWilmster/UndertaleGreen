display_set_gui_size(global.gui_width, global.gui_height);
if (is_choice == true)
{
	ch.draw(222, 308, tch);
	if (tch.get_state() == 1)
		ch2.draw(405, 308, tch2);
	if (tch.get_state() == 1 && tch2.get_state() == 1)
	{
		if (room == rm_battle && global.battle_plush == false)
			draw_sprite(spr_heart, 0, 170 + option_x, 350);
		else
			draw_sprite(spr_heart_choice, 0, 170 + option_x, 350);
	}
}
s.draw(52, 272, t);
