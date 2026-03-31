if (obj_textboxNEW.choice == 0)
{
	global.vent_enter_down = true;
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	global.msg[0] = "[character,none,-1]* You decide it looks too dark\n  in there anyway.";
	global.msg_esp[0] = "[character,none,-1]* Decides que se ve muy\n  tétrico de todas formas.";
}
show_debug_message(global.msg);
