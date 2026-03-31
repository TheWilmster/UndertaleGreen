if (place_meeting(x, y, obj_player) && obj_player.can_move && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))))
{
	var instantiated = instance_create_depth(0, 0, -9998, obj_textbox);
	instantiated.text = text;
	instantiated.speaker_sprite = speaker_sprite;
	instantiated.txtb_snd = txtb_snd;
	instantiated.txtb_txt = txtb_txt;
}
