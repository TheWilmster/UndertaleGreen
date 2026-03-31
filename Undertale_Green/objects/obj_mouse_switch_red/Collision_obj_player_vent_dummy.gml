if (has_hit == false && req_dir == obj_player_vent_dummy.sprite_index)
{
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))
	{
		global.red_switch = 1;
		audio_play_sound(snd_noise, 1, false);
		has_hit = true;
	}
}
