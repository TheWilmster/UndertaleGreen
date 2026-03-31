if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 2;
	obj_player.curr_state = PlayerState.CUTSCENE;
	audio_pause_sound(mus_eden_house);
	playerfreeze = true;
	alarm[1] = 15;
	alarm[0] = 70;
	alarm[2] = 40;
}
if (edendance == true && !instance_exists(obj_textboxNEW))
{
	obj_eden_gray_sit.sprite_index = spr_eden_gray_sit_gray;
	instance_create_depth(210, 95, -90, obj_edendance);
	obj_player.curr_state = PlayerState.INTERACT;
	edendance = false;
}
if (global.eden_dance == false && progress == 2)
	obj_player.curr_state = PlayerState.INTERACT;
