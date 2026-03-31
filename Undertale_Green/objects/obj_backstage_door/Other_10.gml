if (global.school_time_sequence != 3)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's a door.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...![/page]";
	global.msg[2] = "[character,none,-1][delay,1]* Outside,[delay,333] You hear the faint\n  strumming of a guitar.[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* You decide not to interrupt.";
}
if (global.school_time_sequence == 3)
	global.msg[0] = "[character,none,-1][delay,1]* You shouldn't leave right\n  now.";
instance_create_depth(x, y, -1000, obj_textboxNEW);
