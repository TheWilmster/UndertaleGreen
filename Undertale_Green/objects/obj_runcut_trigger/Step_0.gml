if (startrun == true && trip == false)
{
	obj_player.image_speed = 1.25;
	obj_player.curr_state = PlayerState.CUTSCENE;
}
if (trip == true)
{
	if (obj_player.hspeed != 0)
		obj_player.hspeed += 0.25;
	if (obj_player_dummy.image_index >= 2 && liedown == false)
	{
		liedown = true;
		audio_stop_sound(snd_fall2);
		audio_play_sound(snd_damage, 1, false, 2);
		obj_player_dummy.image_speed = 0;
	}
}
