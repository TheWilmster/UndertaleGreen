global.talking = self;
if (global.school_time_sequence == 1)
{
	global.msg[0] = "[character,none,-1][delay,1]* does anyone have a nose plug[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* i think i'm paralyzed";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿Alguien tiene tapones nasales?[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* Creo estar paralizado";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (global.school_time_sequence == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* Heyo, why the long face?[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* It's a beautiful day to sit and\n  enjoy the sights and smells\n  of the theater!";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿Oye, por qué la mala cara?[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ¡Es un día hermoso para\n  relajarse y disfrutar de los\n  aromas del teatro!";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
