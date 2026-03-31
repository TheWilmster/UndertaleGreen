if (obj_textboxNEW.choice == 0)
	global.msg[0] = "[character,none,-1]* You can't quite reach it.[delay,333]\n* You vow to make yourself\n  taller.";
else
	global.msg[0] = "[character,none,-1]* You figure it isn't worth it.";
show_debug_message(global.msg);
