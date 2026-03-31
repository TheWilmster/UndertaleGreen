if (obj_textboxNEW.choice == 0)
{
	global.msg[0] = "[character,eden,happy]* You decide it looks too dark\n  in there anyway.";
}
else
{
	global.msg[0] = "[character,eden,happy]* Woah there![delay,333]\n* Okay, I get it.[/page]";
	global.msg[1] = "[character,eden,happy]* 20G was a bit\n  of a highball.[/page]";
	global.msg[1] = "[character,eden,happy]* Let's go with 15G,[delay,333]\n  33 percent interest...";
}
show_debug_message(global.msg);
