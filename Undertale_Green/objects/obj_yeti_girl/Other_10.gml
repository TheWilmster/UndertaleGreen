if (global.yetti_dialogue_1 == true)
{
	global.msg[0] = "[character,none,-1][delay,1]* my life is over.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* i can only watch as my dreams\n  dissipate into the thin,[delay,333] cruel\n  air.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* how,[delay,333] you may ask,[delay,333] did this\n  happen?[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* well,[delay,333] it all started when i\n  lost the helmet for my\n  costume.[/page]";
	global.msg[4] = "[character,none,-1][delay,1]* ...[delay,333]i guess it ended there too.[/page]";
	global.msg[5] = "[character,none,-1][delay,1]* i left it somewhere,[delay,333] and the \n  director will kill me if i\n  don't find it.[/page]";
	global.msg[6] = "[character,none,-1][delay,1]* but if i stay right here,[delay,333] he'll\n  never catch me.[/page]";
	global.msg[7] = "[character,none,-1][delay,1]* genius,[delay,333] right?[yetti2]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Está todo acabado.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* apenas puedo moverme mientras\n  todas mis aspiraciones\n  desaparecen ante mí.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* ¿cómo,[delay,333] te preguntarás,[delay,333] ha pasado\n  todo esto?[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* bueno,[delay,333] todo empezó cuando\n  perdía la cabeza de mi\n  disfraz.[/page]";
	global.msg_esp[4] = "[character,none,-1][delay,1]* ...[delay,333]supongo que eso es\n  todo lo que pasó.[/page]";
	global.msg_esp[5] = "[character,none,-1][delay,1]* me la dejé en algún sitio,[delay,333]\n  y el director me matará\n  si no la consigo encontrar.[/page]";
	global.msg_esp[6] = "[character,none,-1][delay,1]* pero si me quedo aquí,[delay,333]\n  nunca me atrapará.[/page]";
	global.msg_esp[7] = "[character,none,-1][delay,1]* soy una genia,[delay,333] ¿no\n  crees?[yetti2]";
}
if (global.yetti_dialogue_1 == false)
{
	global.msg[0] = "[character,none,-1][delay,1]* have you seen my helmet?[helmetprompt1]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¿has encontrado la cabeza?[helmetprompt1]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
