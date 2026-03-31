bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
if (global.school_time_sequence == 0)
	layer_background_index(bgid, 0);
if (global.school_time_sequence == 1 || global.school_time_sequence == 2)
	layer_background_index(bgid, 1);
if (global.empty_greenroom == true)
	layer_background_index(bgid, 3);
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 2);
if (global.keyunlock == true && !instance_exists(obj_textboxNEW))
{
	global.grdoor_enterable = true;
	audio_play_sound(snd_item, 1, false);
	global.keyunlock = false;
}
if (global.keycard_prompt == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(x, y, -9999, obj_menu);
	obj_menu.item_list_prompt = true;
	obj_menu.current_menu = 1;
	obj_menu.text_offset = 40;
	obj_player.curr_state = PlayerState.MENU;
	global.keycard_prompt = false;
}
if (global.pitpunks_spawn == true && !instance_exists(obj_textboxNEW))
{
	alarm_set(0, 30);
	alarm_set(2, 45);
	alarm_set(3, 60);
	alarm_set(4, 75);
	alarm_set(5, 190);
	global.pitpunks_spawn = false;
}
if (global.greenroomadvance1 == true && !instance_exists(obj_textboxNEW))
{
	obj_player.cam_go_up = true;
	alarm_set(6, 45);
	global.greenroomadvance1 = false;
}
if (global.greenroomadvance2 == true && !instance_exists(obj_textboxNEW))
{
	obj_gray_greenroom.walktochai = true;
	alarm_set(10, 60);
	alarm_set(7, 180);
	global.greenroomadvance2 = false;
}
if (global.greenroomadvance4 == true && !instance_exists(obj_textboxNEW))
{
	obj_gray_greenroom.stormout = true;
	audio_stop_sound(mus_chai);
	alarm_set(8, 415);
	global.greenroomadvance4 = false;
}
if (global.greenroomadvance5 == true && !instance_exists(obj_textboxNEW))
{
	obj_player_dummy.walk_in = true;
	obj_player.cam_go_down3 = true;
	obj_chai_greenroom.walkcenter = true;
	alarm_set(9, 150);
	global.greenroomadvance5 = false;
}
if (global.greenroomadvance6 == true && !instance_exists(obj_textboxNEW))
{
	obj_player.return_to_player = true;
	global.greenroomadvance6 = false;
}
