fasttext_ord += 1;
if (fasttext_ord == 3)
	fasttext_ord = 0;
if (fasttext_ord == 0)
	confirm_fast = keyboard_check(vk_lcontrol) || keyboard_check(ord("C"));
else
	confirm_fast = 0;
if (fasttext_ord == 1)
	skip_fast = keyboard_check(vk_lcontrol) || keyboard_check(ord("C"));
else
	skip_fast = 0;
if (is_choice == false)
	confirm = keyboard_check_pressed(ord("Z")) || confirm_fast;
else
	confirm = keyboard_check_pressed(ord("Z"));
if (unskip == false)
	skip = keyboard_check_pressed(ord("X")) || skip_fast;
choose_right = keyboard_check_pressed(vk_right);
choose_left = keyboard_check_pressed(vk_left);
t.ignore_delay(false);
tch.ignore_delay(false);
t.sound_per_char(global.sound, 1, 1, " ");
tch.sound_per_char(global.sound, 1, 1, " ");
tch2.sound_per_char(global.sound, 1, 1, " ");
if (t.get_state() == 1 && is_choice == false)
{
	if (p < (s.get_page_count() - 1))
	{
		p += 1;
		s.page(p);
	}
	else
	{
		instance_destroy();
	}
}
if (t.get_state() != 1 && global.pause != 1)
	index += 0.3;
else
	index = 0;
if (global.talking != 0)
	global.talking.image_index = index;
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
			if (global.language == 0)
				global.msg = [];
			if (global.language == 1)
				global.msg_esp = [];
			audio_play_sound(snd_select, 1, false);
			with (global.choice_object)
			{
				event_user(1);
				global.choice_object = -4;
			}
			if (global.language == 0)
				m = string_concat_ext(global.msg);
			if (global.language == 1)
				m = string_concat_ext(global.msg_esp);
			s = scribble(m);
			s.scale(2);
			if (global.language == 0)
				s.starting_format("fnt_determination", c_white);
			if (global.language == 1)
				s.starting_format("fnt_determination_esp", c_white);
			s.line_height(0, -1);
			s.line_spacing("112%");
			p = 0;
			s.page(p);
			is_choice = false;
			global.choices[0] = "";
			global.choices[1] = "";
			global.choices_esp[0] = "";
			global.choices_esp[1] = "";
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
