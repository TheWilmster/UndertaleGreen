if (cut == true)
	obj_player.curr_state = PlayerState.INTERACT;
if (edenleaveschool == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(0, 0, -9999, obj_transition_screen);
	edenleaveschool = false;
	cut = false;
}
if (edenlight1 == true && !instance_exists(obj_textboxNEW))
{
	alarm[0] = 70;
	audio_play_sound(snd_empathy, 1, false, 0.7);
	edenlight1 = false;
}
if (edenlight2 == true && !instance_exists(obj_textboxNEW))
{
	alarm[1] = 50;
	audio_play_sound(snd_page, 1, false, 0.7);
	edenlight2 = false;
}
if (edenlight3 == true && !instance_exists(obj_textboxNEW))
{
	alarm[2] = 50;
	audio_play_sound(snd_notif, 1, false, 0.7);
	edenlight3 = false;
}
