if (global.school_time_sequence == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* You can't read the sign.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Someone should probably warn\n  people about the floor here\n  though.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* No puedes leer lo que pone.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* El suelo está algo mojado.[delay,333]\n* Alguien debería de avisar a\n  los demás.";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (global.school_time_sequence >= 1)
{
	global.msg[0] = "[character,none,-1][delay,5]* Somehow,[delay,333] the spill got bigger.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...[delay,333]So did the sign.";
	global.msg_esp[0] = "[character,none,-1][delay,5]* De alguna manera,[delay,333] el charco se ha\n  hecho más grande.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ...[delay,333]La señal también.";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
