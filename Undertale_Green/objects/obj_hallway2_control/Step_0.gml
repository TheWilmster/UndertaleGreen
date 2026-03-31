if (obj_player.y <= 146 && triplet_test == true)
	global.terror_triplets = false;
if (global.helmet_unlock2 == true && !instance_exists(obj_textboxNEW))
{
	obj_player.curr_state = PlayerState.INTERACT;
	obj_yeti_girl_2.image_index = 1;
	alarm_set(1, 30);
	audio_play_sound(snd_item, 1, false);
	global.helmet_unlock2 = false;
}
if (global.helmet_prompt2 == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(x, y, -9999, obj_menu);
	obj_menu.item_list_prompt = true;
	obj_menu.current_menu = 1;
	obj_menu.text_offset = 40;
	obj_player.curr_state = PlayerState.MENU;
	global.helmet_prompt2 = false;
}
