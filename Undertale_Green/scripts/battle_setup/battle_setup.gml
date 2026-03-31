function battle_setup(arg0 = "Holy CRAP it's...[delay,333] nvm,\n  Fuck test.")
{
	global.stored_player_pos[0] = obj_player.x;
	global.stored_player_pos[1] = obj_player.y;
	global.stored_player_room = room;
	global.x_off = -1;
	global.y_off = -1;
	global.border_size[0] = -1;
	global.border_size[1] = -1;
	global.item_used = 0;
	global.battle_start_msg = arg0;
	global.battle_start_msg_esp = arg0;
}
