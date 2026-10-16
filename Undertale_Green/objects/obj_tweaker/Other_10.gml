global.talking = self;
if (global.school_time_sequence == 1)
{
	DIALOG[0] = "[character,none,-1][delay,1]* does anyone have a nose plug[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* i think i'm paralyzed";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¿Alguien tiene tapones nasales?[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* Creo estar paralizado";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
if (global.school_time_sequence == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Heyo, why the long face?[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* It's a beautiful day to sit and\n  enjoy the sights and smells\n  of the theater!";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¿Oye, por qué la mala cara?[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* ¡Es un día hermoso para\n  relajarse y disfrutar de los\n  aromas del teatro!";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
