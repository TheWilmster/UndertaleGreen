if (has_hit == false && req_dir == obj_player_vent_dummy.sprite_index)
{
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))
	{
		with (obj_mouse_piece)
			image_index += 1;
		with (obj_mouse_piece1_co)
			image_index += 1;
		with (obj_mouse_piece2)
			image_index += 1;
		with (obj_mouse_piece2_co)
			image_index += 1;
		audio_play_sound(snd_noise, 0, false, 1, 0.01);
		has_hit = true;
	}
}
