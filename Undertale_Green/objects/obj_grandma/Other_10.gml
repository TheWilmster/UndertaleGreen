if (global.second_dia[0] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* Hello little one.[delay,333]\n* How are you?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* (You tell her you can't find\n  your sister.)[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* Oh,[delay,333] is that so?[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* I wonder if the plants know\n  where she might be.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[5] = "[character,none,-1][delay,1]* They don't know.[delay,333]\n* They speak only of what's\n  to come.[/page]";
	global.msg[6] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg[6] = "[character,none,-1][owsprite,grandma,evil][delay,1]* You'll throw it all away,[delay,333]\n  won't you?";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Hola.[delay,333]\n* ¿Qué tal estás?[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* (Le dices que no puedes\n  encontrar a tu hermana.)[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* Oh,[delay,333] ¿es ese el caso?[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* Me pregunto si las plantas\n  sabrán donde se encuentra.[/page]";
	global.msg_esp[4] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg_esp[5] = "[character,none,-1][delay,1]* No lo saben.[delay,333]\n* Siempre hablan del futuro,[delay,333]\n  nunca del presente.[/page]";
	global.msg_esp[6] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg_esp[6] = "[character,none,-1][owsprite,grandma,evil][delay,1]* Solo traes malos porvenires";
}
if (global.second_dia[0] == 1)
{
	global.msg[0] = "[character,none,-1][owsprite,grandma,evil][delay,1]* Don't talk to me.";
	global.msg_esp[0] = "[character,none,-1][owsprite,grandma,evil][delay,1]* No me hables.";
}
global.second_dia[0] = 1;
instance_create_depth(x, y, -1000, obj_textboxNEW);
