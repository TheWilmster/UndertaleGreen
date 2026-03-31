confirm = keyboard_check_pressed(ord("Z"));
skip = keyboard_check_pressed(ord("X"));
choose_right = keyboard_check_pressed(vk_right);
choose_left = keyboard_check_pressed(vk_left);
t.ignore_delay(false);
if (global.item_used == 1 || global.battle_heal == 1 || global.plush_flee_attempt == 1)
{
	if (t.get_state() == 1 && is_choice == false)
	{
		if (confirm)
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
	}
}
if (is_choice == true)
{
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
		if (confirm && global.battle_prompt == 1)
		{
			if (choice == 0)
			{
				audio_play_sound(snd_select, 1, false);
				if (global.battle_gray == true)
				{
					global.msg[0] = " ";
					global.msg_esp[0] = " ";
					audio_stop_sound(mus_knight_gray);
					global.battle_gray = false;
					start_play_music();
				}
				else if (global.battle_eden == true)
				{
					global.msg[0] = " ";
					global.msg_esp[0] = " ";
					audio_stop_sound(mus_pawn_eden);
					audio_stop_sound(mus_pawn_eden_intro);
					global.battle_eden = false;
					start_play_music();
				}
				else if (global.battle_chai == true)
				{
					global.msg[0] = " ";
					global.msg_esp[0] = " ";
					audio_stop_sound(mus_queen_chai);
					global.battle_chai = false;
				}
				global.cutscene = 1;
				global.flag_flee = true;
				global.has_battled = true;
				instance_create_depth(0, 0, -99999999999, obj_transition);
			}
			if (choice == 1)
			{
				audio_play_sound(snd_select, 1, false);
				instance_create_depth(506, 446, -9999, obj_heart);
				obj_heart.curr_menu = BattleMenu.MAIN;
				obj_heart.option = 3;
				instance_destroy();
			}
			s.scale(2);
			s.starting_format("fnt_determination", c_white);
			s.line_height(0, -1);
			s.line_spacing("112%");
			p = 0;
			s.page(p);
			is_choice = false;
		}
		if (confirm && global.battle_prompt == 0)
		{
			if (choice == 0)
			{
				if (global.language == 0)
					global.msg = [];
				if (global.language == 1)
					global.msg_esp = [];
				audio_play_sound(snd_select, 1, false);
				if (global.battle_hashealed == false)
				{
					global.battle_heal = 1;
					audio_play_sound(snd_heal, 1, false);
					global.hp = min(global.hp + 10, 20);
					global.battle_hashealed = true;
					obj_battle_system.damage_multiplier = 1.5;
					global.msg[0] = "* You healed 10 HP![/page]";
					global.msg[1] = "* (...)[/page]";
					global.msg[2] = "* [musiccut](...but is that really fair?)[/page]";
					global.msg[3] = "* (Sure,[delay,333] you're a Bishop.)[/page]";
					global.msg[4] = "* (You know little about them,[delay,333]\n  but you think it makes sense\n  that they could heal here.)[/page]";
					global.msg[5] = "* (But what about your opponent?)[/page]";
					global.msg[6] = "* (If you can just heal over and\n  over again,[delay,333] how is that fair\n  for them?)[/page]";
					global.msg[7] = "* (Is any of this fair?)[delay,333]\n* (The theater of imagination is\n  limited only by thoughts.)[/page]";
					global.msg[8] = "* (Is that not power unchecked?)[/page]";
					global.msg[9] = "* (After all,[delay,333] this is an\n  entirely fictitious conflict.)[/page]";
					global.msg[10] = "* (But is fiction not a\n  reflection of reality?)[/page]";
					global.msg[11] = "* (How real that fiction is\n  comes down only to mindset.)[/page]";
					global.msg[12] = "* (One could say the real\n  world is just people dealing\n  with the fictions of a few.)[/page]";
					global.msg[13] = "* (...)[/page]";
					global.msg[14] = "* (...you think if you took\n  more damage after you healed\n  that would probably be fair.)[/page]";
					global.msg[15] = "[musiccont][victory]* Enemy attacks will deal 1.5X\n  damage next turn.";
				}
				else
				{
					global.battle_heal = 1;
					audio_play_sound(snd_heal, 1, false);
					global.hp = min(global.hp + 10, 20);
					obj_battle_system.damage_multiplier = 1.5;
					global.msg[0] = "* You healed 10 HP.";
				}
				if (global.language == 0)
					m = string_concat_ext(global.msg);
				if (global.language == 1)
					m = string_concat_ext(global.msg_esp);
				s = scribble(m);
				if (global.language == 0)
					s.starting_format("fnt_determination", c_white);
				if (global.language == 1)
					s.starting_format("fnt_determination_esp", c_white);
				s.line_height(0, -1);
				s.line_spacing("112%");
				p = 0;
				s.page(p);
			}
			if (choice == 1)
			{
				audio_play_sound(snd_select, 1, false);
				instance_create_depth(195, 446, -9999, obj_heart);
				obj_heart.curr_menu = BattleMenu.MAIN;
				obj_heart.option = 1;
				instance_destroy();
			}
			s.scale(2);
			is_choice = false;
		}
	}
}
if (skip && t.get_state() != 1 && unskip == false)
{
	t.ignore_delay(true);
	t.skip();
	tch.skip();
	tch2.skip();
}
