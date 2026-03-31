siner -= 0.09;
spr_body_vscale = (sin(siner) / 30) + 2;
spr_head_offset = (-sin(siner) * 2) - 127;
spr_arm_offset = (-sin(siner) * 2) - 122;
if (opacity_change == 1)
{
	global.half_op -= 0.1;
	if (global.half_op == 0.5)
		opacity_change = 0;
}
if (opacity_change2 == 1)
{
	global.half_op += 0.1;
	if (global.half_op == 1)
		opacity_change2 = 0;
}
if (global.eden_intro_text == 1)
{
	global.msg[0] = "[battleface,eden,joyous][c_black]Was that good?[/page]";
	global.msg[1] = "[battleface,eden,normal][c_black]...[/page]";
	global.msg[2] = "[battleface,eden,tweakin][c_black]You look\ndisappointed.[/page]";
	global.msg[3] = "[battleface,eden,sad][c_black]...It wasn't cool?[/page]";
	global.msg[4] = "[battleface,eden,normal][c_black]I can think of\nsomething cooler![freeze][delay,333][continue]\nYou'll be blown\naway by how cool I\nam![/page]";
	global.msg[5] = "[battleface,eden,sly][c_black]Next time you'll\ntaste defeat,[freeze][delay,333][continue]\nbishop![endturn]";
	global.msg_esp[0] = "[battleface,eden,joyous][c_black]¿Te ha gustado\nel ataque?[/page]";
	global.msg_esp[1] = "[battleface,eden,normal][c_black]...[/page]";
	global.msg_esp[2] = "[battleface,eden,tweakin][c_black]Parece que\nte ha decepcionado.[/page]";
	global.msg_esp[3] = "[battleface,eden,sad][c_black]¿...No te ha gustado?[/page]";
	global.msg_esp[4] = "[battleface,eden,normal][c_black]¡Se me viene\na la cabeza\nalgo mejor![freeze][delay,333][continue]\n¡Te dejará sin\npalabras mi siguiente\nmoviento![/page]";
	global.msg_esp[5] = "[battleface,eden,sly][c_black]¡Serás derrotado\nsin piedad,[freeze][delay,333][continue] alfil![endturn]";
	tutorial = false;
	instance_create_depth(410, 50, 0, obj_enemy_text);
	global.eden_intro_text = 0;
}
if (global.end_battle == true)
	song_start = 2;
if (song_start == 1)
	global.gray_buttons = false;
if (song_start == 0)
{
	if (instance_exists(obj_enemy_eden) && !audio_is_playing(mus_pawn_eden_intro))
	{
		audio_play_sound(mus_pawn_eden_intro, 2, true);
		audio_sound_loop_end(mus_pawn_eden_intro, 3.83);
	}
}
if (song_start == 1)
{
	audio_stop_sound(mus_pawn_eden_intro);
	if (!audio_is_playing(mus_pawn_eden_intro) && !audio_is_playing(mus_pawn_eden) && hp > 0)
	{
		audio_stop_sound(snd_rain_inside);
		audio_play_sound(mus_pawn_eden, 2, true, 1);
		song_start = 2;
	}
}
if (hp == 0)
{
	global.battle_start_msg = "[delay,1000]";
	global.battle_start_msg_esp = "[delay,1000]";
}
