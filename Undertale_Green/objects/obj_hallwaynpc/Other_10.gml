if (global.second_dia[17] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* they're beautiful.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* the same place rendered\n  throughout time.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* some things never change.[delay,333]\n* not really.[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* stillness can be wonderful.[delay,333]\n* or,[delay,333] it can be agony.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* if you're motionless for long\n  enough you may just forget\n  how to move.[/page]";
	global.msg[5] = "[character,none,-1][hallturn][delay,1]* Oh![delay,333]\n* You are a child![/page]";
	global.msg[6] = "[character,none,-1][delay,1]* My apologies,[delay,333] I thought you\n  were Olivia.[/page]";
	global.msg[7] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[8] = "[character,none,-1][delay,1]* Good talk.";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* To be upfront,[delay,333] I am not\n  equipped to talk with children.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Thank you for understanding.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
