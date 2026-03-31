if (global.eden_dance == false)
{
	global.msg[0] = "[character,none,-1][delay,1]* (The computer is turned on.)[delay,333]\n* (Its wallpaper shows an old\n  man in a white wig.)[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (Next to him lies text saying\n  'What did the violin say to\n  its tall friend?[delay,333] Cello!')[/page]";
	global.msg[2] = "[character,eden,happysleep][owsprite,edengray,2][delay,1]* ...What do you think?[freeze][delay,333][continue]\n* I found that on\n  WebFunnies this morning!";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* (The computer is turned on.)[delay,333]\n* (Its wallpaper shows an old\n  man in a white wig.)[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (Next to him lies text saying\n  'What did the violin say to\n  its tall friend?[delay,333] Cello!')";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
