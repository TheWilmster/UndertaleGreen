if (global.yetti_dialogue_1 == true)
{
	DIALOG[0] = "[character,none,-1][delay,1]* my life is over.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* i can only watch as my dreams\n  dissipate into the thin,[delay,333] cruel\n  air.[/page]";
	DIALOG[2] = "[character,none,-1][delay,1]* how,[delay,333] you may ask,[delay,333] did this\n  happen?[/page]";
	DIALOG[3] = "[character,none,-1][delay,1]* well,[delay,333] it all started when i\n  lost the helmet for my\n  costume.[/page]";
	DIALOG[4] = "[character,none,-1][delay,1]* ...[delay,333]i guess it ended there too.[/page]";
	DIALOG[5] = "[character,none,-1][delay,1]* i left it somewhere,[delay,333] and the \n  director will kill me if i\n  don't find it.[/page]";
	DIALOG[6] = "[character,none,-1][delay,1]* but if i stay right here,[delay,333] he'll\n  never catch me.[/page]";
	DIALOG[7] = "[character,none,-1][delay,1]* genius,[delay,333] right?[yetti2]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* Está todo acabado.[/page]";
	DIALOG_ESP[1] = "[character,none,-1][delay,1]* apenas puedo moverme mientras\n  todas mis aspiraciones\n  desaparecen ante mí.[/page]";
	DIALOG_ESP[2] = "[character,none,-1][delay,1]* ¿cómo,[delay,333] te preguntarás,[delay,333] ha pasado\n  todo esto?[/page]";
	DIALOG_ESP[3] = "[character,none,-1][delay,1]* bueno,[delay,333] todo empezó cuando\n  perdía la cabeza de mi\n  disfraz.[/page]";
	DIALOG_ESP[4] = "[character,none,-1][delay,1]* ...[delay,333]supongo que eso es\n  todo lo que pasó.[/page]";
	DIALOG_ESP[5] = "[character,none,-1][delay,1]* me la dejé en algún sitio,[delay,333]\n  y el director me matará\n  si no la consigo encontrar.[/page]";
	DIALOG_ESP[6] = "[character,none,-1][delay,1]* pero si me quedo aquí,[delay,333]\n  nunca me atrapará.[/page]";
	DIALOG_ESP[7] = "[character,none,-1][delay,1]* soy una genia,[delay,333] ¿no\n  crees?[yetti2]";
}
if (global.yetti_dialogue_1 == false)
{
	DIALOG[0] = "[character,none,-1][delay,1]* have you seen my helmet?[helmetprompt1]";
	DIALOG_ESP[0] = "[character,none,-1][delay,1]* ¿has encontrado la cabeza?[helmetprompt1]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
