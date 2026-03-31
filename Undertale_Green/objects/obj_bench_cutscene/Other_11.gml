if (obj_textboxNEW.choice == 0)
{
	obj_player.curr_state = PlayerState.CUTSCENE;
	alarm[0] = 10;
	global.bench_cut = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* ...[delay,333]Maybe later.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ...[delay,333]A lo mejor después.";
}
show_debug_message(global.msg);
