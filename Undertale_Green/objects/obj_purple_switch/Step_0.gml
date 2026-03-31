if (obj_player.curr_state == PlayerState.NORMAL && place_meeting(x, y, obj_player) && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))))
{
	obj_piece_g.image_index = obj_piece_g.image_index + 1;
	obj_piece_g_collision.image_index = obj_piece_g_collision.image_index + 1;
	obj_piece_po.image_index = obj_piece_po.image_index + 1;
	obj_piece_po_collision.image_index = obj_piece_po_collision.image_index + 1;
	audio_play_sound(snd_noise, 80, false);
}
