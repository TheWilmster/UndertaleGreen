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
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¡Oye oye![freeze][delay,333][continue]\n* Eres uno de esos\n  de la pasterlería,[freeze][delay,333][continue] ¿verdad?[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* Con lo que vives en el\n  monte Ebott,[freeze][delay,333][continue] ¿verdad?[freeze][delay,333][continue]\n* ¿Cómo se siente?[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* Hay gente que dice que\n  hay monstruos por ahí.[freeze][delay,333][continue]\n* ¿Los has visto?[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* Probablemente apestan,[freeze][delay,333][continue] ¿verdad?[freeze][delay,333][continue]\n* ¿O te gustan?[/page]";
	global.msg_esp[4] = "[character,none,-1][delay,1]* ¿Cuántos has visto?[/page]";
	global.msg_esp[5] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg_esp[6] = "[character,none,-1][delay,1]* Ojalá alguien compartiera\n  mi entusiasmo.";
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
	global.msg_esp[0] = "[character,none,-1][delay,1]* Es la pastelería de tu familia,[freeze][delay,333][continue]\n  ¿verdad?[freeze][delay,333][continue]\n* ¿La pastelería Ebottside?[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ¿Son tus familiares\n  secretamente unos monstruos?[freeze][delay,333][continue]\n* ¿Es tu mamá un monstruo?[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* Me apuesto que sí.[freeze][delay,333][continue]\n* Tiene que dar miedo,[freeze][delay,333][continue] ¿verdad?[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* Envenena la comida,[freeze][delay,333][continue] ¿verdad?[freeze][delay,333][continue]\n* Sería algo que un monstruo\n  haría.[/page]";
	global.msg_esp[4] = "[character,none,-1][delay,1]* ...[freeze][delay,333][continue]Es por eso por lo que\n  mi estomago me duele![/page]";
	global.msg_esp[5] = "[character,none,-1][delay,1]* ¡Es por todas esas\n  rebanadas de manzanas\n caramelizadas![/page]";
	global.msg_esp[6] = "[character,none,-1][delay,1]* ...[/page]";
	global.msg_esp[7] = "[character,none,-1][delay,1]* Ojalá alguien compartiera\n  mi inteligencia.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
