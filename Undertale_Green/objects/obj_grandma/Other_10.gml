if (global.second_dia[0] == 0)
{
	DIALOG[0] = "[character,none,-1][delay,1]* Hello little one.[delay,333]\n* How are you?[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* (You tell her you can't find\n  your sister.)[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* Oh,[delay,333] is that so?[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* I wonder if the plants know\n  where she might be.[/page]";
	DIALOG[4] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG[5] = "[character,none,-1][delay,1]* They don't know.[delay,333]\n* They speak only of what's\n  to come.[/page]";
	DIALOG[6] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG[6] = "[character,none,-1][owsprite,grandma,evil][delay,1]* You'll throw it all away,[delay,333]\n  won't you?";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Hola.[delay,333]\n* ¿Qué tal estás?[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* (Le dices que no puedes\n  encontrar a tu hermana.)[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* Oh,[delay,333] ¿es ese el caso?[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* Me pregunto si las plantas\n  sabrán donde se encuentra.[/page]";
	DIALOG_ESP[4] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG_ESP[5] = "[character,none,-1][delay,1]* No lo saben.[delay,333]\n* Siempre hablan del futuro,[delay,333]\n  nunca del presente.[/page]";
	DIALOG_ESP[6] = "[character,none,-1][delay,1]* ...[/page]";
	DIALOG_ESP[6] = "[character,none,-1][owsprite,grandma,evil][delay,1]* Solo traes malos porvenires";
}
if (global.second_dia[0] == 1)
{
	DIALOG[0] = "[character,none,-1][owsprite,grandma,evil][delay,1]* Don't talk to me.";
	DIALOG_ESP[0] = "[character,none,-1][owsprite,grandma,evil][delay,1]* No me hables.";
}
global.second_dia[0] = 1;
instance_create_depth(x, y, -1000, obj_textboxNEW);
