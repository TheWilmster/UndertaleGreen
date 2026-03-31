if (roybit == true)
	obj_player.curr_state = PlayerState.INTERACT;
if (royslide == true && !instance_exists(obj_textboxNEW))
{
	alarm[0] = 80;
	global.second_dia[5] = 1;
	instance_create_depth(275, 95, -bbox_bottom, obj_roy);
	audio_play_sound(snd_slidewhist, 1, false);
	royslide = false;
}
