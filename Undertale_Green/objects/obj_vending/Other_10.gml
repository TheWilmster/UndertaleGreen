if (global.second_dia[8] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* ...![delay,333]\n* There are 8 coins stuck in\n  the machine![/page]";
	global.msg[1] = "[character,none,-1]* Dig them out?[choice]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¡...![delay,333]\n* ¡Hay 8 monedas dentro\n  de la máquina![/page]";
	global.msg_esp[1] = "[character,none,-1]* ¿Las sacas?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
	global.choices_esp[0] = "[character,none,-1]\nSí";
	global.choices_esp[1] = "[character,none,-1]\nNo";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* ...![delay,333]\n* There aren't 8 coins stuck in\n  the machine!";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¡...![delay,333]\n* ¡No hay 8 monedas dentro\n  de la máquina![/page]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
