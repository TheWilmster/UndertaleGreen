confirm = keyboard_check_pressed(ord("Z"));
skip = keyboard_check_pressed(ord("X"));
choose_right = keyboard_check_pressed(vk_right);
choose_left = keyboard_check_pressed(vk_left);
t.ignore_delay(false);
tch.ignore_delay(false);
t.sound_per_char(global.sound, 1, 1, " ");
tch.sound_per_char(global.sound, 1, 1, " ");
tch2.sound_per_char(global.sound, 1, 1, " ");
if (t.get_state() == 1 && is_choice == false)
{
	if (confirm && can_skip == true)
	{
		if (p < (s.get_page_count() - 1))
		{
			p += 1;
			s.page(p);
		}
		else
		{
			if (exiting == false && obj_shop.curr_menu == ShopMenu.EXIT)
			{
				obj_shop.curr_menu = ShopMenu.TALK;
			}
			else
			{
				obj_warp.x = obj_player.x;
				obj_warp.y = obj_player.y;
			}
			keyboard_clear(ord("Z"));
			instance_destroy();
		}
	}
}
if (skip && t.get_state() != 1 && can_skip == true)
{
	t.ignore_delay(true);
	t.skip();
}
if (t.get_state() != 1 && global.pause != 1)
	index += 0.3;
else
	index = 0;
if (is_choice == true)
{
	if (skip && t.get_state() != 1)
	{
		t.ignore_delay(true);
		t.skip();
		tch.skip();
		tch2.skip();
	}
	if (tch.get_state() == 1 && tch2.get_state() == 1)
	{
		if (choice == 0)
			option_x = 0;
		if (choice == 1)
			option_x = 192;
		if (choose_left)
		{
			audio_play_sound(snd_squeak, 1, false);
			choice = 0;
		}
		if (choose_right)
		{
			audio_play_sound(snd_squeak, 1, false);
			choice = 1;
		}
		if (confirm)
		{
			global.msg = [];
			audio_play_sound(snd_select, 1, false);
			with (global.choice_object)
			{
				event_user(1);
				global.choice_object = -4;
			}
			m = string_concat_ext(global.msg);
			s = scribble(m);
			s.scale(2);
			s.starting_format("fnt_determination", c_white);
			s.line_height(0, -1);
			s.line_spacing("112%");
			p = 0;
			s.page(p);
			is_choice = false;
			global.choices[0] = "";
			global.choices[1] = "";
		}
	}
}
if (face_image != -1)
{
	choice_x = 12;
	choice2_x = 36;
	face_x = 116;
}
else
{
	choice_x = 0;
	face_x = 0;
}
