if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 3;
	obj_player.curr_state = PlayerState.NORMAL;
	global.basement_photo = 1;
	audio_play_sound(snd_item, 1, false);
}
if (!instance_exists(obj_textboxNEW) && progress == 2)
{
	progress = 3;
	obj_player.curr_state = PlayerState.NORMAL;
	global.basement_photo = 2;
	audio_play_sound(snd_item, 1, false);
}
