if (global.language == 0)
	m = string_concat_ext(global.msg);
else if (global.language == 1)
	m = string_concat_ext(global.msg_esp);
if (instance_exists(obj_enemy_eden))
{
	if (global.random_atk == true && obj_battle_system.turn == BattleTurn.ENEMY && obj_enemy_eden.hp > 0)
	{
		visible = false;
		instance_destroy(self);
	}
}
if (instance_exists(obj_enemy_gray))
{
	if (global.random_atk == true && obj_battle_system.turn == BattleTurn.ENEMY && obj_enemy_gray.hp > 0)
	{
		visible = false;
		instance_destroy(self);
	}
}
p = 0;
is_choice = false;
option_x = 0;
choice = 0;
text_bubble_style = TextBubbleStyle.NORMAL;
bubble_sprite = -1;
global.battle_index = 0;
fasttext = false;
fasttext_ord = 0;
skip_fast = keyboard_check(vk_lcontrol);
confirm_fast = 0;
s = scribble(m);
s.scale(1);
if (global.language == 0)
	s.starting_format("fnt_plain", c_white);
else if (global.language == 1)
	s.starting_format("fnt_plain_esp", c_white);
s.line_height(0, -1);
s.line_spacing("112%");
t = scribble_typist();
t.in(0.4, 0);
if (global.battle_eden == true)
	t.sound_per_char(snd_eden, 1, 1, " ");
if (global.battle_gray == true)
	t.sound_per_char(snd_gray, 1, 1, " ");
if (global.battle_chai == true)
	t.sound_per_char(snd_chai, 1, 1, " ");
scribble_typists_add_event("choice", function(arg0, arg1, arg2)
{
	is_choice = true;
});
scribble_typists_add_event("character", function(arg0, arg1, arg2)
{
	scr_character(string(arg1[0]), string(arg1[1]));
});
scribble_typists_add_event("battle_end", function(arg0, arg1, arg2)
{
	if (instance_exists(obj_enemy_eden))
		obj_enemy_eden.battle_msg = 9;
	global.end_battle = true;
	global.flag_win = true;
});
scribble_typists_add_event("endturn", function(arg0, arg1, arg2)
{
	global.eden_turn_end = true;
});
scribble_typists_add_event("snap", function(arg0, arg1, arg2)
{
	obj_enemy_chai.snap = true;
});
scribble_typists_add_event("tutorialoff", function(arg0, arg1, arg2)
{
	obj_enemy_eden.tutorial = false;
});
scribble_typists_add_event("close", function(arg0, arg1, arg2)
{
	instance_destroy(self);
});
scribble_typists_add_event("battleface", function(arg0, arg1, arg2)
{
	scr_battleface(string(arg1[0]), string(arg1[1]));
});
scribble_typists_add_event("freeze", function(arg0, arg1, arg2)
{
	global.pause = 1;
});
scribble_typists_add_event("continue", function(arg0, arg1, arg2)
{
	global.pause = 0;
});
