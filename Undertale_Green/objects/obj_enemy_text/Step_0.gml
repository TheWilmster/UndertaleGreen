fasttext_ord += 1;
if (fasttext_ord == 3)
	fasttext_ord = 0;
if (fasttext_ord == 0)
	confirm_fast = keyboard_check(vk_lcontrol);
else
	confirm_fast = 0;
if (fasttext_ord == 1)
	skip_fast = keyboard_check(vk_lcontrol);
else
	skip_fast = 0;
confirm = keyboard_check_pressed(ord("Z")) || confirm_fast;
skip = keyboard_check_pressed(ord("X")) || skip_fast;
choose_right = keyboard_check_pressed(vk_right);
choose_left = keyboard_check_pressed(vk_left);
t.ignore_delay(false);
if (skip && t.get_state() != 1)
{
	t.ignore_delay(true);
	t.skip();
}
if (t.get_state() == 1 && confirm)
{
	if (p < (s.get_page_count() - 1))
	{
		p += 1;
		s.page(p);
	}
	else
	{
		keyboard_clear(ord("Z"));
		instance_destroy();
	}
}
if (t.get_state() != 1 && global.pause != 1)
	global.battle_index += 0.3;
else
	global.battle_index = 0;
