if (global.second_dia[13] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's a worn sign from a\n  closed off hiking trail.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Chai takes a look at it.[delay,333]\n* She's already read it a\n  hundred times.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* 'THE TOWN OF MIDDLEWATER'[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* 'Middlewater is a quaint town,[delay,333]\n  hosting around 12,000 people\n  within its limits.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* It found its roots in the\n  export of lumber before moving\n  to tourism around 192X.[/page]";
	global.msg[5] = "[character,none,-1][delay,1]* Naturally,[delay,333] this tourism\n  revolves around the very\n  mountain you're standing on![/page]";
	global.msg[6] = "[character,none,-1][delay,1]* Many tours explore the\n  rich folklore of this\n  municipality.[/page]";
	global.msg[7] = "[character,none,-1][delay,1]* It is said that if you hike\n  at just the right hour,[delay,333] you\n  may see a monster.[/page]";
	global.msg[8] = "[character,none,-1][delay,1]* Curiously,[delay,333] these monsters\n  are given no names or\n  descriptions...[/page]";
	global.msg[9] = "[character,none,-1][delay,1]* ...and are instead referred\n  to only as a collective.[/page]";
	global.msg[10] = "[character,none,-1][delay,1]* The myth is supported by\n  seemingly decades of history\n  missing from local records.[/page]";
	global.msg[11] = "[character,none,-1][delay,1]* Are there really monsters\n  on Mt. Ebott?[/page]";
	global.msg[12] = "[character,none,-1][delay,1]* You might just find out\n  sooner than you think...'";
	global.second_dia[13] = 1;
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Underneath the text lies\n  frantically-written graffiti.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* 'MONSTERS ARE MORE THAN\n  FOLKLORE!![delay,333]\n* 'TRUST NO ONE!!![delay,333] -WF'";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
