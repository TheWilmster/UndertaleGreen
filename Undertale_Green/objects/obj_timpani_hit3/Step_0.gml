if (obj_player.curr_state == PlayerState.NORMAL && place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("Z")) && pressed == 0)
{
	audio_play_sound(snd_timpani3, 0, false);
	pressed = 1;
}
if (pressed == 1 && keyboard_check_released(ord("Z")))
	pressed = 0;
