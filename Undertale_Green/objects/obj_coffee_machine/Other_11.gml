if (obj_textboxNEW.choice == 0)
{
	global.msg[0] = "[character,none,-1]* Too bad.[delay,333]\n* Should've been taller.";
	global.msg_esp[0] = "[character,none,-1]* Muy mal.[delay,333]\n* Haber medido más .";
}
else
{
	global.msg[0] = "[character,none,-1]* Good choice.";
	global.msg_esp[0] = "[character,none,-1]* Buena opción.";
}
show_debug_message(global.msg);
