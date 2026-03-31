global.talking = self;
global.save_photo = 8;
if (global.second_dia[11] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* Hey hey![freeze][delay,333][continue]\n* You're one of the kids from\n  that bakery,[freeze][delay,333][continue] right?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* So you live on Mt. Ebott,[freeze][delay,333][continue]\n  right?[freeze][delay,333][continue]\n* How's that?[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* People say there are monsters\n  up there.[freeze][delay,333][continue]\n* Have you seen 'em?[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* They probably suck,[freeze][delay,333][continue] right?[freeze][delay,333][continue]\n* Or are they cool?[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* How many have you seen?[/page]";
	global.msg[5] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[6] = "[character,none,-1][delay,1]* I wish someone shared my\n  enthusiasm.";
	global.second_dia[11] = 1;
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* It's your family's bakery,[freeze][delay,333][continue]\n  right?[freeze][delay,333][continue]\n* Ebottside Bakery?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Is anyone in your family\n  secretly a monster?[freeze][delay,333][continue]\n* Is it your mom?[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* I bet it's her.[freeze][delay,333][continue]\n* She's gotta be scary,[freeze][delay,333][continue] right?[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* She poisons the food,[freeze][delay,333][continue] right?[freeze][delay,333][continue]\n* Sounds like something a monster\n  would do.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* ...[freeze][delay,333][continue]That's why my stomach\n  hurts![/page]";
	global.msg[5] = "[character,none,-1][delay,1]* It's because all those\n  deep-fried apple cakes were\n  laced by your monster mom![/page]";
	global.msg[6] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[7] = "[character,none,-1][delay,1]* I wish someone shared my\n  intelligence.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
