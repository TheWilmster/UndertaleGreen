if (global.school_time_sequence != 3)
{
	global.msg[0] = "[character,none,-1][delay,1]* You knock on the door.[destroy]";
	global.msg[1] = "[character,none,-1][delay,4444]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Pegas a la puerta.[destroy]";
	global.msg_esp[1] = "[character,none,-1][delay,4444]";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* You're scared to knock on\n  the door.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Te asusta pegar a la\n  puerta.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
if (global.bathroom_order == 0)
	global.bathroom_order = 2;
if (global.school_time_sequence != 3)
	progress = 0;
