if (room == rm_greenroom)
{
	if (global.lootdrops[0] == 1)
	{
		global.msg[0] = "[character,none,-1][delay,1]* There are 5 coins at the\n  bottom of this bag.[/page]";
		global.msg[1] = "[character,none,-1][delay,1]* Pick them up?[choice]";
		global.msg_esp[0] = "[character,none,-1][delay,1]* Hay 5 monedas dentro de la\n  mochila, en el fondo.[/page]";
		global.msg_esp[1] = "[character,none,-1][delay,1]* ¿Las tomas?[choice]";
	}
	else
	{
		global.msg[0] = "[character,none,-1][delay,1]* The bag is empty.";
		global.msg_esp[0] = "[character,none,-1][delay,1]* La mochila está vacía.";
	}
}
if (room == rm_hallway1)
{
	global.msg[0] = "[character,none,-1][delay,1]* 3 coins shimmer on the ground.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Pick them up?[choice]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Puedes ver 3 monedas brillando en\n  el suelo.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ¿Las tomas?[choice]";
}
if (room == rm_vent3)
{
	global.msg[0] = "[character,none,-1][delay,1]* Somehow,[delay,333] there are 6 coins\n  neatly stacked in this vent.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Pick them up?[choice]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Por alguna razón,[delay,333] hay 6 monedas\n  apiladas perfectamente en esta\n  alcantarilla.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ¿Las tomas?[choice]";
}
if (room == rm_basement)
{
	global.msg[0] = "[character,none,-1][delay,1]* Some socially awkward coins lie\n  scattered about.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Pick them up?[choice]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Unas monedas con problemas\n  sociales están esparcidas\n  por aquí.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ¿Las tomas?[choice]";
}
global.choices[0] = "[character,none,-1]\nYes";
global.choices[1] = "[character,none,-1]\nNo";
global.choices_esp[0] = "[character,none,-1]\nSí";
global.choices_esp[1] = "[character,none,-1]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
