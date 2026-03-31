p = 0;
if (global.language == 0)
	m = string_concat_ext(global.msg);
else if (global.language == 1)
	m = string_concat_ext(global.msg_esp);
textspeed = 0.5;
is_choice = false;
option_x = 0;
choice = 0;
if (instance_exists(obj_heart_beat))
	unskip = true;
else
	unskip = false;
s = scribble(m);
s.scale(2);
if (global.language == 0)
	s.starting_format("fnt_determination", c_white);
else if (global.language == 1)
	s.starting_format("fnt_determination_esp", c_white);
s.line_height(0, -1);
s.line_spacing("112%");
if (global.language == 0)
	ch = scribble(global.choices[0]);
else if (global.language == 1)
	ch = scribble(global.choices_esp[0]);
ch.scale(2);
if (global.language == 0)
	ch.starting_format("fnt_determination", c_white);
else if (global.language == 1)
	ch.starting_format("fnt_determination_esp", c_white);
ch.line_height(0, -1);
ch.line_spacing("112%");
ch.align(1, 0);
if (global.language == 0)
	ch2 = scribble(global.choices[1]);
else if (global.language == 1)
	ch2 = scribble(global.choices_esp[1]);
ch2.scale(2);
if (global.language == 0)
	ch2.starting_format("fnt_determination", c_white);
else if (global.language == 1)
	ch2.starting_format("fnt_determination_esp", c_white);
ch2.line_height(0, -1);
ch2.line_spacing("112%");
ch2.align(1, 0);
t = scribble_typist();
t.in(0.5, 0);
t.sound_per_char(snd_battle_text, 1, 1, " ");
tch = scribble_typist();
tch.in(0.5, 0);
tch.sound_per_char(snd_battle_text, 1, 1, " ");
tch2 = scribble_typist();
tch2.in(0.5, 0);
tch2.sound_per_char(snd_battle_text, 1, 1, " ");
scribble_typists_add_event("slowtext", function(arg0, arg1, arg2)
{
	textspeed = 0.2;
});
scribble_typists_add_event("unskip", function(arg0, arg1, arg2)
{
	unskip = true;
});
scribble_typists_add_event("choice", function(arg0, arg1, arg2)
{
	is_choice = true;
});
scribble_typists_add_event("musiccut", function(arg0, arg1, arg2)
{
	audio_sound_gain(mus_pawn_eden, 0, 500);
	audio_sound_gain(mus_knight_gray, 0, 500);
	audio_sound_gain(mus_queen_chai, 0, 500);
});
scribble_typists_add_event("musiccont", function(arg0, arg1, arg2)
{
	audio_sound_gain(mus_pawn_eden, 0.8, 3000);
	audio_sound_gain(mus_knight_gray, 0.69, 3000);
	audio_sound_gain(mus_queen_chai, 0.43, 3000);
});
scribble_typists_add_event("contfight", function(arg0, arg1, arg2)
{
	obj_battle_system.contfight = true;
});
scribble_typists_add_event("victory", function(arg0, arg1, arg2)
{
	audio_play_sound(snd_dumbvictory, 1, false);
});
scribble_typists_add_event("character", function(arg0, arg1, arg2)
{
	scr_character(string(arg1[0]), string(arg1[1]));
});
scribble_typists_add_event("plush_end", function(arg0, arg1, arg2)
{
	global.end_battle = true;
});
scribble_anim_shake(2, 1);
